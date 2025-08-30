package service;

import java.util.Scanner;

import vo.StudentVO;

//싱글톤 패턴 적용
public class StudentService {
	private static StudentService instance = new StudentService();
	private StudentVO[] arr;
	private int idx;

	private StudentService() {
		arr = new StudentVO[5];
		arr[idx++] = new StudentVO("A0001", "김영희", "간호학과", 4.0);
		arr[idx++] = new StudentVO("A0002", "김철수", "간호학과", 3.0);
		arr[idx++] = new StudentVO("A0003", "김수미", "간호학과", 2.0);
		arr[idx++] = new StudentVO("A0004", "김병호", "간호학과", 4.3);
	}

	public static StudentService getInstance() {
		if (instance == null)
			instance = new StudentService();
		return instance;
	} //인스턴스 생성시 널값이 있으면 생성해줌.

	public void insertStudent(Scanner sc) {
		// 학생데이터 추가
		// 1. 저장할 공간이 있는지 체크
		// if, idx, arr.length, 배열길이와 idx가 같으면 더 이상 저장할 공간이 없다.
		if (idx == arr.length) {
			System.out.println("저장할 공간이 없습니다.");
			return;
		}
		System.out.println("학생정보 등록을 시작합니다........");
		// 2. 학생데이터 입력 후 StudentVO 생성
		// 학번, 이름, 학과, 평점 ---> 입력
		System.out.print("학번 : ");
		String studentNo = sc.nextLine();
		System.out.print("이름 : ");
		String name = sc.nextLine();
		System.out.print("학과 : ");
		String major = sc.nextLine();
		System.out.println("평점 : ");
		double score = sc.nextDouble();
		StudentVO vo = new StudentVO(studentNo, name, major, score);
		// 3. 배열에 추가 후 idx 증가
		arr[idx++] = vo;
		System.out.println("학생정보 등록 완료.");
	}

	public void printAllstudent() {
		System.out.println("전체 학생정보 출력");
		for (int i = 0; i < idx; i++) {
			arr[i].printStudentInfo();
		}
	}

	public void selectStudent(Scanner sc) {
		if (idx == 0) {
			System.out.println("저장된 데이터가 없습니다.");
			return;
		}
		System.out.println("학생 정보 검색을 시작합니다.....");
		System.out.print("검색할 학번 : ");
		String studentNo = sc.nextLine();

		for (int i = 0; i < idx; i++) {
			if (arr[i].getStudentNo().equals(studentNo)) {
				arr[i].printStudentInfo();
				return;
			}
		}
		System.out.println("검색할 해당 학생 정보가 없습니다.");

	}

	public void updateStudent(Scanner sc) {

		if (idx == 0) {
			System.out.println("저장된 데이터가 없습니다.");
			return;
		}
		System.out.println("학생 정보 수정을 시작합니다.....");
		System.out.print("수정할 학번 : ");
		String studentNo = sc.nextLine();
		for (int i = 0; i < idx; i++) {
			if (arr[i].getStudentNo().equals(studentNo)) {
				System.out.print("이름 : ");
				String name = sc.nextLine();
				arr[i].setName(name);
				System.out.print("학과 : ");
				String major = sc.nextLine();
				arr[i].setMajor(major);
				System.out.println("평점 : ");
				double score = sc.nextDouble();
				arr[i].setScore(score);
				//이름, 학과, 평점 입력받아서 변경
				return;
			}

		}
		System.out.println("수정할 해당 학생 정보가 없습니다.");
	}

	public void deleteStudent(Scanner sc) {
		if (idx == 0) {
			System.out.println("저장된 데이터가 없습니다.");
			return;
		}
		System.out.println("학생 정보 삭제를 시작합니다.....");
		System.out.print("삭제할 학번 : ");
		String studentNo = sc.nextLine();

		for (int i = 0; i < idx; i++) {
			if (arr[i].getStudentNo().equals(studentNo)) {
				for(int j=i; j<idx-1;j++)
					arr[j] = arr[j+1];
					idx--;
				return;
			}
		}
		System.out.println("삭제할 해당 학생 정보가 없습니다.");
		}
	}