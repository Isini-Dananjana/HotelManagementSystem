
package order;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class orderinsertbean {

	private int orderid;
	private String itemname;
	private int itemamount;
	
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
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
	
	
	
	
}
