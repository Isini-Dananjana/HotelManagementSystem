package Com.Sewwandi.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Com.Sewwandi.Bean.empLeaveBean;

import Com.Sewwandi.Model.leaveDB;

/**
 * Servlet implementation class leaveEditServlet
 */
@WebServlet("/leaveEditServlet")
public class leaveEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// catch the edit leave form inputs
				String id = request.getParameter("L_Emp_ID");
				String date = request.getParameter("leaveDate");

				try {
					// make list object
					List<empLeaveBean> leaveDetails = leaveDB.check(id, date); // set the details
					request.setAttribute("leaveDetails", leaveDetails);
				} catch (Exception e) {
					e.printStackTrace();
				}

				// redirect to the values to another page servlet-> to view
				RequestDispatcher dis = request.getRequestDispatcher("LeaveShow.jsp");
				dis.forward(request, response);
			}
		
		
		
		
	

}
