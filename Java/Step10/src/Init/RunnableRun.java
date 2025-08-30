package Init;

public class RunnableRun implements Runnable{

	@Override
	public void run() {
		for(int i=0;i<10;i++)
			System.out.println(Thread.currentThread().getName() + " -스레드 종료");
	}

}
