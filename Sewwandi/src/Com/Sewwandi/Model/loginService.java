package Com.Sewwandi.Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Base64;

import Com.Sewwandi.Bean.User;

import Com.Sewwandi.Util.SewwandiDB;

public class loginService {

	private int loginUser,points=0;
	private String fname=" ";
	private String lname=" ";
	
	
	public void login(User user) {
		SewwandiDB db = new SewwandiDB();
		Connection con = db.getCon();
		Connection connection;
		PreparedStatement preparedStatement;
		String username=null,type=null;
		
		
		try {
			Statement stmt = con.createStatement();
			
			//check email and password
			preparedStatement = con.prepareStatement("select username,type,point,fname, lname from users where username=? and password=?");
			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, Base64.getEncoder().encodeToString(user.getPassword().getBytes()));
			ResultSet rs = preparedStatement.executeQuery();
			
			
			
			while(rs.next())
			{
				username = rs.getString(1);
				type = rs.getString(2);
				this.points = rs.getInt(3);
				fname = rs.getNString(4);
				lname = rs.getString(5);
			}
			
			if(username==null) {
				setLoginUser(0);
			}else {
				if(type.toString().equals("1")) {
					setLoginUser(1);
				}else if(type.toString().equals("2")){
					setLoginUser(2);
				}else if(type.toString().equals("3")){
					setLoginUser(3);
				}else if(type.toString().equals("4")){
					setLoginUser(4);
				}
			}
			
		}catch (Exception  e) {
			System.out.println(e.getMessage());
		}

		
	}

	public int getLoginUser() {
		return loginUser;
	}
	public String getFname() {
		
		return fname;
	}
	public String getLname() {
		return lname;
	}
	
	public int getUserPoints() {
		return points;
	}

	public void setLoginUser(int loginUser) {
		this.loginUser = loginUser;
	}

}
