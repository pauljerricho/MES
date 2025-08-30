package service;

import java.io.*;
import java.util.ArrayList;
import exception.StudentException;
import log.PrintLog;
import vo.StudentVO;

public class StudentService {
	private static StudentService instance = new StudentService();
	private ArrayList<StudentVO> list;

	private StudentService() {
		list = new ArrayList<StudentVO>();
		// 파일을 읽어서 리스트에 추가
		// 1.파일연결
		File file = new File("student.dat");// project폴더에 만들어짐
		// 2.스트림 초기화
		FileInputStream fis = null;
		ObjectInputStream ois = null;
		try {
			fis = new FileInputStream(file);
			ois = new ObjectInputStream(fis);
			// 3.파일 읽기
			while (true) {
				StudentVO vo = (StudentVO) ois.readObject();
				list.add(vo);
			}
		} catch (FileNotFoundException e) {
			PrintLog.getInstance().printLog("student.dat 파일이 없습니다.");
			System.out.println("student.dat 파일이 없습니다.");
		} catch (IOException e) {
			System.out.println(e.getMessage());
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} finally {
			try {
				if (ois != null) {
					ois.close();
					fis.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}

		}

		// 4.로그
	}

	public void init() {
		// 파일 연결
		File file = new File("student.dat");
		// 스트림 초기화
		// 스트림 초기화
		FileInputStream fis = null;
		ObjectInputStream ois = null;

		try {
			fis = new FileInputStream(file);
			ois = new ObjectInputStream(fis);
			// 파일 읽기
			while (true)
				list.add((StudentVO) ois.readObject());
			// 파일 읽기
		} catch (FileNotFoundException e) {
			// 로그
			// 로그
			PrintLog.getInstance().printLog("student.dat 파일이 없습니다");
			System.out.println("student.dat 파일이 없습니다");
		} catch (IOException e) {
			System.out.println(e.getMessage());
			System.out.println("파일 읽기 종료");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} finally {
			try {
				if (ois != null)
					ois.close();
				if (fis != null)
					fis.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	public ArrayList<StudentVO> getList() {
		return list;
	}

	public static StudentService getInstance() {
		if (instance == null)
			instance = new StudentService();
		return instance;
	}

	public void insertStudent(StudentVO studentVO) throws StudentException {
		// 동일한 객체가 있는지 체크 -- 학번으로만 비교
		if (list.contains(studentVO))
			throw new StudentException("학번이 중복됩니다. 다른 학번을 입력하세요");
		list.add(studentVO);

		// 파일 연결
		File file = new File("student.dat");
		// 스트림 초기화
		FileOutputStream fos = null;
		ObjectOutputStream oos = null;

		try {
			fos = new FileOutputStream(file, true);
			oos = new ObjectOutputStream(fos);
			// studentVO를 파일에 추가
			oos.writeObject(studentVO);
			oos.flush();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			PrintLog.getInstance().printLog(e.getMessage());
		} catch (IOException e) {
			e.printStackTrace();
			PrintLog.getInstance().printLog(e.getMessage());

		} finally {

			try {
				if (fos != null)
					fos.close();
				if (oos != null)
					oos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}

		}

		// 로그
		// close
	}

	public StudentVO searchStudent(String studentNo) throws StudentException {
		StudentVO vo = new StudentVO(studentNo, null, null, 0);
		int no = list.indexOf(vo);
		if (no == -1)
			throw new StudentException("검색결과 학번에 해당하는 학생이 없습니다.");
		return list.get(no);
	}

	public void UpdateFile() {
		File file = new File("student.dat");
		FileOutputStream fos = null;
		ObjectOutputStream oos = null;
		// 초기화

		try {
			fos = new FileOutputStream(file);
			oos = new ObjectOutputStream(fos);

			for (int i = 0; i < list.size(); i++)
				oos.writeObject(list.get(i));
			oos.flush();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if (fos != null)
					fos.close();
				if (oos != null)
					oos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	public boolean deleteStudent(String studentNo) {
		StudentVO vo = new StudentVO(studentNo, null, null, 0);
		boolean result = list.remove(vo);
		if (result) {
			StudentService.getInstance().UpdateFile();
		}

		return result;

	}
}
