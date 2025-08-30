package method;

public class Animal {
	String type;
	int age;

	public Animal(String type, int age) {
		super();
		this.type = type;
		this.age = age;
	} //Alt+Shift+s -> o
	
	/*
	 * 메서드도 이름이 필요하다!
	 * 					
	 * 					변수타입	메서드이름(매개변수) {
	 * 							실행할 코드
	 *   				}
	 */
	
	//리턴 x 매개변수 o - void는 데이터 타입 X 그래서 리턴할 값이 없다.
	void eat(String food) {
		System.out.println(type + "이(가) " + food +"를 먹습니다.");
	}
	//리턴 x 매개변수 x
	void printInfo() {
		System.out.println("종류 : "+type);
		System.out.println("나이 : "+age);
	}
	//메서드 추가
}
