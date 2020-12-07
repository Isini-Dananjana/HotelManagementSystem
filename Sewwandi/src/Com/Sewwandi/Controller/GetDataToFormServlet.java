package Com.Sewwandi.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Com.Sewwandi.Bean.EmpLeaveCount;
/*import com.Sewwandi.Bean.empLeaveBean;*/
import Com.Sewwandi.Model.leaveDB;

/**
 * Servlet implementation class GetDataToFormServlet
 */
@WebServlet("/GetDataToFormServlet")
public class GetDataToFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// catch the ID form per_leave_applyEID.jsp
				String ID = request.getParameter("L_Emp_ID");

				try {
					// make list object
					List<EmpLeaveCount> empDetails = leaveDB.getDataToForm(ID); // set the details
					if(empDetails==null || empDetails.isEmpty()) {
						request.setAttribute("empDetails", empDetails);
						// redirect to the values to another page servlet-> to view
						RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
						dis.forward(request, response);
					}
					else {
						request.setAttribute("empDetails", empDetails);
						// redirect to the values to another page servlet-> to view
						RequestDispatcher dis = request.getRequestDispatcher("Per_leave_apply.jsp");
						dis.forward(request, response);
					}
					
				} catch (Exception e) {
					e.printStackTrace();
				}

				
			}
		
		
		
}
