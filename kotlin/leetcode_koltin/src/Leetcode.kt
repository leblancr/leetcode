class Leetcode {
    fun runningSumOf1DArray1480() {
        println("1480. Running Sum of 1D Array")
        val numbers = listOf(3, 1, 2, 10, 1)
        val solution1480 = RunningSumOf1DArray1480(numbers)
        val resultList: List<Int> = solution1480.calculateRunningSum()
        println("output: $resultList\n")
    }

    fun richestCustomerWealth1672() {
        println("1672. Richest Customer Wealth")

        // build customer accounts
        val accounts: MutableList<List<Int>> = ArrayList()
        val list1: List<Int> = ArrayList(mutableListOf(1, 2, 3))
        val list2: List<Int> = ArrayList(mutableListOf(4, 5, 6))
        val list3: List<Int> = ArrayList(mutableListOf(7, 8, 9))
        accounts.add(list1)
        accounts.add(list2)
        accounts.add(list3)
        println("accounts: $accounts")

        val solution1672 = RichestCustomerWealth1672(accounts)
        val rcw = solution1672.calculateRichestCustomerWealth()
        println("Richest customer's wealth: $rcw\n")
    }

    fun fizzBuzz412() {
        println("412. Fizz Buzz")
        val limit = 16
        val fizzBuzz = FizzBuzz412(limit)
        fizzBuzz.fizzBuzzWithARange()
        fizzBuzz.fizzBuzzWithForLoop()
    }

    fun numberOfStepsToReduceANumberToZero1342() {
        println("1342. Number of Steps to Reduce a Number to Zero")
//        val number = 16
//        val reduceANumber: NumberOfStepsToReduceANumberToZero1342 = NumberOfStepsToReduceANumberToZero1342(number)
//        val ns: Int = reduceANumber.reduceANumberToZero(number)
//        System.out.printf("Number of steps %d\n\n", ns)
    }


}