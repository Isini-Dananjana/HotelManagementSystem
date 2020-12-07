package supplier;

public class Supplier_payment_bean {

	private int orderid;
	private int supplierid;
	private String supplierfirstname;
	private String supplierlastname;
	private String supplieremail;
	private String itemname;
	private int itemamount;
	private double itemprice;
	private double orderdiscount;
	private double orderprice;
	private double supplierpayment;
	private String receiveddate;
	
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
	public double getItemprice() {
		return itemprice;
	}
	public void setItemprice(double itemprice) {
		this.itemprice = itemprice;
	}
	public double getOrderdiscount() {
		return orderdiscount;
	}
	public void setOrderdiscount(double orderdiscount) {
		this.orderdiscount = orderdiscount;
	}
	public double getOrderprice() {
		return orderprice;
	}
	public void setOrderprice(double orderprice) {
		this.orderprice = orderprice;
	}
	public double getSupplierpayment() {
		return supplierpayment;
	}
	public void setSupplierpayment(double supplierpayment) {
		this.supplierpayment = supplierpayment;
	}
	public String getReceiveddate() {
		return receiveddate;
	}
	public void setReceiveddate(String receiveddate) {
		this.receiveddate = receiveddate;
	}
	
	
	
}
