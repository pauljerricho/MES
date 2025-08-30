package vo;

import java.util.Objects;

public class ProductVO {
	private String productNo;
	private String name;
	private String company;
	private String location;
	public ProductVO(String productNo, String name, String company, String location) {
		super();
		this.productNo = productNo;
		this.name = name;
		this.company = company;
		this.location = location;
	}
	public String getProductNo() {
		return productNo;
	}
	public String getName() {
		return name;
	}
	public String getCompany() {
		return company;
	}
	public String getLocation() {
		return location;
	}
	public void setProductNo(String productNo) {
		this.productNo = productNo;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	@Override
	public String toString() {
		return "ProductVO [productNo=" + productNo + ", name=" + name + ", company=" + company + ", location="
				+ location + "]";
	}
	@Override
	public int hashCode() {
		return Objects.hash(company);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ProductVO other = (ProductVO) obj;
		return Objects.equals(company, other.company);
	}
	
	
}
