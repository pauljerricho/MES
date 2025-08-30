package generic;


public class BoxMain {
	
	public static void main(String[] args) {
		/*
		 * 1. Box 생성
		 * 2. Apple 생성 후 Box에 저장
		 * 3. Box에서 getObj로 객체를 읽어온 후 printApple 실행
		 * 4. Animal 생성 후 Box에 저장
		 * 5. Box에서 getObj로 객체 읽어온 후 printAnimal 실행
		 */
	
		Box b = new Box();
		
		Apple a = new Apple();
		b.setObj(a);
		Apple ap = (Apple) b.getObj(); //★★형변환을 해주어야한다.
		ap.printApple();
		
		Animal animal = new Animal();
		b.setObj(animal);
		Animal ani = (Animal) b.getObj(); //★★형변환을 해주어야한다.
		ani.printAnimal();
	}
	//object로 관리하면 문제가 생긴다.
	//instanceof로 형변환 체크를 해봐야한다.
}
