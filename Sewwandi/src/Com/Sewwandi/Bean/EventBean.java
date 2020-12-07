package Com.Sewwandi.Bean;

public class EventBean {
	
	private int eventId;
	private String customername;
	private String hallno;
	private String eventdate;
	private String eventtime;
	private String eventtype;
	private String eventdes;
	private String noguests;
	private String photo;
	private String pphone;
	private String deco;
	private String dphone;
	private String makeup;
	private String mphone;
	private String price;
	private String dprice;
	private String mprice;
	private String pprice;
	private String tot;
	
	
	public EventBean(int eventId, String customername, String hallno, String eventdate, String eventtime,
			String eventtype, String eventdes, String noguests, String photo, String pphone, String deco, String dphone, String makeup, String mphone, String price,
			String dprice, String mprice, String pprice, String tot) {
	
		this.eventId = eventId;
		this.customername = customername;
		this.hallno = hallno;
		this.eventdate = eventdate;
		this.eventtime = eventtime;
		this.eventtype = eventtype;
		this.eventdes = eventdes;
		this.noguests = noguests;
		this.photo = photo;
		this.pphone = pphone;
		this.deco = deco;
		this.dphone = dphone;
		this.makeup = makeup;
		this.mphone = mphone;
		this.price = price;
		this.dprice = dprice;
		this.mprice = mprice;
		this.pprice = pprice;
		this.tot = tot;
	}


	public EventBean(int eventId, String customername, String hallno, String eventdate, String eventtime,
			String eventtype, String eventdes, String noguests, String photo, String deco, String makeup) {
		
		this.eventId = eventId;
		this.customername = customername;
		this.hallno = hallno;
		this.eventdate = eventdate;
		this.eventtime = eventtime;
		this.eventtype = eventtype;
		this.eventdes = eventdes;
		this.noguests = noguests;
		this.photo = photo;
		this.deco = deco;
		this.makeup = makeup;
	}


	public int getEventId() {
		return eventId;
	}


	public String getCustomername() {
		return customername;
	}


	public String getHallno() {
		return hallno;
	}


	public String getEventdate() {
		return eventdate;
	}


	public String getEventtime() {
		return eventtime;
	}


	public String getEventtype() {
		return eventtype;
	}


	public String getEventdes() {
		return eventdes;
	}


	public String getNoguests() {
		return noguests;
	}


	public String getPhoto() {
		return photo;
	}

	public String getPphone() {
		return pphone;
	}

	public String getDeco() {
		return deco;
	}
	
	public String getDphone() {
		return dphone;
	}

	public String getMakeup() {
		return makeup;
	}
	
	public String getmphone() {
		return mphone;
	}

	public String getPrice() {
		return price;
	}

	public String getDprice() {
		return dprice;
	}
	
	public String getMprice() {
		return mprice;
	}
	
	public String getPprice() {
		return pprice;
	}

	public String getTot() {
		return tot;
	}




	
	
	
	

}
