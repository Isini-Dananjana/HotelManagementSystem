package Com.Sewwandi.Bean;

public class AddRoomBean {

	private int roomId;
	private String imgName ;
	private String roomType ;
	private String roomNo  ;
	private String roomDescription ;
	private String roomPrice ;
	
	public AddRoomBean() {
		// TODO Auto-generated constructor stub
		
		
	}

	public AddRoomBean(int roomId, String imgName, String roomType, String roomNo, String roomDescription,
			String roomPrice) {
		super();
		this.roomId = roomId;
		this.imgName = imgName;
		this.roomType = roomType;
		this.roomNo = roomNo;
		this.roomDescription = roomDescription;
		this.roomPrice = roomPrice;
	}

	public int getRoomId() {
		return roomId;
	}

	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}

	public String getImgName() {
		return imgName;
	}

	public void setImgName(String imgName) {
		this.imgName = imgName;
	}

	public String getRoomType() {
		return roomType;
	}

	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}

	public String getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}

	public String getRoomDescription() {
		return roomDescription;
	}

	public void setRoomDescription(String roomDescription) {
		this.roomDescription = roomDescription;
	}

	public String getRoomPrice() {
		return roomPrice;
	}

	public void setRoomPrice(String roomPrice) {
		this.roomPrice = roomPrice;
	}
	
	

}
