package syncronized;

public class Bank {
	int money = 1000;

	public synchronized int transBank(int money) {
		this.money += money;
		try {
			Thread.sleep(1000);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return this.money;
	}
}
