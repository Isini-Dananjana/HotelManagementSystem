package Com.Sewwandi.Model;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Com.Sewwandi.Bean.User;

import Com.Sewwandi.Util.SewwandiDB;


public class usersService {

public ArrayList<User> getUser(String email) {
		
	SewwandiDB db = new SewwandiDB();
	Connection con = db.getCon();
		ArrayList<User> userList = new ArrayList<User>();
		Connection connection;
		PreparedStatement preparedStatement;
		
		try {
			
			Statement stmt = con.createStatement();
			preparedStatement = con.prepareStatement("select * from users where type=1 and username !='"+email+"'");
			
			ResultSet resultSet = preparedStatement.executeQuery();
			
			while (resultSet.next()) {
				
				User user = new User();
				
				user.setId(Integer.parseInt(resultSet.getString(1)));
				user.setFname(resultSet.getString(2));
				user.setLname(resultSet.getString(3));
				user.setGender(resultSet.getString(4));
				user.setNic(resultSet.getString(5));
				user.setAddress(resultSet.getString(6));
				user.setPhone(resultSet.getString(7));
				user.setEmail(resultSet.getString(8));
				user.setPoint(resultSet.getInt(12));
				
				userList.add(user);
				
			}
			
			preparedStatement.close();
			con.close();
			
		}catch (SQLException  e) {

			System.out.println(e.getMessage());
		}
		
		return userList;
		
	}

	public User getDetails(String username) {

		SewwandiDB db = new SewwandiDB();
		Connection con = db.getCon();
		User user = new User();
		Connection connection;
		PreparedStatement preparedStatement;
		
		try {
			
			Statement stmt = con.createStatement();
			preparedStatement = con.prepareStatement("select * from users where username ='"+username+"'");
			
			ResultSet resultSet = preparedStatement.executeQuery();
			
			while (resultSet.next()) {
				
				
				user.setId(Integer.parseInt(resultSet.getString(1)));
				user.setFname(resultSet.getString(2));
				user.setLname(resultSet.getString(3));
				user.setGender(resultSet.getString(4));
				user.setNic(resultSet.getString(5));
				user.setAddress(resultSet.getString(6));
				user.setPhone(resultSet.getString(7));
				user.setEmail(resultSet.getString(8));
				user.setUsername(resultSet.getString(9));
				
				
			}
			
			preparedStatement.close();
			con.close();
			
		}catch (SQLException  e) {

			System.out.println(e.getMessage());
		}
		
		return user;
	}

	public void delete(String userId) {

		SewwandiDB db = new SewwandiDB();
		Connection con = db.getCon();
		Connection connection;
		PreparedStatement preparedStatement;
		
		try {
			Statement stmt = con.createStatement();
			
			//delete type
			preparedStatement = con.prepareStatement("DELETE FROM users WHERE username=?");
			preparedStatement.setString(1, userId);
			preparedStatement.execute();
			
		
		}catch (SQLException  e) {
			System.out.println(e.getMessage());
		}
		
	}

}
