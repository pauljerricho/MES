package controller;

import java.util.Scanner;

import service.StudentService;
import vo.StudentVO;

public class RegisterController extends Controller {

	public void execute(Scanner sc) {
		System.out.println("학생 정보 등록을 시작합니다.");
		System.out.print("학번 : ");
		String studentNo = sc.nextLine();
		System.out.print("이름 : ");
		String name = sc.nextLine();
		System.out.print("전공번호 : ");
		int major = sc.nextInt(); sc.nextLine(); //숫자 입력하고나면 꼭 입력해야함.
		System.out.print("평점 : ");
		double score = sc.nextDouble(); sc.nextLine();
		
		int result = StudentService.getInstance().insertStudent(new StudentVO(studentNo, name, major, score));
		if(result == 1)
			System.out.println("학생정보추가완료");
		else
			System.out.println("학생정보추가실패");
		
	}
}
