import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by sifu on 22/03/18.
 */
public class Markov {
    private String source;
    private int sourceLength;
    private HashMap<String, Integer> alphabet;
    private HashMap<String, Integer> sourceOccurrences;
    private HashMap<String, Fraction> zeroOrderProbabilities;
    private HashMap<String, Fraction> firstOrderProbabilities;
    private HashMap<String, Fraction> secondOrderProbabilities;
    private HashMap<String, Fraction> thirdOrderProbabiltiies;
    private String zeroOrderRandomText;
    private String firstOrderRandomText;
    private String secondOrderRandomText;
    private String thirdOrderRandomText;

    Markov(String source) {
        this.source = source.toLowerCase();
        this.sourceLength = source.length();
        alphabet = initAlphabet();
        sourceOccurrences = computeSourceStats(source, alphabet);
        zeroOrderProbabilities = computeZeroOrderProbabilities(sourceOccurrences, sourceLength);
        zeroOrderRandomText = generateRandomTextZeroOrder(zeroOrderProbabilities);
        firstOrderProbabilities = computeFirstOrderProbabilities(alphabet, sourceLength);
        firstOrderRandomText = generateRandomTextFirstOrder(firstOrderProbabilities);
        secondOrderProbabilities = computeSecondOrderProbabilities(alphabet, sourceLength);
        secondOrderRandomText = generateRandomTextSecondOrder(secondOrderProbabilities);
        thirdOrderProbabiltiies = computeThirdOrderProbabilities(alphabet, sourceLength);
        thirdOrderRandomText = generateRandomTextThirdOrder(alphabet, sourceLength);
    }

    private String generateRandomTextThirdOrder(HashMap<String, Integer> alphabet, int sourceLength) {
        double r = Math.random() * computeTotalWeight(zeroOrderProbabilities);
        String currentState = "";
        int w = 0;
        for (Map.Entry<String, Fraction> entry : zeroOrderProbabilities.entrySet()) {
            w += entry.getValue().getNumerator();
            if (w >= r) {
                currentState = entry.getKey();
                break;
            }
        }
        ArrayList<String> jumps = computePossibleJumps(currentState, 1);
        HashMap<String, Fraction> subSet = createSubSet(firstOrderProbabilities, jumps);
        r = Math.random() * computeTotalWeight(subSet);
        w = 0;
        for (Map.Entry<String, Fraction> entry : subSet.entrySet()) {
            w += entry.getValue().getNumerator();
            if (w >= r) {
                currentState = entry.getKey();
                break;
            }
        }

        jumps = computePossibleJumps(currentState, 2);
        subSet = createSubSet(secondOrderProbabilities, jumps);
        r = Math.random() * computeTotalWeight(subSet);
        w = 0;
        for (Map.Entry<String, Fraction> entry : subSet.entrySet()) {
            w+= entry.getValue().getNumerator();
            if (w >= r) {
                currentState = entry.getKey();
                break;
            }
        }
        String text = "";
        for (int i = 0; i < sourceLength; i++) {
            w = 0;
            jumps = computePossibleJumps(currentState, 3);
            subSet = createSubSet(thirdOrderProbabiltiies, jumps);
            int totalWeight = computeTotalWeight(subSet);
            r = Math.random() * totalWeight;
            for (Map.Entry<String, Fraction> entry : subSet.entrySet()) {
                w += entry.getValue().getNumerator();
                if (w >= r) {
                    text = text + entry.getKey().substring(3);
                    currentState = entry.getKey().substring(1);
                    break;
                }
            }
        }

        return text;
    }

