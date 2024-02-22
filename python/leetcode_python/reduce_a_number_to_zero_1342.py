# 1342. Number of Steps to Reduce a Number to Zero
# Given an integer num, return the number of steps to reduce it to zero.
# In one step, if the current number is even, you have to divide it by 2,
# otherwise, you have to subtract 1 from it.

def number_of_steps(num: int) -> int:

    steps = 0

    while num:
        print(num)
        num = num // 2 if num % 2 == 0 else num - 1
        steps += 1

    return steps


if __name__ == '__main__':
    for n in range(15):
        print(f"Number of steps: {number_of_steps(n)}")


