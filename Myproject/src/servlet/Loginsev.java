package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.loginDAO;
import javabean.Login;

/**
 * Servlet implementation class Loginsev
 */
@WebServlet("/Loginsev")
public class Loginsev extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	private loginDAO logindao;
	
	 public void init() {
	        logindao = new loginDAO();
	    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
        String password = request.getParameter("password");
        Login login = new Login();
        login.setUsername(username);
        login.setPassword(password);

        try {
            if (logindao.validate(login)) {
                 response.sendRedirect("Interface.jsp");
            } else {
            	String errorMessage ="The retrived password or username did not match";
                request.setAttribute("errorMessage", errorMessage );
                   RequestDispatcher rd = request.getRequestDispatcher("Validate.jsp");
                        rd.forward(request, response);
                 }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
	}

}
