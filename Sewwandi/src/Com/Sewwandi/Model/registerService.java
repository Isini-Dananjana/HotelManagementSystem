package Com.Sewwandi.Model;
import java.sql.Connection;
import java.sql.PreparedStatement;

import Com.Sewwandi.Util.SewwandiDB;

import java.sql.*;
import java.util.Base64;

import Com.Sewwandi.Bean.User;
import Com.Sewwandi.Controller.registerServlet;

public class registerService {
	
	private int userRegister;

	public void register(User user) {
		
		SewwandiDB db = new SewwandiDB();
		
		/* Connection connection; */
		Connection con = db.getCon();
		PreparedStatement preparedStatement;
		String email=null,username=null;
		
		try {
			
			/* Statement stmt = con.prepareStatement(); */
			
			preparedStatement = con.prepareStatement("select username from users where username=?");
			preparedStatement.setString(1, user.getUsername());
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next())
			{
				username = rs.getString(1);	
			}
			
			if(username==null) {
				//check email
				preparedStatement = con.prepareStatement("select email from users where email=?");
				preparedStatement.setString(1, user.getEmail());
				ResultSet rs1 = preparedStatement.executeQuery();
				
				while(rs.next())
				{
					email = rs1.getString(1);	
				}
				
				if(email==null) {
					
					//insert value
					preparedStatement = con.prepareStatement("insert into users (fname,lname,gender,nic,address,phone,email,password,type,username) values (?,?,?,?,?,?,?,?,?,?)");
					preparedStatement.setString(1, user.getFname());
					preparedStatement.setString(2, user.getLname());
					preparedStatement.setString(3, user.getGender());
					preparedStatement.setString(4, user.getNic());
					preparedStatement.setString(5, user.getAddress());
					preparedStatement.setString(6, user.getPhone());
					preparedStatement.setString(7, user.getEmail());
					preparedStatement.setString(8, Base64.getEncoder().encodeToString(user.getPassword().getBytes()));
					preparedStatement.setInt(9, 1);
					preparedStatement.setString(10, user.getUsername());
					preparedStatement.execute();
					preparedStatement.close();
					con.close();
					setUserRegister(1);
					
				}else {
					setUserRegister(0);
				}
			}else {
				setUserRegister(2);
			}
			
			
			
		}catch (SQLException  e) {
			System.out.println(e.getMessage());
		}

		
	}

	public int getUserRegister() {
		return userRegister;
	}

	public void setUserRegister(int userRegister) {
		this.userRegister = userRegister;
	}

	public void editProfile(User user,String c_username) {
		
		SewwandiDB db = new SewwandiDB();
		Connection con = db.getCon();
		/* Connection connection; */
		PreparedStatement preparedStatement;
		String email=null,username=null;
		
		try {
			/* Statement stmt = con.createStatement(); */
			
			preparedStatement = con.prepareStatement("select username from users where username=?");
			preparedStatement.setString(1, user.getUsername());
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next())
			{
				username = rs.getString(1);	
			}
			
			if(username==null||username.equals(c_username)) {
				
				//update value
				preparedStatement = con.prepareStatement("update users set fname=?,lname=?,gender=?,nic=?,address=?,phone=?,email=?,username=? where username=?");
				preparedStatement.setString(1, user.getFname());
				preparedStatement.setString(2, user.getLname());
				preparedStatement.setString(3, user.getGender());
				preparedStatement.setString(4, user.getNic());
				preparedStatement.setString(5, user.getAddress());
				preparedStatement.setString(6, user.getPhone());
				preparedStatement.setString(7, user.getEmail());
				preparedStatement.setString(8, user.getUsername());
				preparedStatement.setString(9, c_username);
				preparedStatement.execute();
				preparedStatement.close();
				con.close();
				setUserRegister(1);
			}else {
				setUserRegister(2);
			}
			
			
			
		}catch (Exception  e) {
			System.out.println(e.getMessage());
		}	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
