// RunningSumOf1DArray1480.groovy

class RunningSumOf1DArray1480 {
    def numbers

    // Constructor definition
    RunningSumOf1DArray1480(numbers) {
        println "numbers: $numbers"
        this.numbers = numbers
    }

    // Define the function to calculate the running sum
    def calculateRunningSum() {
        def runningSum = 0
        def result = []

        this.numbers.each { num ->
            runningSum += num
            result.add(runningSum)
        }
        return result
    }
}