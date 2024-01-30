// RunningSumOf1DArray1480.groovy

class RunningSumOf1DArray1480 {
    // Define the function to calculate the running sum
    def calculateRunningSum() {
        println "input_list: " + numbers.toString()
         runningSum = 0
         result = []

        numbers.each { num ->
            runningSum += num
            result.add(runningSum)
        }
        return result
    }
}