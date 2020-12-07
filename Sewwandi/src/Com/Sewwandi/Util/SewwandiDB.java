package Com.Sewwandi.Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SewwandiDB {
	

	static Connection con = null; 
	public static Connection getCon() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sewwandi","root","isini123");
			
		} catch (ClassNotFoundException e) {
			
			 e.printStackTrace();
			 
		}catch (SQLException e) {	
			
			 e.printStackTrace();
		}
		
	return con;
		
	}

}
