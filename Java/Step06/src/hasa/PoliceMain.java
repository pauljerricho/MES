package hasa;

public class PoliceMain {

	public static void main(String[] args) {
	//	Gun gun = new Gun();
		AK47 ak = new AK47();
		Police p = new Police(2);
		
		
		p.changeGun(ak);
		for(int i= 0; i<30; i++)
			p.shot();
		
		
		
	}

}
