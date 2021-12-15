// BF
class Solution {
    public String longestPalindrome(String s) {
        String lgst = "";
        for (int i = 0; i < s.length() - lgst.length(); i++) {
            for (int j = i + lgst.length() + 1; j <= s.length(); j++) {
                if (isSubPalindromic(s, i, j))
                    lgst = s.substring(i, j);
            }
        }
        return lgst;
    }

    // end index exclusive
    private boolean isSubPalindromic(String str, int s, int e) {
        e -= 1;
        while (s < e) {
            if (str.charAt(s) != str.charAt(e))
                return false;
            s++;
            e--;
        }
        return true;
    }
}
