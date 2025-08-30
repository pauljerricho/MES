def add(operand1, operand2):
    return operand1 + operand2

def subtract(operand1, operand2):
    return operand1 - operand2

def multiply(operand1, operand2):
    return operand1 * operand2

def divide(operand1, operand2):
    if operand2 == 0:
        raise ValueError("Cannot divide by zero.")
    return operand1 / operand2