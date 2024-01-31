// The main class that runs all the leetcode problems
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Vector;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        System.out.println("Running leetcode problems");

        System.out.println("1480. Running Sum of 1D Array");
        Vector<Integer> numbers = new Vector<>(List.of(3, 1, 2, 10, 1));
        RunningSumOf1DArray1480 solution1480 = new RunningSumOf1DArray1480(numbers);
        List<Integer> result_list = solution1480.calculateRunningSum();
        System.out.print("output: ");
        System.out.println(result_list);
        System.out.println();

        System.out.println("1672. Richest Customer Wealth");
        int rcw = getRcw();
        System.out.printf("Richest customer's wealth is %d\n\n", rcw);

        System.out.println("412. Fizz Buzz");
        int limit = 16;
        FizzBuzz412 fizzBuzz = new FizzBuzz412();
        fizzBuzz.calculateFizzBuzz(limit);  // go up to limit
    }

    // build customer accounts
    private static int getRcw() {
        List<List<Integer>> accounts = new ArrayList<>();
        List<Integer> list1 = new ArrayList<>(Arrays.asList(1, 2, 3));
        List<Integer> list2 = new ArrayList<>(Arrays.asList(4, 5, 6));
        List<Integer> list3 = new ArrayList<>(Arrays.asList(7, 8, 9));
        accounts.add(list1);
        accounts.add(list2);
        accounts.add(list3);

        RichestCustomerWealth1672 solution1672 = new RichestCustomerWealth1672();
        return solution1672.calculateRichestCustomerWealth(accounts);
    }
}