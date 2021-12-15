import java.util.Arrays;
import java.util.List;
import java.util.Scanner;
import java.util.stream.Collectors;

public class JavaList {

    private static final Scanner SCANNER = new Scanner(System.in);

    public static void main(String[] args) {
        int n = SCANNER.nextInt();
        SCANNER.nextLine();
//        List<Integer> list = Arrays.stream(SCANNER.nextLine().split(" ")).mapToInt(Integer::parseInt).boxed().collect(Collectors.toList());
        List<Integer> list = Arrays.stream(SCANNER.nextLine().split(" ")).map(Integer::parseInt).collect(Collectors.toList());
        int q = SCANNER.nextInt();
        while (q-- > 0) {
            String query = SCANNER.next();
            switch (query) {
                case "Insert":
                    list.add(SCANNER.nextInt(), SCANNER.nextInt()); break;
                case "Delete":
                    list.remove(SCANNER.nextInt());
            }
        }
        for (Integer i : list) {
            System.out.print(i + " ");
        }

    }
}


