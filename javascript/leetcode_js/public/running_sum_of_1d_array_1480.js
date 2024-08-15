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
        const resultsDiv = document.getElementById('results'); // Select the placeholder element

        let running_sum = 0
        let result_list = []

        console.log("input_list: ", this.numbers)
        console.log("running_sum: ", running_sum)

        // push sums to result list
        for (let num of this.numbers) {
            running_sum += num;
            result_list.push(running_sum);
            console.log("running_sum: ", running_sum);
        }

        // Update the HTML with the results
//        resultsDiv.innerHTML = `
//          <p>input_list: ${this.numbers}</p>
//          <p>result_list: ${result_list}</p>
//        `;
        
        return result_list
    }
}
