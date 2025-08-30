package inner;

public class OutterClass {
	private int outter;

	public OutterClass(int outter) {
		super();
		this.outter = outter;
	}

	public OutterClass() {
	}

	public void printOutter() {
		System.out.println(outter);
		// 안됨 System.out.println(inner);
	}

	public class InnerClass {
		private int inner;

		public InnerClass(int inner) {
			super();
			this.inner = inner;
		}

		public int sum() {
			return outter + inner;
		}

	}
}
