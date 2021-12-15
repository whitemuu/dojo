import java.util.Scanner;
import java.util.Stack;

public class JavaStack {
    private static boolean match(char c1, char c2) {
        switch (c1) {
            case '(':
                return c2 == ')';
            case '[':
                return c2 == ']';
            case '{':
                return c2 == '}';
            default:
                return false;
        }
    }

    public static void main(String[] argh) {
        Scanner sc = new Scanner(System.in);

        w:
        while (sc.hasNext()) {
            String input = sc.next();
            Stack<Character> chars = new Stack<>();
            for (int i = 0; i < input.length(); i++) {
                char c = input.charAt(i);
                if (c == '[' || c == '{' || c == '(') chars.push(c);
                else {
                    if (chars.isEmpty() || !match(chars.pop(), c)) {
                        System.out.println(false);
                        continue w;
                    }
                }
            }
            if (chars.isEmpty()) System.out.println(true);
            else System.out.println(false);
        }

    }
}
