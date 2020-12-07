package Com.Sewwandi.Bean;

public class Hall {
	
	private int hallno;
	private String maxguests;
	private String price;
	private String imageName;
	
	
	public Hall(int hallno, String maxguests, String price, String imageName) {
		super();
		this.hallno = hallno;
		this.maxguests = maxguests;
		this.price = price;
		this.imageName = imageName;
	}


	public int getHallno() {
		return hallno;
	}


	public String getMaxguests() {
		return maxguests;
	}


	public String getPrice() {
		return price;
	}


	public String getImageName() {
		return imageName;
	}
	
	

}
