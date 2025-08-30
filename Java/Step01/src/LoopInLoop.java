import java.util.Scanner;
public class LoopInLoop {
	/*
	 * 숫자 하나 입력 받아서
	 * 숫자에 해당하는 줄 수 만큼 피라미드를 출력하시면 됨
	 * 		 *
	 * 		***
	 * 	   *****
	 */

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int line;
		Scanner sc = new Scanner(System.in);
		System.out.println("줄 수를 입력 :");
		line = sc.nextInt();
		String result = "";
		
		for(int i=1;i<=line;i++) { 
			for(int j=1;j<=line-i;j++) { 
		result += " ";
			}
			for(int j=0; j<i*2-1; j++) {
		result += "*";
			}
		result += "\n";
		}
	System.out.println(result);
	}
} 
//작업하는 패턴을 찾자
//c#이 주된 방식
//java는 서버, 백엔드 -> 리눅스기반
