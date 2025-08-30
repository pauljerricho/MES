import java.util.Scanner;
public class Operator4 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		 * 정수형 변수 두개 선언
		 * 숫자 두개 입력 받은 후
		 * 모든 관계연산자를 수행하고 결과를 출력
		 */
		Scanner sc = new Scanner(System.in);
		System.out.println("숫자 두개를 입력하시오.");
		int num1 = sc.nextInt();
		int num2 = sc.nextInt();
		System.out.println(num1>num2);
		System.out.println(num1<num2);
		System.out.println(num1>=num2);
		System.out.println(num1<=num2);
		System.out.println(num1!=num2);
		System.out.println(num1==num2);
		}

}
