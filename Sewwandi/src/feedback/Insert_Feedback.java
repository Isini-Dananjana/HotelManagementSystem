package feedback;

import java.sql.Connection;
import java.sql.PreparedStatement;

import commom.DB_Connection;

public class Insert_Feedback {

	
	public void insert_feedback(String feedfirstname,String feedlastname,String feedemail,String feedbacks) {
		
		DB_Connection obj_DB_Connection=new DB_Connection();
		
		Connection connection=obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;
		
		try {
			
		String query="insert into feedback(feedfirstname,feedlastname,feedemail,feedbacks) values(?,?,?,?);";
		ps=connection.prepareStatement(query);
		
		
		ps.setString(1, feedfirstname);
		ps.setString(2, feedlastname);
		ps.setString(3, feedemail);
		ps.setString(4, feedbacks);
		
		
		ps.executeUpdate();
		
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.err.print(e);
		}
		
		
	} 
	 
	
	
	


}
