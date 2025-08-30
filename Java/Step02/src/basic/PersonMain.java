package basic;

public class PersonMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Person p1 = new Person(); //Person 객체 생성
		p1.name = "홍길동";
		p1.age = 20;
		Person p2 = new Person();
		p2.name = "김철수";
		p2.age = 33;
	System.out.println(p1.name+" , "+p1.age);
	System.out.println(p2.name+" , "+p2.age);
	
	}
	}
/*
 * p1,p2 저장한 내용 출력
 */
/*낙타대문자. CammelCase
 * 단어의 중간에 띄어쓰기나 표기 없이 
 * 대문자를 사용하는 방법을 의미한다. 
 * 예로는 iPhone, eBay, FedEx 등이 있다.
 */

