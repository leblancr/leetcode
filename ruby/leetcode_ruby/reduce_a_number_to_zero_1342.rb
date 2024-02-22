# 1342. Number of Steps to Reduce a Number to Zero
# Given an integer num, return the number of steps to reduce it to zero.
# In one step, if the current number is even, you have to divide it by 2,
# otherwise, you have to subtract 1 from it.

class NumberOfStepsToReduceANumberToZero1342
    def initialize(number)
        @number = number
    end

    def number_of_steps()
        steps = 0

        while @number != 0
            # puts @number
            if @number % 2 == 0
                @number = @number / 2
            else
                @number -= 1
            end
            steps += 1
        end

        return steps
    end
end
