package controller;

import java.util.Scanner;

import exception.StudentException;
import vo.StudentVO;
import service.StudentService;

public class SearchController extends Controller {

	public void execute(Scanner sc) {
		System.out.println("학번 입력을 받습니다.");
		System.out.println("학번 : ");
		String studentNo = sc.nextLine();
		try {
		StudentVO vo = StudentService.getInstance().searchStudent(studentNo);
		System.out.println(vo);
		} catch (StudentException e) {
			System.out.println(e.getMessage());
		}
}
}
