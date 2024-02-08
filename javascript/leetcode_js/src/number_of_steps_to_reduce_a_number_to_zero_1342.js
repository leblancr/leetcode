// number_of_steps_to_reduce_a_number_to_zero_1342.js
// 1342. Number of Steps to Reduce a Number to Zero
// In one step, if the current number is even, you have to divide it by 2,
// otherwise, you have to subtract 1 from it.

export default class ReduceToZero {
    constructor(number) {
        this.number = number;
    }

    calculate_number_of_steps_to_reduce_a_number_to_zero() {
        let steps = 0

        console.log("number: ", this.number)
        console.log("steps: ", steps)

        while(this.number) {
            this.number = this.number % 2 == 0 ? this.number / 2 : this.number -= 1
            steps++
            console.log("number: ", this.number)
            console.log("steps: ", steps)
        }

        return steps
    }
}
