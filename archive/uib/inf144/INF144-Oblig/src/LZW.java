import java.util.ArrayList;
import java.util.HashMap;

/**
 * Created by sifu on 24/03/18.
 */
public class LZW {
    private HashMap<String, Integer> compressionDict;
    private HashMap<Integer, String> decompressionDict;
    private String source;
    private String encodedBinaryText;
    private String encodedString;
    private String decodedText;
    private ArrayList<String> binaries = new ArrayList<>();

    LZW(String source) {
        this.source = source + "#";
        initDictionaries();
        int width = 7; //latin-1 binary begins with 110....., 5 is too short
        encodedBinaryText = encodeLZW(this.source, width, compressionDict);
        encodedString = binaryToString(binaries);
        decodedText = decodeLZW(decompressionDict, binaries, width);
    }

    private String binaryToString(ArrayList<String> binaries) {
        String result ="";
        for (String s : binaries) {
            result = result + Character.toString((char)Integer.parseInt(s, 2));
        }
        return result;
    }

    private String encodeLZW(String source, int width, HashMap<String, Integer> dictionary) {
        String result = "";
        int possibleCombinations = (int) Math.pow(2, width);
        int nextAvailableIndex = dictionary.size() + 1;

        int tracker = 1;
        String nextChar;
        String buffer = Character.toString(source.charAt(0));
        boolean flag = false;
        while (true) {
            if (flag) {
                result = result + padBinary("0", width);
                binaries.add(padBinary("0", width));
                break;
            }
            nextChar = Character.toString(source.charAt(tracker));

            if (nextChar.equals("#")) {
                flag = true;
            }
            buffer = buffer + nextChar;

            if (!(dictionary.keySet().contains(buffer))) {
                if (!flag) {
                    dictionary.put(buffer, nextAvailableIndex);
                }
                nextAvailableIndex++;
                String temp_string = buffer.substring(0, buffer.length() - 1);

                String temp = padBinary(Integer.toBinaryString(dictionary.get(temp_string)), width);
                binaries.add(temp);
                result = result + temp;
                buffer = buffer.substring(buffer.length() - 1);
                if (dictionary.size() == possibleCombinations) {
                    width++;
                    possibleCombinations = (int) Math.pow(2, width);
                }
            }

            tracker++;
        }
        return result;
    }

    private String decodeLZW(HashMap<Integer, String> dictionary, ArrayList<String> binaries, int width) {
        String result = "";
        int nextAvailableIndex = dictionary.size() + 1;
        int tracker = 0;
        String currentString;
        String nextString;

        boolean flag = false;
        while (true) {
            if (flag) {
                result = result + "#";
                break;
            }

            int code = Integer.parseInt(binaries.get(tracker), 2);
            try {
                int nextCode = Integer.parseInt(binaries.get(tracker + 1), 2);

                currentString = dictionary.get(code);
                nextString = dictionary.get(nextCode);

                result = result + currentString;

                if (!(dictionary.values().contains(currentString + nextString.charAt(0)))) {
                    dictionary.put(nextAvailableIndex, currentString + nextString.charAt(0));
                    nextAvailableIndex++;
                }
                tracker++;
            } catch (IndexOutOfBoundsException | NullPointerException e) {
                result = result + "#";
                break;
            }
        }

        return result;
    }

    private void initDictionaries() {
        this.decompressionDict = initDecompressionDict();
        this.compressionDict = initCompressionDict();
    }

    private HashMap<String, Integer> initCompressionDict() {
        HashMap<String, Integer> result = new HashMap<>();
        int index = 0;
        result.put(" ", index);
        for (int i = 65; i < 91; i++) {
            index++;
            String s = Character.toString((char) i);
            result.put(s, index);
        }
        for (int i = 97; i < 123; i++) {
            index++;
            String s = Character.toString((char)i);
            result.put(s, index);
        }
        result.put("Æ", index + 1);
        result.put("Ø", index + 2);
        result.put("Å", index + 3);
        result.put("æ", index + 4);
        result.put("ø", index + 5);
        result.put("å", index + 6);
        return result;
    }

    private HashMap<Integer, String> initDecompressionDict() {
        HashMap<Integer, String> result = new HashMap<>();
        int index = 0;
        result.put(index, " ");
        for (int i = 65; i < 91; i++) {
            index++;
            String s = Character.toString((char) i);
            result.put(index, s);
        }
        for (int i = 97; i < 123; i++) {
            index++;
            String s = Character.toString((char)i);
            result.put(index, s);
        }
        result.put(index + 1, "Æ");
        result.put(index + 2, "Ø");
        result.put(index + 3, "Å");
        result.put(index + 4, "æ");
        result.put(index + 5, "ø");
        result.put(index + 6, "å");

        return result;
    }


    private String padBinary(String binary, int bitsToPad) {
        while (binary.length() < bitsToPad) {
            binary = "0" + binary;
        }
        return binary;
    }

    public String getEncodedString() {
        return encodedString;
    }

    public String getEncodedBinaryText() {
        return encodedBinaryText;
    }
}
