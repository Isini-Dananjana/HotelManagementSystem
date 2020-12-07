package supplier;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import commom.DB_Connection;

public class Edit_supplier_payment {

	
	
	public Supplier_payment_bean get_values(int orderid) {
		
		DB_Connection obj_DB_Connection=new DB_Connection();
		
		Connection connection=obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;
		
		ResultSet rs=null;
		
		Supplier_payment_bean obj_Supplier_payment_bean=new Supplier_payment_bean();
		
		
		
		
		
		
		
		try {
		String querry="select * from supplierpayment where orderid=?;";
		ps=connection.prepareStatement(querry);
		ps.setInt(1, orderid);
		
		rs=ps.executeQuery();
		
		while(rs.next()) {

			obj_Supplier_payment_bean.setOrderid(rs.getInt("orderid"));
			obj_Supplier_payment_bean.setSupplierid(rs.getInt("supplierid"));
			obj_Supplier_payment_bean.setSupplierfirstname(rs.getString("supplierfirstname"));
			obj_Supplier_payment_bean.setSupplierlastname(rs.getString("supplierlastname"));
			obj_Supplier_payment_bean.setSupplieremail(rs.getString("supplieremail"));
			obj_Supplier_payment_bean.setItemname(rs.getString("itemname"));
			obj_Supplier_payment_bean.setItemamount(rs.getInt("itemamount"));
			obj_Supplier_payment_bean.setItemprice(rs.getDouble("itemprice"));
			obj_Supplier_payment_bean.setOrderdiscount(rs.getDouble("orderdiscount"));
			obj_Supplier_payment_bean.setSupplierpayment(rs.getDouble("supplierpayment"));
			obj_Supplier_payment_bean.setReceiveddate(rs.getString("receiveddate"));
		
		}
	
		}catch(Exception e) {
			
			System.out.println(e);
			
		}
		return obj_Supplier_payment_bean;
		
	}
	
	

	
public void edit_payment(Supplier_payment_bean payment) {

	try {		
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sewwandi", "root", "isini123");
	
	PreparedStatement ps=null;
		

			String querry="UPDATE supplierpayment SET supplierid=?,supplierfirstname=?,supplierlastname=?,supplieremail=?,itemname=?,itemamount=?,itemprice=?,orderdiscount=?,orderprice=?,supplierpayment=?,receiveddate=?   WHERE orderid=?;" ; 
					
			ps=con.prepareStatement(querry);
			
			ps.setInt(1,payment.getSupplierid());
			ps.setString(2,payment.getSupplierfirstname());
			ps.setString(3,payment.getSupplierlastname());
			ps.setString(4,payment.getSupplieremail());
			ps.setString(5,payment.getItemname());
			ps.setInt(6,payment.getItemamount());
			ps.setDouble(7,payment.getItemprice());
			ps.setDouble(8,payment.getOrderdiscount());
			ps.setDouble(9,payment.getOrderprice());
			ps.setDouble(10,payment.getSupplierpayment());
			ps.setString(11,payment.getReceiveddate());
			ps.setInt(12,payment.getOrderid());
			
			
			
			ps.executeUpdate();
	
		}catch(Exception e) {
			
			System.out.println(e);
			
			
		}
		
		
	}
	
	
}

