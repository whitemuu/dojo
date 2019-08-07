import java.util.Scanner;

public class JavaStringTokens {

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        String s = scan.nextLine().trim();
        // Write your code here.
        if (s.length() == 0) {
            System.out.println(0);
            return;
        }
        String[] ss = s.split("[ !,?._'@]+");
        System.out.println(ss.length);
        for (String str : ss) {
            System.out.println(str);
        }
    }
}

