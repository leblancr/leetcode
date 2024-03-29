import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Vector;

// Methods to do the leetcode problems
public class Leetcode {
    void runningSumOf1DArray1480() {
        System.out.println("1480. Running Sum of 1D Array");
        Vector<Integer> numbers = new Vector<>(List.of(3, 1, 2, 10, 1));
        RunningSumOf1DArray1480 solution1480 = new RunningSumOf1DArray1480(numbers);
        List<Integer> resultList = solution1480.calculateRunningSum();
        System.out.println("output: " + resultList + "\n");
    }

    void richestCustomerWealth1672() {
        System.out.println("1672. Richest Customer Wealth");
        int rcw = getRcw();
        System.out.printf("Richest customer's wealth is %d\n\n", rcw);
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

    void fizzBuzz412() {
        System.out.println("412. Fizz Buzz");
        int limit = 16;  // go up to limit
        FizzBuzz412 fizzBuzz = new FizzBuzz412(limit);
        fizzBuzz.calculateFizzBuzz();
        System.out.printf("\n\n");
    }

    void numberOfStepsToReduceANumberToZero1342() {
        System.out.println("1342. Number of Steps to Reduce a Number to Zero");
        int number = 16;
        NumberOfStepsToReduceANumberToZero1342 reduceANumber = new NumberOfStepsToReduceANumberToZero1342(number);
        int ns = reduceANumber.reduceANumberToZero(number);
        System.out.printf("Number of steps %d\n\n", ns);
    }

}
