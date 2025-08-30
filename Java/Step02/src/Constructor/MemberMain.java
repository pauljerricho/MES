package Constructor;

public class MemberMain {

	public static void main(String[] args) {
		Member mem = new Member("20144234","ABCD","홍길동", 29, false, false);
		// 회원 클래스 생성 -> 바로 출력
		System.out.println(
			mem.id + " " + mem.password + " " + mem.name + " " + mem.age + " " + mem.gender + " " + mem.married);

	}

}