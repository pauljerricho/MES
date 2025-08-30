package Constructor;

public class PersonMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Person p = new Person(); //기본 생성자 호출
		p = new Person("홍길동",20); //변수 2개 맞게 클래스 호출
		p = new Person("홍길동"); //변수 1개 맞게 클래스 호출
		System.out.println("프로그램 종료");
		System.out.println(p.name +" "+ p.age);
	}

}
/*
가비지 컬렉터 
객체를 바꿀 때마다 연결 해제
*/