    private HashMap<String, Fraction> computeThirdOrderProbabilities(HashMap<String, Integer> alphabet, int sourceLength) {
        HashMap<String, Fraction> result = new HashMap<>();
        ArrayList<String> permutations = new ArrayList<>();
        for (Map.Entry<String, Integer> entry : alphabet.entrySet()) {
            if (source.contains(entry.getKey())) {
                for (Map.Entry<String, Integer> entry1 : alphabet.entrySet()) {
                    if (source.contains(entry.getKey() + entry1.getKey())) {
                        for (Map.Entry<String, Integer> entry2 : alphabet.entrySet()) {
                            if (source.contains(entry.getKey() + entry1.getKey() + entry2.getKey())) {
                                for (Map.Entry<String, Integer> entry3 : alphabet.entrySet()) {
                                    if (source.contains(entry.getKey() + entry1.getKey() + entry2.getKey() + entry3.getKey())) {

                                        StringBuilder sb = new StringBuilder();
                                        sb.append(entry.getKey());
                                        sb.append(entry1.getKey());
                                        sb.append(entry2.getKey());
                                        sb.append(entry3.getKey());
                                        String s = sb.toString();
                                        permutations.add(s);
                                        result.put(s, new Fraction(0, sourceLength));

                                    } else {
                                        continue;
                                    }
                                }
                            } else {
                                continue;
                            }
                        }
                    } else {
                        continue;
                    }
                }
            } else {
                continue;
            }
        }

        for (String perm : permutations) {
            for (int i = 0; i < sourceLength - 3; i++) {
                StringBuilder sb = new StringBuilder();
                sb.append(source.charAt(i));
                sb.append(source.charAt(i + 1));
                sb.append(source.charAt(i + 2));
                sb.append(source.charAt(i + 3));
                String s = sb.toString();
//                System.out.println("Checking if " + perm + " is equal to " + s);
                if (perm.equals(s)) {
                    Fraction f = new Fraction(result.get(s).getNumerator() + 1, sourceLength);
                    result.put(s, f);
                }
            }
        }
        result = filterProbabilities(result);

        for (Map.Entry<String, Fraction> entry : result.entrySet()) {
            String s = entry.getKey();
            String s1 = entry.getKey().substring(0, 3);
            Fraction f = secondOrderProbabilities.get(s1);
            Fraction p = Fraction.divide(entry.getValue(), f);
            result.put(s, p);
        }
        return result;
    }

    private HashMap<String, Fraction> computeSecondOrderProbabilities(HashMap<String, Integer> alphabet,
                                                                      int sourceLength) {
        HashMap<String, Fraction> result = new HashMap<>();
        ArrayList<String> permutations = new ArrayList<>();
        for (Map.Entry<String, Integer> entry : alphabet.entrySet()) {
            for (Map.Entry<String, Integer> entry1 : alphabet.entrySet()) {
                for (Map.Entry<String, Integer> entry2 : alphabet.entrySet()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(entry.getKey());
                    sb.append(entry1.getKey());
                    sb.append(entry2.getKey());
                    String s = sb.toString();
                    permutations.add(s);
                    result.put(s, new Fraction(0, sourceLength));
                }
            }
        }
//        printList(permutations);
//        System.out.println(permutations.size());r
        //result = filterProbabilities(result);
        //permutations = filterPermutations(permutations, result);
        for (String perm : permutations) {
            for (int i = 0; i < sourceLength - 2; i++) {
                StringBuilder sb = new StringBuilder();
                sb.append(source.charAt(i));
                sb.append(source.charAt(i + 1));
                sb.append(source.charAt(i + 2));
                String s = sb.toString();
                //System.out.println("Checking if " + s + " is equal to " + perm);
                if (perm.equals(s)) {
                    Fraction f = new Fraction(result.get(s).getNumerator() + 1, sourceLength);
                    result.put(s, f);
                }
            }
        }
        result = filterProbabilities(result);

        for (Map.Entry<String, Fraction> entry : result.entrySet()) {
            String s = entry.getKey();
            String s1 = entry.getKey().substring(0, 2);
            Fraction f = firstOrderProbabilities.get(s1);
            Fraction p = Fraction.divide(entry.getValue(), f);
            result.put(s, p);
        }
        return result;
    }


    public HashMap<String, Fraction> filterProbabilities(HashMap<String, Fraction> probabilities) {
        HashMap<String, Fraction> result = new HashMap<>();
        for (Map.Entry<String, Fraction> entry : probabilities.entrySet()) {
            Fraction f = entry.getValue();
            if (f.getNumerator() == 0) {
                continue;
            } else {
                result.put(entry.getKey(), entry.getValue());
            }
        }
        return result;
    }

    private ArrayList<String> computePossibleJumps(String currentState, int order) {
        ArrayList<String> result = new ArrayList<>();
        if (order == 1) {
            for (Map.Entry<String, Fraction> entry : firstOrderProbabilities.entrySet()) {
                String s = entry.getKey();
                if (Character.toString(s.charAt(0)).equals(currentState)) {
                    result.add(s);
                }
            }
        } else if (order == 2) {
            for (Map.Entry<String, Fraction> entry : secondOrderProbabilities.entrySet()) {
                String s = entry.getKey();
                if (s.substring(0, 2).equals(currentState)) {
                    result.add(s);
                }
            }
        } else if (order == 3) {
            for (Map.Entry<String, Fraction> entry : thirdOrderProbabiltiies.entrySet()) {
                String s = entry.getKey();
                if (s.substring(0, 3).equals(currentState)) {
                    result.add(s);
                }
            }
        }
        return result;
    }

