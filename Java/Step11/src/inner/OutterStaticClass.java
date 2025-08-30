package inner;

public class OutterStaticClass {
	private int inNum;
	private static double pi = 3.1415;
	
	public OutterStaticClass() {
		super();
		inNum = 10;
	}
	
	public static class InStaticClass {
		public void printInNum() {
			//None Static 필드에 접근이 불가능하다.
			//static 필드는 접근이 가능하다.
			//System.out.println(inNum);
			System.out.println(pi);
		}
	}
}
	


