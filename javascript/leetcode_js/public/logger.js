// logger.js

// Function to log messages to the HTML page with a specified tag
export function logToPage(message, tag = 'p') {
    const resultsDiv = document.getElementById('results');
    if (resultsDiv) {
        // Create a new element with the specified tag
        const element = document.createElement(tag);
        element.innerHTML = typeof message === 'object'
            ? JSON.stringify(message, null, 2).replace(/\n/g, '<br>') // Handle objects with newlines
            : message.replace(/\n/g, '<br>'); // Replace newlines with <br> tags
        resultsDiv.appendChild(element);
    } else {
        console.error("Results element not found in the document.");
    }
}


// Preserve the original console.log
console.oldLog = console.log;

// Function to clear initial content
function clearInitialContent() {
    const resultsDiv = document.getElementById('results');
    if (resultsDiv) {
        // Clear initial content only once
        if (resultsDiv.innerHTML.trim() === 'Initial content') {
            resultsDiv.innerHTML = ''; // Clear initial content
        }
    } else {
        console.error("Results element not found in the document.");
    }
}

// Override console.log to log messages both to the console and the page
console.log = function(...args) {
    console.oldLog(...args); // Original console.log behavior
    clearInitialContent(); // Clear initial content when logging
    logToPage(args.map(arg => (typeof arg === 'object' ? JSON.stringify(arg) : arg)).join(' '), 'p'); // Convert objects to JSON strings
};

// Example function to log as <h1> tags
export function logAsHeading1(message) {
    clearInitialContent(); // Clear initial content when logging as heading
    logToPage(message, 'h1'); // Log to page with <h1> tag
    console.oldLog(message); // Also log to console
}

// Example function to log as <h2> tags
export function logAsHeading2(message) {
    clearInitialContent(); // Clear initial content when logging as heading
    logToPage(message, 'h2'); // Log to page with <h1> tag
    console.oldLog(message); // Also log to console
}

// Example function to log as <h3> tags
export function logAsHeading3(message) {
    clearInitialContent(); // Clear initial content when logging as heading
    logToPage(message, 'h3'); // Log to page with <h1> tag
    console.oldLog(message); // Also log to console
}

