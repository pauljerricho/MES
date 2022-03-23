package inet;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Scanner;

public class TestNetAddress2 {
	public static void main(String args[]) throws UnknownHostException {
		//키보드로 호스트 명을 입력받아, 해당 호스트가 가진 ip 주소 모두를 출력 처리
		do {
			System.out.println("호스트명 :");
			String host = new Scanner(System.in).next();
			if(host.equals("none")!= true) {
				InetAddress[] ips = InetAddress.getAllByName(host);
				System.out.println(host + "가 가진 ip는" + ips.length + "개 입니다.");
				for(InetAddress ip : ips)
					System.out.println(ip.getHostAddress());
			}else
				break;
		}while(true);
	}
}
