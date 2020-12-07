package order;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class Orders {

	public static void main(String[] args) {
		
		Orders orders= new Orders();
		
		orders.getvalues();

	}

	public List<orderbean> getvalues(){
		
		List<orderbean> orderlist = new ArrayList<orderbean>();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sewwandi", "root", "isini123");
			
			PreparedStatement pst=null;
			ResultSet rs = null;
			
			
			
			String query="select orderid,supplierid,supplierfirstname,supplierlastname,supplieremail,itemname,itemamount,orderdate from orders;";
			pst=con.prepareStatement(query);
			rs=pst.executeQuery();
			
			while(rs.next()) {
				
				orderbean Orderbean=new orderbean();
				
				System.out.println(rs.getInt("orderid"));
				System.out.println(rs.getInt("supplierid"));
				System.out.println(rs.getString("supplierfirstname"));
				System.out.println(rs.getString("supplierlastname"));
				System.out.println(rs.getString("supplieremail"));
				System.out.println(rs.getString("itemname"));
				System.out.println(rs.getInt("itemamount"));
				System.out.println(rs.getString("orderdate"));
				
				Orderbean.setOrderid(rs.getInt("orderid"));
				Orderbean.setSupplierid(rs.getInt("supplierid"));
				Orderbean.setSupplierfirstname(rs.getString("supplierfirstname"));
				Orderbean.setSupplierlastname(rs.getString("supplierlastname"));
				Orderbean.setSupplieremail(rs.getString("supplieremail"));
				Orderbean.setItemname(rs.getString("itemname"));
				Orderbean.setItemamount(rs.getInt("itemamount"));
				Orderbean.setOrderdate(rs.getString("orderdate"));
				
				orderlist.add(Orderbean);
				
				
			}
			
			
		} catch (ClassNotFoundException e) {
		
			e.printStackTrace();
		}
	
		 catch (SQLException e) {
		
			e.printStackTrace();
		}
		return orderlist;

		
	}

}