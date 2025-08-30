package join;

public class JoinThread extends Thread {

	public JoinThread(String name) {
		super(name);
		System.out.println(name + "- 스레드 생성");
	}

	public void run() {
		try {
			for (int i = 0; i < 1001; i++) {
			System.out.println(getName() + " - " + i);
			Thread.sleep(10);
			}
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
