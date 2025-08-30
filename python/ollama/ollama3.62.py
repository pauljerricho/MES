import subprocess

def ask_ollama(question):
    try:
        # Run the ollama command with the question
        result = subprocess.run(
            ["ollama", "ask", question],
            capture_output=True,
            text=True
        )
        # Check if the command was successful
        if result.returncode == 0:
            return result.stdout.strip()
        else:
            return f"Error: {result.stderr.strip()}"
    except FileNotFoundError:
        return "Error: 'ollama' is not installed or not in PATH."

if __name__ == "__main__":
    while True:
        user_input = input("질문을 입력하세요 (종료하려면 'exit' 입력): ")
        if user_input.lower() == "exit":
            print("프로그램을 종료합니다.")
            break
        response = ask_ollama(user_input)
        print(f"답변: {response}")