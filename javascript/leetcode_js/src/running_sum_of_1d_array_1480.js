// running_sum_of_1d_array_1480.js
// 1480. Running Sum of 1D Array
// print input list
// sum numbers
// add sums to result_list

export default class RunningSum {
    constructor(numbers) {
        this.numbers = numbers;
    }

    calculate_running_sum(numbers) {
        let running_sum = 0
        let result_list = []

        console.log("input_list: ", numbers)
        console.log("running_sum: ", running_sum)

        // push sums to result list
        for (let num of numbers) {
            running_sum += num;
            result_list.push(running_sum);
            console.log("running_sum: ", running_sum);
        }

        return result_list
    }
}
