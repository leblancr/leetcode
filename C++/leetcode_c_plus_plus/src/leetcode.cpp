// SPDX-FileCopyrightText: 2024 <copyright holder> <email>
// SPDX-License-Identifier: Apache-2.0
// These functions are called in main.cpp
#include <iostream>

#include "../include/leetcode.h"
#include "../include/running_sum_of_1d_array_1480.h"
#include "../include/richest_customer_wealth_1672.h"
#include "../include/fizz_buzz_412.h"

using namespace std;

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
    cout << "1480. Running Sum of 1D Array" << endl;
    int count = 0;
    vector<int> numbers = {1, 2, 3, 4, 5};
    int size = numbers.size();

    vector<int> result_list = calculate_running_sum(numbers);

    cout << "Result List: [";

    // append sums to result_list
    for (int num : result_list) {
        cout << num << (++count < size ? " " : "");
    }

    cout << "]\n\n";
}

// 1672. Richest Customer Wealth
void Leetcode::richest_customer_wealth_1672() {
    cout << "1672. Richest Customer Wealth" << endl;
    vector<vector<int>> accounts = {
        {1, 2, 3},
        {4, 5, 6},
        {7, 8, 9}
    };
    int rcw = calculate_richest_customer_wealth(accounts);
    cout << "Richest customer's wealth is: " << rcw << endl << endl;
}

// 412. Fizz Buzz
void Leetcode::fizz_buzz_412() {
    cout << "412. Fizz Buzz" << endl;
    int limit = 17;  // check up to limit
    vector<string> result = calculate_fizz_buzz(limit);

    for (const auto& item : result) {
        cout << item << " ";
    }
}
