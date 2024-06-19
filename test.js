// JavaScript Program to Build a Simple Calculator using switch case

// Function to calculate based on operation
function calculate(num1, num2, operation) {
    let result;
    switch (operation) {
        case '+':
            result = num1 + num2;
            break;
        case '-':
            result = num1 - num2;
            break;
        case '*':
            result = num1 * num2;
            break;
        case '/':
            if (num2 === 0) {
                console.log("Cannot divide by zero");
                return;
            }
            result = num1 / num2;
            break;
        default:
            console.log("Invalid operation");
            return;
    }
    console.log(`The result is: ${result}`);
}

// Example usage
calculate(10, 5, '+'); // Addition
calculate(10, 5, '-'); // Subtraction
calculate(10, 5, '*'); // Multiplication
calculate(10, 5, '/'); // Division
calculate(10, 0, '/'); // Division by zero
calculate(10, 5, '%'); // Invalid operation