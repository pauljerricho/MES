# Basic Calculator

This is a simple calculator application built with TypeScript. It provides basic arithmetic operations including addition, subtraction, multiplication, and division.

## Features

- **Addition**: Adds two numbers.
- **Subtraction**: Subtracts the second number from the first.
- **Multiplication**: Multiplies two numbers.
- **Division**: Divides the first number by the second (with error handling for division by zero).

## Installation

To install the project, clone the repository and run the following command:

```
npm install
```

## Usage

To use the calculator, you can import the `Calculator` class from the `src/calculator.ts` file and create an instance of it. Here is an example:

```typescript
import { Calculator } from './src/calculator';

const calculator = new Calculator();

const sum = calculator.add(5, 3); // 8
const difference = calculator.subtract(5, 3); // 2
const product = calculator.multiply(5, 3); // 15
const quotient = calculator.divide(5, 0); // Error: Division by zero
```

## Contributing

If you would like to contribute to this project, please fork the repository and submit a pull request.

## License

This project is licensed under the MIT License.