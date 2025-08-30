
public class IfEx3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		 * 		XY
		 * 		YX
		 * +
		 * -----------
		 * 		99
		 * 되는 조합을 전부 출력
		 * X와 Y가 가질 수 있는 값의 범위는 0~9
		 */
	int x,y,z;
	for(x=0;x<10;x++)
		for(y=0;y<10;y++)
	if(((10*x+y)+(10*y+x))==99) 
	{	z = (10*x+y)+(10*y+x);
		System.out.println("x="+x+"과"+"y="+y);
	}
		
}
}

