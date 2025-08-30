package exception;

import java.util.Scanner;

public class ExceptionMain1 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		try
		//작업 영역, try 영역에서는 중간에 Exception이 발생할 수 있다.
		{
			// 작업영역, try 영역에서는 중간에 Exception 발생할 수 있다.
			System.out.println("글자를 입력하세요");
			String str = sc.nextLine();

			int i = Integer.parseInt(str);
			System.out.println(i);
		} catch (NumberFormatException e) {
			// Exception 처리 영역, 정상적으로 처리 되면 강제종료가 이루어지지 않고
			// 다음 일을 진행함
			System.out.println(e.getMessage());

		} finally {
			// 정상적으로 실행되든, Exception이 발생하든 반드시 실행되는 영역
			System.out.println("finally 영역");
		}
		System.out.println("프로그램 종료");
	}
}
