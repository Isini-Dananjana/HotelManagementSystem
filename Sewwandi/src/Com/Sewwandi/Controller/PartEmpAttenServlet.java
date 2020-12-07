package Com.Sewwandi.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Com.Sewwandi.Bean.AttenBean;
import Com.Sewwandi.Bean.EmpBean;
import Com.Sewwandi.Bean.PartEmpBean;
import Com.Sewwandi.Bean.partEmpAttenBean;

import Com.Sewwandi.Model.EmpModel;
import Com.Sewwandi.Model.PartEmpModel;
import Com.Sewwandi.Model.PartempAtteModel;
import Com.Sewwandi.Model.PempAtteModel;

/**
 * Servlet implementation class PerEmpAttenServlet
 */
@WebServlet("/PartEmpAttenServlet")
public class PartEmpAttenServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PartEmpAttenServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		if (request.getParameter("dEmpid") != null) {				
			
			String emp = request.getParameter("dEmpid"); 			 
					 
		partEmpAttenBean employeebean = new partEmpAttenBean(); 
			
		employeebean.setAttendanceId(emp);
					 
			PartempAtteModel newemp = new PartempAtteModel();
		String s4 = newemp.DeleteEmp(employeebean);
		response.sendRedirect("http://localhost:8090/Sewwandi/PartEmpAttendanceDetails.jsp");
			System.out.println(s4);
	}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		if(request.getParameter("create") != null)
		{
			String dateT = request.getParameter("date");
			String empID = request.getParameter("employeeId");
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String section = request.getParameter("section");
			String designation = request.getParameter("designation");
			String status = request.getParameter("status");
			
			
			
			partEmpAttenBean emp = new partEmpAttenBean();
			
			emp.setDate(dateT);
			emp.setEmployeeId(empID);
			emp.setFirstName(firstName);
			emp.setLastName(lastName);
			emp.setSection(section);
			emp.setDesignation(designation);
			emp.setStatus(status);
			
			PartempAtteModel ademp = new PartempAtteModel();			
			String e1 = ademp.insertEmp(emp);
			System.out.println("hi");
			
			
			response.sendRedirect("http://localhost:8090/Sewwandi/PartEmpAttendanceDetails.jsp");
			System.out.println(e1);
			
		}	
		
		if (request.getParameter("edit") != null) {
			String attendanceId = request.getParameter("aid") ;
			String dateT = request.getParameter("date");
			String empID = request.getParameter("eid");
			String firstName = request.getParameter("fname");
			String lastName = request.getParameter("lname");
			String section = request.getParameter("section");
			String designation = request.getParameter("designation");
			String status = request.getParameter("status");
			
			
			partEmpAttenBean emp = new partEmpAttenBean();
			
			emp.setAttendanceId(attendanceId);
			emp.setDate(dateT);
			emp.setEmployeeId(empID);
			emp.setFirstName(firstName);
			emp.setLastName(lastName);
			emp.setSection(section);
			emp.setDesignation(designation);
			emp.setStatus(status);
			
			PartempAtteModel editemp = new PartempAtteModel();	
			String edit1 = editemp.updateEmp(emp);
			
			response.sendRedirect("http://localhost:8090/Sewwandi/PartEmpAttendanceDetails.jsp");
			System.out.println(edit1);
		
	}
	
	}
	
	

}
