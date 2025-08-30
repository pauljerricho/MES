package Inheritance;

public class SamsungMupoong extends Airconditioner {

	@Override
	public void changeMode() {
		mode = mode % 4 + 1;	//이렇게도 이용 가능!
		switch(mode) {        //근데 이해안됨 직접 계산해보기
		case 1:
			System.out.println("냉방 모드");
			break;			//브레이크는 왜 쓰는거지?
		case 2:
			System.out.println("송풍 모드");
			break;
		case 3:
			System.out.println("무풍냉방 모드");
			break;
		case 4:
			System.out.println("컨트롤냉방 모드");
			break;
	}
	}
	
	
	
	
}
