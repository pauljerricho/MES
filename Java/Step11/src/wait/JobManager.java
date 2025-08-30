package wait;

public class JobManager {
public synchronized void writeJobManager(String msg) {
	JobInfo.getInstane().writeJob(msg);
	System.out.println("직업정보를 업데이트 하였습니다.");
	System.out.println("=======================");
}
	
}
