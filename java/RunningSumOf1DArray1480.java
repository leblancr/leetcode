import java.util.ArrayList;
import java.util.List;

public class RunningSumOf1DArray1480 {
    public void calculateRunningSum() {

        int[] numbers = {3, 1, 2, 10, 1};
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
