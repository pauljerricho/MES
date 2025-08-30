package Constructor;

public class Car {

	//필드
	protected int fuel;				//프로텍트는 왜들어가?
	
	
	//생성자
	public Car(int fuel) {			//근데 보이드는 왜 들어가는거야?
		this.fuel = fuel;				//리턴이 필요 없어서
										//그게 무슨뜻이지?
	}


	
	
	
	//메서드
	
	
		public void run() {
			fuel -= 10;
			System.out.println("일반 주행 모드로 달립니다. - " + fuel);
			
		}
	
}
