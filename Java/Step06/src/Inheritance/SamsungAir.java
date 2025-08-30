package Inheritance;

public class SamsungAir extends Aircondition {
	
	public SamsungAir(int temp, int i, int wind) {
		super(temp, i, wind);
	}

	public void mode() {
			mode = mode%4 + 1;
			System.out.println("현재모드 : ");
			switch (mode) {
			case 1:
				System.out.println("냉방");
				break;
			case 2:
				System.out.println("송풍");
				break;
			case 3:
				System.out.println("무풍 냉방");
				break;
			case 4:
				System.out.println("컨트롤 냉방");
				break;
			default:
				break;
			}
		}
		
	}
