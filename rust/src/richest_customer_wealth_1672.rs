pub fn calculate_richest_customer_wealth_1672(accounts: Vec<Vec<i32>>) -> i32 {
    let mut highest_balance = 0;

    // Iterate over each account
    for row in accounts.iter() {
        // Sum the wealth of the current account
        let sum: i32 = row.iter().sum();

        // Update with highest_balance or sum, whichever is greater
        highest_balance = highest_balance.max(sum);  //
    }

    highest_balance  // Return the highest balance
}