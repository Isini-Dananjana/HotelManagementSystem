package order;

public class orderbean {

	private int orderid;
	private int supplierid;
	private String supplierfirstname;
	private String supplierlastname;
	private String supplieremail;
	private String itemname;
	private int itemamount;
	private String orderdate;
	
	
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	
	public int getSupplierid() {
		return supplierid;
	}
	public void setSupplierid(int supplierid) {
		this.supplierid = supplierid;
	}
	public String getSupplierfirstname() {
		return supplierfirstname;
	}
	public void setSupplierfirstname(String supplierfirstname) {
		this.supplierfirstname = supplierfirstname;
	}
	public String getSupplierlastname() {
		return supplierlastname;
	}
	public void setSupplierlastname(String supplierlastname) {
		this.supplierlastname = supplierlastname;
	}
	public String getSupplieremail() {
		return supplieremail;
	}
	public void setSupplieremail(String supplieremail) {
		this.supplieremail = supplieremail;
	}
	public String getItemname() {
		return itemname;
	}
	public void setItemname(String itemname) {
		this.itemname = itemname;
	}
	public int getItemamount() {
		return itemamount;
	}
	public void setItemamount(int itemamount) {
		this.itemamount = itemamount;
	}
	public String getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(String orderdate) {
		this.orderdate = orderdate;
	}
	
	
}
