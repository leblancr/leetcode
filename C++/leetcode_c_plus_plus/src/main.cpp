// Main.cpp
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <vector>

#include "/home/rich/projects/leetcode/C++/leetcode_c_plus_plus/include/running_sum_of_1d_array_1480.h"
#include "/home/rich/projects/leetcode/C++/leetcode_c_plus_plus/include/richest_customer_wealth_1672.h"

int main(int argc, char* argv[]) {
    // 1480. Running Sum of 1D Array
    std::cout << "1480. Running Sum of 1D Array" << std::endl;
    std::vector<int> numbers = {3, 1, 2, 10, 1};
    std::vector<int> result_list = process_numbers(numbers);
    std::cout << std::endl;

    // 1672. Richest Customer Wealth
    std::cout << "1672. Richest Customer Wealth" << std::endl;
    std::vector<std::vector<int>> accounts = {
        {1, 2, 3},
        {4, 5, 6},
        {7, 8, 9}
    };

    int rcw = calculate_richest_customer_wealth(accounts);
    std::cout << "Richest customer's wealth is: " << rcw << std::endl;

    return 0;
}