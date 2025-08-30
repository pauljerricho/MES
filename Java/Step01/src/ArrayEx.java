import java.util.Scanner;
public class ArrayEx {
	/*
	 * 정수형 배열을 길이가 10인 배열을 생성 후
	 * 배열에 모든 값을 입력 받은 후
	 * 짝수의 개수를 출력
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		System.out.println("숫자 10개를 입력하세요!");
		int[] arr = new int[10];
		int n = 0;
		for(int i=0;i<arr.length;i++) {
		System.out.println((i+1)+"번째");
		arr[i] = sc.nextInt();
		if(arr[i]%2==0) {
			n +=1;
		}
	}
		System.out.println("짝수의 갯수는?\n"+n);
	}
}
