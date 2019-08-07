import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class TagContentExtractor {

    public static final Pattern p = Pattern.compile("<(\\p{Print}+)>([^<>]+)<\\/\\1>");

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int testCases = Integer.parseInt(in.nextLine());
        while (testCases-- > 0) {
            String line = in.nextLine();

            //Write your code here
            Matcher m = p.matcher(line);
            if (!m.find()) System.out.println("None");
            else do System.out.println(m.group(2)); while (m.find());
        }
    }
}

