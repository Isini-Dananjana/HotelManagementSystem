package image;


import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/imageadd")
public class imageadd extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
			String imagetype = request.getParameter("imagetype");
			String imagename = request.getParameter("imagename");
			String image = request.getParameter("image");
			FileInputStream fis = new FileInputStream(new File(image));
			
			try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/sewwandi", "root", "password");
			
			PreparedStatement pst=null;
			String query ="insert into image(imagetype,imagename,image)values(?,?,?);";
			pst=con.prepareStatement(query);
			
			pst.setString(1, imagetype);
            pst.setString(2, imagename);
            pst.setBinaryStream(3, fis);
			
			int n=pst.executeUpdate();
			if(n>0) {
			       response.getWriter().println("Image Successfully uploaded");
			}
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
		
	}

}
