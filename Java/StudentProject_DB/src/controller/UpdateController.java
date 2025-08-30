package controller;

import java.util.Scanner;

import service.StudentService;
import vo.StudentVO;

public class UpdateController extends Controller {

	public void execute(Scanner sc) {
		System.out.println("수정할 학생 번호를 입력");
		System.out.print("학번 : ");
		String studentNo = sc.nextLine();
		System.out.print("이름 : ");
		String name = sc.nextLine();
		System.out.print("전공번호 : ");
		int major = sc.nextInt(); sc.nextLine(); //숫자 입력하고나면 꼭 입력해야함.
		System.out.print("평점 : ");
		double score = sc.nextDouble(); sc.nextLine();
		
		int result = StudentService.getInstance().updateStudent(new StudentVO(studentNo, name, major, score));
		if(result > 0)
			System.out.println("학생정보수정완료");
		else
			System.out.println("학생정보수정실패");
	}
}