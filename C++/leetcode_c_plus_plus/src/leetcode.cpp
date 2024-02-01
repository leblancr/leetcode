// SPDX-FileCopyrightText: 2024 <copyright holder> <email>
// SPDX-License-Identifier: Apache-2.0
// These functions are called in main.cpp
#include <iostream>

#include "../include/leetcode.h"
#include "../include/running_sum_of_1d_array_1480.h"
#include "../include/richest_customer_wealth_1672.h"
#include "../include/fizz_buzz_412.h"

// implement functions defined in the .h file
// Constructor
Leetcode::Leetcode() {
    // Constructor code
}

// Destructor
Leetcode::~Leetcode() {
    // Destructor code
}

// 1480. Running Sum of 1D Array
void Leetcode::running_sum_of_1d_array_1480() {
    std::cout << "1480. Running Sum of 1D Array" << std::endl;
    std::vector<int> numbers = {3, 1, 2, 10, 1};
    std::vector<int> result_list = calculate_running_sum(numbers);
    std::cout << std::endl;
}


// 1672. Richest Customer Wealth
void Leetcode::richest_customer_wealth_1672() {
    std::cout << "1672. Richest Customer Wealth" << std::endl;
    std::vector<std::vector<int>> accounts = {
        {1, 2, 3},
        {4, 5, 6},
        {7, 8, 9}
    };
    int rcw = calculate_richest_customer_wealth(accounts);
    std::cout << "Richest customer's wealth is: " << rcw << std::endl;
    std::cout << std::endl;
}

// 412. Fizz Buzz
void Leetcode::fizz_buzz_412() {
    std::cout << "412. Fizz Buzz" << std::endl;
    int limit = 16;  // check up to limit
    std::vector<std::string> result = calculate_fizz_buzz(limit);

    for (const auto& item : result) {
        std::cout << item << " ";
    }
}
