package priority;

public class ThreadPriority extends Thread {
	
	public ThreadPriority(String name) {
		super(name);
		System.out.println(name + " - 스레드 생성");
	}

	@Override
	public void run() {
		try {
			for(int i=0;i<10;i++)
			Thread.sleep(100);
		} catch (InterruptedException e) {
			e.printStackTrace();
		} //일하는 걸 멈추겠다.
	System.out.println(getName() + "- 스레드 종료");
	}

	
}
