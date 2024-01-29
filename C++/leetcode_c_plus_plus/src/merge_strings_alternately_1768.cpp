
// running_sum_of_1d_array_1480.cpp
#include "/home/rich/projects/leetcode/C++/c_plus_plus/include/running_sum_of_1d_array_1480.h"

std::vector<int> process_numbers(const std::vector<int>& numbers) {
    int running_sum = 0;
    std::vector<int> result_list;

    for (int num : numbers) {
        std::cout << num << " ";
        running_sum += num;
        result_list.push_back(running_sum);
    }

    std::cout << std::endl;

    for (int num : result_list) {
        std::cout << num << " ";
    }

    std::cout << std::endl;

    return result_list;
}
