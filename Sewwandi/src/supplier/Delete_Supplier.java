package supplier;

import java.sql.Connection;
import java.sql.PreparedStatement;

import commom.DB_Connection;


public class Delete_Supplier {
	
	
	public void delete_value(int supplierid) {
		
		DB_Connection obj_DB_Connection=new DB_Connection();
		
		Connection connection=obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;

		try {
		String querry="delete from supplier where supplierid=?";
		ps=connection.prepareStatement(querry);
		ps.setInt(1, supplierid);;
		
		ps.executeUpdate();
		

		
		
		}catch(Exception e) {
			
			System.out.println(e);
			
			
		}
	
		
	}
	


}




