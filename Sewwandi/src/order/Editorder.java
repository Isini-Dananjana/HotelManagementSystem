package order;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class Editorder {

	public orderbean getordervalues(int orderid) {

		
		orderbean Orderbean=new orderbean();
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sewwandi", "root", "isini123");
			
			PreparedStatement pst=null;
			ResultSet rs = null;
			
			
		String querry="select orderid,supplierid,supplierfirstname,supplierlastname,supplieremail,itemname,itemamount,orderdate from  orders where orderid=?;";
		pst=con.prepareStatement(querry);
		pst.setInt(1, orderid);
		
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
			
			e.printStackTrace();
			
			
		}
		return Orderbean;
		
	}
	
public void editvalues(orderbean Orderbean){
	
	
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sewwandi", "root", "password");
			
			PreparedStatement pst=null;
			
			String query="update  sewwandi.orders set supplierid = ? ,supplierfirstname = ? , supplierlastname  = ?, supplieremail = ? , itemname = ? , itemamount = ? , orderdate = ? where orderid = ?; ";
		    pst=con.prepareStatement(query);
			
			
		    pst.setInt(1, Orderbean.getSupplierid());
            pst.setString(2, Orderbean.getSupplierfirstname());
            pst.setString(3, Orderbean.getSupplierlastname());
            pst.setString(4, Orderbean.getSupplieremail());
            pst.setString(5, Orderbean.getItemname());
            pst.setInt(6, Orderbean.getItemamount());
            pst.setString(7, Orderbean.getOrderdate());
            pst.setInt(8, Orderbean.getOrderid());
			
			pst.executeUpdate();
	
		}	
		
		catch (Exception ex) {
			
			ex.printStackTrace();
		}
		
}	
	
}