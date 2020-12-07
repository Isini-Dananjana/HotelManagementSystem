package Com.Sewwandi.Model;


import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import Com.Sewwandi.Bean.AddRoomBean;

import Com.Sewwandi.Util.SewwandiDB; 

public class AddRoomDB {

	String e1 = null;
	public AddRoomDB() {
		// TODO Auto-generated constructor stub
	}
	public String addRoom(AddRoomBean AddRoomBean) {//add
		

		SewwandiDB db = new SewwandiDB();
		Connection con = db.getCon();
		
		try {
			Statement stmt = con.createStatement();
			stmt.executeUpdate("INSERT INTO room(roomNo,roomType,roomDescription,roomPrice,imgName)VALUE ('"+AddRoomBean.getRoomNo()+"','"+AddRoomBean.getRoomType()+"','"+AddRoomBean.getRoomDescription()+"', '"+AddRoomBean.getRoomPrice()+"','"+AddRoomBean.getImgName()+"')");
			e1 = "call inserted";
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}
		return e1;
		
	}
	//Update
	String s2 = null;
	public String updateRoom(AddRoomBean AddRoomBean) {
		SewwandiDB db = new SewwandiDB();
		Connection con = db.getCon();
		String idd = Integer.toString(AddRoomBean.getRoomId());
		
		try {																																																																																																							
			Statement stmt = con.createStatement();			
			stmt.executeUpdate("UPDATE  room SET roomNo = '"+AddRoomBean.getRoomNo()+"',roomType = '"+AddRoomBean.getRoomType()+"',roomDescription = '"+AddRoomBean.getRoomDescription()+"',roomPrice = '"+AddRoomBean.getRoomPrice()+"',imgName = '"+AddRoomBean.getImgName()+"' WHERE roomId = '"+AddRoomBean.getRoomId()+"' ");
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
	   
	   public String DeleteRoom(AddRoomBean AddRoomBean) { 
		   
		   SewwandiDB db = new SewwandiDB();
		   Connection con = db.getCon(); 
		   String idd = Integer.toString(AddRoomBean.getRoomId());
	  
	  try { Statement stmt = con.createStatement();
	  stmt.executeUpdate("DELETE  FROM room  WHERE roomId ='"+AddRoomBean.getRoomId()+"' ");
	  s6 = "data deleted ";
	  
	  if (con != null) {
		  con.close();
		  }
	  
	  } catch (SQLException e) {
	  
	  e.printStackTrace(); 
	  
	  } return s6; }//end
	 
}
