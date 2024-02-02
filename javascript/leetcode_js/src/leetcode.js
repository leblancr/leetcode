// leetcode.js - The main file that will import and call all the other files.
import RunningSum from './running_sum_of_1d_array_1480.js';
import RichestCustomerWealth from './richest_customer_wealth_1672.js';
import FizzBuzz from './fizz_buzz_412.js';  // curly brace for non-default export

export default class Leetcode {
    runningSumOf1DArray1480() {
        console.log("1480. Running Sum of 1D Array")
        const numbers = [1, 2, 3, 4, 5];
        let result_list = new RunningSum(numbers)
        console.log("result_list: ", result_list)
    }

    richestCustomerWealth1672() {
        console.log("1672. Richest Customer Wealth")
        let accounts = [[1, 2, 3],
                        [4, 5, 6],
                        [7, 8, 9]]
        let rcw = new RichestCustomerWealth(accounts)
        console.log("highest_balance: ", rcw.calculate_richest_customer_wealth())
    }

    fizzBuzz412() {
        console.log("412. Fizz Buzz")
        let limit = 16;
        let fb = new FizzBuzz(limit)

        console.log("output: ", fb.calculate_fizz_buzz(limit))
    }
}