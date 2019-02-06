import java.util.*;

/**
 * Created by sifu on 26/03/18.
 */
public class Huffman {
    private String message;
    private String encodedMessage;
    private HuffTree tree;
    private HashMap<String, Integer> occurrences;
    private ArrayList<Pair> sortedOccurrences;
    private ArrayList<String> binaries = new ArrayList<>();
    private String binaryEncoded ="";

    Huffman(String message) {
        this.message = message;
        occurrences = getOccurrences(message);
        sortedOccurrences = initSortedOccurrences(occurrences);
        this.tree = createTree(sortedOccurrences);
        this.encodedMessage = huffEncode(this.tree, message);
        for(String s : binaries) {
            binaryEncoded = binaryEncoded + s;
        }
    }

    class Pair implements Comparable<Pair>{
        String string;
        Integer integer;

        Pair(String string, Integer integer) {
            this.string = string;
            this.integer = integer;
        }

        @Override
        public int compareTo(Pair pair) {
            if (this.integer > pair.integer) {
                return 1;
            } else if (this.integer == pair.integer) {
                return 0;
            } else {
                return -1;
            }
        }
        @Override
        public String toString() {
            return "(" + string + "," + integer + ")";
        }
    }

    private String traverseHuff(HuffTree hf, String s) {
        String r = hf.right.value;
        String l = hf.left.value;
        if (r.equals(s)) {
            return "1";
        } else if (l.equals(s)) {
            return "0";
        }

        if (r.contains(s)) {
            return "1" + traverseHuff(hf.right, s);
        } else if (l.contains(s)) {
            return "0" + traverseHuff(hf.left, s);
        } else {
            return null;
        }
    }

    private String huffEncode(HuffTree hf, String string) {
        String result = "";
        String[] strings = string.split("");
        for (String s : strings) {
            String t = traverseHuff(hf, s);
            result = result + Character.toString((char)Integer.parseInt(t,2));
            binaries.add(t);
        }

        return result;
    }

    private HuffTree createTree(ArrayList<Pair> pairs) {

        ArrayList<HuffTree> lonelyTrees = new ArrayList<>();
        for (Pair p: pairs) {
            HuffTree h = new HuffTree(p.string, p.integer);
            lonelyTrees.add(h);
        }

        while(lonelyTrees.size() > 1) {
            HuffTree h = lonelyTrees.get(0);
            h.code = "0";
            HuffTree h1  = lonelyTrees.get(1);
            h1.code = "1";
            HuffTree mergedTree = new HuffTree(h, h1, h.weight + h1.weight);
            lonelyTrees.add(mergedTree);
            lonelyTrees.remove(h);
            lonelyTrees.remove(h1);
            Collections.sort(lonelyTrees);
        }

        HuffTree result = lonelyTrees.get(0);

        return result;
    }

    class HuffTree implements Comparable<HuffTree>{
        HuffTree left = null;
        HuffTree right = null;

        String value = "";
        String code;

        int weight;

        HuffTree() {

        }

        HuffTree(HuffTree left, HuffTree right, int weight) {
            this.left = left;
            this.right = right;
            this.weight = weight;
            this.value = left.value + right.value;
        }

        HuffTree(HuffTree left, HuffTree right) {
            this.left = left;
            this.right = right;
        }

        HuffTree(int weight) {
            this.weight = weight;
        }

        HuffTree(String value, int weight) {
            this.value = value;
            this.weight = weight;
        }

        @Override
        public String toString() {
            if ((this.left != null) && (this.right != null)) {
                return "Left node: " + left.value + ", Right node: " + right.value + ", Weight: " + weight +", Value: " + value +"\n";
            } else {
                return "Value: " + value + ", Weight: " + weight + "\n";
            }
        }

        @Override
        public int compareTo(HuffTree huffTree) {
            if (this.weight > huffTree.weight) {
                return 1;
            } else if (this.weight == huffTree.weight) {
                return 0;
            } else {
                return -1;
            }
        }
    }

    private ArrayList<Pair> initSortedOccurrences(HashMap<String, Integer> occurrences) {
        ArrayList<Pair> pairs = new ArrayList<>();
        for (Map.Entry<String, Integer> entry : occurrences.entrySet()) {
            Pair p = new Pair(entry.getKey(), entry.getValue());
            pairs.add(p);
        }
        Collections.sort(pairs);
        return pairs;
    }

    private HashMap<String, Integer> getOccurrences(String message) {
        HashMap<String, Integer> result = new HashMap<>();
        String[] strings = message.split("");
        for (String s : strings) {
            result.put(s, 0);
        }

        for (Map.Entry<String, Integer> entry : result.entrySet()) {
            for (String s : strings) {
                if (entry.getKey().equals(s)) {
                    result.put(s, entry.getValue()+1);
                }
            }
        }
        return result;
    }

    public String getEncodedMessage() {
        return encodedMessage;
    }

    public String getBinaryEncoded() {
        return binaryEncoded;
    }

}