    private String generateRandomTextSecondOrder(HashMap<String, Fraction> secondOrderProbabilities) {
        double r = Math.random() * computeTotalWeight(zeroOrderProbabilities);
        String currentState = "";
        int w = 0;
        for (Map.Entry<String, Fraction> entry : zeroOrderProbabilities.entrySet()) {
            w += entry.getValue().getNumerator();
            if (w >= r) {
                currentState = entry.getKey();
                break;
            }
        }
        ArrayList<String> jumps = computePossibleJumps(currentState, 1);
        HashMap<String, Fraction> subSet = createSubSet(firstOrderProbabilities, jumps);
        r = Math.random() * computeTotalWeight(subSet);
        w = 0;
        for (Map.Entry<String, Fraction> entry : subSet.entrySet()) {
            w += entry.getValue().getNumerator();
            if (w >= r) {
                currentState = entry.getKey();
                break;
            }
        }
        String text = "";
        for (int i = 0; i < sourceLength; i++) {
            w = 0;
            jumps = computePossibleJumps(currentState, 2);
            subSet = createSubSet(secondOrderProbabilities, jumps);
            int totalWeight = computeTotalWeight(subSet);
            r = Math.random() * totalWeight;
            for (Map.Entry<String, Fraction> entry : subSet.entrySet()) {
                w += entry.getValue().getNumerator();
                if (w >= r) {
                    text = text + entry.getKey().substring(2);
                    currentState = entry.getKey().substring(1);
                    break;
                }
            }
        }

        return text;
    }

    private String generateRandomTextFirstOrder(HashMap<String, Fraction> firstOrderProbabilities) {
        double r = Math.random() * computeTotalWeight(zeroOrderProbabilities);
        String currentState = "";
        int w = 0;
        for (Map.Entry<String, Fraction> entry : zeroOrderProbabilities.entrySet()) {
            w += entry.getValue().getNumerator();
            if (w >= r) {
                currentState = entry.getKey();
                break;
            }
        }

        String text = "";

        for (int i = 0; i < sourceLength; i++) {
            w = 0;
            ArrayList<String> jumps = computePossibleJumps(currentState, 1);
            HashMap<String, Fraction> subSet = createSubSet(firstOrderProbabilities, jumps);
            int totalWeight = computeTotalWeight(subSet);
            r = Math.random() * totalWeight;

            for (Map.Entry<String, Fraction> entry : subSet.entrySet()) {
                w += entry.getValue().getNumerator();
                if (w >= r) {
                    text = text + entry.getKey().substring(1);
                    currentState = entry.getKey().substring(1);
                    break;
                }
            }

        }

        return text;
    }

    private HashMap<String, Fraction> createSubSet
            (HashMap<String, Fraction> probabilitySet, ArrayList<String> strings) {
        HashMap<String, Fraction> result = new HashMap<>();
        for (Map.Entry<String, Fraction> entry : probabilitySet.entrySet()) {
            for (String s : strings) {
                if (s.equals(entry.getKey())) {
                    result.put(entry.getKey(), entry.getValue());
                }
            }
        }
        return result;
    }

    private void printList(ArrayList<String> list) {
        for (String s : list) {
            System.out.print(s + " ");
        }
        System.out.println();
    }

    private String generateRandomTextZeroOrder(HashMap<String, Fraction> orderOfProbability) {
        String text = "";
        int totalWeight = computeTotalWeight(orderOfProbability);
        for (int i = 0; i < sourceLength; i++) {
            double r = Math.random() * totalWeight;
            int w = 0;
            for (Map.Entry<String, Fraction> entry : orderOfProbability.entrySet()) {
                w += entry.getValue().getNumerator();
                if (w >= r) {
                    text = text + entry.getKey();
                    break;
                }
            }
        }
        return text;
    }


