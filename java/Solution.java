import java.util.ArrayList;
import java.util.List;


public class Solution {
    int[] numbers = {3, 1, 2, 10, 1};
    int running_sum = 0;
    List<Integer> result_list = new ArrayList<>();

    public static void main(String[] args) {
        // Create an instance of the Solution class
        Solution solution = new Solution();

        // print the numbers array
        for (int num : solution.numbers) {
            System.out.println(num);
            solution.running_sum += num;
            solution.result_list.add(solution.running_sum);
        }

        System.out.println(solution.result_list);
    }
}
