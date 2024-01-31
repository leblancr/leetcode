import RunningSumOf1DArray1480
import RichestCustomerWealth1672
import fizzBuzz412

static void main(String[] args) {
    println "1480. Running Sum of 1D Array"
    def numbers = [1, 2, 3, 4, 5]
    def running_sums = new RunningSumOf1DArray1480(numbers)
    def result_list = running_sums.calculateRunningSum()
    println "Result List: $result_list\n"

    println "1672. Richest Customer Wealth"
    def accounts = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    highest_balance = RichestCustomerWealth1672.calculateRichestCustomerWealth(accounts)
    println "highest_balance: $highest_balance\n"

    println "412. Fizz Buzz"
    def fizzBuzz = new fizzBuzz412()
    fizzBuzz.calculateFizzBuzz(16)
}

