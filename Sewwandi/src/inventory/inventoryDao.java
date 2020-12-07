package inventory;

import inventory.Inventory;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class inventoryDao {
	
	public int inventory(inventorybean Inventorybean)throws ClassNotFoundException{
		String query = "insert into item(itemtype,itemname,itemamount,itemalertamount,itemdate,itemdescription)values(?,?,?,?,?,?);";

	        int result = 0;

	        
	        Class.forName("com.mysql.jdbc.Driver");
	        try (
	        		Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/sewwandi", "root", "isini123");
	        		PreparedStatement pst = con.prepareStatement(query)) {
	        	
	        	pst.setString(1, Inventorybean.getItemtype());
	            pst.setString(2, Inventorybean.getItemname());
	            pst.setInt(3, Inventorybean.getItemamount());
	            pst.setInt(4, Inventorybean.getItemalertamount());
	            pst.setString(5, Inventorybean.getItemdate());
	            pst.setString(6, Inventorybean.getItemdescription());
			
	            System.out.println(pst);
	
	            pst.executeUpdate();
	            } 
	        
	        catch (SQLException e) {
	            	e.printStackTrace();
	            }
	            return result;
	        }

	    }