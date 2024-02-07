public class NumberOfStepsToReduceANumberToZero1342 {
    Integer number;
    Integer steps;

    // Constructor method
    public NumberOfStepsToReduceANumberToZero1342(Integer number) {
        // Initialize instance variables
        this.number = number;
    }

    public Integer reduceANumberToZero(int number) {
        int steps = 0;

        while (this.number != 0) {
            System.out.printf("%d ", this.number);
            this.number = this.number % 2 == 0 ? this.number / 2 : this.number - 1;
            steps += 1;
        }

        return steps;
    }

}
