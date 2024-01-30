def calculate_running_sum():
    numbers = [3, 1, 2, 10, 1]
    running_sum = 0
    result = []

    print("input_list: ", numbers)

    for number in numbers:
        running_sum += number
        # print("running_sum: ", running_sum)
        result.append(running_sum)

    return result
