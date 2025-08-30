package Inheritance;

public class Aircondition {
	protected int temp;
	protected int mode;
	protected int wind;
	public Aircondition(int temp, int i, int wind) {
		this.temp = 20;
		this.mode = 1;
		this.wind = 20;
	}
	public void Tempup() {
		if(temp<32)
		temp++;
		System.out.println("현재 온도 : " + temp);
	}
	public void Tempdown() {
		if(temp>18)
		temp--;
		System.out.println("현재 온도 : " + temp);
	}
	
	public void mode() {
		mode = mode%3 + 1;
		System.out.println("모드를 선택하세요.");
		switch (mode) {
		case 1:
			System.out.println("냉방");
			break;
		case 2:
			System.out.println("송풍");
			break;
		case 3:
			System.out.println("난방");
			break;
		default:
			break;
		}
	}
		public void windPower() {
			wind = wind%4 + 1;
			System.out.println("현재 세기 : " + wind);
			
	}	
}
