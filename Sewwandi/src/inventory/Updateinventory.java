package inventory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import inventory.inventorybean;

public class Updateinventory {


public inventorybean getinventoryvalues(int itemid){
		
	inventorybean Inventorybean=new inventorybean();
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sewwandi", "root", "isini123");
			
			PreparedStatement pst=null;
			ResultSet rs = null;
			
			String query="select itemid,itemname,itemamount from item where itemid=?;";
			pst=con.prepareStatement(query);
			pst.setInt(1,itemid);;
			rs=pst.executeQuery();
			
			while(rs.next()) {
			
				Inventorybean.setItemid(rs.getInt("itemid"));
				Inventorybean.setItemname(rs.getString("itemname"));
				Inventorybean.setItemamount(rs.getInt("itemamount"));
		
			}
			
			
		} catch (Exception e) {
		
			e.printStackTrace();
		}
		return Inventorybean;
		
	}

	
	
public void updatevalues(inventorybean Inventorybean){
	
	
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sewwandi", "root", "password");
			
			PreparedStatement pst=null;
			
			String query="update item set itemamount=? where itemid=?";
			pst=con.prepareStatement(query);
			
			pst.setInt(2,Inventorybean.getItemid());;
			pst.setInt(1,Inventorybean.getItemamount());;
			
			pst.executeUpdate();
	
		}	
		
		catch (Exception ex) {
			
			ex.printStackTrace();
		}
		
}	
	
}
