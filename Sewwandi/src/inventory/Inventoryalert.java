package inventory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Inventoryalert {

	public static void main(String[] args) {
		
		Inventories inventories= new Inventories();
		
		inventories.getvalues();

	}

	public List<inventorybean> getvalues(){
		
		List<inventorybean> inventorylist = new ArrayList<inventorybean>();
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sewwandi", "root", "isini123");
			
			PreparedStatement pst=null;
			ResultSet rs = null;
			
			
			
			String query="select itemid,itemtype,itemname,itemamount,itemalertamount from item where (itemamount < itemalertamount)";
			pst=con.prepareStatement(query);
			rs=pst.executeQuery();
			
			while(rs.next()) {
				
				inventorybean Inventorybean=new inventorybean();
				
				System.out.println(rs.getInt("itemid"));
				System.out.println(rs.getString("itemtype"));
				System.out.println(rs.getString("itemname"));
				System.out.println(rs.getInt("itemamount"));
				System.out.println(rs.getInt("itemalertamount"));
				
				Inventorybean.setItemid(rs.getInt("itemid"));
				Inventorybean.setItemtype(rs.getString("itemtype"));
				Inventorybean.setItemname(rs.getString("itemname"));
				Inventorybean.setItemamount(rs.getInt("itemamount"));
				Inventorybean.setItemalertamount(rs.getInt("itemalertamount"));
				
				inventorylist.add(Inventorybean);
				
				
			}
			
			
		} catch (ClassNotFoundException e) {
		
			e.printStackTrace();
		}
	
		 catch (SQLException e) {
		
			e.printStackTrace();
		}
		return inventorylist;

		
	}

}