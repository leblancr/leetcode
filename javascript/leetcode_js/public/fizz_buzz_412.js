// fizz_buzz_412.js
// 412. Fizz Buzz
// mod 3 = fizz, mod 5 = buzz both = fizzbuzz none = int

export default class FizzBuzz {
    constructor(limit) {
        this.limit = limit;
    }

    calculate_fizz_buzz() {
        let output = [];

        for (let n = 1; n < this.limit; n++) {
            if (n % 3 === 0 && n % 5 === 0) {
                output.push('FizzBuzz');
            } else if (n % 3 === 0) {
                output.push('Fizz');
            } else if (n % 5 === 0) {
                output.push('Buzz');
            } else {
                output.push(String(n));
            }
        }

        return output;
    }
}

