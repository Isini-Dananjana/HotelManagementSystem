package image;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

public class galleryhotel {


	public static void main(String[] args) {
		
		galleryhotel Galleryhotel= new galleryhotel();
		
		Galleryhotel.gethotel();		
	}

	public List<imagebean> gethotel(){
		
		List<imagebean> imagelist = new ArrayList<imagebean>();
		
	try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/sewwandi", "root", "password");
	
	PreparedStatement pst=null;
	ResultSet rs= null;
	
	String query ="select image from image where imagetype=1;";
	pst=con.prepareStatement(query);
	rs=pst.executeQuery();
	
	
	while(rs.next()) {
		
		imagebean Imagebean = new imagebean();
		
		System.out.println(rs.getString("image"));
		
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
