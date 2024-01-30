// running_sum_of_1d_array_1480.js
// print input list
// sum numbers
// append sums to result_list
let numbers = [3, 1, 2, 10, 1]
let running_sum = 0
let result_list = []

console.log("input_list: ", numbers)
console.log("running_sum: ", running_sum)

//
for (let num of numbers) {
    console.log("running_sum: ", running_sum);
    running_sum += num;
    result_list.push(running_sum);
}

console.log("result_list: ", result_list)
