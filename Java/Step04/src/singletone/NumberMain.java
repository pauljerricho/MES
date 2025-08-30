package singletone;

public class NumberMain {

	public static void main(String[] args) {
		//Number 객체 생성
		Number num = Number.getInstance(); //private은 외부에서 생성 불가능
		System.out.println(num.getNum());
		num.addNum();
		System.out.println(num.getNum());
		
		Number.getInstance().addNum();
		
		Number n1 = Number.getInstance();
		Number n2 = Number.getInstance();
		System.out.println(n1.getNum());
		System.out.println(n2.getNum());
		
		System.out.println(num);
		System.out.println(n1);
		System.out.println(n2);
		
		//특정 개체를 찍어내는 클래스
	}

}
