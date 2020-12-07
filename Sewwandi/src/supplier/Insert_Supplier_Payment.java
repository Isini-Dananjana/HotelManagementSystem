package supplier;

import java.sql.Connection;
import java.sql.PreparedStatement;

import commom.DB_Connection;

public class Insert_Supplier_Payment {
	
	public void insert_payment(int orderid, int supplierid,String supplierfirstname,String supplierlastname,String supplieremail,String itemname,int itemamount,double itemprice,double orderdiscount,double orderprice,double supplierpayment,String receiveddate) {
		
		DB_Connection obj_DB_Connection=new DB_Connection();
		
		Connection connection=obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;
		
		try {
			
		String query="insert into supplierpayment(orderid,supplierid,supplierfirstname,supplierlastname,supplieremail,itemname,itemamount,itemprice,orderdiscount,orderprice,supplierpayment,receiveddate) values(?,?,?,?,?,?,?,?,?,?,?,?);";
		ps=connection.prepareStatement(query);
		
		
		ps.setInt(1, orderid);
		ps.setInt(2, supplierid);
		ps.setString(3, supplierfirstname);
		ps.setString(4, supplierlastname);
		ps.setString(5, supplieremail);
		ps.setString(6, itemname);
		ps.setInt(7, itemamount);
		ps.setDouble(8, itemprice);
		ps.setDouble(9, orderdiscount);
		ps.setDouble(10, orderprice);
		ps.setDouble(11, supplierpayment);
		ps.setString(12, receiveddate);
		
		ps.executeUpdate();
		
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.err.print(e);
		}
		
		
	} 
	 
	
	
	

}

