package exception;

import java.util.Scanner;

public class ExceptionMain5 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("정수 두개를 입력하세요.");

		int num1 = sc.nextInt();
		int num2 = sc.nextInt();

		if (num2 == 0) {
			System.out.println("오류발생");
		} else {

			int result = (int) num1 / num2;
			System.out.println(result);
		}
		sc.close();
		System.out.println("프로그램 종료");
	}
}
