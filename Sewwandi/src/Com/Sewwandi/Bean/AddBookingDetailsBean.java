package Com.Sewwandi.Bean;

public class AddBookingDetailsBean {
	
	private int roomReservationId;
	private String cName;
	private String checkIn;
	private String checkOut;
	private String totRAmount;
	private String arrivalTime;
	private int no_of_adults;
	private int no_of_kids;
	private String roomNo;
	private String phone_No;
	private String roomType;
	
	public AddBookingDetailsBean() {
		// TODO Auto-generated constructor stub
		
		
	}
	
	public AddBookingDetailsBean(int roomReservationId, String cName, String checkIn, String checkOut,
			String totRAmount, String arrivalTime, int no_of_adults, int no_of_kids, String roomNo, String phone_No,String roomType) {
		
		this.roomReservationId = roomReservationId;
		this.cName = cName;
		this.checkIn = checkIn;
		this.checkOut = checkOut;
		this.totRAmount = totRAmount;
		this.arrivalTime = arrivalTime;
		this.no_of_adults = no_of_adults;
		this.no_of_kids = no_of_kids;
		this.roomNo = roomNo;
		this.phone_No = phone_No;
		this.roomType = roomType;
		
	}
	
	
	public String getRoomType() {
		return roomType;
	}


	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}


	public int getRoomReservationId() {
		return roomReservationId;
	}
	public void setRoomReservationId(int roomReservationId) {
		this.roomReservationId = roomReservationId;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public String getCheckIn() {
		return checkIn;
	}
	public void setCheckIn(String checkIn) {
		this.checkIn = checkIn;
	}
	public String getCheckOut() {
		return checkOut;
	}
	public void setCheckOut(String checkOut) {
		this.checkOut = checkOut;
	}
	public String getTotRAmount() {
		return totRAmount;
	}
	public void setTotRAmount(String totRAmount) {
		this.totRAmount = totRAmount;
	}
	public String getArrivalTime() {
		return arrivalTime;
	}
	public void setArrivalTime(String arrivalTime) {
		this.arrivalTime = arrivalTime;
	}
	public int getNo_of_adults() {
		return no_of_adults;
	}
	public void setNo_of_adults(int no_of_adults) {
		this.no_of_adults = no_of_adults;
	}
	public int getNo_of_kids() {
		return no_of_kids;
	}
	public void setNo_of_kids(int no_of_kids) {
		this.no_of_kids = no_of_kids;
	}
	public String getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}
	public String getPhone_No() {
		return phone_No;
	}
	public void setPhone_No(String phone_No) {
		this.phone_No = phone_No;
	}
	
	
	

	
	
	

}
