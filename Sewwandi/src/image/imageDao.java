package image;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import inventory.Inventories;
import inventory.inventorybean;

public class imageDao {

	public static void main(String[] args) {
		
		imageDao ImageDao= new imageDao();
		
		ImageDao.getvalues();		
	}

	public List<imagebean> getvalues(){
		
		List<imagebean> imagelist = new ArrayList<imagebean>();
		
	try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/sewwandi", "root", "password");
	
	PreparedStatement pst=null;
	ResultSet rs= null;
	
	String query ="select * from image;";
	pst=con.prepareStatement(query);
	rs=pst.executeQuery();
	
	
	while(rs.next()) {
		
		imagebean Imagebean = new imagebean();
		
		System.out.println(rs.getInt("imageid"));
		System.out.println(rs.getString("imagetype"));
		System.out.println(rs.getString("imagename"));
		System.out.println(rs.getString("image"));
		
		Imagebean.setImageid(rs.getInt("imageid"));
		Imagebean.setImagetype(rs.getString("imagetype"));
		Imagebean.setImagename(rs.getString("imagename"));
		
		
		byte[] image = rs.getBytes("image");
		Imagebean.setImage(Base64.getEncoder().encodeToString(rs.getBytes("image")));		
		
		imagelist.add(Imagebean);
	}
}
	catch(Exception ex){
	ex.printStackTrace();
}
	return imagelist;
	}
}