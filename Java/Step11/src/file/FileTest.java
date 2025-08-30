package file;
import java.io.File;
import java.io.IOException;

public class FileTest {

	public static void main(String[] args) {
		File file = null;
		file = new File("c:\\test\\test.txt");
		
		System.out.println(file.getParent());
		//부모 폴더 경로
		File parentFile = file.getParentFile();
		System.out.println(file.getAbsolutePath());
		//파일 생성전에는 파일이 위치한 폴더 경로가 있는지 체크
		if(!parentFile.exists()) {
			//경로가 없을때
			//해당 경로까지의 모든 폴더를 생성하겠습니다.
			parentFile.mkdir();
			System.out.println("해당 폴더 경로 생성이 완료되었습니다.");
		}
		
		try {
			boolean result = file.createNewFile();
			System.out.println(result);
			file.delete();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
