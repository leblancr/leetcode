mod merge_strings_alternately_1768;
use merge_strings_alternately_1768::Solution;
mod running_sum_of_1d_array_1480;
mod richest_customer_wealth_1672;

fn main() {
    println!("1480. Running Sum of 1D Array");
    let nums = [3, 1, 2, 10, 1];
    // Convert the array to Vec<i32> and pass it to the function
    println!("result: {:?}", running_sum_of_1d_array_1480::calculate_running_sum(nums.to_vec()));

    println!("1672. Richest Customer Wealth");
    println!("Richest customer's wealth is: {:?}", richest_customer_wealth_1672::calculate_richest_customer_wealth_1672());

    println!("1768. Merge Strings Alternately");
    // Example 1 - expect "apbqcr"
    println!("{}", Solution::merge_alternately("abc".to_string(), "pqr".to_string()));

    // Example 2 - expect "apbqrs"
    println!("{}", Solution::merge_alternately("ab".to_string(), "pqrs".to_string()));

    // Example 3 - expect "apbqcd"
    println!("{}", Solution::merge_alternately("abcd".to_string(), "pq".to_string()));

 }

