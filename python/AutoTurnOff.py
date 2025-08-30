import os
import time

def schedule_shutdown(minutes):
    try:
        seconds = minutes * 60
        print(f"{minutes}분 후에 컴퓨터가 자동으로 종료됩니다.")
        time.sleep(seconds)
        os.system("shutdown /s /t 0")  # Windows용
    except KeyboardInterrupt:
        print("자동 종료가 취소되었습니다.")

if __name__ == "__main__":
    try:
        minutes = float(input("몇 분 후에 종료할까요? (숫자만 입력): "))
        if minutes > 0:
            schedule_shutdown(minutes)
        else:
            print("양수를 입력하세요.")
    except ValueError:
        print("잘못된 입력입니다. 숫자를 입력하세요.")