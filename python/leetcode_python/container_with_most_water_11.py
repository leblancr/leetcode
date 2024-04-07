# You are given an integer array height of length n.
# There are n vertical lines drawn such that the two endpoints of the ith line
# are (i, 0) and (i, height[i]).
#
# Find two lines that together with the x-axis form a container,
# such that the container contains the most water.
# Return the maximum amount of water a container can store.

# Example 1:
#
# 8     .                   .
# 7     |===========================.   the max area of water 7x7 = 49
# 6     |   .               |       | ^
# 5     |   |       .       |       |
# 4     |   |       |   .   |       |
# 3     |   |       |   |   |   .   | length     area = length x width
# 2     |   |   .   |   |   |   |   |
# 1 .   |   |   |   |   |   |   |   |
# 0_|___|___|___|___|___|___|___|___|_v_________________
#        <--         width       -->
#   0   1   2   3   4   5   6   7   8   width equals diff of array indexes
#
# Input: height = [1, 8, 6, 2, 5, 4, 8, 3, 7]
# Output: 49
# Explanation: The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7].
# In this case, the max area of water (blue section) the container can contain is 49.
#
# Example 2:
#
# Input: height = [1,1]
# Output: 1

class ContainerWithMostWater:
    def __init__(self, input_array):
        self.input_array = input_array

    def container_with_most_water(self) -> int:
        max_area = 0  # keep trck of max area

        # for each item multiply it by all other items and get max area.
        for idx_length in range(len(self.input_array)):
            max_area = 0  # reset max area each loop
            #print('idx_length', idx_length)  # height

            for idx_item in range(len(self.input_array)):
                #print('idx_item', idx_item)

                if idx_length == idx_item:
                    #print('continue')
                    continue  # exclude yourself

                width = abs(idx_length - idx_item)
                area = min(self.input_array[idx_length], self.input_array[idx_item]) * width

                #print('width', width)

                if area > max_area:
                    max_area = area

        return max_area
