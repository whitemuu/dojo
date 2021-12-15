import java.math.BigInteger;
import java.util.Scanner;

public class JavaPrimalityTest {

    private static final Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {
        String n = scanner.nextLine();
        scanner.close();
        BigInteger bigInteger = new BigInteger(n);
        System.out.println(bigInteger.isProbablePrime(10) ? "prime" : "not prime");
    }
}

