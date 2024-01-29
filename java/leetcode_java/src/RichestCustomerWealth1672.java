import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

public class RichestCustomerWealth1672 {
    public void calculateRunningSum(Vector<Integer> numbers) {
        System.out.print("1480. Running Sum of 1D Array");

        //int[] numbers = {3, 1, 2, 10, 1};
        int running_sum = 0;
        List<Integer> result_list = new ArrayList<>();

        // print the numbers array
        for (int num : numbers) {
            System.out.println(num);
            running_sum += num;
            result_list.add(running_sum);
        }

        System.out.println(result_list);
    }
}
