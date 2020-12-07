package supplier;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import commom.DB_Connection;
import commom.Supplier_User_Bean;

public class Read_supplier_payment {

	public static void main(String[] args) {
		
		Read_supplier_payment obj_Read_supplier_payment=new Read_supplier_payment();
		obj_Read_supplier_payment.get_values();
		
	}
	
	
	public List<Supplier_payment_bean> get_values() {
		
		DB_Connection obj_DB_Connection=new DB_Connection();
		
		Connection connection=obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;
		
		ResultSet rs=null;
		
		
		
		List<Supplier_payment_bean> list=new ArrayList<Supplier_payment_bean>();
		
		
		
		
		
		try {
		String querry="select*from supplierpayment";
		ps=connection.prepareStatement(querry);
		rs=ps.executeQuery();
		
		while(rs.next()) {
			
			
			Supplier_payment_bean obj_Supplier_payment_bean=new Supplier_payment_bean();
			
			System.out.println(rs.getInt("orderid"));
			System.out.println(rs.getInt("supplierid"));
			System.out.println(rs.getString("supplierfirstname"));
			System.out.println(rs.getString("supplierlastname"));
			System.out.println(rs.getString("supplieremail"));
			System.out.println(rs.getString("itemname"));
			System.out.println(rs.getInt("itemamount"));
			System.out.println(rs.getDouble("itemprice"));
			System.out.println(rs.getDouble("orderdiscount"));
			System.out.println(rs.getDouble("orderprice"));
			System.out.println(rs.getDouble("supplierpayment"));
			System.out.println(rs.getString("receiveddate"));
			
			
			
			obj_Supplier_payment_bean.setOrderid(rs.getInt("orderid"));
			obj_Supplier_payment_bean.setSupplierid(rs.getInt("supplierid"));
			obj_Supplier_payment_bean.setSupplierfirstname(rs.getString("supplierfirstname"));
			obj_Supplier_payment_bean.setSupplierlastname(rs.getString("supplierlastname"));
			obj_Supplier_payment_bean.setSupplieremail(rs.getString("supplieremail"));
			obj_Supplier_payment_bean.setItemname(rs.getString("itemname"));
			obj_Supplier_payment_bean.setItemamount(rs.getInt("itemamount"));
			obj_Supplier_payment_bean.setItemprice(rs.getDouble("itemprice"));
			obj_Supplier_payment_bean.setOrderdiscount(rs.getDouble("orderdiscount"));
			obj_Supplier_payment_bean.setOrderprice(rs.getDouble("orderprice"));
			obj_Supplier_payment_bean.setSupplierpayment(rs.getDouble("supplierpayment"));
			obj_Supplier_payment_bean.setReceiveddate(rs.getString("receiveddate"));
			
			
			list.add(obj_Supplier_payment_bean);
			
			
			
		}
		
		
		
		}catch(Exception e) {
			
			System.out.println(e);
			
			
		}
		return list;
		
	}

}
