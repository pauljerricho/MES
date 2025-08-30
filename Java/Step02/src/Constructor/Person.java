package Constructor;
public class Person {
String name;
int age;
/*
 * 생성자는 Constructor
 * 		클래스를 생성할 때 제일 먼저 실행되는 메서드
 * 		생성자는 메서드 명이 클래스 명과 동일
 * 		
 */
Person() {
	// TODO Auto-generated constructor stub
	System.out.println("Person 생성자 호출");
}
Person(String n, int a)
{
	name = n;
	age = a;
}
//이름은 외부에서 받고, 나이는 30으로 초기화하는 생성자 작성
Person(String n){
	age = 30;
	name = n;
}

}
/*
 * 가로안의 선언된 변수 타입을 보고 찾는다. 
 * 이름만 가지고 찾지않는다.
 * overloading
 * 메서드가 이름이 동일하더라도
 * 1. 매개변수 개수가 다르면 되고
 * 2. 매개변수 타입이 다르면 된다.
 */
