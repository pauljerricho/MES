package inet;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;

public class InetAddressEx {
	public void testInetAddress(String domain) {
		InetAddress ip = null;
		
		try {
			ip = InetAddress.getByName(domain);
			
			System.out.println("HostName :" + ip.getHostName());
			System.out.println("HostAddress :" + ip.getHostAddress());
			System.out.println("HostName/HostAddress : \n\t" + ip.toString());
			
			System.out.println("-----------------------------------");
			byte[] ipAddr = ip.getAddress();
			System.out.println("getAddress()" + Arrays.toString(ipAddr)); //ip 주소를 byte 배열로 출력
			
			System.out.println("HostAddress :");
			for(int i = 0; i<ipAddr.length; i++) {
				if(ipAddr[i] < 0)
					System.out.println(ipAddr[i]+256);
				else
					System.out.println(ipAddr[i]);
				System.out.println(".");
			}
			System.out.println("");
			
			System.out.println("-----------------------------------");
			ip = InetAddress.getLocalHost();
			System.out.println("LocalHostName : " + ip.getHostName());
			System.out.println("LocalHostAddress : " + ip.getHostAddress());
			System.out.println("Local HostName/HostAddress : \n\t" + ip.toString());
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
		
	}
}
