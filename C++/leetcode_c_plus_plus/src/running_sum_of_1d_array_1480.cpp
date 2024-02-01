// running_sum_of_1d_array_1480.cpp
#include "/home/rich/projects/leetcode/C++/leetcode_c_plus_plus/include/running_sum_of_1d_array_1480.h"

std::vector<int> calculate_running_sum(const std::vector<int>& numbers) {
    int running_sum = 0;
    int count = 0;
    int size = numbers.size();
    std::vector<int> result_list;

    std::cout << "input: [";

    // append sums to result_list, print input as you go
    for (int num : numbers) {
        std::cout << num << (++count < size ? " " : "");
        running_sum += num;
        result_list.push_back(running_sum);
    }

    std::cout << "]" << std::endl;

    return result_list;
}
