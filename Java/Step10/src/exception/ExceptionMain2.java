package exception;

import java.util.Scanner;

public class ExceptionMain2 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		try {

			System.out.println("정수 두개를 입력하세요.");

			int num1 = sc.nextInt();
			int num2 = sc.nextInt();

			int result = (int) num1 / num2;
			System.out.println(result);
		} catch (ArithmeticException e) {
			System.out.println(e.getMessage());
		} finally {
			sc.close();
		}
		System.out.println("프로그램 종료");
	}
}
