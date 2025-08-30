package modifier;

public class Card {
	/*
	 * 카드 번호 소유자 이름 유효기간 - 년도 유효기간 - 월 접근제어자 - static - final
	 */
	private final String cardNo;
	private final String name;
	private final int year;
	private final int month;
	// 상수는 필드로 선언되어 있으면 생성자를 이용해서 필드를 초기화를 해줘야한다.

	public Card(String cardNo, String name, int year, int month) {
		super();
		this.cardNo = cardNo;
		this.name = name;
		this.year = year;
		this.month = month;
	}

	public void printCardInfo() {
		System.out.println(cardNo + " " + name + " " + year + "/" + month);
	}
}
