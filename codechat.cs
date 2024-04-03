// Get the first number
let num1 = parseFloat(prompt("Enter the first number:"));

// Get the operator
let operator = prompt("Enter an operator (+, -, *, /):");

// Get the second number
let num2 = parseFloat(prompt("Enter the second number:"));

// Perform the operation
let result;
switch (operator) {
    case "+":
        result = num1 + num2;
        break;
    case "-":
        result = num1 - num2;
        break;
    case "*":
        result = num1 * num2;
        break;
    case "/":
        if (num2 != 0) {
            result = num1 / num2;
        } else {
            alert("Error! Division by zero is not allowed.");
            return;
        }
        break;
    default:
        alert("Error! Invalid operator.");
        return;
}

// Display the result
alert("The result is: " + result);