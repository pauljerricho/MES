package Constructor;


public class AnimalMain {
	public static void main(String[] args) {
		Animal A = new Animal("호랑이", 5, false);
		System.out.println(A.type);
		System.out.println(A.age);
		System.out.println(A.gender);
}
}
