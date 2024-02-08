import java.util.ArrayList;
import java.util.List;

public class FizzBuzz412 {
    private List<String> output = new ArrayList<>();
    private int limit;

    // Constructor with parameters
    public FizzBuzz412(int limit) {
        // Initialize instance variables with values passed as parameters
        this.limit = limit;
    }

    public void calculateFizzBuzz() {
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
