package singletone;

public class Number {
	private static Number instance = new Number();
	private int num;
	// private 생성자는 외부에서 생성이 안됨
	private Number() {
	}

	public static Number getInstance() {
		if (instance == null)
			instance = new Number();
		return instance;
	}
	//객체가 없는 경우 생성을 하겠다.

	public void addNum() {
		num++;
	}
	public int getNum() {
		return num;
	}
}
