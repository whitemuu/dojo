class Solution {
    public String intToRoman(int num) {
        String[] symbols = new String[] {"I", "V", "X", "L", "C", "D", "M"};
        int[]    values  = new int[]    {  1,   5,  10,  50, 100, 500,1000};

        StringBuilder sb = new StringBuilder();
        sb.append("M".repeat(num / 1000));
        num %= 1000;

        for (int i = 4; i >= 0; i -= 2) {
            if (num >= values[i] * 9) {
                sb.append(symbols[i] + symbols[i + 2]);
            } else if (num >= values[i] * 5) {
                sb.append(symbols[i+1]);  
                sb.append(symbols[i].repeat((num - values[i] * 5) / values[i]));  
            } else if (num >= values[i] * 4) {
                sb.append(symbols[i] + symbols[i + 1]);
            } else {
                sb.append(symbols[i].repeat(num / values[i]));
            }
            num %= values[i];
        }
        
        return sb.toString();
    }
}
