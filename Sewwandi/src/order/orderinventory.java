package order;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public class orderinventory {

	public orderinsertbean getorder(int orderid) {

		
		orderinsertbean Orderinsertbean=new orderinsertbean();
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sewwandi", "root", "isini123");
			
			PreparedStatement pst=null;
			ResultSet rs = null;
			
			
		String query="select orderid,itemname,itemamount from orders where orderid=?;";
		pst=con.prepareStatement(query);
		pst.setInt(1, orderid);;
		
		rs=pst.executeQuery();
		
		while(rs.next()) {
			
			Orderinsertbean.setOrderid(rs.getInt("orderid"));
			Orderinsertbean.setItemname(rs.getString("itemname"));
			Orderinsertbean.setItemamount(rs.getInt("itemamount"));	
			
		}
		
		
		
		}catch(Exception e) {
			
			System.out.println(e);
			
			
		}
		return Orderinsertbean;
		
	}
	
	
	
}
