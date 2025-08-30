package exception;

import java.util.InputMismatchException;
import java.util.Scanner;

import javax.xml.crypto.Data;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
public class ExceptionMain7 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		try {

			System.out.println("정수 두개를 입력하세요.");

			int num1 = sc.nextInt();
			int num2 = sc.nextInt();

			int result = (int) num1 / num2;
			System.out.println(result);
		
		}
		catch(Exception e) {
			SimpleDateFormat sdf = new SimpleDateFormat("YYYY_MM_dd_hh_mm_ss");
			Calendar cal = Calendar.getInstance();
			System.out.println(sdf.format(cal.getTime()) + " " + e.getClass().getName() + e.getMessage());;
		}
		//OR연산자 2개의 에러문을 처리할 수 있다
		finally {
			sc.close();
		}
		System.out.println("프로그램 종료");
	}
}
