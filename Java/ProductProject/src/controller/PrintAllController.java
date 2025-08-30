package controller;

import java.util.ArrayList;
import java.util.Scanner;

import service.ProductService;
import vo.ProductVO;

public class PrintAllController implements Controller {

	@Override
	public void execute(Scanner sc) {
		ArrayList<ProductVO> list = ProductService.getInstance().getList();
		for(int i=0; i< list.size();i++)
			System.out.println(list.get(i));
	}

}
