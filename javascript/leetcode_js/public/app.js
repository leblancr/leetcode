// app.js - Make a Leetcode object then call it's methods.

import './logger.js'; // Import the logger to override console.log
import Leetcode from './leetcode.js';
import {logAsHeading1} from "./logger.js";

logAsHeading1("Running leetcode problems"); // Logs as <h1>
const leetcode = new Leetcode()
const methods = Object.getOwnPropertyNames(Object.getPrototypeOf(leetcode));
const instanceMethods = methods.filter(method => method !== 'constructor');
// console.log(instanceMethods);

// call each method in Leetcode class
for (const method of instanceMethods) {
  leetcode[method]()
  console.log('\n')
}
