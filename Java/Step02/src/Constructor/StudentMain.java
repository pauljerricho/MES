package Constructor;

public class StudentMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Student std = new Student("201312313","홍길동","경영학과",4.5);
		System.out.println(std.no);
		System.out.println(std.name);
		System.out.println(std.major);
		System.out.println(std.score);
		System.out.println(std.grade);
	}

}
