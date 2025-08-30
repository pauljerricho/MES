package tcp;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.UnknownHostException;

public class TCPEchoClient {
	public void clientTCP(String ip, int port) {
		Socket sock = null; //소켓 객체 생성
		InputStream in = null; //스트림 생성
		OutputStream out = null;
		BufferedReader br = null;
		BufferedReader stdin = null;
		PrintWriter pw = null;
		
		//서버로 접속
		try {
			sock = new Socket(ip, port);
			//서버와의 통신을 위하여 stream, 표준 입력 변수
			in = sock.getInputStream();
			out = sock.getOutputStream();
			br = new BufferedReader(new InputStreamReader(in));
			pw = new PrintWriter(new OutputStreamWriter(out));
			stdin = new BufferedReader(new InputStreamReader(System.in));
			String msg = null;
			String echo = null;
			System.out.println("접속 성공");
			//서버와의 통신
			do{
			System.out.println("\t메세지를 입력하세요. >");
			msg = stdin.readLine();
			
			//exit 입력하여 접속 끊기
			if(msg.equals("exit")) {
				sock.close();
				break;
			}
			
			pw.println(msg);
			pw.flush();
			echo = br.readLine();
			System.out.println("\t서버에서 온 메세지입니다." + echo);
			} while(msg != null);
		} catch (UnknownHostException e) {
			System.out.println(e);
		} catch (IOException e) {
			System.out.println(e);
		} finally {
			try {
				stdin.close();
				br.close();
				pw.close();
				in.close();
				out.close();
				System.out.println("종료");
			} catch (IOException e) {
				System.out.println(e);
			}
			
		}
		
		
		
		
		
	}
}
