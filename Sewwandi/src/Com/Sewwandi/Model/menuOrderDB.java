package Com.Sewwandi.Model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Com.Sewwandi.Bean.AddMenuOrderBean;
import Com.Sewwandi.Bean.EventBean;

import Com.Sewwandi.Util.SewwandiDB;

import Com.Sewwandi.Util.SewwandiDB;

public class menuOrderDB {
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	private static boolean isSuccess;
	
	//add menu reservation
	public static boolean addMenuOrder(String name, String menuId, String quantity) {
		
		boolean isSuccess = false;
		
		
		
		try {
			
			
			con = SewwandiDB.getCon();
			stmt = con.createStatement();
	

	
			String sql = "insert into menuorder values (0,'"+name+"','"+menuId+"','"+quantity+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}else {
				
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	//display event details after adding event
	public static List<AddMenuOrderBean> menuDetails(String cusname){
		
		ArrayList<AddMenuOrderBean> menu = new ArrayList<>();
		
		
		 try {
			 
			 con = SewwandiDB.getCon();
			 stmt = con.createStatement();
			 
			 String sql = "select mo.menuOrderId, mo.customername, mo.menuId, mo.quantity, m.menuPrice, (mo.quantity * m.menuPrice) as amount from menuorder mo, menu m where customername = '"+cusname+"'  group by customername";
			 rs = stmt.executeQuery(sql);
			 
			 while(rs.next()) {
				 	int menuOrderId = rs.getInt(1);
					String customername = rs.getString(2);
					String menuId = rs.getString(3);
					int quantity = rs.getInt(4);
					String menuPrice = rs.getString(5);
					int amount = rs.getInt(6);
					
					/* * String eventtime = rs.getString(5); String eventtype = rs.getString(6);
					 * String eventdes = rs.getString(7); String noguests = rs.getString(8); String
					 * photo = rs.getString(9); String pphone = rs.getString(10); String deco =
					 * rs.getString(11); String dphone = rs.getString(12); String makeup =
					 * rs.getString(13); String mphone = rs.getNString(14); String price =
					 * rs.getString(15); String dprice = rs.getString(16); String mprice =
					 * rs.getString(17); String pprice = rs.getString(18); String tot =
					 * rs.getString(19);
					 */
					
					AddMenuOrderBean m = new AddMenuOrderBean(menuOrderId, customername, menuId, quantity,menuPrice, amount);
					menu.add(m);
				 
			 }
			 
		 }catch(Exception e) {
			 e.printStackTrace();
			 
		 }
		
		
		 return menu;
	}


}
