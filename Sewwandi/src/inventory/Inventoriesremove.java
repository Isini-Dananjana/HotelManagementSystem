package inventory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Inventoriesremove {
public static void main(String[] args) {
		
		Inventoriesremove inventoriesremove= new Inventoriesremove();
		
		inventoriesremove.getvalues();

	}

	public List<inventoryremovebean> getvalues(){
		
		List<inventoryremovebean> inventoryremovelist = new ArrayList<inventoryremovebean>();
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sewwandi", "root", "isini123");
			
			PreparedStatement pst=null;
			ResultSet rs = null;
			
			
			
			String query="select * from itemremove";
			pst=con.prepareStatement(query);
			rs=pst.executeQuery();
			
			while(rs.next()) {
				
				inventoryremovebean Inventoryremovebean=new inventoryremovebean();
				
				
				System.out.println(rs.getInt("itemid"));
				System.out.println(rs.getString("itemname"));
				System.out.println(rs.getInt("itemamount"));
				System.out.println(rs.getInt("itemremovedamount"));
				System.out.println(rs.getString("itemremovedate"));
				
				
				
				Inventoryremovebean.setItemid(rs.getInt("itemid"));
				Inventoryremovebean.setItemname(rs.getString("itemname"));
				Inventoryremovebean.setItemamount(rs.getInt("itemamount"));
				Inventoryremovebean.setItemremovedamount(rs.getInt("itemremovedamount"));
				Inventoryremovebean.setItemremovedate(rs.getString("itemremovedate"));
				
				inventoryremovelist.add(Inventoryremovebean);
				
				
			}
			
			
		} catch (ClassNotFoundException e) {
		
			e.printStackTrace();
		}
	
		 catch (SQLException e) {
		
			e.printStackTrace();
		}
		return inventoryremovelist;

		
	}

}