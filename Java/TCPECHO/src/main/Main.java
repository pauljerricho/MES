package main;

import tcp.TCPEchoClient;
import tcp.TCPEchoServer;

public class Main {

	public static void main(String[] args) {
			new TCPEchoServer().tcpServer(9007); //서버 접속하기
			new TCPEchoClient().clientTCP("localhost", 9007); //클라이언트 접속하기
	}

}
