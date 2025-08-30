package controller;

import java.util.Scanner;

import service.ProductService;
import vo.ProductVO;

public class SearchController implements Controller {

	@Override
	public void execute(Scanner sc) {
		System.out.println("제품검색을 시작합니다.");
		System.out.println("회사명을 입력하세요.");
		String company = sc.nextLine();
		sc.nextLine();
		ProductVO vo;
		vo = ProductService.getInstance().SearchProduct(company);
		System.out.println(vo);
	}

}
