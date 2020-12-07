package inventory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.mysql.jdbc.Driver;

public class Inventoryremove {


	public void inventory(int itemid ,String itemname , int itemamount, int itemremovedamount,String itemremovedate) {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/sewwandi", "root", "isini123");
			
			PreparedStatement pst=null;
			String query ="insert into itemremove(itemid,itemname,itemamount,itemremovedamount,itemremovedate)values(?,?,?,?,?);";
			pst=con.prepareStatement(query);
			
			pst.setInt(1, itemid);
            pst.setString(2, itemname);
            pst.setInt(3, itemamount);
            pst.setInt(4, itemremovedamount);
            pst.setString(5, itemremovedate);
		
pst.executeUpdate();
			
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	
}