package generic;

public class BoxGenericMain {

	public static void main(String[] args) {
		BoxGeneric<Animal> box1 = new BoxGeneric<Animal>();
		box1.setObj(new Animal()); //객체를 만듬
		Animal animal = box1.getObj();
		animal.printAnimal();
		
		BoxGeneric<Apple> box2 = new BoxGeneric<Apple>();
		box2.setObj(new Apple());
		Apple app = box2.getObj();
		app.printApple();
	}

}
