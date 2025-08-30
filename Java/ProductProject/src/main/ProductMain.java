package main;

import java.util.Scanner;

import controller.Controller;
import controller.HandlerMapping;

public class ProductMain {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		while(true) {
			System.out.println("=======사내 제품관리 프로그램======");
			System.out.println("1.제품등록");
			System.out.println("2.제품검색");
			System.out.println("3.제품수정");
			System.out.println("4.제품전체조회");
			System.out.println("0.프로그램종료");
			int no = sc.nextInt();
			
			Controller controller = HandlerMapping.getInstance().createProduct(no);
			if(controller != null)
				controller.execute(sc);
			if(no == 0)
				break;
		}
		System.out.println("프로그램이 종료되었습니다.");
	}

}
