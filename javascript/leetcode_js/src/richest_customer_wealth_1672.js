// richest_customer_wealth_1672.js
// 1672. Richest Customer Wealth
// sum each account
// return highest balance

export default class RichestCustomerWealth {
    constructor(accounts) {
        this.accounts = accounts;
    }

    calculate_richest_customer_wealth() {
        let highest_balance = 0;

        // sum each account and see who has the highest balance
        for (let row of this.accounts) {
            let sum = row.reduce((accumulator, currentValue) => accumulator + currentValue, 0);
            highest_balance = (sum > highest_balance) ? sum : highest_balance;
        }

        return highest_balance
    }
}

