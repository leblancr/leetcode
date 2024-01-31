
mod richest_customer_wealth_1672;
mod fizz_buzz_412;
mod merge_strings_alternately_1768;

use merge_strings_alternately_1768::Solution;
use crate::fizz_buzz_412::calculate_fizz_buzz;

mod running_sum_of_1d_array_1480;
fn main() {
    println!("1480. Running Sum of 1D Array");
    let nums = [3, 1, 2, 10, 1];
    println!("nums: {:?}", nums);
    // Convert the array to Vec<i32> and pass it to the function
    println!("result: {:?}\n", running_sum_of_1d_array_1480::calculate_running_sum(nums.to_vec()));

    println!("1672. Richest Customer Wealth");
    let accounts: Vec<Vec<i32>> = vec![
        vec![7, 1, 3],
        vec![2, 8, 7],
        vec![1, 9, 5]
    ];

    println!("Richest customer's wealth is: {:?}\n",
             richest_customer_wealth_1672::calculate_richest_customer_wealth_1672(accounts));

    println!("412. Fizz Buzz");
    let limit = 17;  // check up to limit
    let result = calculate_fizz_buzz(limit);
    println!("result: {:?}\n", result);

    println!("1768. Merge Strings Alternately");
    // Example 1 - expect "apbqcr"
    println!("{}", Solution::merge_alternately("abc".to_string(), "pqr".to_string()));

    // Example 2 - expect "apbqrs"
    println!("{}", Solution::merge_alternately("ab".to_string(), "pqrs".to_string()));

    // Example 3 - expect "apbqcd"
    println!("{}", Solution::merge_alternately("abcd".to_string(), "pq".to_string()));
}

