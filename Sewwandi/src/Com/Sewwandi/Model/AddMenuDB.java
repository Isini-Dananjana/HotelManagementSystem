package Com.Sewwandi.Model;


import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import Com.Sewwandi.Bean.AddMenuBean;
import Com.Sewwandi.Bean.AddRoomBean;

import Com.Sewwandi.Util.SewwandiDB; 

public class AddMenuDB {

	String e1 = null;
	public AddMenuDB() {
		// TODO Auto-generated constructor stub
	}
	public String addRoom(AddMenuBean AddRoomBean) {//add
		

		SewwandiDB db = new SewwandiDB();
		Connection con = db.getCon();
		
		try {
			Statement stmt = con.createStatement();
			stmt.executeUpdate("INSERT INTO Menu(menuId,menuDescription,menuPrice,menuImage)VALUE ('"+AddRoomBean.getMenuId()+"','"+AddRoomBean.getMenuDescription()+"','"+AddRoomBean.getMenuPrice()+"', '"+AddRoomBean.getMenuImage()+"')");
			e1 = "call inserted";
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}
		return e1;
		
	}
	//Update
	String s2 = null;
	public String updateRoom(AddMenuBean AddRoomBean) {
		SewwandiDB db = new SewwandiDB();
		Connection con = db.getCon();
		String idd = AddRoomBean.getMenuId();
		
		try {																																																																																																							
			Statement stmt = con.createStatement();			
			stmt.executeUpdate("UPDATE  menu SET menuId = '"+AddRoomBean.getMenuId()+"',menuDescription = '"+AddRoomBean.getMenuDescription()+"',menuPrice = '"+AddRoomBean.getMenuPrice()+"',menuImage = '"+AddRoomBean.getMenuImage()+"' WHERE menuId = '"+AddRoomBean.getMenuId()+"' ");
			s2 = "data Updated ";
			
			if (con != null) {
				con.close();
			}
			 
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}
		return s2;
	}
	
	  // delete
	  
	   String s6 = null; 
	   
	   public String DeleteRoom(AddMenuBean AddRoomBean) { 
		   
		   SewwandiDB db = new SewwandiDB();
		   Connection con = db.getCon(); 
		   String idd = AddRoomBean.getMenuId();
	  
	  try { Statement stmt = con.createStatement();
	  stmt.executeUpdate("DELETE  FROM menu  WHERE menuId ='"+AddRoomBean.getMenuId()+"' ");
	  s6 = "data deleted ";
	  
	  if (con != null) {
		  con.close();
		  }
	  
	  } catch (SQLException e) {
	  
	  e.printStackTrace(); 
	  
	  } return s6; }//end
	 
}
