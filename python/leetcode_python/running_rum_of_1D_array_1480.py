def calculate_running_sum():
    nums = [3, 1, 2, 10, 1]
    running_sum = 0
    result = []

    for item in nums:
        running_sum += item
        result.append(running_sum)

    print(result)
