package inventory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import inventory.inventorybean;

public class Editinventory {

public inventorybean getinventoryvalues(int itemid){
		
	inventorybean Inventorybean=new inventorybean();
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sewwandi", "root", "isini123");
			
			PreparedStatement pst=null;
			ResultSet rs = null;
			
			String query="select itemid,itemtype,itemname,itemamount,itemalertamount,itemdate,itemdescription from item where itemid=?;";
			pst=con.prepareStatement(query);
			pst.setInt(1,itemid);;
			rs=pst.executeQuery();
			
			while(rs.next()) {
			
				Inventorybean.setItemid(rs.getInt("itemid"));
				Inventorybean.setItemtype(rs.getString("itemtype"));
				Inventorybean.setItemname(rs.getString("itemname"));
				Inventorybean.setItemamount(rs.getInt("itemamount"));
				Inventorybean.setItemalertamount(rs.getInt("itemalertamount"));
				Inventorybean.setItemdate(rs.getString("itemdate"));
				Inventorybean.setItemdescription(rs.getString("itemdescription"));
		
			}
			
			
		} catch (Exception e) {
		
			e.printStackTrace();
		}
		return Inventorybean;
		
	}

	
	
public void editvalues(inventorybean Inventorybean){
	
	
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sewwandi", "root", "password");
			
			PreparedStatement pst=null;
			
			String query="update item set itemtype=?,itemname=?,itemamount=?,itemalertamount=?,itemdate=?,itemdescription=? where itemid=?";
			pst=con.prepareStatement(query);
			
			pst.setInt(7,Inventorybean.getItemid());;
			pst.setString(1,Inventorybean.getItemtype());;
			pst.setString(2,Inventorybean.getItemname());;
			pst.setInt(3,Inventorybean.getItemamount());;
			pst.setInt(4,Inventorybean.getItemalertamount());;
			pst.setString(5,Inventorybean.getItemdate());;
			pst.setString(6,Inventorybean.getItemdescription());;
			
			pst.executeUpdate();
	
		}	
		
		catch (Exception ex) {
			
			ex.printStackTrace();
		}
		
}	
	
}
