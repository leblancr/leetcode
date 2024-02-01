pub fn calculate_running_sum(numbers: [i32; 5]) -> Vec<i32> {
    let mut running_sum = 0;
    let mut result: Vec<i32> = vec!();

    for numbers in numbers {
        running_sum += numbers;
        result.push(running_sum);
    }

    result
}

