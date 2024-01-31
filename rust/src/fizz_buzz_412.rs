// fizz_buzz_412.js
// 412. Fizz Buzz
// mod 3 = fizz, mod 5 = buzz both = fizzbuzz none = int

pub(crate) fn calculate_fizz_buzz(limit: i32) {
    let mut output: Vec<String> = vec!();

    for n in 1..limit {
        if n % 3 == 0 && n % 5 == 0 {
            output.push("FizzBuzz".to_string());
        } else if n % 3 == 0 {
            output.push("Fizz".to_string());
        } else if n % 5 == 0 {
            output.push("Buzz".to_string());
        } else {
            output.push(n.to_string());
        }
    }

    println!("output: {:?}", output);
}

