package syncronized;

public class Player extends Thread{
	private int money;
	private Bank bank;
	
	public Player(Bank bank) {
		super();
		this.bank = bank;
	}
	public void getMoney() {
		this.money += money;
		
		money = bank.transBank(1000);
		System.out.println(getName() + " : " + money);
	}
	
	public void run() {
		getMoney();
	}

}
