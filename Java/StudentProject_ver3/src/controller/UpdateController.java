package controller;

import java.util.Scanner;

import service.StudentService;
import vo.StudentVO;

public class UpdateController extends Controller {

	public void execute(Scanner sc) {
		System.out.println("수정할 학생 번호를 입력");
		String studentNo = sc.nextLine();
		
		//검색
		//검색 결과가 있으면
		//검색 결과가 없습니다. 출력
		StudentVO vo = StudentService.getInstance().searchStudent(studentNo);
		if(vo != null) {
			//이름, 학과, 평점 입력 받아서 최신화
			System.out.print("이름 : ");
			String name = sc.nextLine();
			System.out.print("전공 : ");
			String major = sc.nextLine();
			System.out.print("평점 : ");
			double score = sc.nextDouble(); sc.nextLine();
			vo.setName(name);
			vo.setMajor(major);
			vo.setScore(score);
		} else {
			System.out.println("학번에 해당하는 학생이 없습니다.");
		}
		
	
	}
}