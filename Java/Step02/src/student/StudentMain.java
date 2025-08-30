package student;

public class StudentMain {

	public static void main(String[] args) {
	Student s1 = new Student(); //문법 암기사항
		s1.n = 201915066;
		s1.name = "정연솔";
		s1.major = "신학과";
		s1.grade = "A+";
	System.out.println(s1.n+" "+s1.name+" "+s1.major+" "+s1.grade);
	}

}
