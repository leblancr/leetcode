class fizzBuzz412 {
    def calculateFizzBuzz(limit) {
        def output = []

        for (n in 1..limit) {
            if (n % 3 == 0 && n % 5 == 0) {
                output.add('FizzBuzz')
            } else if (n % 5 == 0) {
                output.add('Buzz')
            } else if (n % 3 == 0) {
                output.add('Fizz')
            } else {
                output.add(n.toString())
            }
        }

        println(output)

        // Using list comprehension
        output = (1..limit).collect { n ->
            (n % 3 == 0 && n % 5 == 0) ? 'FizzBuzz' :  // colon like else
                    (n % 3 == 0) ? 'Fizz' :
                            (n % 5 == 0) ? 'Buzz' :
                                    n.toString()
        }
        println(output)
    }
}
