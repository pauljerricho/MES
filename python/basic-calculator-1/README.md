# Basic Calculator

This is a simple calculator application implemented in Python. It supports basic arithmetic operations such as addition, subtraction, multiplication, and division.

## Project Structure

```
basic-calculator
├── src
│   ├── calculator.py       # Main logic for the calculator
│   └── __init__.py         # Marks the src directory as a Python package
├── tests
│   ├── test_calculator.py   # Unit tests for the calculator functions
│   └── __init__.py         # Marks the tests directory as a Python package
├── requirements.txt         # Lists project dependencies
└── README.md                # Project documentation
```

## Installation

To install the required dependencies, run:

```
pip install -r requirements.txt
```

## Usage

To use the calculator, you can import the functions from `calculator.py` in your Python scripts. For example:

```python
from src.calculator import add, subtract, multiply, divide

result = add(5, 3)
print(result)  # Output: 8
```

## Running Tests

To run the tests, you can use the following command:

```
pytest tests/
```

Make sure you have pytest installed, which can be done via:

```
pip install pytest
```

## License

This project is open source and available under the MIT License.