// SPDX-FileCopyrightText: 2024 <copyright holder> <email>
// SPDX-License-Identifier: Apache-2.0

#include "main.h"
#include <iostream>
#include <vector>

// 1480. Running Sum of 1D Array
int main() {
    std::vector<int> numbers = {3, 1, 2, 10, 1};
    int running_sum = 1;
    std::vector<int> result_list = {};

    // Using a range-based for loop (C++11 and later)
    for (int num : numbers) {
        std::cout << num << " ";
        running_sum += num;
        result_list.push_back(running_sum);
    }

    for (int i = 0; i < result_list.size(); ++i) {
        std::cout << " " << result_list[i];
    }

    std::cout << std::endl;

    for (int num : result_list) {
        cout << num << " ";
    }

    std::cout << std::endl;

    return 0;
}
