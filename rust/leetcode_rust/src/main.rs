mod leetcode;
// mod puts names in font of things, use brings it into scope and lets you use a shorter name?
use crate::leetcode::Leetcode;


fn main() {
    let leetcode = Leetcode;

    leetcode.running_sum_of_1d_array_1480();
    leetcode.richest_customer_wealth_1672();
    leetcode.fizz_buzz_412();
}

