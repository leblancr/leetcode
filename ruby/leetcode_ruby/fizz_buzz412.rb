class FizzBuzz412
    def initialize(limit)
        @limit = limit
    end

    def calculate_fizz_buzz()
        output = []

        # create a list then join it
        for n in 1..@limit
            if n % 3 == 0 and n % 5 == 0
                output.append('FizzBuzz')
            elsif n % 5 == 0
                output.append('Buzz')
            elsif n % 3 == 0
                output.append('Fizz')
            else
                output.append(n.to_s)
            end
        end

        puts "join: " + output.join(', ') + "\n"

        # map creates a list
        output = (1..@limit).map do |n|
          if n % 3 == 0 && n % 5 == 0
            "FizzBuzz"
          elsif n % 3 == 0
            "Fizz"
          elsif n % 5 == 0
            "Buzz"
          else
            n.to_s
          end
        end

        return output
    end
end
