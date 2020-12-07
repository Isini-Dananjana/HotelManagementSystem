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

import Com.Sewwandi.Util.SewwandiDB;
import Com.Sewwandi.Model.leaveDB;


@WebServlet("/leaveUpdateServlet")
public class leaveUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String leaveID = request.getParameter("leaveID");
		String empName = request.getParameter("L_Emp_name");
		String empID = request.getParameter("L_Emp_ID");
		String desig = request.getParameter("designation");
		String date = request.getParameter("leaveDate");
		String type = request.getParameter("LeaveType");
		String dis = request.getParameter("leaveDescription");

		boolean isTrue;

		isTrue = leaveDB.Updateleave(leaveID,empName, empID, desig, date, type, dis);

		// isTrue is getting the vale of true or false when the updating data

		if (isTrue == true) {
			
			 List<empLeaveBean> leaveDetails = leaveDB.getLeaveDetails(leaveID);
			 request.setAttribute("leaveDetails", leaveDetails);
			
			RequestDispatcher disp = request.getRequestDispatcher("LeaveShow.jsp");
			disp.forward(request, response);

		} else {
			RequestDispatcher disp1 = request.getRequestDispatcher("LeaveShow.jsp");
			disp1.forward(request, response);
		}
	}
}
