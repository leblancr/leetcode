#include <iostream>
#include <vector>

using namespace::std;


// 1480. Running Sum of 1D Array
int main() {
    // int numbers[5] = {3, 1, 2, 10, 1};
    std::vector<int> numbers = {3, 1, 2, 10, 1};
    int running_sum = 0;
    std::vector<int> result = {};

    // Using a range-based for loop (C++11 and later)
    for (int num : numbers) {
        std::cout << num << " ";
        running_sum += num;
        result.push_back(running_sum);
    }

    for (int i = 0; i < result.size(); ++i) {
        std::cout << " " << result[i];
    }

    std::cout << std::endl;

    for (int num : result) {
        cout << num << " ";
    }

    std::cout << std::endl;

    return 0;
}
