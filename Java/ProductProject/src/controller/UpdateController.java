package controller;

import java.util.Scanner;

import service.ProductService;
import vo.ProductVO;

public class UpdateController implements Controller {

	@Override
	public void execute(Scanner sc) {
		System.out.println("수정할 제품번호를 입력하세요.");
		sc.nextLine();
		String productNo = sc.nextLine();
		ProductVO vo;
		vo = ProductService.getInstance().SearchProduct(productNo);
		
		System.out.println("수정할 이름은?");
		String name = sc.nextLine();
		System.out.println("수정할 회사는?");
		String company = sc.nextLine();
		System.out.println("수정할 창고위치는?");
		String location = sc.nextLine();
		
		vo.setName(name);
		vo.setCompany(company);
		vo.setLocation(location);
		System.out.println("수정완료");

	}

}
