package modifier;

public class FinalEx {

	public static void main(String[] args) {
		final double PI = 3.1415; // 상수는 저장된 값을 바꿀 수 없다.
		final int num;
		num = 100; // 상수는 첫 번째값을 초기화하는 것까지는 허용이 된다.
		/*
		 * num = 50; //두번째 값을 저장하는 것은 허용하지 않는다.
		 */
		Card c = new Card("0000-1111-2222-3333", "홍길동", 1988, 8); //new 힙에 할당
		c.printCardInfo();
	}

}
