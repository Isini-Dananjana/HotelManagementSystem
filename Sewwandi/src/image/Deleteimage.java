package image;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Deleteimage {

	public void deletevalues(int imageid){
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sewwandi", "root", "password");
			
			PreparedStatement pst=null;
			
			String query="delete from image where imageid=?";
			pst=con.prepareStatement(query);
			pst.setInt(1,imageid);
			pst.executeUpdate();
			
			
		} catch (ClassNotFoundException e) {
		
			e.printStackTrace();
		}
	
		 catch (SQLException e) {
		
			e.printStackTrace();
		}

		
	}
	
}
