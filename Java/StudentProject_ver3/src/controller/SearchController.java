package controller;

import java.util.Scanner;
import vo.StudentVO;
import service.StudentService;

public class SearchController extends Controller {

	public void execute(Scanner sc) {
		System.out.println("학번 입력을 받습니다.");
		System.out.println("학번 : ");
		String studentNo = sc.nextLine();
		
		StudentVO vo = StudentService.getInstance().searchStudent(studentNo);
		
		if(vo == null)
			System.out.println("학번에 해당하는 학생 정보가 없습니다.");
		else
			System.out.println(vo);
			}
}
