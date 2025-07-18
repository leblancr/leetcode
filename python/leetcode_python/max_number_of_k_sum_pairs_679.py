# You are given an integer array nums and an integer k.
# In one operation, you can pick two numbers from the array whose sum equals k and
# remove them from the array.
#
# Return the maximum number of operations you can perform on the array.
#
# Example 1:
#
# Input: nums = [1,2,3,4], k = 5
# Output: 2
# Explanation: Starting with nums = [1,2,3,4]:
# - Remove numbers 1 and 4, then nums = [2,3]
# - Remove numbers 2 and 3, then nums = []
# There are no more pairs that sum up to 5, hence a total of 2 operations.
#
# Example 2:
#
# Input: nums = [3,1,3,4,3], k = 6
# Output: 1
# Explanation: Starting with nums = [3,1,3,4,3]:
# - Remove the first two 3's, then nums = [1,4,3]
# There are no more pairs that sum up to 6, hence a total of 1 operation.


class MaxPairs:
    def __init__(self, input_data):
        self.input_data = input_data

    def max_number_of_k_sum_pairs(self) -> int:
        operations = 0

        # For each data_dict unpack k, nums
        for data_dict in self.input_data:
            print(data_dict)
            # for each k, nums find max k-sum pairs
            for k, nums in data_dict.items():
                print(f"k: {k}, nums: {nums}")
                nums.sort()

                left = 0
                right = len(nums) - 1
                operations = 0

                while left < right:
                    if (nums[left] + nums[right]) == k:
                        operations += 1
                        left += 1
                        right -= 1
                    elif (nums[left] + nums[right]) < k:
                        left += 1
                    else:
                        right -= 1
        return operations
