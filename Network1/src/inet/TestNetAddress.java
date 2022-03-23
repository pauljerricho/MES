package inet;

import java.net.InetAddress;
import java.net.UnknownHostException;

public class TestNetAddress {
	public static void main(String args) {
		try {
			InetAddress ip1 = InetAddress.getLocalHost(); //로컬호스트 아이피 불러오기
			System.out.println(ip1.getHostAddress());
			System.out.println(ip1.getHostName());
			
			InetAddress ip2 = InetAddress.getByName("www.naver.com");
			InetAddress[] ipes = ip2.getAllByName("www.google.com");
			
			System.out.println("naver :" + ip2.getHostAddress());
			System.out.println("google의 서버는" + ipes.length + "개 있습니다.");
			for(InetAddress ip : ipes)
				System.out.println(ip.getHostAddress());
			
			InetAddress[] ipes2 = InetAddress.getAllByName("www.naver.com");
			System.out.println("naver의 서버 ip는" + ipes2.length + "개 있습니다.");
		} catch (UnknownHostException e) {
			e.printStackTrace();
		} 
		
		
	}
}
