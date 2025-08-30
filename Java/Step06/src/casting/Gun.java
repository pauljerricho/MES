package casting;

public class Gun {
	protected int n; //상속도 생각한다.

	public Gun() {
		super();
		this.n = 20;
	}

	public Gun(int i) {
	}

	public void shot() {
		/*System.out.println("총알 1발 발사!");
		n--;
		System.out.println("남은 총알 갯수 :" + n);
		if (n == 0) {
			n = n + 20;
			System.out.println("리필완료");
		}*/
	if(n>0) {
		n--;
		System.out.println("빵: " + n);
	}
	else {
		reload();
	}
	}

	void reload() {
		System.out.println("reload reload!");
		n = 20;
	}
}

