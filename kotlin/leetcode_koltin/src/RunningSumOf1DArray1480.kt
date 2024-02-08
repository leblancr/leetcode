class RunningSumOf1DArray1480(private val numbers: List<Int>) {
    fun calculateRunningSum(): List<Int> {
        var runningSum = 0
        val resultList = mutableListOf<Int>()

        println("input: $numbers")

        for (num in numbers) {
            runningSum += num
            resultList.add(runningSum)
        }

        return resultList
    }
}
