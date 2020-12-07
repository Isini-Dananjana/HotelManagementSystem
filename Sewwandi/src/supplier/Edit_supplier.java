package supplier;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import commom.DB_Connection;
import commom.Supplier_User_Bean;

public class Edit_supplier {
	
	
	public Supplier_User_Bean get_values_of_supplier(int supplierid) {
		
		DB_Connection obj_DB_Connection=new DB_Connection();
		
		Connection connection=obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;
		
		ResultSet rs=null;
		
		Supplier_User_Bean obj_Supplier_User_Bean=new Supplier_User_Bean();
		
		
		
		
		
		
		
		try {
		String querry="select*from supplier where supplierid=?;";
		ps=connection.prepareStatement(querry);
		ps.setInt(1, supplierid);;
		
		rs=ps.executeQuery();
		
		while(rs.next()) {
			
			
			
			obj_Supplier_User_Bean.setSupplierid(rs.getInt("supplierid"));
			obj_Supplier_User_Bean.setSuppliertype(rs.getString("suppliertype"));
			obj_Supplier_User_Bean.setSupplierfirstname(rs.getString("supplierfirstname"));
			obj_Supplier_User_Bean.setSupplierlastname(rs.getString("supplierlastname"));
			obj_Supplier_User_Bean.setSupplierbirth(rs.getString("supplierbirth"));
			obj_Supplier_User_Bean.setSuppliergender(rs.getString("suppliergender"));
			obj_Supplier_User_Bean.setSupplierNIC(rs.getString("supplierNIC"));
			obj_Supplier_User_Bean.setSupplierphone(rs.getString("supplierphone"));
			obj_Supplier_User_Bean.setSupplieremail(rs.getString("supplieremail"));
			obj_Supplier_User_Bean.setSupplieraddress(rs.getString("supplieraddress"));
			obj_Supplier_User_Bean.setItemname(rs.getString("itemname"));	
			obj_Supplier_User_Bean.setSupplierregidate(rs.getString("supplierregidate"));
			
		
			
		}
		
		
		
		}catch(Exception e) {
			
			System.out.println(e);
			
			
		}
		return obj_Supplier_User_Bean;
		
	}
	
	

	
public void edit_supplier(Supplier_User_Bean obj_Supplier_User_Bean ) {
		
		DB_Connection obj_DB_Connection=new DB_Connection();
		
		Connection connection=obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;
		
		
		
		
		
		try {
			String querry="update supplier set suppliertype=?,supplierfirstname=?,supplierlastname=?,supplierbirth=?,suppliergender=?,supplierNIC=?,supplierphone=?,supplieremail=?,supplieraddress=?,itemname=?,supplierregidate=? where supplierid=?;";
			ps=connection.prepareStatement(querry);
			
				
			
			
			ps.setString(1, obj_Supplier_User_Bean.getSuppliertype());;
			ps.setString(2, obj_Supplier_User_Bean.getSupplierfirstname());;
			ps.setString(3, obj_Supplier_User_Bean.getSupplierlastname());;
			ps.setString(4, obj_Supplier_User_Bean.getSupplierbirth());;
			ps.setString(5, obj_Supplier_User_Bean.getSuppliergender());;
			ps.setString(6, obj_Supplier_User_Bean.getSupplierNIC());;
			ps.setString(7, obj_Supplier_User_Bean.getSupplierphone());;
			ps.setString(8, obj_Supplier_User_Bean.getSupplieremail());;
			ps.setString(9, obj_Supplier_User_Bean.getSupplieraddress());;
			ps.setString(10,obj_Supplier_User_Bean.getItemname());;
			ps.setString(11,obj_Supplier_User_Bean.getSupplierregidate());;
			ps.setInt(12, obj_Supplier_User_Bean.getSupplierid());;
		
			ps.executeUpdate();
		

		
		
		
		}catch(Exception e) {
			
			System.out.println(e);
			
			
		}
		
		
	}
	
	
	
	
	
	
	
}
