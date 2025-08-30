package exception;

import java.util.InputMismatchException;

import java.util.Scanner;

public class ExceptionMain6 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		try {

			System.out.println("정수 두개를 입력하세요.");

			int num1 = sc.nextInt();
			int num2 = sc.nextInt();

			int result = (int) num1 / num2;
			System.out.println(result);
		
		}
		catch(Exception e) { //모든 exception을 받을 수 있다. 최후의 보루..
			System.out.println(e.getMessage());
		}
		//OR연산자 2개의 에러문을 처리할 수 있다
		finally {
			sc.close();
		}
		System.out.println("프로그램 종료");
	}
}
