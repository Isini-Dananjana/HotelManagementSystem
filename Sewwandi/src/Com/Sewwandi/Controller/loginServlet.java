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

import Com.Sewwandi.Model.loginService;
import Com.Sewwandi.Model.registerService;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
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
		// TODO Auto-generated method stub3
		
		//login page post input
		
		response.setContentType("text/html");
		
		User user =  new User();
		
		user.setUsername(request.getParameter("username"));
		user.setPassword(request.getParameter("password"));
		
		loginService login = new loginService(); //directs to the login service to check the type of the user
		login.login(user);
		
		if(login.getLoginUser()==1) {
			HttpSession session = request.getSession();
			session.setAttribute("userEmail",user.getUsername());
			session.setAttribute("userType","user");
			session.setAttribute("userPoints",login.getUserPoints());
			
			session.setAttribute("fname",login.getFname());
			session.setAttribute("lname", login.getLname());
			response.sendRedirect("customerloghome.jsp");
			
			
		}else if(login.getLoginUser()==2) {
			HttpSession session = request.getSession();
			session.setAttribute("userEmail",user.getUsername());
			session.setAttribute("userType","receptionist");
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Receptionist.jsp");
			dispatcher.forward(request, response);
			
			
		}else if(login.getLoginUser()==3) {
			HttpSession session = request.getSession();
			session.setAttribute("userEmail",user.getUsername());
			session.setAttribute("userType","manager");
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/MangerHome.jsp");
			dispatcher.forward(request, response);
			
			
		}else if(login.getLoginUser()==4) {
			HttpSession session = request.getSession();
			session.setAttribute("userEmail",user.getUsername());
			session.setAttribute("userType","admin");
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/adminhome.jsp");
			dispatcher.forward(request, response);
			
			
		}else {
			HttpSession session = request.getSession();
			session.setAttribute("errors_success",2);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/login.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
