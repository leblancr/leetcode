struct Solution;

// using peekable iterators
impl Solution {
    pub fn merge_alternately(word1: String, word2: String) -> String {
        let mut word3 = String::new();
        let (chars1, chars2) = (word1.chars(), word2.chars());
        let (mut iter1, mut iter2) = (chars1.peekable(), chars2.peekable());

        while iter1.peek().is_some() || iter2.peek().is_some() {
            if let Some(c1) = iter1.next() {
                word3.push(c1);
            }

            if let Some(c2) = iter2.next() {
                word3.push(c2);
            }
        }

        word3
    }
}

fn main() {
    // Example 1 - expect "apbqcr"
    println!("{}", Solution::merge_alternately("abc".to_string(), "pqr".to_string()));

    // Example 2 - expect "apbqrs"
    println!("{}", Solution::merge_alternately("ab".to_string(), "pqrs".to_string()));

    // Example 3 - expect "apbqcd"
    println!("{}", Solution::merge_alternately("abcd".to_string(), "pq".to_string()));
}

