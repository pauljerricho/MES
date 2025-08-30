package access;

public class Person {
	/*
	 * 이름 나이 이름 나이 초기화 하는 생성자 Person 
	 * 정보 출력하는 메서드 - printPersonInfo() - void
	 */
	private String name;
	private int age;

	public Person(String name, int age) {
		super();
		this.name = name; //서울 - 강서구, 부산 강서구 자기 자신 객체, 필드에 있는 것
		this.age = age;
	}

	public void setAge(int a) {
		if(a>0) //데이터가 정상인지 체크할 수 있다.
		age = a;
	}
	
	public int getAge(int a) {
		return age;
	}

	void printPersonInfo() {
		System.out.println("이름 : " + name);
		System.out.println("나이 : " + age);
	}
}
