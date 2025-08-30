import random

def print_triangle(n):
    for i in range(1, n + 1):
        print(' ' * (n - i) + '*' * (2 * i - 1))

# Example usage
n = 5
print_triangle(n)

def get_computer_choice():
    choices = ['rock', 'scissors', 'paper']
    return random.choice(choices)

def get_user_choice():
    choice = input("Enter your choice (rock, scissors, paper): ").lower()
    while choice not in ['rock', 'scissors', 'paper']:
        choice = input("Invalid choice. Enter again (rock, scissors, paper): ").lower()
    return choice

def determine_winner(user_choice, computer_choice):
    if user_choice == computer_choice:
        return "It's a tie!"
    elif (user_choice == 'rock' and computer_choice == 'scissors') or \
         (user_choice == 'scissors' and computer_choice == 'paper') or \
         (user_choice == 'paper' and computer_choice == 'rock'):
        return "You win!"
    else:
        return "You lose!"

def play_game():
    user_choice = get_user_choice()
    computer_choice = get_computer_choice()
    print(f"Computer chose: {computer_choice}")
    result = determine_winner(user_choice, computer_choice)
    print(result)

# Example usage
play_game()

def print_tulip():
    # Stem
    for i in range(3):
        print(' ' * 4 + '|')
    
    # Leaves
    print(' ' * 3 + '/ \\')
    print(' ' * 2 + '/   \\')
    
    # Flower
    print(' ' * 1 + '/-----\\')
    print(' ' * 2 + '|   |')
    print(' ' * 3 + '| |')

# Example usage
print_tulip()

