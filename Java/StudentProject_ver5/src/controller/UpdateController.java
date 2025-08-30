package controller;

import java.util.Scanner;

import exception.StudentException;
import service.StudentService;
import vo.StudentVO;

public class UpdateController extends Controller {

	public void execute(Scanner sc) {
		System.out.println("수정할 학생 번호를 입력");
		String studentNo = sc.nextLine();
		try {
			StudentVO vo = StudentService.getInstance().searchStudent(studentNo);
			// 이름, 학과, 평점 입력 받아서 최신화
			System.out.print("이름 : ");
			String name = sc.nextLine();
			System.out.print("전공 : ");
			String major = sc.nextLine();
			System.out.print("평점 : ");
			double score = sc.nextDouble();
			sc.nextLine();
			vo.setName(name);
			vo.setMajor(major);
			vo.setScore(score);
		} catch (StudentException e) {
			System.out.println(e.getMessage());
		}
	}
}