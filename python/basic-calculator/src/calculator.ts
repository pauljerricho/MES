class Calculator {
    add(operand1: number, operand2: number): number {
        return operand1 + operand2;
    }

    subtract(operand1: number, operand2: number): number {
        return operand1 - operand2;
    }

    multiply(operand1: number, operand2: number): number {
        return operand1 * operand2;
    }

    divide(operand1: number, operand2: number): number {
        if (operand2 === 0) {
            throw new Error("Division by zero is not allowed.");
        }
        return operand1 / operand2;
    }
}

export default Calculator;