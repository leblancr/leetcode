import RunningSumOf1DArray1480

static void main(String[] args) {
    // 1480. Running Sum of 1D Array
    println "1480. Running Sum of 1D Array"
    def numbers = [1, 2, 3, 4, 5]

    running_sums = new RunningSumOf1DArray1480()
    def result_list = running_sums.calculateRunningSum(numbers)
    println "Result List: $result_list"
}

