// richest_customer_wealth_1672.cpp
#include <algorithm>
#include <numeric>

#include "/home/rich/projects/leetcode/C++/leetcode_c_plus_plus/include/richest_customer_wealth_1672.h"

int calculate_richest_customer_wealth(std::vector<std::vector<int>> &accounts)
{
    int highest_balance = 0;

    // sum each account and see who has the highest balance
    for (const auto& row : accounts) {
        int sum = std::accumulate(row.begin(), row.end(), 0);
        std::cout << sum << std::endl;
        highest_balance = std::max(highest_balance, sum);
    }

    std::cout << std::endl;

    return highest_balance;
}

