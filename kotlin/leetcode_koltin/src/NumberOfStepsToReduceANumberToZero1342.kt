class NumberOfStepsToReduceANumberToZero1342(private var number: Int) {
    private var steps: Int = 0

    fun reduceANumberToZero(): Int {
        while (number != 0) {
            println("$number ")
            number = if (number % 2 == 0) number / 2 else number - 1
            steps++
        }
        return steps
    }
}