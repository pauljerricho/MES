package method;

import java.util.Scanner;

public class Calculator {
	// 결과를 정수로 되돌려주고, 정수형 데이터 두개를 데이터를 받는 메서드
	// 리턴 o 매개변수 o
	/*
	 * int sum(int a, int b) { int result = a + b; return result; //결과값을 되돌려주는 부분 }
	 */
	// 리턴 o 매개변수 x
	/*
	 * int inputNumber() { Scanner sc = new Scanner(System.in);
	 * System.out.println("숫자 입력 : "); int num = sc.nextInt(); return num; }
	 */

	// 이 메서드는 정수값 두개를 받아서 두 정수 중에 큰 숫자를 되돌려주는 메서드
	int MaxNumber(int c, int d) {
		/*
		 * if (c > d) { return c; } else { return d; }
		 */
		return c > d ? c : d;
	}

	// 이 메서드는 정수값 한개를 받아서 이 정수가 홀수면 true, 짝수면 false를 되돌려주는 메서드
	
	 boolean CheckOdd(int num)
	 { 
		 return num % 2 == 1; 
	 }
	 

	// 이 메서드는 섭씨 온도를 하나 받아서 섭씨 온도를 화씨 온도로 변환해서 리턴하는 메서드를 작성
	double ConvertF(double result) {
		return 1.8 * result + 32;
	}

	// 이 메서는 정수 하나를 입력 받아서, 이 정수가 소수면 true, 소수가 아니면 false를 리턴하는 메서드를 작성
	boolean isPrimeN(int num1) {
		if (num1 < 2)
			return false;
		for (int i = 2; i < num1; i++) {
			if (num1 % i == 0)
				return false;
		}
		return true;
	}

	
}
