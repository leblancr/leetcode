mod running_sum_of_1d_array_1480;
mod richest_customer_wealth_1672;
mod fizz_buzz_412;

// mod brings it into scope, use lets you use a shorter name
use crate::leetcode::running_sum_of_1d_array_1480::calculate_running_sum;
use crate::leetcode::richest_customer_wealth_1672::calculate_richest_customer_wealth;
use crate::leetcode::fizz_buzz_412::calculate_fizz_buzz;
//use crate::leetcode::merge_strings_alternately_1768::Solution;

pub(crate) struct Leetcode;

impl Leetcode {
    pub fn running_sum_of_1d_array_1480(&self) {
        println!("1480. Running Sum of 1D Array");
        let numbers = [3, 1, 2, 10, 1];
        let result_list = calculate_running_sum(numbers);
        println!("result_list: {:?}\n", result_list);
    }

    pub fn  richest_customer_wealth_1672(&self) {
        println!("1672. Richest Customer Wealth");
        let accounts = [[1, 2, 3], [4, 5, 6], [7, 8, 9]];
        let highest_balance = calculate_richest_customer_wealth(accounts);
        println!("highest_balance: {highest_balance}\n");
    }

    pub fn  fizz_buzz_412(&self) {
        println!("412. Fizz Buzz");
        let limit = 16;  // check up to limit
        calculate_fizz_buzz(limit);
    }
}