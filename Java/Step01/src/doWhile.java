import java.util.Scanner;
public class doWhile {
/*
 * 숫자 하나를 입력받음
 * 숫자에 해당하는 구구단을 출력!
 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		System.out.println("숫자 한개를 입력하세요");
		int num1 = sc.nextInt();
		int num2 = 0;
		int result;
		do {
			num2++;
			result = num1*num2;
			System.out.println(num1+"*"+num2+"="+result);
			} while (num2<9);

	}

}
