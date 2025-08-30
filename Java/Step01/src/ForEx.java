import java.util.Scanner;
public class ForEx {
	/*
	 * 숫자 하나 입력받아서
	 * 입력한 숫자의 팩토리얼 값을 출력!
	 */

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		System.out.println("숫자 하나를 입력하세요.");
		int num1 = sc.nextInt();
		int result = 1; //result 초기값 지정을 안함
		for(int n1 = 1; n1<=num1; n1++) {  
		result *= n1;
		}
		System.out.println(result);

	}
}
