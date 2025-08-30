package hasa;

public class Police {

	//필드
		private Gun gun;
		private int handcuff;
	
	
		
		//생성자
		public Police(int handcuff) {
			gun = new Gun();
			this.handcuff = handcuff;
		

		}
			
			
	//메서드
		
		//경찰은 1자루 총을 갖고 있음
		//이건 왜 없지?
		
		
		//경찰은 총을 쏠 수 있음,
		public void shot() {
			gun.shot();
		}
		 
		
		//경찰은 총알을 리필할 수 있음
		public void reload() {
			gun.reload();
		}
		
		
		//경찰은 총을 교체할 수 있음
		public void changeGun(Gun gun) {
			this.gun = gun;
		}

}