package supplier;

import java.sql.Connection;
import java.sql.PreparedStatement;

import commom.DB_Connection;

public class Insert_Supplier {
	
	public void insert_supplier(String suppliertype,String supplierfirstname,String supplierlastname,String supplierbirth,String suppliergender,String supplierNIC,String supplierphone,String supplieremail,String supplieraddress,String itemname,String supplierregidate) {
		
		DB_Connection obj_DB_Connection=new DB_Connection();
		
		Connection connection=obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;
		
		try {
			
		String query="insert into supplier(suppliertype,supplierfirstname,supplierlastname,supplierbirth,suppliergender,supplierNIC,supplierphone,supplieremail,supplieraddress,itemname,supplierregidate) values(?,?,?,?,?,?,?,?,?,?,?);";
		ps=connection.prepareStatement(query);
		
		
		ps.setString(1, suppliertype);
		ps.setString(2, supplierfirstname);
		ps.setString(3, supplierlastname);
		ps.setString(4, supplierbirth);
		ps.setString(5, suppliergender);
		ps.setString(6, supplierNIC);
		ps.setString(7, supplierphone);
		ps.setString(8, supplieremail);
		ps.setString(9, supplieraddress);
		ps.setString(10, itemname);
		ps.setString(11, supplierregidate);
		
		
		ps.executeUpdate();
		
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.err.print(e);
		}
		
		
	} 
	 
	
	
	

}
