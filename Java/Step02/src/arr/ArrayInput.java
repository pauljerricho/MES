package arr;
import java.util.Scanner;
public class ArrayInput {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		 * 정수형 배열 길이가 5인 배열을 생성
		 * 생성 후 배열에 숫자를 입력한 후 출력
		 */
	int[] arr1 = new int[5];
	Scanner sc = new Scanner(System.in);
	int idx = 0;
	while(idx != arr1.length) {
		System.out.println("숫자 입력");
		arr1[idx++] = sc.nextInt();
	}
	for(int i = 0;i<arr1.length;i++)
	System.out.print(arr1[i]);
}
}
