package Com.Sewwandi.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Com.Sewwandi.Bean.User;

import Com.Sewwandi.Model.changePasswordService;
import Com.Sewwandi.Model.registerService;

/**
 * Servlet implementation class changePasswordServlet
 */
@WebServlet("/changePasswordServlet")
public class changePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public changePasswordServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		try {
			if(request.getSession(false).getAttribute("userEmail") != null ) {
				
				User user =  new User();
				
				user.setEmail(request.getSession(false).getAttribute("userEmail").toString());
				user.setPassword(request.getParameter("password"));
				user.setNewPassword(request.getParameter("newpassword"));
				
				changePasswordService changeUser = new changePasswordService();
				try {
					changeUser.changePassword(user);
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				if(changeUser.getUserChange()==1) {
					HttpSession session = request.getSession();
					session.setAttribute("errors_success",1);
					response.sendRedirect("/Sewwandi/viewProfile");
					
				}else if(changeUser.getUserChange()==0) {
					HttpSession session = request.getSession();
					session.setAttribute("errors_success",4);
					response.sendRedirect("/Sewwandi/viewProfile");
				}
				
			}else {
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/login.jsp");
				dispatcher.forward(request, response);
			}
		}catch (NullPointerException e){
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/login.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
