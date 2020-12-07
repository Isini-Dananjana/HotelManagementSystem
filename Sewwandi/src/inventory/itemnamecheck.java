package inventory;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/itemnamecheck")
public class itemnamecheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String itemname = request.getParameter("itemname");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sewwandi", "root", "isini123");
			
			PreparedStatement pst=null;
			ResultSet rs = null;
			
			String query="select itemname from item;";
			pst=con.prepareStatement(query);
			pst.setString(1,itemname);;
			rs=pst.executeQuery();
			
			if(rs.next()) {
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.print("Item already exists. Please choose update option");
			}
			
			else{
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.print("");
			}
		
	}catch(Exception e) {
		e.getMessage();
	}
	}

}
