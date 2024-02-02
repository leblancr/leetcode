pub(crate) struct RichestCustomerWealth {
    accounts: [[i32; 3]; 3], // like self.accounts
}

impl RichestCustomerWealth {
    // Constructor method
    pub(crate) fn new(accounts: [[i32; 3]; 3]) -> Self {
        RichestCustomerWealth { accounts } // value goes to self.accounts
    }

    pub fn calculate_richest_customer_wealth(&self) -> i32 {
        let mut highest_balance = 0;

        // Iterate over each account
        for row in self.accounts.iter() {
            // Sum the wealth of the current account
            let sum: i32 = row.iter().sum();

            // Update with highest_balance or sum, whichever is greater
            highest_balance = highest_balance.max(sum);  //
        }

        highest_balance  // Return the highest balance
    }
}