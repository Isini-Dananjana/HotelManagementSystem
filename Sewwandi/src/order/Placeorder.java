package order;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import commom.Supplier_User_Bean;

public class Placeorder {

	public Supplier_User_Bean getsupplier(int supplierid) {

		
		Supplier_User_Bean obj_Supplier_User_Bean=new Supplier_User_Bean();
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sewwandi", "root", "isini123");
			
			PreparedStatement pst=null;
			ResultSet rs = null;
			
			
		String querry="select supplierid,supplierfirstname,supplierlastname,supplieremail,itemname from supplier where supplierid=?;";
		pst=con.prepareStatement(querry);
		pst.setInt(1, supplierid);;
		
		rs=pst.executeQuery();
		
		while(rs.next()) {
			
			
			
			obj_Supplier_User_Bean.setSupplierid(rs.getInt("supplierid"));
			obj_Supplier_User_Bean.setSupplierfirstname(rs.getString("supplierfirstname"));
			obj_Supplier_User_Bean.setSupplierlastname(rs.getString("supplierlastname"));
			obj_Supplier_User_Bean.setSupplieremail(rs.getString("supplieremail"));
			obj_Supplier_User_Bean.setItemname(rs.getString("itemname"));	
			
		
			
		}
		
		
		
		}catch(Exception e) {
			
			System.out.println(e);
			
			
		}
		return obj_Supplier_User_Bean;
		
	}
	
	
	
}
