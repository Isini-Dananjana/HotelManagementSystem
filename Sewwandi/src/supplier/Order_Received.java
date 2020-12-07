package supplier;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import order.orderbean;

public class Order_Received {


	public orderbean getorder(int orderid) {

		
		orderbean Orderbean=new orderbean();
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sewwandi", "root", "isini123");
			
			PreparedStatement pst=null;
			ResultSet rs = null;
			
			
		String query="select * from orders where orderid=?;";
		pst=con.prepareStatement(query);
		pst.setInt(1, orderid);;
		
		rs=pst.executeQuery();
		
		while(rs.next()) {
			
			Orderbean.setOrderid(rs.getInt("orderid"));
			Orderbean.setSupplierid(rs.getInt("supplierid"));
			Orderbean.setSupplierfirstname(rs.getString("supplierfirstname"));
			Orderbean.setSupplierlastname(rs.getString("supplierlastname"));
			Orderbean.setSupplieremail(rs.getString("supplieremail"));
			Orderbean.setItemname(rs.getString("itemname"));
			Orderbean.setItemamount(rs.getInt("itemamount"));
			Orderbean.setOrderdate(rs.getString("orderdate"));	
			
		}
		
		
		
		}catch(Exception e) {
			
			System.out.println(e);
			
			
		}
		return Orderbean;
		
	}
	
	
	
}
