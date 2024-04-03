

const calculate = require('./calculate'); // assuming the calculate function is exported from calculate.js

test('adds 1 + 2 to equal 3', () => {
    expect(calculate(1, '+', 2)).toBe(3);
});

test('subtracts 5 - 3 to equal 2', () => {
    expect(calculate(5, '-', 3)).toBe(2);
});

test('multiplies 3 * 4 to equal 12', () => {
    expect(calculate(3, '*', 4)).toBe(12);
});

test('divides 10 / 2 to equal 5', () => {
    expect(calculate(10, '/', 2)).toBe(5);
});

test('throws error when dividing by zero', () => {
    expect(() => calculate(5, '/', 0)).toThrow("Division by zero is not allowed.");
});

test('throws error when using invalid operator', () => {
    expect(() => calculate(5, 'invalid', 3)).toThrow("Invalid operator.");
});