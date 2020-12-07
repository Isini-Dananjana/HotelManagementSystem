package Com.Sewwandi.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Com.Sewwandi.Bean.AttenBean;
import Com.Sewwandi.Bean.EmpBean;
import Com.Sewwandi.Bean.partEmpAttenBean;

import Com.Sewwandi.Model.EmpModel;
import Com.Sewwandi.Model.PartempAtteModel;
import Com.Sewwandi.Model.PempAtteModel;

/**
 * Servlet implementation class PerEmpAttenServlet
 */
@WebServlet("/PerEmpAttenServlet")
public class PerEmpAttenServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PerEmpAttenServlet() {
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
					 
		AttenBean employeebean = new AttenBean(); 
			
		employeebean.setAttendanceId(emp);
					 
			PempAtteModel newemp = new PempAtteModel();
		String s4 = newemp.DeleteEmp(employeebean);
		response.sendRedirect("http://localhost:8090/Sewwandi/PerEmpAttendanceDetails.jsp");
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
			String clockin = request.getParameter("clockin");
			String clockout = request.getParameter("clockout");
			String work_hrs = request.getParameter("work_hrs");
			String non_OT = request.getParameter("non-OT");
		    String OT = request.getParameter("OT");
		    String basicSalary = request.getParameter("basicSalary");
			
			
			
			AttenBean emp = new AttenBean();
			
			emp.setDate(dateT);
			emp.setEmployeeId(empID);
			emp.setFirstName(firstName);
			emp.setLastName(lastName);
			emp.setSection(section);
			emp.setDesignation(designation);
			emp.setStatus(status);
			emp.setClockin(clockin);
			emp.setClockout(clockout);
			emp.setWork_hrs(work_hrs);
			emp.setNon_OT(non_OT);
			emp.setOT(OT);
			emp.setBasicsalary(basicSalary);
			
			PempAtteModel ademp = new PempAtteModel();			
			String e1 = ademp.insertEmp(emp);
			System.out.println("hi");
			
			
			response.sendRedirect("http://localhost:8090/Sewwandi/PerEmpAttendanceDetails.jsp");
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
			String clockin = request.getParameter("clockin");
			String clockout = request.getParameter("clockout");
			String work_hrs = request.getParameter("work_hrs");
			String non_OT = request.getParameter("non-OT");
		    String OT = request.getParameter("OT");
			
			
			
			AttenBean emp = new AttenBean();
			
			emp.setAttendanceId(attendanceId);
			emp.setDate(dateT);
			emp.setEmployeeId(empID);
			emp.setFirstName(firstName);
			emp.setLastName(lastName);
			emp.setSection(section);
			emp.setDesignation(designation);
			emp.setStatus(status);
			emp.setClockin(clockin);
			emp.setClockout(clockout);
			emp.setWork_hrs(work_hrs);
			emp.setNon_OT(non_OT);
			emp.setOT(OT);
			
			PempAtteModel editemp = new PempAtteModel();	
			String edit1 = editemp.updateEmp(emp);
			
			response.sendRedirect("http://localhost:8090/Sewwandi/PerEmpAttendanceDetails.jsp");
			System.out.println(edit1);
		
	}
	
	}
	
	

}
