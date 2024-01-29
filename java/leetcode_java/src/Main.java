// The main class that runs all the leetcode problems
import java.util.Vector;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        System.out.print("Running leetcode problems");

        // 1480. Running Sum of 1D Array
        Vector<Integer> numbers = new Vector<>(List.of(3, 1, 2, 10, 1));

        RunningSumOf1DArray1480 solution = new RunningSumOf1DArray1480();
        solution.calculateRunningSum(numbers);

        // 1672. Richest Customer Wealth

    }
}