// app.js - The main file that will import and call all the other files.
import { calculate_running_sum } from './running_sum_of_1d_array_1480.js';
import { calculate_richest_customer_wealth } from './richest_customer_wealth_1672.js';
import { calculate_fizz_buzz } from './fizz_buzz_412.js';

// 1480. Running Sum of 1D Array
const numbers = [1, 2, 3, 4, 5];
calculate_running_sum(numbers);
let result_list = calculate_running_sum(numbers)
console.log("result_list: ", result_list)

// 1672. Richest Customer Wealth
let accounts = [[1, 2, 3],
            [4, 5, 6],
            [7, 8, 9]]

console.log("highest_balance: ", calculate_richest_customer_wealth(accounts))

// 412. Fizz Buzz
let limit = 16;
console.log("output: ", calculate_fizz_buzz(limit))

