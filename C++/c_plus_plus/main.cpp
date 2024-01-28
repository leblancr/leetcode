#include <stdio.h>
#include <stdlib.h>
//#include "RunningSumOf1DArray1480.h"
#include <iostream>
#include <vector>

int main(int argc, char *argv[])
{
   std::vector<int> numbers = {3, 1, 2, 10, 1};
    int running_sum = 0;
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
        std::cout << num << " ";
    }

    std::cout << std::endl;

    return 0;
}
