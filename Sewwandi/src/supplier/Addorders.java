package supplier;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class Addorders {

	public static void main(String[] args) {
		
		Addorders addorders= new Addorders();
		
		addorders.getvalues();

	}

	public List<Supplier_payment_bean> getvalues(){
		
		List<Supplier_payment_bean> orderlist = new ArrayList<Supplier_payment_bean>();
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sewwandi", "root", "isini123");
			
			PreparedStatement pst=null;
			ResultSet rs = null;
			
			
			
			String query="select orderid,supplierid,supplierfirstname,supplierlastname,supplieremail,itemname,itemamount from supplierpayment;";
			pst=con.prepareStatement(query);
			rs=pst.executeQuery();
			
			while(rs.next()) {
				
				Supplier_payment_bean obj_Supplier_payment_bean=new Supplier_payment_bean();
				
				System.out.println(rs.getInt("orderid"));
				System.out.println(rs.getInt("supplierid"));
				System.out.println(rs.getString("supplierfirstname"));
				System.out.println(rs.getString("supplierlastname"));
				System.out.println(rs.getString("supplieremail"));
				System.out.println(rs.getString("itemname"));
				System.out.println(rs.getInt("itemamount"));
				
				obj_Supplier_payment_bean.setOrderid(rs.getInt("orderid"));
				obj_Supplier_payment_bean.setSupplierid(rs.getInt("supplierid"));
				obj_Supplier_payment_bean.setSupplierfirstname(rs.getString("supplierfirstname"));
				obj_Supplier_payment_bean.setSupplierlastname(rs.getString("supplierlastname"));
				obj_Supplier_payment_bean.setSupplieremail(rs.getString("supplieremail"));
				obj_Supplier_payment_bean.setItemname(rs.getString("itemname"));
				obj_Supplier_payment_bean.setItemamount(rs.getInt("itemamount"));
				
				orderlist.add(obj_Supplier_payment_bean);
				
				
			}
			
			
		} catch (ClassNotFoundException e) {
		
			e.printStackTrace();
		}
	
		 catch (SQLException e) {
		
			e.printStackTrace();
		}
		return orderlist;

		
	}

}