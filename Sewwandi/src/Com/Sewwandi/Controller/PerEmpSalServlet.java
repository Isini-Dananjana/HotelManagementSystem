package Com.Sewwandi.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Com.Sewwandi.Bean.AttenBean;
import Com.Sewwandi.Bean.PerEmpSalBean;

import Com.Sewwandi.Model.PempAtteModel;
import Com.Sewwandi.Model.salaryDB;

/**
 * Servlet implementation class PerEmpSalServlet
 */
@WebServlet("/PerEmpSalServlet")
public class PerEmpSalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PerEmpSalServlet() {
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
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		
		if(request.getParameter("create") != null)
		{
		
			String empID = request.getParameter("employeeId");
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String section = request.getParameter("section");
			String designation = request.getParameter("designation");
			
		    String basicSalary = request.getParameter("basicSalary");
			
			
			
			PerEmpSalBean emp = new PerEmpSalBean();
			
			
			emp.setEmployeeId(empID);
			emp.setFirstName(firstName);
			
			emp.setSection(section);
			emp.setDesignation(designation);
		
			emp.setBasicsalary(basicSalary);
			
			salaryDB ademp = new salaryDB();			
			String e1 = ademp.insertEmp(emp);
			System.out.println("hi");
			
			
			response.sendRedirect("http://localhost:8090/Sewwandi/PerEmpAttendanceDetails.jsp");
			System.out.println(e1);
			
		}	
		
		
		
	}
	
	
	}


