package tcp;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;

public class TCPEchoServer {
	public void tcpServer(int port) {
		//서버 소켓 관련 객체
		ServerSocket serverSocket = null;
		Socket sock = null;
		InetAddress inetAddr = null;
		
		//입출력 객체
		InputStream in = null;
		OutputStream out = null;
		BufferedReader br = null;
		PrintWriter pw = null;
		
		//서버 소켓 생성
		try {
			serverSocket = new ServerSocket(port); //포트번호 가져옴
			
			while(true) {
				//클라이언트의 접속을 대기
				System.out.println("======= 클라이언트 접속 대기 중)"+
				"(port" + serverSocket.getLocalPort() + ")========");
				sock = serverSocket.accept();
				
				//클라이언트의 접속 요청
				inetAddr = serverSocket.getInetAddress();
				System.out.println("클라이언트("+inetAddr.getHostAddress()+") 접속");
				
				//클라이언트와 통신을 위한 stream 생성
				in = sock.getInputStream();
				out = sock.getOutputStream();
				br = new BufferedReader(new InputStreamReader(in));
				pw = new PrintWriter(new OutputStreamWriter(out));
				
				String msg = null; //메세지 객체
				
				//클라이언트와 통신
				while((msg = br.readLine())!= null) {
					System.out.println("\tCLIENT>"+msg);
					pw.println(msg); //메세지 출력
					pw.flush(); //메세지 보내기
				}
			}
		} catch (IOException e) {
			System.out.println(e);
		} finally {
			try {
				br.close();
				pw.close();
				in.close();
				out.close();
				sock.close();
				serverSocket.close();
				System.out.println("종료");
			} catch (IOException e) {
				System.out.println(e);
			}
		}
	}
}
