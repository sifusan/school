import java.util.ArrayList;

/**
 * Created by sifu on 22/03/18.
 */
public class Utility {

    public static ArrayList<String > permutation(char[] perm, int pos, String str) {
        ArrayList<String> s = new ArrayList<>();
        if (pos == perm.length) {
            System.out.println(new String(perm));
            s.add(new String(perm));
        } else {
            for (int i = 0 ; i < str.length() ; i++) {
                perm[pos] = str.charAt(i);
                permutation(perm, pos+1, str);
            }
        }
        return s;
    }
}
