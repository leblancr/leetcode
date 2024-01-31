import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

public class RunningSumOf1DArray1480 {
    Vector<Integer> numbers;

    // Constructor method
    public RunningSumOf1DArray1480(Vector<Integer> numbers) {
        // Initialize instance variables
        this.numbers = numbers;
    }

    public List<Integer> calculateRunningSum() {
        //System.out.print("1480. Running Sum of 1D Array");

        //int[] numbers = {3, 1, 2, 10, 1};
        int running_sum = 0;
        List<Integer> result_list = new ArrayList<>();

        // print the numbers array
        System.out.print("input: ");
        System.out.println(numbers);

        for (int num : numbers) {
            //System.out.printf("%d ", num);
            running_sum += num;
            result_list.add(running_sum);
        }

        return result_list;
     }
}
