package Com.Sewwandi.Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Com.Sewwandi.Bean.EmpBean;
import Com.Sewwandi.Bean.PartEmpBean;
import Com.Sewwandi.Bean.User;

import Com.Sewwandi.Util.SewwandiDB;


public class EmpModel {
	String e1 = null;	
	
	public String insertEmp(EmpBean ep) {
		
		SewwandiDB db = new SewwandiDB();
		Connection con = db.getCon();
		
		try {
			Statement stmt = con.createStatement();
			stmt.executeUpdate("INSERT INTO sewwandi.per_employee(firstname, lastName, birthday, gender, phoneNumber, email, address, section, designation, basicSalary)VALUE ('"+ep.getFirstName()+"','"+ep.getLastName()+"','"+ep.getBirthday()+"', '"+ep.getGender()+"','"+ep.getPhoneNumber()+"','"+ep.getEmail()+"', '"+ep.getAddress()+"', '"+ep.getSection()+"', '"+ep.getDesignation()+"',  '"+ep.getBasicSalary()+"')");
			e1 = "call inserted";
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}
		return e1;
	}
	
//Update employee
	String s2 = null;
	public String updateEmp(EmpBean ep) {
		SewwandiDB db = new SewwandiDB();
		Connection con = db.getCon();
		
		try {																																																																																																							
			Statement stmt = con.createStatement();			
			stmt.executeUpdate("UPDATE sewwandi.per_employee SET firstname = '"+ep.getFirstName()+"',lastName = '"+ep.getLastName()+"',birthday = '"+ep.getBirthday()+"',gender = '"+ep.getGender()+"',phoneNumber = '"+ep.getPhoneNumber()+"',email = '"+ep.getEmail()+"',address = '"+ep.getAddress()+"',section ='"+ep.getSection()+"',designation ='"+ep.getDesignation()+"',basicSalary ='"+ep.getBasicSalary()+"' WHERE employeeId ='"+ep.getEmployeeId()+"' ");
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
	public String DeleteEmp(EmpBean employeebean) {
		SewwandiDB db = new SewwandiDB();
		Connection con = db.getCon();
		
		try {
			Statement stmt = con.createStatement();			
			stmt.executeUpdate(" DELETE  FROM per_employee WHERE employeeId ='"+employeebean.getEmployeeId()+"'; ");
			s4 = "data deleted ";
			
			if (con != null) {
				con.close();
			}
			 
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}
		return s4;
	}
	
	
	String s5 = null;
	public String InsertDeleteEmp(EmpBean employeebean) {
		SewwandiDB db = new SewwandiDB();
		Connection con = db.getCon();
		
		try {
			Statement stmt = con.createStatement();			
			stmt.executeUpdate("INSERT INTO delte_per_employee SELECT * FROM per_employee  WHERE employeeId ='"+employeebean.getEmployeeId()+"' ");
			s4 = "data deleted ";
			
			if (con != null) {
				con.close();
			}
			 
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}
		return s4;
	}
	
	public ArrayList<EmpBean> getUser(String fname) {
		
		SewwandiDB db = new SewwandiDB();
		Connection con = db.getCon();
			ArrayList<EmpBean> userList = new ArrayList<EmpBean>();
			Connection connection;
			PreparedStatement preparedStatement;
			
			try {
				
				Statement stmt = con.createStatement();
				preparedStatement = con.prepareStatement("select * from per_employee where firstname !='"+fname+"'");
				
				ResultSet resultSet = preparedStatement.executeQuery();
				
				while (resultSet.next()) {
					
					EmpBean emp = new EmpBean();
					
					emp.setFirstName(resultSet.getString(2));
					emp.setLastName(resultSet.getString(3));
					emp.setBirthday(resultSet.getString(4));
					emp.setGender(resultSet.getString(5));
					emp.setPhoneNumber(resultSet.getString(6));
					emp.setEmail(resultSet.getString(7));
					emp.setAddress(resultSet.getString(8));
					emp.setSection(resultSet.getString(9));
					emp.setDesignation(resultSet.getString(10));
					emp.setBasicSalary(resultSet.getString(11));
					
					userList.add(emp);
					
				}
				
				preparedStatement.close();
				con.close();
				
			}catch (SQLException  e) {

				System.out.println(e.getMessage());
			}
			
			return userList;
			
		}
	
	
}
	


