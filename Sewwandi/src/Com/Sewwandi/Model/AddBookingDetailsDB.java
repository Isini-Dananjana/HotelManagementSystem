package Com.Sewwandi.Model;

import java.sql.Connection;


import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Duration;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import Com.Sewwandi.Bean.AddBookingDetailsBean;
import Com.Sewwandi.Bean.AddRoomBean;

import Com.Sewwandi.Util.SewwandiDB;

public class AddBookingDetailsDB {
	
	String e1 = null;
	

	public String addBook(AddBookingDetailsBean AddBookingDetailsBean) {
		
		SewwandiDB db = new SewwandiDB();
		Connection con = db.getCon();
		ResultSet resultSet = null;
		// rmPrice = 0;
		
		try {
			Statement stmt = con.createStatement();
			String sql = "SELECT * FROM room WHERE roomNo = '"+AddBookingDetailsBean.getRoomNo()+"' ";
			resultSet = stmt.executeQuery(sql);
			
			while(resultSet.next()){
			
				double rmPrice = resultSet.getDouble("roomPrice");
				System.out.println(rmPrice);
				
				try {
					Date dt1 = new SimpleDateFormat("yyyy-MM-dd").parse(AddBookingDetailsBean.getCheckIn());
					Date dt2 = new SimpleDateFormat("yyyy-MM-dd").parse(AddBookingDetailsBean.getCheckOut());
					
					long dbt = dt2.getTime() - dt1.getTime();
					
					float days = (dbt / (1000*60*60*24));
					
					double tot = rmPrice * days;
					
					System.out.println(tot);
				
				
			stmt.executeUpdate("INSERT INTO room_reservation(cName,checkIn,checkOut,totRAmount,arrivalTime,no_of_adults,no_of_kids,roomNo,roomType,phone_No)VALUE ('"+AddBookingDetailsBean.getcName()+"','"+AddBookingDetailsBean.getCheckIn()+"','"+AddBookingDetailsBean.getCheckOut()+"','"+Double.toString(tot)+"', '"+AddBookingDetailsBean.getArrivalTime()+"','"+AddBookingDetailsBean.getNo_of_adults()+"','"+AddBookingDetailsBean.getNo_of_kids()+"','"+AddBookingDetailsBean.getRoomNo()+"','"+AddBookingDetailsBean.getRoomType()+"','"+AddBookingDetailsBean.getPhone_No()+"')");
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
			}
			e1 = "call inserted";
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}
		return e1;
	}
	//Update
	String s2 = null;
	public String updateBook(AddBookingDetailsBean AddBookingDetailsBean) {
		SewwandiDB db = new SewwandiDB();
		Connection con = db.getCon();
		String idd = Integer.toString(AddBookingDetailsBean.getRoomReservationId());
		
		try {																																																																																																							
			Statement stmt = con.createStatement();			
			stmt.executeUpdate("UPDATE  room_reservation SET cName = '"+AddBookingDetailsBean.getcName()+"',checkIn = '"+AddBookingDetailsBean.getCheckIn()+"',checkOut = '"+AddBookingDetailsBean.getCheckOut()+"',arrivalTime = '"+AddBookingDetailsBean.getArrivalTime()+"',no_of_adults='"+AddBookingDetailsBean.getNo_of_adults()+"',no_of_kids='"+AddBookingDetailsBean.getNo_of_kids()+"',roomNo='"+AddBookingDetailsBean.getRoomNo()+"',roomType='"+AddBookingDetailsBean.getRoomType()+"',phone_No='"+AddBookingDetailsBean.getPhone_No()+"' WHERE roomReservationId = '"+AddBookingDetailsBean.getRoomReservationId()+"' ");
			s2 = "data Updated ";
			
			if (con != null) {
				con.close();
			}
			 
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}
		return s2;
	}
	
	
	  //delete
	  
	  
	  String s5 = null;
	  
	  public String DeleteBook(AddBookingDetailsBean AddBookingDetailsBean) {
	  
	  SewwandiDB db = new SewwandiDB(); Connection con = db.getCon();
	  String idd = Integer.toString(AddBookingDetailsBean.getRoomReservationId());
	  
	  try { Statement stmt = con.createStatement();
	  stmt. executeUpdate("DELETE  FROM room_reservation  WHERE roomReservationId ='"+AddBookingDetailsBean.getRoomReservationId()+"' ");
	  s5 = "data deleted ";
	  
	  if (con != null) { con.close(); }
	  
	  } catch (SQLException e) {
	  
	  e.printStackTrace();
	  
	  } return s5; }//end
	 	 

}
