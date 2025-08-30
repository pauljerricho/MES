package generic;

public class ExtendsMain {

	public static void main(String[] args) {
		GenericExtends<Animal> Ani = new GenericExtends<Animal>();
		Ani.setObj(new Animal());
		Ani.printAnimal();
	//Animal 계열의 클래스만 자료를 받겠다!
	//쓰는 것 정도만 이해하면 문제없다.
	}

}
