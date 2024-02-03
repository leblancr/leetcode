class NumberOfStepsToReduceANumberToZero1342 {
    int number = 0

    // Constructor with parameter
    def NumberOfStepsToReduceANumberToZero1342(number) {
        this.number = number
    }

    // Constructor with default values
    def NumberOfStepsToReduceANumberToZero1342() {
        println "Initializing MyClass with default values"
    }

    def numberOfStepsToReduceANumberToZero1342() {
        println  "input: $number"
        int iter = 0

        // if self.number == 0 loop ends
        while (this.number) {
            "Number: $number"
            this.number = this.number % 2 == 0 ? this.number / 2 : this.number - 1;
            iter++;
        }
        return iter;
    }
}
