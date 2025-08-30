package anonymous;

public class Player {
	private item item;
	public Player(item item) {
		this.item = item;
	}
	
	public void changeItem(item item) {
		this.item = item;
	}
	public void itemExecute() {
		item.execute();
	}
}
