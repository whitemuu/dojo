import java.text.NumberFormat;
import java.util.Locale;
import java.util.Scanner;

public class JavaCurrencyFormatter {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double payment = scanner.nextDouble();
        scanner.close();

        NumberFormat chinaCurrencyFormatter = NumberFormat.getCurrencyInstance(Locale.CHINA);
        String china = chinaCurrencyFormatter.format(payment);
        NumberFormat usCurrencyFormatter = NumberFormat.getCurrencyInstance(Locale.US);
        String us = usCurrencyFormatter.format(payment);
        NumberFormat franceCurrencyFormatter = NumberFormat.getCurrencyInstance(Locale.FRANCE);
        String france = franceCurrencyFormatter.format(payment);
        NumberFormat indiaCurrencyFormatter = NumberFormat.getCurrencyInstance(new Locale("en", "IN"));
        String india = indiaCurrencyFormatter.format(payment);

//        TODO
        // currencyFormatter.setCurrency(Currency.getInstance(Locale.US));
        // String us = currencyFormatter.format(payment);
        // currencyFormatter.setCurrency(Currency.getInstance(Locale.FRANCE));
        // String france = currencyFormatter.format(payment);
        // currencyFormatter.setCurrency(Currency.getInstance(new Locale("en", "IN")));
        // String india = currencyFormatter.format(payment);

        System.out.println("US: " + us);
        System.out.println("India: " + india);
        System.out.println("China: " + china);
        System.out.println("France: " + france);
    }
}
