package Com.Sewwandi.Bean;

public class AddMenuBean {

	private String menuId;
	private String menuImage ;
	
	private String menuDescription ;
	private String menuPrice ;
	
	public AddMenuBean() {
		// TODO Auto-generated constructor stub
		
	
	}

	public AddMenuBean(String menuId, String menuImage, String menuDescription, String menuPrice) {
		super();
		this.menuId = menuId;
		this.menuImage = menuImage;
		this.menuDescription = menuDescription;
		this.menuPrice = menuPrice;
	}

	public String getMenuId() {
		return menuId;
	}

	public void setMenuId(String menuId) {
		this.menuId = menuId;
	}

	public String getMenuImage() {
		return menuImage;
	}

	public void setMenuImage(String menuImage) {
		this.menuImage = menuImage;
	}

	public String getMenuDescription() {
		return menuDescription;
	}

	public void setMenuDescription(String menuDescription) {
		this.menuDescription = menuDescription;
	}

	public String getMenuPrice() {
		return menuPrice;
	}

	public void setMenuPrice(String menuPrice) {
		this.menuPrice = menuPrice;
	}

}
	