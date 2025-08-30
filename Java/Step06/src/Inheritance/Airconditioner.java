package Inheritance;

public class Airconditioner {

//-------------------------------------------------
	
	protected int temp;
	protected int mode;
	protected int wind;
	
	
//-------------------------------------------------	

	//생성자	
	public Airconditioner() {
		temp = 20;
		mode = 1;
		wind = 1;
	}
	
//-------------------------------------------------	
	
	//온도조절
	public void tempUp() {
		if(temp < 32)
			temp++;
		System.out.println("현재온도: " + temp);
	}

	public void tempDown() {
		if(temp > 18)
			temp--;
		System.out.println("현재온도: " + temp);
	}
	
	//모드변경
	public void changeMode() {
		/*mode++;
		if(mode > 3)	//이게 3보다 커지면 1로 바꾸겠다 그건가? 이거말고 다른방법은 없나?
			mode = 1;		
	*/
		
		mode = mode % 3 + 1;	//이렇게도 이용 가능!
		switch(mode) {			//근데 이해안됨 직접 계산해보기
		case 1:
			System.out.println("냉방 모드");
			break;			//브레이크는 왜 쓰는거지?
		case 2:
			System.out.println("송풍 모드");
			break;
		case 3:
			System.out.println("난방 모드");
			break;
		}
	}
	
	//바람세기
	public void windPower() {
		wind = wind % 4 +1;
		System.out.println("현재 바람세기: " + wind);
	}
	
	
	
}
