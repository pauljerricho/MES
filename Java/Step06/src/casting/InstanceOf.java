package casting;

public class InstanceOf {
	public static void eat(Animal animal) {
		animal.eat();		//이런걸 다형성이라고함. animal은 person, dog, animal 총 세 가지의 일을 한다.	
	}
	public static void main(String[] args) {
		Dog dog = new Dog();
		Animal animal = dog;
		animal.eat();
		animal = new Person();				
		animal.eat();

	//	dog = (Dog) animal;					//사람이라서 dog가 안된거라고 하는데 사실 이해 안됨. 맨 마지막에 (11행)new person해줘서 사람이라는건가? 집에서 바꿔보자.
		Person p = (Person)animal;		
		p.eat();
		
		
		//형변환이 되는지 체크하는 법
		//animal이 person으로 형변환이 됐느냐?
		System.out.println(animal instanceof Person);
		
		
		//animal이 dog로 형변환이 됐느냐?
		System.out.println(animal instanceof Dog);
		
		
		
		eat(new Animal());
		eat(p);
		eat(dog);
	}

}
