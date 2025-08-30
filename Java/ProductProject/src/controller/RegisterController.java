package controller;

import java.util.Scanner;

import service.ProductService;
import vo.ProductVO;

public class RegisterController implements Controller {

	@Override
	public void execute(Scanner sc) {
		System.out.println("====제품등록을 시작합니다.===");
		sc.nextLine();
		System.out.println("제품번호를 입력하세요");
		String productNo = sc.nextLine();
		System.out.println("제품명을 입력하세요");
		String name = sc.nextLine();
		System.out.println("제조사를 입력하세요");
		String company = sc.nextLine();
		System.out.println("창고위치를 입력하세요");
		String location = sc.nextLine();
		
		
		boolean result = ProductService.getInstance().InsertProduct(new ProductVO(productNo, name, company, location));
		if(result)
		System.out.println("제품등록성공");
		else {
		System.out.println("제품등록실패");}
	}

}
