package service;

import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import exception.StudentException;
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

	public void insertStudent(StudentVO studentVO) throws Exception {
		// 동일한 객체가 있는지 체크 -- 학번으로만 비교
		try {
		if (list.contains(studentVO))
		throw new StudentException("학번이 중복됩니다. 다른 학번을 입력하세요.");
		list.add(studentVO);
		
		}catch(Exception e) {
			e.printStackTrace();
			File file = new File("c:\\error.txt");
			FileWriter fw = new FileWriter(file);					
			PrintWriter pw = new PrintWriter(fw);
			Calendar cal = Calendar.getInstance();
			pw.println(cal.get(Calendar.YEAR) + "_" + cal.get(Calendar.MONTH) + "_" + cal.get(Calendar.DAY_OF_MONTH) + "_" + cal.get(Calendar.HOUR_OF_DAY) + "_" + cal.get(Calendar.MINUTE) + "_" + cal.get(Calendar.SECOND) + "_" + e.getMessage());
		}
		}

	public StudentVO searchStudent(String studentNo) throws StudentException {
		StudentVO vo = new StudentVO(studentNo, null, null, 0);
		int no = list.indexOf(vo);
		if (no == -1) // 인덱스번호가 -1이면 없는거다.
		throw new StudentException("검색결과 학번에 해당하는 학생이 없습니다.");
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
