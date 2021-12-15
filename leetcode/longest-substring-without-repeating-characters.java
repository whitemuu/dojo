// unfamiliar
class Solution {
    public int lengthOfLongestSubstring(String s) {
        // byte[] b = s.getBytes();
        if (s.length() == 0) return 0;
        int ans = 1;
        for (int i = 0, j = 1; j < s.length();) {
            int d = i;

            while (j < s.length()) {
                d = findSame(s, i, j);

                if (d == j) j++;
                else break;
            }

            if (j - i > ans) ans = j - i;

            i = d + 1;
            j++;
        }
        return ans;
    }

    private int findSame(String s, int i, int t) {
        while (i < t) {
            if (s.charAt(i) == s.charAt(t)) return i;
            i++;
        }
        return i;
    }
}
