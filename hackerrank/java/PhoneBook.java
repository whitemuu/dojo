import java.util.HashMap;
import java.util.Scanner;

public class PhoneBook {
    public static void main(String[] argh) {
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        in.nextLine();
        HashMap<String, Integer> map = new HashMap<>();
        for (int i = 0; i < n; i++) {
            String name = in.nextLine();
            int phone = in.nextInt();
            in.nextLine();
            map.put(name, phone);
        }
        while (in.hasNext()) {
            String s = in.nextLine();
            Integer phone = map.get(s);
            if (phone != null) System.out.println(s + "=" + phone);
            else System.out.println("Not found");
        }
        in.close();
    }
}
