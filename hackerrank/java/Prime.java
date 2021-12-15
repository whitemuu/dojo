import java.math.BigInteger;
import java.util.ArrayList;

import static java.lang.System.in;

class Prime {
    boolean isPrime(int i) {
        BigInteger bigInt = BigInteger.valueOf(i);
        return bigInt.isProbablePrime(100);
    }
    void checkPrime(int... ints){
//        ArrayList<String> primes = new ArrayList<>();
        for (int i : ints) {
            if (isPrime(i))
                System.out.print(i + " ");
        }
        System.out.println();
//        only java 7 provided
//        System.out.println(String.join(" ", primes));
    }
}
