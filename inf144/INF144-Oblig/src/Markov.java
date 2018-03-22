import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/**
 * Created by sifu on 22/03/18.
 */
public class Markov {
    private String source;
    private int sourceLength;
    private HashMap<Character, Integer> alphabet;
    private HashMap<Character, Integer> sourceOccurrences;
    private HashMap<Character, Fraction> zeroOrderProbabilities;
    private String zeroOrderRandomText;

    Markov(String source) {
        this.source = source.toLowerCase();
        this.sourceLength = source.length();
        alphabet = initAlphabet();
        sourceOccurrences = computeSourceStats(source, alphabet);
        zeroOrderProbabilities = computeZeroOrderProbabilities(sourceOccurrences, sourceLength);
        //HashMap<Character, ArrayList<Integer, Integer>> zeroOrderIntervals = computeIntervals(zeroOrderProbabilities);
        zeroOrderRandomText = generateRandomText(zeroOrderProbabilities);
    }

    private void computeIntervals(HashMap<Character, Fraction> zeroOrderProbabilities) {
    }

    private String generateRandomText(HashMap<Character, Fraction> orderOfProbability) {
        String text = "";
        int totalWeight = computeTotalWeight(orderOfProbability);
        for (int i= 0; i < sourceLength; i++) {
            double r = Math.random() * totalWeight;
            int w = 0;
            for (Map.Entry<Character, Fraction> entry : orderOfProbability.entrySet()) {
                w += entry.getValue().getNumerator();
                if (w >= r) {
                    text = text + entry.getKey();
                    break;
                }
            }
        }
        return text;
    }

    private HashMap<Character,Fraction> computeZeroOrderProbabilities(HashMap<Character, Integer> sourceOccurrences, int sourceLength) {
        HashMap<Character, Fraction> result = new HashMap<>();
        for (Map.Entry<Character, Integer> entry : sourceOccurrences.entrySet()) {
            try {
                Fraction f = new Fraction(entry.getValue(), sourceLength);
                result.put(entry.getKey(), f);
            } catch (IllegalArgumentException e) {
                e.printStackTrace();
            }
        }
        return result;
    }

    private HashMap<Character, Integer> initAlphabet() {
        HashMap<Character, Integer> map = new HashMap<>();
        for (int i = 97; i < 123; i++) {
            map.put((char) i, 0);
        }
        map.put('æ', 0);
        map.put('ø', 0);
        map.put('å', 0);
        map.put(' ', 0);

        return map;
    }

    public void printMap(HashMap<Character, ?> map) {
        for (Map.Entry<Character, ?> entry : map.entrySet()) {
            System.out.println("'"+entry.getKey() + "' : " + entry.getValue());
        }
    }

    private HashMap<Character, Integer> computeSourceStats(String source, HashMap<Character, Integer> alphabet) {
        for (Map.Entry<Character, Integer> entry : alphabet.entrySet()) {
            for (char c : source.toCharArray()) {
                if (c == entry.getKey()) {
                    alphabet.put(entry.getKey(), entry.getValue()+1);
                }
            }
        }
        return alphabet;
    }

    public int computeTotalWeight(HashMap<Character, Fraction> map) {
        int result = 0;
        for (Map.Entry<Character, Fraction> entry : map.entrySet()) {
            result = result + entry.getValue().getNumerator();
        }
        return result;
    }

    public HashMap<Character, Integer> getSourceOccurrences() {
        return sourceOccurrences;
    }

    public HashMap<Character, Integer> getAlphabet() {
        return alphabet;
    }

    public HashMap<Character, Fraction> getZeroOrderProbabilities() {
        return zeroOrderProbabilities;
    }

    public String getZeroOrderRandomText() {
        return zeroOrderRandomText;
    }
}
