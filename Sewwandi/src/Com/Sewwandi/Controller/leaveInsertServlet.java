package Com.Sewwandi.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Com.Sewwandi.Bean.EmpBean;
import Com.Sewwandi.Bean.empLeaveBean;

import Com.Sewwandi.Model.leaveDB;

/**
 * Servlet implementation class leaveInsertServlet
 */
@WebServlet("/leaveInsertServlet")
public class leaveInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//catch the form details
		String empName = request.getParameter("L_Emp_name");
		String empID = request.getParameter("L_Emp_ID");
		String desig = request.getParameter("designation");
		String date = request.getParameter("leaveDate");
		String type = request.getParameter("LeaveType");
		String dis = request.getParameter("leaveDescription");
		
		boolean isTrue;
		
		isTrue = leaveDB.insertleave(empName, empID, desig, date, type, dis);
		
		if(isTrue == true) {
			
			try {
				// make list object
				List<empLeaveBean> leaveDetails = leaveDB.checkTheNoOfLeave(empID,date); // set the details
				request.setAttribute("leaveDetails", leaveDetails);
			} catch (Exception e) {
				e.printStackTrace();
			}
			 
			RequestDispatcher disp = request.getRequestDispatcher("Per_leave_applyEID.jsp");
					disp.forward(request, response);
		}
		
		else {
			
			RequestDispatcher disp1 = request.getRequestDispatcher("Per_leave_applyEID.jsp");
			disp1.forward(request, response);
		}
	
	}

}
