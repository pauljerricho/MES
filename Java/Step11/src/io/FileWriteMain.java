package io;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
public class FileWriteMain {

	public static void main(String[] args) {
		//c:\\test\\write.txt
		File file = new File("c:\\test\\write.txt");
		File parentFile = file.getParentFile();
		if(!file.getParentFile().exists()) {
			file.getParentFile().mkdirs();
		}
		
		FileWriter fw = null; //노드스트림
		PrintWriter pw = null; //부가기능
		
		try {
			//파일 출력 스트림 생성 및 파일 연결
			fw = new FileWriter(file,true);
			//프로세스 스트림 생성
			pw = new PrintWriter(fw);
			
			pw.println("Hello World");
			pw.println("안녕하세요");
			pw.flush();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
	}

}
