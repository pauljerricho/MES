package vo;

import java.util.Objects;

public class StudentVO {
public StudentVO(String studentNo, String name, String major, double score) {
		super();
		this.studentNo = studentNo;
		this.name = name;
		this.major = major;
		this.score = score;
	}

//equals,toString,hashCode

//변수 설정
	private String studentNo;
	private String name;
	private String major;
	private double score;

//setter,getter 만들어줌
	public String getStudentNo() {
		return studentNo;
	}

	public void setStudentNo(String studentNo) {
		this.studentNo = studentNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public double getScore() {
		return score;
	}

	public void setScore(double score) {
		this.score = score;
	}

	public void printStudentInfo() {
		System.out.println(studentNo + "\t" + name + "\t" + major + "\t" + score);
	}

	@Override
	public int hashCode() {
		return studentNo.hashCode();
	}



	@Override
	public boolean equals(Object obj) {
		if(this == obj)
			return true;
		if(obj == null)
			return false;
		if(getClass() != obj.getClass())
			return false;
		StudentVO other = (StudentVO) obj;
		return Objects.deepEquals(studentNo, other.studentNo);
	}

	@Override
	public String toString() {
		return "StudentVO [studentNo=" + studentNo + ", name=" + name + ", major=" + major + ", score=" + score + "]";
	}

}
