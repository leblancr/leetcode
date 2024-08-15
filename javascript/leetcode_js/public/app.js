// app.js - The main file that will import and call all the other files.
import './logger.js'; // Import the logger to override console.log
import Leetcode from './leetcode.js';
import {logAsHeading1} from "./logger.js";

// console.log("Running leetcode problems")
logAsHeading1("Running leetcode problems"); // Logs as <h1>
const leetcode = new Leetcode()

leetcode.runningSumOf1DArray1480()
leetcode.richestCustomerWealth1672()
console.log('\n')
leetcode.fizzBuzz412()
console.log('\n')
leetcode.numberOfStepsToReduceANumberToZero1342()
