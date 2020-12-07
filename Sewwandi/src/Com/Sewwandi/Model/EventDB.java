package Com.Sewwandi.Model;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Com.Sewwandi.Bean.EventBean;
import Com.Sewwandi.Bean.Hall;

import Com.Sewwandi.Util.SewwandiDB;
public class EventDB {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	private static boolean isSuccess;
	
	//add event reservation
	public static boolean addEvent(String name, String hallno, String eventdate, String eventtime, String eventtype, String eventdes, String noguests, String photo, String deco, String makeup) {
		
		boolean isSuccess = false;
		
		
		
		try {
			
			con = SewwandiDB.getCon();
			stmt = con.createStatement();
	
			String sql = "insert into event values (0,'"+name+"','"+hallno+"','"+eventdate+"','"+eventtime+"','"+eventtype+"','"+eventdes+"','"+noguests+"','"+photo+"','"+deco+"','"+makeup+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}else {
				
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	
	//display customer booking details when name and date given
	public static List<EventBean> validate(String name, String date){
		

		
		ArrayList<EventBean> eve = new ArrayList<>();
		
		//validate
		
		try {
			
			con = SewwandiDB.getCon();
			stmt = con.createStatement();
			
			String sql = "select eventId, customername, e.hallno, eventdate, eventtime, eventtype, eventdes,noguests, e.photo,p.pphone, e.deco, d.dphone, e.makeup, m.mphone, h.price, d.dprice, m.mprice, p.pprice,h.price+d.dprice+m.mprice+p.pprice as tot from event e, hall h, makeup m, decorator d, photographer p where customername = '"+name+"' and eventdate = '"+date+"' AND e.hallno=h.hallno AND e.deco=d.deco AND e.makeup=m.makeup AND e.photo=p.photo group by customername";
			 rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				
				int eventId = rs.getInt(1);
				String customername = rs.getString(2);
				String hallno = rs.getString(3);
				String eventdate = rs.getString(4);
				String eventtime = rs.getString(5);
				String eventtype = rs.getString(6);
				String eventdes = rs.getString(7);
				String noguests = rs.getString(8);
				String photo = rs.getString(9);
				String pphone = rs.getString(10);
				String deco = rs.getString(11);
				String dphone = rs.getString(12);
				String makeup = rs.getString(13);
				String mphone = rs.getNString(14);
				String price = rs.getString(15);
				String dprice = rs.getString(16);
				String mprice = rs.getString(17);
				String pprice = rs.getString(18);
				String tot = rs.getString(19);
				
				
				EventBean e = new EventBean(eventId, customername, hallno,  eventdate, eventtime, eventtype, eventdes, noguests, photo, pphone, deco, dphone, makeup, mphone,price, dprice,mprice, pprice, tot);
				eve.add(e);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return eve;
		
	} 
	
public static ArrayList<Hall> availability(String date){
		

		
		ArrayList<Hall> hall = new ArrayList<>();
		
		
		
		//validate
		
		try {
			
			con = SewwandiDB.getCon();
			stmt = con.createStatement();
			
			String sql = "select * from sewwandi.hall" + 
					"where hallno not in ( 	select hallno from sewwandi.event" + 
					"					where eventdate='"+date+"')";
			 rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				
				int hallno = rs.getInt(1);
				String maxguests = rs.getString(2);
				String price = rs.getString(3);
				String imageName = rs.getString(4);
			
				
				Hall h = new Hall(hallno,maxguests,price,imageName);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return hall;
		
	} 


public static boolean updatebooking(String eventId, String customername, String hallno, String eventdate, String eventtime, String eventtype, String eventdes, String noguests, String photo, String deco, String makeup ) {
	
	
			
			try {
				
				con = SewwandiDB.getCon();
				stmt = con.createStatement();
				String sql = "update event set customername='"+customername+"', hallno='"+hallno+"', eventdate='"+eventdate+"',eventtime='"+eventtime+"', eventtype='"+eventtype+"',eventdes='"+eventdes+"',noguests='"+noguests+"',photo='"+photo+"',deco='"+deco+"',makeup='"+makeup+"'"
				+"where eventId='"+eventId+"'";
				int rs = stmt.executeUpdate(sql);
				
				if(rs>0) {
					isSuccess = true;
				}
				else {
					isSuccess=false;
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
	
	return isSuccess;
	
}

//display booking details after updation
public static List<EventBean> getEventDetails(String Id){
	
	int convertedID = Integer.parseInt(Id);
	
	ArrayList<EventBean> eve = new ArrayList<>();
	
	try {
		
		con = SewwandiDB.getCon();
		stmt = con.createStatement();
		
		String sql = "select eventId, customername, e.hallno, eventdate, eventtime, eventtype, eventdes,noguests, e.photo,p.pphone, e.deco, d.dphone, e.makeup, m.mphone, h.price, d.dprice, m.mprice, p.pprice, h.price+d.dprice+m.mprice+p.pprice as tot from event e, hall h, makeup m, decorator d, photographer p where eventId ='"+convertedID+"' AND e.hallno=h.hallno AND e.deco=d.deco AND e.makeup=m.makeup AND e.photo=p.photo group by eventId";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			
			int eventId = rs.getInt(1);
			String customername = rs.getString(2);
			String hallno = rs.getString(3);
			String eventdate = rs.getString(4);
			String eventtime = rs.getString(5);
			String eventtype = rs.getString(6);
			String eventdes = rs.getString(7);
			String noguests = rs.getString(8);
			String photo = rs.getString(9);
			String pphone = rs.getString(10);
			String deco = rs.getString(11);
			String dphone = rs.getString(12);
			String makeup = rs.getString(13);
			String mphone = rs.getNString(14);
			String price = rs.getString(15);
			String dprice = rs.getString(16);
			String mprice = rs.getString(17);
			String pprice = rs.getString(18);
			String tot = rs.getString(19);
			
			EventBean e = new EventBean(eventId, customername, hallno, eventdate, eventtime, eventtype, eventdes,noguests, photo, pphone, deco, dphone, makeup, mphone, price, dprice,mprice,pprice,tot);
			eve.add(e);
			
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	return eve;
}

//display event details after adding event
public static List<EventBean> eveDetails(String cusname, String date){
	
	ArrayList<EventBean> eve = new ArrayList<>();
	 try {
		 
		 con = SewwandiDB.getCon();
		 stmt = con.createStatement();
		 
		 String sql = "select eventId, customername, e.hallno, eventdate, eventtime, eventtype, eventdes,noguests, e.photo,p.pphone, e.deco, d.dphone, e.makeup, m.mphone, h.price, d.dprice, m.mprice, p.pprice,h.price+d.dprice+m.mprice+p.pprice as tot from event e, hall h, makeup m, decorator d, photographer p where customername = '"+cusname+"' AND eventdate = '"+date+"' AND e.hallno=h.hallno AND e.deco=d.deco AND e.makeup=m.makeup AND e.photo=p.photo group by customername";
		 rs = stmt.executeQuery(sql);
		 
		 while(rs.next()) {
			 	int eventId = rs.getInt(1);
				String customername = rs.getString(2);
				String hallno = rs.getString(3);
				String eventdate = rs.getString(4);
				String eventtime = rs.getString(5);
				String eventtype = rs.getString(6);
				String eventdes = rs.getString(7);
				String noguests = rs.getString(8);
				String photo = rs.getString(9);
				String pphone = rs.getString(10);
				String deco = rs.getString(11);
				String dphone = rs.getString(12);
				String makeup = rs.getString(13);
				String mphone = rs.getNString(14);
				String price = rs.getString(15);
				String dprice = rs.getString(16);
				String mprice = rs.getString(17);
				String pprice = rs.getString(18);
				String tot = rs.getString(19);
			
				
				EventBean e = new EventBean(eventId, customername, hallno, eventdate, eventtime, eventtype, eventdes,noguests, photo, pphone, deco, dphone, makeup, mphone, price, dprice,mprice,pprice,tot);
				eve.add(e);
			 
		 }
		 
	 }catch(Exception e) {
		 e.printStackTrace();
		 
	 }
	
	
	 return eve;
}


public static boolean deleteEvent(String id) {
	
	int convertedID = Integer.parseInt(id);
	
	try {
		con = SewwandiDB.getCon();
		stmt = con.createStatement();
		
		String sql = "delete from event where eventId = '"+convertedID+"'";
		int r = stmt.executeUpdate(sql);
		
		if(r>0) {
			
			isSuccess = true;
		}
		else {
			
			isSuccess = false;
		}
		
		
	}catch(Exception e) {
		
		e.printStackTrace();
	}
	
	
	return isSuccess;
}
}
