import java.util.Arrays;
import java.util.Scanner;
import java.util.stream.IntStream;

public class JavaNegativeSubarray {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        scanner.nextLine();
        int[] ints = Arrays.stream(scanner.nextLine().split(" ")).mapToInt(Integer::parseInt).toArray();
        int n = 0;
        for (int i = 1; i < ints.length + 1; i++) {
            for (int j = 0; j <= ints.length - i; j++) {
                int[] values = Arrays.copyOfRange(ints, j, j + i);
                for (int value : values) {
                    System.out.print(value + " ");
                }
                System.out.println();
                if (IntStream.of(values).sum() < 0) n++;
            }
        }
        System.out.println(n);
    }
}