    /**
     * First character in string represents current state
     **/
    private HashMap<String, Fraction> computeFirstOrderProbabilities(HashMap<String, Integer> alphabet,
                                                                     int sourceLength) {
        HashMap<String, Fraction> result = new HashMap<>();
        ArrayList<String> permutations = new ArrayList<>();
        for (Map.Entry<String, Integer> entry : alphabet.entrySet()) {
            for (Map.Entry<String, Integer> entry1 : alphabet.entrySet()) {
                StringBuilder sb = new StringBuilder();
                sb.append(entry.getKey());
                sb.append(entry1.getKey());
                String s = sb.toString();
                permutations.add(s);
                result.put(s, new Fraction(0, sourceLength));
            }
        }

        for (String perms : permutations) {
            for (int i = 0; i < sourceLength - 1; i++) {
                StringBuilder sb = new StringBuilder();
                sb.append(source.charAt(i));
                sb.append(source.charAt(i + 1));
                String s = sb.toString();
                if (perms.equals(s)) {
                    Fraction f = new Fraction(result.get(s).getNumerator() + 1, sourceLength);
                    result.put(s, f);
                }
            }
        }
        result = filterProbabilities(result);

        for (Map.Entry<String, Fraction> entry : result.entrySet()) {
            String s = entry.getKey();
            String s1 = entry.getKey().substring(0, 1);
            Fraction f = zeroOrderProbabilities.get(s1);
            Fraction p = Fraction.divide(entry.getValue(), f);
            result.put(s, p);
        }

        return result;
    }


    private HashMap<String, Fraction> computeZeroOrderProbabilities(HashMap<String, Integer> sourceOccurrences,
                                                                    int sourceLength) {
        HashMap<String, Fraction> result = new HashMap<>();
        for (Map.Entry<String, Integer> entry : sourceOccurrences.entrySet()) {
            try {
                Fraction f = new Fraction(entry.getValue(), sourceLength);
                result.put(entry.getKey(), f);
            } catch (IllegalArgumentException e) {
                e.printStackTrace();
            }
        }
        return filterProbabilities(result);
    }

    private HashMap<String, Integer> initAlphabet() {
        HashMap<String, Integer> map = new HashMap<>();
        for (int i = 97; i < 123; i++) {
            StringBuilder sb = new StringBuilder();
            sb.append((char) i);
            String s = sb.toString();
            map.put(s, 0);
        }
        map.put("æ", 0);
        map.put("ø", 0);
        map.put("å", 0);
        map.put(" ", 0);

        return map;
    }

    public void printMap(HashMap<String, Fraction> map) {
        for (Map.Entry<String, Fraction> entry : map.entrySet()) {
            System.out.println("'" + entry.getKey() + "' : " + entry.getValue());
        }
    }

    private HashMap<String, Integer> computeSourceStats(String source, HashMap<String, Integer> alphabet) {
        for (Map.Entry<String, Integer> entry : alphabet.entrySet()) {
            for (String s : source.split("")) {
                if (s.equals(entry.getKey())) {
                    alphabet.put(entry.getKey(), entry.getValue() + 1);
                }
            }
        }
        return alphabet;
    }

    public int computeTotalWeight(HashMap<String, Fraction> map) {
        int result = 0;
        for (Map.Entry<String, Fraction> entry : map.entrySet()) {
            result = result + entry.getValue().getNumerator();
        }
        return result;
    }

    public HashMap<String, Integer> getSourceOccurrences() {
        return sourceOccurrences;
    }

    public HashMap<String, Integer> getAlphabet() {
        return alphabet;
    }

    public HashMap<String, Fraction> getZeroOrderProbabilities() {
        return zeroOrderProbabilities;
    }

    public String getZeroOrderRandomText() {
        return zeroOrderRandomText;
    }

    public HashMap<String, Fraction> getFirstOrderProbabilities() {
        return firstOrderProbabilities;
    }

    public String getSecondOrderRandomText() {
        return secondOrderRandomText;
    }

    public HashMap<String, Fraction> getSecondOrderProbabilities() {
        return secondOrderProbabilities;
    }

    public String getThirdOrderRandomText() {
        return thirdOrderRandomText;
    }

    public HashMap<String, Fraction> getProbabilitiesByOrder(int n) {
        if (n == 0) {
            return zeroOrderProbabilities;
        } else if (n == 1) {
            return firstOrderProbabilities;
        } else if (n == 2) {
            return secondOrderProbabilities;
        } else if (n == 3) {
            return thirdOrderProbabiltiies;
        } else {
            return null;
        }
    }

    public String getFirstOrderRandomText() {
        return firstOrderRandomText;
    }
}
