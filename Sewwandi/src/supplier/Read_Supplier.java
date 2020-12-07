package supplier;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import commom.DB_Connection;
import commom.Supplier_User_Bean;

public class Read_Supplier {
	
	public static void main(String[] args) {
		
		Read_Supplier obj_Read_Supplier=new Read_Supplier();
		obj_Read_Supplier.get_values();
		
	}
	
	
	public List<Supplier_User_Bean> get_values() {
		
		DB_Connection obj_DB_Connection=new DB_Connection();
		
		Connection connection=obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;
		
		ResultSet rs=null;
		
		
		
		List<Supplier_User_Bean> list=new ArrayList<Supplier_User_Bean>();
		
		
		
		
		
		try {
		String querry="select*from supplier";
		ps=connection.prepareStatement(querry);
		rs=ps.executeQuery();
		
		while(rs.next()) {
			
			
			Supplier_User_Bean obj_Supplier_User_Bean=new Supplier_User_Bean();
			
			
			System.out.println(rs.getInt("supplierid"));
			System.out.println(rs.getString("suppliertype"));
			System.out.println(rs.getString("supplierfirstname"));
			System.out.println(rs.getString("supplierlastname"));
			System.out.println(rs.getString("supplierbirth"));
			System.out.println(rs.getString("suppliergender"));
			System.out.println(rs.getString("supplierNIC"));
			System.out.println(rs.getString("supplierphone"));
			System.out.println(rs.getString("supplieremail"));
			System.out.println(rs.getString("supplieraddress"));
			System.out.println(rs.getString("itemname"));
			System.out.println(rs.getString("supplierregidate"));
			
			
			
			
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
			
			list.add(obj_Supplier_User_Bean);
			
			
			
		}
		
		
		
		}catch(Exception e) {
			
			System.out.println(e);
			
			
		}
		return list;
		
	}

}
