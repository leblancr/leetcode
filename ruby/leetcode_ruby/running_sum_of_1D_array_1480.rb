class RunningSumOf1DArray1480
    def initialize(numbers)
        @numbers = numbers
    end

    def calculate_running_sum()
        running_sum = 0
        result = []

        @numbers.each do |number|
            running_sum += number
            # "running_sum: #{running_sum}"
            result.append(running_sum)
        end

        return result
    end
end
