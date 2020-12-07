package image;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import image.imagebean;

public class galleryfoods {      


	public static void main(String[] args) {
		
		galleryfoods Galleryfoods= new galleryfoods();
		
		Galleryfoods.getfoods();		
	}

	public List<imagebean> getfoods(){
		
		List<imagebean> imagelist = new ArrayList<imagebean>();
		
	try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/sewwandi", "root", "password");
	
	PreparedStatement pst=null;
	ResultSet rs= null;
	
	String query ="select image from image where imagetype=2;";
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