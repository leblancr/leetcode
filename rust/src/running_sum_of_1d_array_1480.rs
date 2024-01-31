
pub fn calculate_running_sum(nums: Vec<i32>) -> Vec<i32> {
    // let nums = [3, 1, 2, 10, 1];
    let mut running_sum = 0;
    let mut result: Vec<i32> = vec!();

    for num in nums {
        running_sum += num;
        // println!("{}", num);
        // println!("{}", running_sum);
        result.push(running_sum);
    }

    result
}

