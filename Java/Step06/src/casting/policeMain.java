package casting;

public class policeMain {

	public static void main(String[] args) {
		Gun gun = new Gun(0);
		Police p = new Police(2);
		AK47 ak = new AK47();
		p.shot();
		p.changeGun(ak);
		for(int i = 0; i<21; i++)
			p.shot();
		AK47 a = new AK47();
		
	}
	

}
