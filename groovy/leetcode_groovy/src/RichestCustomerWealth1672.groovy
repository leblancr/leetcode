// RichestCustomerWealth1672.groovy

class RichestCustomerWealth1672 {
    // Static methods can be invoked without creating an instance of the class.
    static int calculateRichestCustomerWealth(List<List<Integer>> accounts) {
        int highestWealth = 0

        // Iterate over each customer's account
        for (List<Integer> account : accounts) {
            int wealth = account.sum() // Calculate the wealth of the current customer
            highestWealth = Math.max(highestWealth, wealth) // Update highest wealth if necessary
        }

        return highestWealth
    }
}
