package order;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class orderDao {
	
	public int orders(orderbean Orderbean)throws ClassNotFoundException{
		String query = "insert into orders(supplierid,supplierfirstname,supplierlastname,supplieremail,itemname,itemamount,orderdate)values(?,?,?,?,?,?,?)";

	        int result = 0;

	        
	        Class.forName("com.mysql.jdbc.Driver");
	        try (
	        		Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/sewwandi", "root", "isini123");
	        		PreparedStatement pst = con.prepareStatement(query)) {
	        	
	        	
	        	pst.setInt(1, Orderbean.getSupplierid());
	        	pst.setString(2, Orderbean.getSupplierfirstname());
	        	pst.setString(3, Orderbean.getSupplierlastname());
	        	pst.setString(4, Orderbean.getSupplieremail());
	        	pst.setString(5, Orderbean.getItemname());
	        	pst.setInt(6, Orderbean.getItemamount());
	        	pst.setString(7, Orderbean.getOrderdate());

	        	System.out.println(pst);
	        	
	            pst.executeUpdate();
	            pst.close();
	            } 
	        
	        catch (SQLException e) {
	            	e.printStackTrace();
	            }
	            return result;
	        }

	    }