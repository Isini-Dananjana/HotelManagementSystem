package Com.Sewwandi.Model;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import Com.Sewwandi.Bean.AttenBean;
import Com.Sewwandi.Bean.AttenBeanPresent;
import Com.Sewwandi.Bean.EmpBean;
import Com.Sewwandi.Bean.partEmpAttenBean;

import Com.Sewwandi.Util.SewwandiDB;

public class PempAtteModelPresent {
	
String e1 = null;	
	
	public String insertEmp(AttenBeanPresent at) {
		
		SewwandiDB db = new SewwandiDB();
		Connection con = db.getCon();
		
		try {
			Statement stmt = con.createStatement();
			stmt.executeUpdate("INSERT INTO sewwandi.per_empattendanpresent(date,employeeId,firstName, lastName,section, designation, status, clockin)VALUE ('"+at.getDate()+"','"+at.getEmployeeId()+"','"+at.getFirstName()+"','"+at.getLastName()+"',  '"+at.getSection()+"', '"+at.getDesignation()+"', '"+at.getStatus()+"','"+at.getClockin()+"')");
			e1 = "call inserted";
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}
		return e1;
	}
	
	
	//Update employee
		String s2 = null;
		public String updateEmp(AttenBeanPresent at) {
			SewwandiDB db = new SewwandiDB();
			Connection con = db.getCon();
			
			try {																																																																																																							
				Statement stmt = con.createStatement();			
				stmt.executeUpdate("UPDATE sewwandi.per_empattendanpresent SET date = '"+at.getDate()+"',employeeId ='"+at.getEmployeeId()+"',firstName = '"+at.getFirstName()+"',lastName = '"+at.getLastName()+"',section ='"+at.getSection()+"',designation ='"+at.getDesignation()+"',status = '"+at.getStatus()+"',clockin = '"+at.getClockin()+"' ");
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
		public String DeleteEmp(AttenBeanPresent employeebean) {
			SewwandiDB db = new SewwandiDB();
			Connection con = db.getCon();
			
			try {
				Statement stmt = con.createStatement();			
				stmt.executeUpdate("DELETE  FROM sewwandi.per_empattendanpresent WHERE AttendanceId ='"+employeebean.getAttendanceId()+"' ");
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
