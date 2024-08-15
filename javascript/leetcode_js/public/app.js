// app.js - The main file that will import and call all the other files.
import './logger.js'; // Import the logger to override console.log
import Leetcode from './leetcode.js';
import { logAsHeading } from "./logger.js";

// console.log("Running leetcode problems")
logAsHeading("Running leetcode problems"); // Logs as <h1>
const leetcode = new Leetcode()

leetcode.runningSumOf1DArray1480()
leetcode.richestCustomerWealth1672()
//leetcode.fizzBuzz412()
//leetcode.numberOfStepsToReduceANumberToZero1342()
