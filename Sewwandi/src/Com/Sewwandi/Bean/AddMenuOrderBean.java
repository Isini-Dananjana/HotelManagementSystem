package Com.Sewwandi.Bean;

public class AddMenuOrderBean {
	
	private int menuOrderId;
	private String customername;
	private String menuId;
	private int quantity;
	private String menuPrice;
	private int amount;

	public AddMenuOrderBean(int menuOrderId, String customername, String menuId, int quantity,String menuPrice, int amount) {
		super();
		this.menuOrderId = menuOrderId;
		this.customername = customername;
		this.menuId = menuId;
		this.quantity = quantity;
		this.menuPrice = menuPrice;
		this.amount=amount;

	}

	public int getMenuOrderId() {
		return menuOrderId;
	}

	public String getCustomername() {
		return customername;
	}

	public String getMenuId() {
		return menuId;
	}

	public int getQuantity() {
		return quantity;
	}
	public int getAmount() {
		return amount;
	}

	public String getMenuPrice() {
		return menuPrice;
	}
	
	
}
