package inventory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Inventoriesupdate {
public static void main(String[] args) {
		
		Inventoriesupdate inventoriesupdate= new Inventoriesupdate();
		
		inventoriesupdate.getvalues();

	}

	public List<inventoryupdatebean> getvalues(){
		
		List<inventoryupdatebean> inventoryupdatelist = new ArrayList<inventoryupdatebean>();
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sewwandi", "root", "isini123");
			
			PreparedStatement pst=null;
			ResultSet rs = null;
			
			
			
			String query="select * from itemupdate";
			pst=con.prepareStatement(query);
			rs=pst.executeQuery();
			
			while(rs.next()) {
				
				inventoryupdatebean Inventoryupdatebean=new inventoryupdatebean();
				
			
				System.out.println(rs.getInt("itemid"));
				System.out.println(rs.getString("itemname"));
				System.out.println(rs.getInt("itemamount"));
				System.out.println(rs.getInt("itemaddedamount"));
				System.out.println(rs.getString("itemupdatedate"));
				
				
				
				Inventoryupdatebean.setItemid(rs.getInt("itemid"));
				Inventoryupdatebean.setItemname(rs.getString("itemname"));
				Inventoryupdatebean.setItemamount(rs.getInt("itemamount"));
				Inventoryupdatebean.setItemaddedamount(rs.getInt("itemaddedamount"));
				Inventoryupdatebean.setItemupdatedate(rs.getString("itemupdatedate"));
				
				inventoryupdatelist.add(Inventoryupdatebean);
				
				
			}
			
			
		} catch (ClassNotFoundException e) {
		
			e.printStackTrace();
		}
	
		 catch (SQLException e) {
		
			e.printStackTrace();
		}
		return inventoryupdatelist;

		
	}



}