class FizzBuzz:
    limit = 0

    def __init__(self, limit):
        self.limit = limit

    def calculate_fizz_buzz(self):
        output = []

        for n in range(1, self.limit):
            if n % 3 == 0 and n % 5 == 0:
                output.append('FizzBuzz')
            elif n % 5 == 0:
                output.append('Buzz')
            elif n % 3 == 0:
                output.append('Fizz')
            else:
                output.append(str(n))

        print(f"for loop: {output}")

        output = ["FizzBuzz" if n % 3 == 0 and n % 5 == 0
                  else "Fizz" if n % 3 == 0
                  else "Buzz" if n % 5 == 0
                  else str(n)
                  for n in range(1, 16)]

        print(f"list comp: {output}\n")
