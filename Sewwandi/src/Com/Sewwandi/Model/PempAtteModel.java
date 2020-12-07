package Com.Sewwandi.Model;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import Com.Sewwandi.Bean.AttenBean;
import Com.Sewwandi.Bean.EmpBean;
import Com.Sewwandi.Bean.partEmpAttenBean;

import Com.Sewwandi.Util.SewwandiDB;

public class PempAtteModel {
	
String e1 = null;	
	
	public String insertEmp(AttenBean at) {
		
		SewwandiDB db = new SewwandiDB();
		Connection con = db.getCon();
		
		try {
			Statement stmt = con.createStatement();
			stmt.executeUpdate("INSERT INTO sewwandi.per_empattendan(date,employeeId,firstName, lastName,"
					+ "section, designation, status,basicSalary, clockin,clockout,work_hrs,no_OT,OT)"
					+ "VALUE ('"+at.getDate()+"','"+at.getEmployeeId()+"','"+at.getFirstName()+"',"
							+ "'"+at.getLastName()+"',  '"+at.getSection()+"', '"+at.getDesignation()+"', '"+at.getStatus()+"'"
									+ ",'"+at.getBasicsalary()+"','"+at.getClockin()+"','"+at.getClockout()+"',"
							+ "timediff( '"+at.getClockout()+"','"+at.getClockin()+"'),"
									+ "case when TIMEDIFF( '"+at.getClockout()+"','"+at.getClockin()+"') "
											+ "<= '07:00' then TIMEDIFF( '"+at.getClockout()+"',"
													+ "'"+at.getClockin()+"') else '07:00:00' end,"
															+ "case when TIMEDIFF( '"+at.getClockout()+"',"
																	+ "'"+at.getClockin()+"') > '07:00' "
																			+ "then TIMEDIFF(TIMEDIFF(  '"+at.getClockout()+"',"
																					+ "'"+at.getClockin()+"') ,'07:00') "
																							+ " else '00:00:00' end  )");
			e1 = "call inserted";
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}
		return e1;
	}
	
	
	//Update employee
		String s2 = null;
		public String updateEmp(AttenBean at) {
			SewwandiDB db = new SewwandiDB();
			Connection con = db.getCon();
			
			try {																																																																																																							
				Statement stmt = con.createStatement();			
				stmt.executeUpdate("UPDATE sewwandi.per_empattendan SET date = '"+at.getDate()+"',employeeId ='"+at.getEmployeeId()+"',firstName = '"+at.getFirstName()+"',lastName = '"+at.getLastName()+"',section ='"+at.getSection()+"',designation ='"+at.getDesignation()+"',status = '"+at.getStatus()+"',clockin = '"+at.getClockin()+"',clockout = '"+at.getClockout()+"',work_hrs = timediff( '"+at.getClockout()+"','"+at.getClockin()+"'),no_OT = case when TIMEDIFF( '"+at.getClockout()+"','"+at.getClockin()+"') <= '07:00:00' then TIMEDIFF( '"+at.getClockout()+"','"+at.getClockin()+"') else '07:00:00' end,OT =case when TIMEDIFF( '"+at.getClockout()+"','"+at.getClockin()+"') > '07:00:00' then TIMEDIFF(TIMEDIFF(  '"+at.getClockout()+"','"+at.getClockin()+"') ,'07:00:00')  else '00:00:00' end WHERE AttendanceId ='"+at.getAttendanceId()+"' ");
				s2 = "data Updated ";
				
				if (con != null) {
					con.close();
				}
				 
			} catch (SQLException e) {
				 
				e.printStackTrace();
			}
			return s2;

}
		
		

		String s4 = null;
		public String DeleteEmp(AttenBean employeebean) {
			SewwandiDB db = new SewwandiDB();
			Connection con = db.getCon();
			
			try {
				Statement stmt = con.createStatement();			
				stmt.executeUpdate("DELETE  FROM sewwandi.per_empattendan WHERE AttendanceId ='"+employeebean.getAttendanceId()+"' ");
				s4 = "data deleted ";
				
				if (con != null) {
					con.close();
				}
				 
			} catch (SQLException e) {
				 
				e.printStackTrace();
			}
			return s4;
		}
		
		
		
		//search
		
		

}
