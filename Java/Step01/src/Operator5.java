import java.util.Scanner;
public class Operator5 {
/*
 * 정수형 변수 두개 선언을 하여(n1,n2)
 * 숫자 2개 입력을 받으면
 * n1이 5보다 크고, n2는 10보다 작은지?
 * n1이 짝수고, n2는 10보다 크고 15보다 작은지?
 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		System.out.println("숫자 2개를 입력하시오");
		int n1 = sc.nextInt();
		int n2 = sc.nextInt();	
		
		/*if((n1 > 5) && (n2<10))
		System.out.println("그렇다");
		else
		System.out.println("아니다");
		*/
		
		System.out.println(n1 > 5 && n2 < 10);
		System.out.println(n1 % 2 == 0 && n2 > 10 && n2 < 15);
		
	}

}
