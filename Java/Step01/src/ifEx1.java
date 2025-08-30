
public class ifEx1 {
	/*
	 * 1~100까지 숫자 중
	 * 3과 5배의 배수 출력, 공배수는 한번만 출력
	 */

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
	for (int i=1;i<=100;i++) {
		if((i%3==0) || (i%5==0))
			System.out.println(i);
	}
	}

} //else if를 써도 됨.
