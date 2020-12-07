package feedback;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import commom.DB_Connection;
import commom.Feedback_User_Bean;



public class Read_Feedback {
	
public static void main(String[] args) {
		
	Read_Feedback obj_Read_Feedback=new Read_Feedback();
		obj_Read_Feedback.get_values();
		
	}
	
	
	public List<Feedback_User_Bean> get_values() {
		
		DB_Connection obj_DB_Connection=new DB_Connection();
		
		Connection connection=obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;
		
		ResultSet rs=null;
		
		
		
		List<Feedback_User_Bean> list=new ArrayList<Feedback_User_Bean>();
		
		
		
		
		
		try {
		String querry="select*from feedback";
		ps=connection.prepareStatement(querry);
		rs=ps.executeQuery();
		
		while(rs.next()) {
			
			
			Feedback_User_Bean obj_Feedback_User_Bean=new Feedback_User_Bean();
			
			System.out.println(rs.getInt("id"));
			System.out.println(rs.getString("feedfirstname"));
			System.out.println(rs.getString("feedlastname"));
			System.out.println(rs.getString("feedemail"));
			System.out.println(rs.getString("feedbacks"));
			
			
			
			
			
			obj_Feedback_User_Bean.setId(rs.getInt("id"));
			obj_Feedback_User_Bean.setFeedfirstname(rs.getString("feedfirstname"));
			obj_Feedback_User_Bean.setFeedlastname(rs.getString("feedlastname"));
			obj_Feedback_User_Bean.setFeedemail(rs.getString("feedemail"));
			obj_Feedback_User_Bean.setFeedbacks(rs.getString("feedbacks"));
			
			list.add(obj_Feedback_User_Bean);
			
			
			
		}
		
		
		
		}catch(Exception e) {
			
			System.out.println(e);
			
			
		}
		return list;
		
	}

	
	

}
