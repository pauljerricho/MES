package singletone;

public class Card {
	// 카드 번호 - int
	// 소유주 - String

	// 생성자
	// set/get

	// printCardInfo
	private static int cardSequence = 1000;
	private int Cardno;
	private String name;

	public Card(String name) {
		this.name = name;
		Cardno = cardSequence++;
	}

	public void printCardInfo() {
		System.out.println("카드 번호 : " + Cardno );
		System.out.println("소유주 : " + name);
	}

	public int getCardno() {
		return Cardno;
	}

	public void setCardno(int cardno) {
		Cardno = cardno;
	}

}
