package access;

public class PersonMain {

	public static void main(String[] args) {
		Person p = new Person("홍길동",21);
		// p.age = 33; //private 멤버는 외부 접근 X
		p.setAge(-1);
		p.printPersonInfo();
		
	}

}
// p.age = 33; 라고 하면 직접적으로 전달하기 때문에 검증X
// 접근제어자
