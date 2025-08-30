package hasa;

public class Gun {

	//필드
		protected int bullet;			//protected를 사용한 것은 상속을 염두에 둔 것
		
	
	
	//생성자
		public Gun() {
			bullet = 20;
		}
		
		
		
	//메서드
		public void shot() {
			if(bullet>0) {
				bullet--;
				System.out.println("총알 1발 발사!"+ bullet);
			
			}else {
				reload();
			}
		}
		
		
		public void reload() {
			System.out.println("총알이 없잖아!");
			bullet = 20;
		}
		
		
	
}
