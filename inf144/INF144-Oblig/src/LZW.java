import javax.print.DocFlavor;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by sifu on 24/03/18.
 */
public class LZW {
    private HashMap<String, Integer> dictionary;
    private String source;
    private String encodedText;
    private File inputFile;
    private File outputFile;

    LZW(String source) {
        this.source = (source + "#").toUpperCase();
        this.inputFile = stringToFile(source);
        inputFile = new File(source);
        dictionary = initDictionary();
        int width = 5; //latin-1 binary begins with 11, 5 is too short
        encodedText = encode(this.source, width, dictionary);
        System.out.println(this.source.length()*5);
        System.out.println(encodedText);
        System.out.println(encodedText.length());
    }

    private int getNumberOfBits(String s) {
        int result = 0;
        for (char c : s.toCharArray()) {
            result = result + Integer.toBinaryString(c).length();
        }
        return result;
    }

    private String encode(String source, int width, HashMap<String, Integer> dictionary) {
        String result ="";
        int possibleCombinations = (int)Math.pow(2, width);
        int nextAvailableIndex = dictionary.size() + 1;

        int tracker = 1;
        String nextChar;
        String buffer = Character.toString(source.charAt(0));
        boolean flag = false;
        while (true) {
            if (flag) {
                result = result + padBinary("0", width);
                break;
            }
            nextChar = Character.toString(source.charAt(tracker));

            if (nextChar.equals("#")) {
                flag = true;
            }
            buffer = buffer + nextChar;

            if (!(dictionary.keySet().contains(buffer))) {
                dictionary.put(buffer, nextAvailableIndex);
                nextAvailableIndex += 1;
                System.out.println("THE BUFFER IS: " + buffer);
                String temp_string = buffer.substring(0, buffer.length()-1);
                System.out.println("THE STRING IS " + temp_string);

                String temp = padBinary(Integer.toBinaryString(dictionary.get(temp_string)), width);
                System.out.println("ADDING " + temp + " TO RESULT");
                System.out.println("LENGTH OF TEMP IS: " + temp.length() + "\n");
                result = result + temp;
                buffer = buffer.substring(buffer.length()-1);
                if (dictionary.size() == possibleCombinations) {
                    width+=1;
                }
            }

            tracker++;

        }
        System.out.println(dictionary);
        return result;
    }

    private HashMap<String, Integer> initDictionary() {
        HashMap<String, Integer> result = new HashMap<>();
        int index= 0;

        //result.put(Integer.toBinaryString(' '), index);
        for (int i = 65; i < 91; i++) {
            index++;
            String s = Character.toString((char)i);
            //String s = Integer.toBinaryString(i);
            result.put(s, index);
        }
//        result.put(Integer.toBinaryString('Æ'), index+1);
//        result.put(Integer.toBinaryString('Ø'), index+2);
//        result.put(Integer.toBinaryString('Å'), index+3);

        return result;
    }

    private File stringToFile(String string) {
        File f = new File("original");
        try (BufferedWriter bw = new BufferedWriter(new FileWriter(f))) {

            bw.write(string);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return f;
    }

    private void compareFiles(File f1, File f2) {
        if (f1.length() > f2.length()) {
            System.out.println(f1.getPath() + " is longer than " + f2.getPath());
        } else if (f2.length() > f1.length()) {
            System.out.println(f2.getPath() + " is longer than " + f1.getPath());
        } else {
            System.out.println("Files are equally large");
        }
    }

    private String padBinary(String binary, int bitsToPad) {
        while(binary.length() < bitsToPad) {
            binary = "0" + binary;
        }
        return binary;
    }
}
