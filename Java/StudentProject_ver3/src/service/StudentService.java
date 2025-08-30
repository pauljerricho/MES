package service;

import java.util.ArrayList;

import vo.StudentVO;

public class StudentService {
	private static StudentService instance = new StudentService();
	private ArrayList<StudentVO> list;

	private StudentService() {
		list = new ArrayList<StudentVO>();
	}
	
	public ArrayList<StudentVO> getList() {
		return list;
	}
	

	public static StudentService getInstance() {
		if (instance == null)
			instance = new StudentService();
		return instance;
	}

	public boolean insertStudent(StudentVO studentVO) {
		// 동일한 객체가 있는지 체크 -- 학번으로만 비교
		if (list.contains(studentVO))
			return false;
		list.add(studentVO);
		return true;
	}

	public StudentVO searchStudent(String name) {
		StudentVO vo = new StudentVO(null, name, null, 0);
		int no = list.indexOf(vo);
		if (no == -1) // 인덱스번호가 -1이면 없는거다.
			return null;
		return list.get(no);
	}

	public boolean deleteStudent(String studentNo) {
		StudentVO vo = new StudentVO(studentNo, null, null, 0);
		return list.remove(vo);
	}

	public boolean updateStudent(String studentNo) {
		StudentVO vo = new StudentVO(studentNo, null, null, 0); // 초기값을 정해주고
		// 수정할 값들을 넣어주고
		// 성공하면 리턴
		return false;

	}


	
		
	

}
