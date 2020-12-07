package Com.Sewwandi.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Com.Sewwandi.Model.leaveDB;



/**
 * Servlet implementation class deleteLeaveServlet
 */
@WebServlet("/deleteLeaveServlet")
public class deleteLeaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String id = request.getParameter("leaveID");
		
		boolean isTrue;
		// save the deleteBooking value to variable(true or false)
		isTrue = leaveDB.deleteBooking(id);
		
		if(isTrue == true) {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("Per_leave_applyEID.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			/*
			 * List<Cpackage> cusDetails =locationUtil.getcustomerDetails(id);
			 * request.setAttribute("cusDetails", cusDetails);
			 */
			RequestDispatcher dispatcher = request.getRequestDispatcher("Per_leave_applyEID.jsp");
			dispatcher.forward(request, response);
		}
	}
	
	
}
