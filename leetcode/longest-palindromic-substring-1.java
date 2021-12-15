class Solution {
    public String longestPalindrome(String s) {
        if (s.trim().length() == 0) return "";
        String l = s.substring(0, 1);
        for (int i = 1; i < s.length() - 1; i++) {
            for (int offset = 1;
                 i - offset >= 0 && i + offset < s.length() && s.charAt(i - offset) == s.charAt(i + offset);
                 offset++) {
                if (offset * 2 + 1 > l.length())
                    l = s.substring(i - offset, i + offset + 1);
            }

        }
        for (int i = 0; i < s.length() - 1; i++) {
            if (s.charAt(i) == s.charAt(i + 1)) {
                if (2 > l.length()) l = s.substring(i, i + 2);
                for (int offset = 1;
                     i - offset >= 0 && i + 1 + offset < s.length() && s.charAt(i - offset) == s.charAt(i + 1 + offset);
                     offset++) {
                    if (offset * 2 + 2 > l.length())
                        l = s.substring(i - offset, i + offset + 2);
                }
            }

        }

        return l;
    }
}
