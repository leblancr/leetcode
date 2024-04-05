# 1342. Number of Steps to Reduce a Number to Zero
# Given an integer num, return the number of steps to reduce it to zero.
# In one step, if the current number is even, you have to divide it by 2,
# otherwise, you have to subtract 1 from it.

class NumSteps:
    def __init__(self, number):
        self.number = number

    def number_of_steps(self) -> int:
        steps = 0

        while self.number:
            # print(self.number)
            self.number = self.number // 2 if self.number % 2 == 0 else self.number - 1
            steps += 1

        return steps

