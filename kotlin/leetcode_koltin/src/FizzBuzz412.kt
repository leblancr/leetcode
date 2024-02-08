class FizzBuzz412(private val limit: Int) {
    fun fizzBuzzWithForLoop() {
        val output = mutableListOf<String>()
        println("Using for loop:")
        for (n in 1..limit) {
            when {
                n % 3 == 0 && n % 5 == 0 -> output.add("FizzBuzz")
                n % 3 == 0 -> output.add("Fizz")
                n % 5 == 0 -> output.add("Buzz")
                else -> output.add(n.toString())
            }
        }
        println(output)
    }

    fun fizzBuzzWithARange() {
        val output = mutableListOf<String>()
        println("Using a range:")
        // output.clear() // Clear the previous output
        for (n in 1..limit) {
            output.add(
                when {
                    n % 3 == 0 && n % 5 == 0 -> "FizzBuzz"
                    n % 3 == 0 -> "Fizz"
                    n % 5 == 0 -> "Buzz"
                    else -> n.toString()
                }
            )
        }
        println(output + "\n")
    }
}