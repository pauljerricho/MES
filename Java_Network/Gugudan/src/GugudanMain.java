import java.util.Scanner;

public class GugudanMain {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int i = sc.nextInt();
		System.out.println(i+"단을 출력하자");
			for(int j=1; j<=9; j++) {
				System.out.println(i+"*"+j + "=" + i*j);
			}
		}
		
	}

