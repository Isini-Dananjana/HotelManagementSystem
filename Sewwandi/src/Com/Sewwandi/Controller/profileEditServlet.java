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

import Com.Sewwandi.Model.registerService;

/**
 * Servlet implementation class profileEditServlet
 */
@WebServlet("/profileEditServlet")
public class profileEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public profileEditServlet() {
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
		
		User user =  new User();
		
		user.setFname(request.getParameter("fname"));
		user.setLname(request.getParameter("lname"));
		user.setGender(request.getParameter("gender"));
		user.setNic(request.getParameter("nic"));
		user.setAddress(request.getParameter("address"));
		user.setPhone(request.getParameter("phone"));
		user.setEmail(request.getParameter("email"));
		user.setUsername(request.getParameter("username"));
		
		registerService register = new registerService();
		register.editProfile(user,request.getSession(false).getAttribute("userEmail").toString());
		
		if(register.getUserRegister()==0) {
			request.setAttribute("user", user);
			HttpSession session = request.getSession();
			session.setAttribute("errors_success",2);
			response.sendRedirect("/Sewwandi/viewProfile");
			
		}else if(register.getUserRegister()==1){
			request.setAttribute("user", user);
			HttpSession session = request.getSession();
			session.setAttribute("errors_success",1);
			response.sendRedirect("/Sewwandi/viewProfile");
			
		}else if(register.getUserRegister()==2){
			request.setAttribute("user", user);
			HttpSession session = request.getSession();
			session.setAttribute("errors_success",3);
			response.sendRedirect("/Sewwandi/viewProfile");
		}
		
	}

}
