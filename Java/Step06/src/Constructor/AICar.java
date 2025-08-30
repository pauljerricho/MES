package Constructor;

public class AICar extends Car {

	//필드
	private String driverID;
	private boolean drivingMode;
	
	
	public AICar(int fuel, String driverID) {
		super(fuel);
		this.driverID = driverID;
	}



	public void changeMode() {
		drivingMode = !drivingMode;
		if(drivingMode)
			System.out.println("자율 주행 모드로 변경");
		else
			System.out.println("일반 주행 모드로 변경");
	}
	
	
	
	@Override
	public void run() {
		if(drivingMode) {
			fuel -= 15;
			System.out.println("자율 주행 모드로 주행을 시작합니다. - " + fuel);
		}else {
			super.run();
		}
	
	
	
	
	
	
	}
}