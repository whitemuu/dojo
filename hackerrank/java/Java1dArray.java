import java.util.ArrayList;
import java.util.Scanner;
import java.util.stream.Stream;

public class Java1dArray {

    private static boolean canWin(int leap, int[] game) {
        // Return true if you can win the game; otherwise, return false.
        return group(game).stream().filter(e -> e.get(0).equals(1)).allMatch(e -> e.size() < leap);
    }

    private static ArrayList<ArrayList<Integer>> group(int[] ints) {
        ArrayList<ArrayList<Integer>> lists = new ArrayList<>();
        for (int i : ints) {
            try {
                ArrayList<Integer> last = lists.get(lists.size() - 1);
                if (last.get(0) == i) last.add(i);
                else {
                    ArrayList<Integer> list = new ArrayList<>();
                    list.add(i);
                    lists.add(list);
                }
            } catch (IndexOutOfBoundsException e) {
                ArrayList<Integer> list = new ArrayList<>();
                list.add(i);
                lists.add(list);
            }
        }
//        for (ArrayList<Integer> list : lists) {
//            System.out.print("[");
//            for (Integer integer : list) {
//                System.out.print(" " + integer);
//            }
//            System.out.println("]");
//        }
        return lists;
    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int q = scan.nextInt();
        while (q-- > 0) {
            int n = scan.nextInt();
            int leap = scan.nextInt();

            int[] game = new int[n];
            for (int i = 0; i < n; i++) {
                game[i] = scan.nextInt();
            }

            System.out.println((canWin(leap, game)) ? "YES" : "NO");
        }
        scan.close();
    }
}


