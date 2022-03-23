package url;

import java.net.MalformedURLException;
import java.net.URL;

public class URLEx {
	public void testURLExample(String urlStr) {
		System.out.println(urlStr);
		URL url;
		
		try {
			url = new URL(urlStr);
			System.out.println("프로토콜 :"+ url.getProtocol()); //url 프로토콜 가져오기
			System.out.println("포트번호 :"+ url.getPort()); //url 포트 가져오기 "-1"인 경우 보안상의 이유로 접근을 차단한 것이다.
			System.out.println("호스트 :"+ url.getHost()); //url 호스트 가져오기
			System.out.println("파일경로 :"+ url.getFile()); //url 파일경로 가져오기
			System.out.println("URL 전체 :"+ url.toExternalForm());
		} catch (MalformedURLException e) {
			e.printStackTrace();
		}
	}
}
