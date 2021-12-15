import java.util.Scanner;

public class JavaLoops {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int t = in.nextInt();
        for (int i = 0; i < t; i++) {
            int a = in.nextInt();
            int b = in.nextInt();
            int n = in.nextInt();
            StringBuilder sb = new StringBuilder();
            int e = a;
            for (int n1 = 0; n1 < n; n1++) {
                e += Math.pow(2, n1) * b;
                sb.append(e);
                sb.append(" ");
            }
            System.out.println(sb.toString());
//            use scanl in haskell
//            TODO
//            IntStream.range(0, n).map(e ->
//                IntStream.range(0, e + 1).map(x -> Math.pow(2, x) * b).sum() + a).toString();
        }
        in.close();
    }
}
