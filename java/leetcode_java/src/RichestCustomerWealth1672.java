import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

class RichestCustomerWealth1672 {
    public int calculateRichestCustomerWealth(List<List<Integer>> accounts) {
        //System.out.print("1672. Richest Customer Wealth");
        int highest_balance = 0;

        System.out.println("Accounts:");
        // sum each account and see who has the highest balance
        for (List<Integer> row : accounts) {
            System.out.println(row);
            int sum = 0;
            for (int num : row) {
                sum += num;
            }
            highest_balance = Math.max(sum, highest_balance);
        }

        return highest_balance;
    }
}
