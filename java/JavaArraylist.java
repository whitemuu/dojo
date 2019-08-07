import java.util.Arrays;
import java.util.Scanner;

public class JavaArraylist {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        // jump /n
        scanner.nextLine();
        int[][] ints = new int[n][];
        while (n > 0) {
            ints[ints.length - n] = Arrays.stream(scanner.nextLine().split(" ")).skip(1).mapToInt(Integer::parseInt).toArray();
            n--;
        }
        int q = scanner.nextInt();
        while (q-- > 0) {
            int y = scanner.nextInt();
            int x = scanner.nextInt();
            try {
                System.out.println(ints[y - 1][x - 1]);
            } catch (ArrayIndexOutOfBoundsException e) {
                System.out.println("ERROR!");
            }

        }
    }
}


