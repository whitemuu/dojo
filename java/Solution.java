import javafx.util.Pair;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Comparator;

public class Solution {

    // java-string-compare
    public static String getSmallestAndLargest(String s, int k) {
        String smallest = s.substring(0, k);
        String largest = s.substring(0, k);
        for (int i = 1; i + k <= s.length(); i++) {
            String t = s.substring(i, i + k);
            if (t.compareTo(smallest) < 0) smallest = t;
            else if (t.compareTo(largest) > 0) largest = t;
        }

        return smallest + "\n" + largest;
    }


    // java-anagrams
    static boolean isAnagram(String a, String b) {
        if (a.length() != b.length()) return false;
        java.util.HashMap<Character, Integer> mapA = new java.util.HashMap<>();
        java.util.HashMap<Character, Integer> mapB = new java.util.HashMap<>();
        for (int i = 0; i < a.length(); i++) {
            char keyA = Character.toLowerCase(a.charAt(i));
            if (mapA.containsKey(keyA)) mapA.replace(keyA, mapA.get(keyA) + 1);
            else mapA.put(keyA, 1);
            char keyB = Character.toLowerCase(b.charAt(i));
            if (mapB.containsKey(keyB)) mapB.replace(keyB, mapB.get(keyB) + 1);
            else mapB.put(keyB, 1);
        }
        return mapA.equals(mapB);
    }

    class MyRegex {
        String pattern = "([01]?[0-9]?[0-9]|2[0-4][0-9]|25[0-5])\\.([01]?[0-9]?[0-9]|2[0-4][0-9]|25[0-5])\\.([01]?[0-9]?[0-9]|2[0-4][0-9]|25[0-5])\\.([01]?[0-9]?[0-9]|2[0-4][0-9]|25[0-5])";
    }

    // valid-username-checker
    public static final String regularExpression = "[A-Za-z][\\w_]{7,29}";

    // java-bigdecimal
    void code(String[] s) {
        java.util.ArrayList<javafx.util.Pair<BigDecimal, String>> pairs = new java.util.ArrayList<>();
        for (int i = 0; i < s.length - 2; i++) {
            //  seems unable to implement Comparable here
            String str = s[i];
            pairs.add(new javafx.util.Pair<>(new BigDecimal(str), str));
        }
        pairs.sort((o1, o2) -> o2.getKey().compareTo(o1.getKey()));
        for (int i = 0; i < pairs.size(); i++) {
            s[i] = pairs.get(i).getValue();
        }

    }

    // java-generics
    class Printer {
        <T> void printArray(T[] ts) {
            for (T t : ts) {
                System.out.println(t);
            }
        }

    }
}
