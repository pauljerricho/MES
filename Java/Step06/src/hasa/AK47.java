package hasa;

public class AK47 extends Gun{

	//필드
		protected int bullet;
	
	
	
	
	//생성자
		public AK47() {
			super();
			bullet = 24;
		}
	
	
	
	//메서드
		public void shot() {
			if(bullet>0) {
				bullet -= 3;
				System.out.println("총알 3알 발사!" + bullet);
			}else {
				reload();
			}
		}



		@Override
		public void reload() {
		 System.out.println("R버튼 클릭");			//super.reload(); 이걸 지운 이유가 있나?
		bullet = 24;
		}
		
		
		
	
}
