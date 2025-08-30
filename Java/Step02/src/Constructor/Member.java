package Constructor;

public class Member {
	String id;
	String password;
	String name;
	int age;
	boolean gender;
	boolean married;

// 전체 필드를 초기화하는 생성자 생성
	public Member(String id, String password, String name, int age, boolean gender, boolean married) {

		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.married = married;
	}
}
// 자동완성은 생성한 매개변수 순서대로 받는다.
