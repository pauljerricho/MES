package io;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;

public class IOTest {
	public String readline() {
		InputStreamReader isr = new InputStreamReader(System.in); //입력받은 스트림
		char buffer[] = new char[10]; //입력받는 내용을 저장할 부분
		String message = null;
		try {
			int idx = 0;
			do {
				if(idx == buffer.length-1) //배열에 내용이 가득차 있으면 배열의 길이를 늘림
					buffer = reallocBuffer(buffer); //이때 배열의 내용이 가득차있는 상태
				buffer[idx] = (char) isr.read();	//한글자씩 늘림
				idx++;
			} while (buffer[idx-1] != '\n');
			
			for(int i = 0; i<idx; i++) {
				System.out.print((int) buffer[i] + " ");
			}
			buffer[idx-1] = '\0';
			message = String.copyValueOf(buffer, 0, idx-2);
		} catch (IOException e) {
			e.printStackTrace();
		}
	return message;
	}

	private char[] reallocBuffer(char[] buffer) {
		char []temp = buffer; //임시 배열에 기존 배열을 저장
		buffer = new char[temp.length*2]; //기존 배열에다가 2배 길이만큼 배열을 새로 생성
		for(int i=0;i<temp.length;i++) {
			buffer[i] = temp[i]; //임시 저장된 내용을 새로 생성된 배열에 저장
		}
		return buffer;
		//배열의 길이를 늘린다.
	}
	
	public void println(String msg) {
		char buf[] = msg.toCharArray();
		OutputStreamWriter osw = new OutputStreamWriter(System.out);
		try {
			osw.write(buf);
			osw.flush();
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
}
