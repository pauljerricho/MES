package io;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Scanner;

public class DefaultNodePad {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("파일 명 입력 : ");
		String fileName = sc.nextLine();
		File file = new File("c:\\test\\" + fileName);
		//경로에 폴더 만들기
		if (!file.getParentFile().exists()) {
			file.getParentFile().mkdirs();
		}

		FileWriter fw = null;
		PrintWriter pw = null;
		try {
			fw = new FileWriter(file);					
			pw = new PrintWriter(fw);
			
			while(true) {
				System.out.println("내용 입력 >");
				String str = sc.nextLine();
				if(str.equals("exit")) break;
				pw.println(str);
				pw.flush();
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if(pw != null) pw.close(); //
				fw.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}

	}
}
