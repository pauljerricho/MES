package singletone;

public class CardFactory {
	// 싱글톤 패턴 적용
	private static CardFactory instance = new CardFactory();

	private CardFactory() {
	}

	public static CardFactory getInstance() {
		if (instance == null)
			instance = new CardFactory();
		return instance;
	}

	//createCard(소유주) - Card
	//카드 객체 하나 생성해서 리턴하는 메서드
	
	public Card createCard(String name) {
		return new Card(name);
	}
	//★모르겠음
}
