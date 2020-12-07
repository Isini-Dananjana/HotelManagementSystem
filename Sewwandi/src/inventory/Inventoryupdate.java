package inventory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.mysql.jdbc.Driver;

public class Inventoryupdate {

		public void inventory(int itemid ,String itemname , int itemamount, int itemaddedamount,String itemupdatedate) {
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/sewwandi", "root", "isini123");
				
				PreparedStatement pst=null;
				String query ="insert into itemupdate(itemid,itemname,itemamount,itemaddedamount,itemupdatedate)values(?,?,?,?,?);";
				pst=con.prepareStatement(query);
				
				pst.setInt(1, itemid);
	            pst.setString(2, itemname);
	            pst.setInt(3, itemamount);
	            pst.setInt(4, itemaddedamount);
	            pst.setString(5, itemupdatedate);
			
	pst.executeUpdate();
				
			} catch (ClassNotFoundException e) {
				
				e.printStackTrace();
			}
			catch (SQLException e) {
				
				e.printStackTrace();
			}
		}
		
	}