class RunningSumOf1DArray1480:
    numbers = []

    def __init__(self, numbers):
        self.numbers = numbers

    def calculate_running_sum(self):
        running_sum = 0
        result = []

        print("input_list: ", self.numbers)

        for number in self.numbers:
            running_sum += number
            # print("running_sum: ", running_sum)
            result.append(running_sum)

        return result
