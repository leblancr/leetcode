import java.util.ArrayList;
import java.util.List;

public class FizzBuzz412 {
    private List<String> output = new ArrayList<>();

    public void calculateFizzBuzz(int limit) {
        System.out.println("For loop:");
        for (int n = 1; n <= limit; n++) {
            if (n % 3 == 0 && n % 5 == 0) {
                output.add("FizzBuzz");
            } else if (n % 5 == 0) {
                output.add("Buzz");
            } else if (n % 3 == 0) {
                output.add("Fizz");
            } else {
                output.add(Integer.toString(n));
            }
        }

        System.out.println(output);

        // Using list comprehension
        System.out.println("Using list comprehension:");
        output.clear(); // Clear the previous output
        for (int n = 1; n <= limit; n++) {
            output.add((n % 3 == 0 && n % 5 == 0) ? "FizzBuzz" :
                    (n % 3 == 0) ? "Fizz" :
                            (n % 5 == 0) ? "Buzz" :
                                    Integer.toString(n));
        }
        System.out.println(output);
    }
}
