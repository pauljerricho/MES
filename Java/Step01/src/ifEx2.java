import java.util.Scanner;
public class ifEx2 {
	/*
	 * 숫자 2개를 입력받아서
	 * 작은 숫자부터 큰 숫자까지 합을 출력하시오.
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
	Scanner sc = new Scanner(System.in);
	System.out.println("숫자 2개를 입력하세요:");
	int num1 = sc.nextInt();
	int num2 = sc.nextInt();
	int result = 0;
	if(num1 > num2) {
		int temp = num1;
		num1 = num2;
		num2 = temp;
	} // num1은 무조건 작은 값
	for(;num1<=num2;num1++)
		result += num1;
	System.out.println(result);
	}
	}
	
