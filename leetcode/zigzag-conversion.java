// 1 0    H    H    H    H
// 2 1   9H   HH   HH   HH
// 3 2  8 H  H H  H H  H H
// 4 3 7  H H  H H  H H  H
// 5 46   HH   HH   HH   H
// 6 5    H    H    H    H


class Solution {
    public String convert(String s, int numRows) {
        if (numRows == 1) return s;

        int unit = numRows * 2 - 2;
        StringBuilder sb = new StringBuilder(s.length());
        for (int i = 0; i < s.length(); i += unit) sb.append(s.charAt(i));

        for (int i = 1; i < numRows - 1; i++) {
            for (int j = i; j < s.length(); j += unit) {
                sb.append(s.charAt(j));
                int j1 = j + (numRows - i) * 2 - 2;
                if (j1 < s.length())
                    sb.append(s.charAt(j1));
            }
        }

        for (int i = numRows - 1; i < s.length(); i += unit) sb.append(s.charAt(i));

        return sb.toString();
    }
}
