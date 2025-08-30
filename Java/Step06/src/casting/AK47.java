package casting;

public class AK47 extends Gun {

	public AK47() {
		super();
		n = 24;
	}

	@Override
	public void shot() {
		n -=3;
		System.out.println("빵 빵 빵 : " + n);
		if(n<0)
			reload();
	}

	@Override
	void reload() {
		System.out.println("reload! reload!");
		n = 24;
	}
	
	
	
	

}
