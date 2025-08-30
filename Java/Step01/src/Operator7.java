import java.util.Scanner;
public class Operator7 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
 * 숫자 하나 입력받아서
 * 숫자가 짝수면 짝수, 홀수면 홀수라고 출력
 * 삼항연산자, String 변수타입을 이용
 */
	System.out.println("숫자 1개를 입력하시오");
	Scanner sc = new Scanner(System.in);
	int num1 = sc.nextInt();
	String result = num1%2 ==0 ? "짝수" : "홀수"; //삼항연산자
	System.out.println(result);

	}

}
