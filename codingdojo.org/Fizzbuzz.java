for (int i = 1; i <= 100; i++) {
    if (i % (3 * 5 ) == 0) {
        if (i % 3 == 0) System.out.print("Fizz");
        if (i % 5 == 0) System.out.print("Buzz");
        System.out.println("");
    } else {
        System.out.println(i);
    }
}
