# Given an integer array nums, return an array answer such that answer[i] is
# equal to the product of all the elements of nums except nums[i].
# The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
# You must write an algorithm that runs in O(n) time and without using the division operation.
#
# Example 1:
#
# Input: nums = [1,2,3,4]
# Output: [24,12,8,6]
#
# Example 2:
#
# Input: nums = [-1,1,0,-3,3]
# Output: [0,0,9,0,0]

class ProductArray:
    def __init__(self, input_array):
        print(f"input: {input_array}")
        self.input_array = input_array

    def product_of_array_except_self(self) -> list:
        output = []

        #
        for item in self.input_array:
            my_value = item
            result = 1

            for item2 in self.input_array:
                if item2 == my_value:
                    continue  # exclude yourself
                result *= item2

            output.append(result)

        return output

