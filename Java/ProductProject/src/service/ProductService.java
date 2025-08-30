package service;

import java.util.ArrayList;

import vo.ProductVO;

public class ProductService {
	private static ProductService instance = new ProductService();
	ArrayList<ProductVO> list;
	private ProductService() {
		list = new ArrayList<ProductVO>();
	}
	
	public ArrayList<ProductVO> getList() {
		return list;
	}

	public static ProductService getInstance() {
		if(instance == null)
			instance = new ProductService();
		return instance;
	}
	public boolean InsertProduct(ProductVO vo) {
		if(list.contains(vo)) {
			System.out.println("제품이 중복됩니다.");
			return false;}
		list.add(vo);
		return true;
	}
	public ProductVO SearchProduct(String company) {
		ProductVO vo = new ProductVO(null, null, company, null);
		int no = list.indexOf(vo) + 1;
		if(no == -1)
			System.out.println("찾으려는 정보가 없습니다.");
		return list.get(no);
	}
	public boolean UpdateProduct(String productNo) {
		ProductVO vo = new ProductVO(productNo, null, null, null);
		return false;
	}
	
}
