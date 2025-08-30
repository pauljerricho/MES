import java.util.Scanner;
public class While {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		 * 숫자 하나 입력
		 * 1부터 입력한 숫자까지 합을 출력
		 */
	Scanner sc = new Scanner(System.in);
	int num1 = sc.nextInt();
	int n=0;
	int result=0;
	while(n<=num1) {
		result += n;
		n++;
	} // { 중요 
		System.out.println(result);
	}

}
