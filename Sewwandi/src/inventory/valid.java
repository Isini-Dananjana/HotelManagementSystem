package inventory;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class valid
 */
@WebServlet("/valid")
public class valid extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public valid() {
        super();
      
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("inventoryadd.jsp");
		dispatcher.forward(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String itemname = request.getParameter("itemname");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/sewwandi", "root", "isini123");
			
			Statement st=con.createStatement();
			String query ="select itemname from item;";
			ResultSet rs=st.executeQuery(query);
			
			boolean flag=false;
			while(rs.next()) {
				if(itemname.equals(rs.getString("itemname"))) {
					flag = true;
				}
			}
			if(flag) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("inventoryvalidation.jsp");
				dispatcher.forward(request,response);
			}
			else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("/inventoryadd");
				dispatcher.forward(request,response);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}



}
}