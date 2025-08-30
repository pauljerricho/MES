package exception;

import java.util.Scanner;

public class ExceptionMain10 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		// 정수형 배열 길이 10인 배열 생성
		// 배열 값을 입력하고 총합을 출력

		int[] arr = new int[10];
		try {
			for (int i = 0; i < 10; i++) {
				arr[i] = sc.nextInt();
				if (arr[i] == 0)
					throw new Exception("0을 입력할 수 없습니다.");
			}
			int sum = 0;
			for (int i = 0; i < arr.length; i++) {
				sum += arr[i];

				System.out.println("총합 : " + sum);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}
}
//우리가 작업해야하는 영역에서 하지말아야 할 때 설정..