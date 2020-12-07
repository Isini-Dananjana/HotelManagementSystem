package Com.Sewwandi.Model;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import Com.Sewwandi.Bean.EmpBean;
import Com.Sewwandi.Bean.PartEmpBean;

import Com.Sewwandi.Util.SewwandiDB;


public class PartEmpModel {
	String e1 = null;	
	
	public String insertEmp(PartEmpBean ep) {
		
		SewwandiDB db = new SewwandiDB();
		Connection con = db.getCon();
		
		try {
			Statement stmt = con.createStatement();
			stmt.executeUpdate("INSERT INTO sewwandi.part_employee(firstname, lastName, birthday, gender, phoneNumber, email, address, section, designation, dailySalary)VALUE ('"+ep.getFirstName()+"','"+ep.getLastName()+"','"+ep.getBirthday()+"', '"+ep.getGender()+"','"+ep.getPhoneNumber()+"','"+ep.getEmail()+"', '"+ep.getAddress()+"', '"+ep.getSection()+"', '"+ep.getDesignation()+"',  '"+ep.getDailycSalary()+"')");
			e1 = "call inserted";
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}
		return e1;
	}
	String s6 = null;
	public String InsertDeleteEmp(PartEmpBean employeebean) {
		SewwandiDB db = new SewwandiDB();
		Connection con = db.getCon();
		
		try {
			Statement stmt = con.createStatement();			
			stmt.executeUpdate("INSERT INTO delte_part_employee SELECT * FROM part_employee  WHERE employeeId ='"+employeebean.getEmployeeId()+"' ");
			s4 = "data deleted ";
			
			if (con != null) {
				con.close();
			}
			 
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}
		return s4;
	}
	
	
//Update employee
	String s2 = null;
	public String updateEmp(PartEmpBean ep) {
		SewwandiDB db = new SewwandiDB();
		Connection con = db.getCon();
		
		try {																																																																																																							
			Statement stmt = con.createStatement();			
			stmt.executeUpdate("UPDATE sewwandi.part_employee SET firstName = '"+ep.getFirstName()+"',lastName = '"+ep.getLastName()+"',birthday = '"+ep.getBirthday()+"',gender = '"+ep.getGender()+"',phoneNumber = '"+ep.getPhoneNumber()+"',email = '"+ep.getEmail()+"',address = '"+ep.getAddress()+"',section ='"+ep.getSection()+"',designation ='"+ep.getDesignation()+"',dailySalary ='"+ep.getDailycSalary()+"' WHERE employeeId ='"+ep.getEmployeeId()+"' ");
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
	String s4 = null;
	public String DeleteEmp(PartEmpBean employeebean) {
		SewwandiDB db = new SewwandiDB();
		Connection con = db.getCon();
		
		try {
			Statement stmt = con.createStatement();			
			stmt.executeUpdate("DELETE  FROM part_employee WHERE employeeId ='"+employeebean.getEmployeeId()+"' ");
			s4 = "data deleted ";
			
			if (con != null) {
				con.close();
			}
			 
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}
		return s4;
	}
	
	//select
	
	
	String s5 = null;
	public String SelectEmp(PartEmpBean employeebean) {
		SewwandiDB db = new SewwandiDB();
		Connection con = db.getCon();
		
		try {
			Statement stmt = con.createStatement();			
			stmt.executeUpdate("select * FROM part_employee WHERE employeeId ='"+employeebean.getEmployeeId()+"' ");
			s4 = "data deleted ";
			
			if (con != null) {
				con.close();
			}
			 
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}
		return s4;
	}
	
	
	
	
}
	


