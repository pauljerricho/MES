package controller;

import java.util.Scanner;

import service.StudentService;
import vo.StudentVO;

public class DeleteController extends Controller {
	public void execute(Scanner sc) {
		System.out.println("삭제할 학생번호를 입력받습니다.");
		String studentNo = sc.nextLine();

		boolean result = StudentService.getInstance().deleteStudent(studentNo);

		if (result)
			System.out.println("학생 정보 삭제 성공");
		else
			System.out.println("해당 학번에 해당하는 학생이 없습니다.");
	}
}
