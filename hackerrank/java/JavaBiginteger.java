import java.io.*;
import java.math.BigInteger;
import java.util.*;

public class JavaBiginteger {

    private static final Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {
        BigInteger a = new BigInteger(scanner.nextLine());
        BigInteger b = new BigInteger(scanner.nextLine());
        System.out.println(a.add(b));
        System.out.println(a.multiply(b));
    }
}

