package wait;

public class JobInfo {
	private static JobInfo instance = new JobInfo();
	private String jobInfo;
	private JobInfo() {
		
	}
	public static JobInfo getInstane() {
		if(instance == null) 
			instance = new JobInfo();
			return instance;
		
	}
	
	public synchronized void writeJob(String msg) {
		jobInfo = msg;
		notifyAll(); //job정보를 체크하는 부분
	}
	
	public synchronized String getJobInfo() throws InterruptedException {
		String msg = null;
				if(jobInfo == null) 
					wait();
		msg = jobInfo;
		jobInfo = null;
		return msg;
	}
}
