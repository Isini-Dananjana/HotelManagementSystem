package Com.Sewwandi.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Com.Sewwandi.Bean.EmpBean;

import Com.Sewwandi.Model.EmpModel;

/**
 * Servlet implementation class PerEmpServlet
 */
@WebServlet("/PerEmpServlet")
public class PerEmpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PerEmpServlet() {
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
					 
		EmpBean employeebean = new EmpBean(); 
			
		employeebean.setEmployeeId(emp);		 
					 
			EmpModel newemp = new EmpModel();
		String s4 = newemp.DeleteEmp(employeebean);
		response.sendRedirect("http://localhost:8090/Sewwandi/PerEmpDetails.jsp");
			System.out.println(s4);
	}
		
		
if (request.getParameter("dnewEmpid") != null) {				
			
			String emp = request.getParameter("dnewEmpid"); 			 
					 
		EmpBean employeebean = new EmpBean(); 
			
		employeebean.setEmployeeId(emp);		 
					 
			EmpModel newemp = new EmpModel();
		String s4 = newemp.InsertDeleteEmp(employeebean);
		response.sendRedirect("http://localhost:8090/Sewwandi/PerEmpDetails.jsp");
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
			String firstName = request.getParameter("fname");
			String lastName = request.getParameter("lname");
			String birthday = request.getParameter("dob");
			String gender = request.getParameter("gender");
			String phoneNumber = request.getParameter("pNo");
			String email = request.getParameter("email");
			String address = request.getParameter("address");
			String section = request.getParameter("section");
			String designation = request.getParameter("designation");
			String basicSalary = request.getParameter("bSal");
			
			
			
			EmpBean emp = new EmpBean();
			
			emp.setFirstName(firstName);
			emp.setLastName(lastName);
			emp.setBirthday(birthday);
			emp.setGender(gender);
			emp.setPhoneNumber(phoneNumber);
			emp.setEmail(email);
			emp.setAddress(address);
			emp.setSection(section);
			emp.setDesignation(designation);
			emp.setBasicSalary(basicSalary);
			
			EmpModel ademp = new EmpModel();			
			String e1 = ademp.insertEmp(emp);
			System.out.println("hi");
			
			
			response.sendRedirect("http://localhost:8090/Sewwandi/PerEmpDetails.jsp");
			System.out.println(e1);
			
		}	
			
			if (request.getParameter("edit") != null) {
				String empId = request.getParameter("eid");   
				String firstName = request.getParameter("fname");
				String lastName = request.getParameter("lname");
				String birthday = request.getParameter("dob");
				String gender = request.getParameter("gender");
				String phoneNumber = request.getParameter("pNo");
				String email = request.getParameter("email");
				String address = request.getParameter("address");
				String section = request.getParameter("section");
				String designation = request.getParameter("designation");
				//String employeeType = request.getParameter("empType");
				String basicSalary = request.getParameter("bSal");
				
				
				
				EmpBean emp = new EmpBean();
				
				emp.setEmployeeId(empId);
				emp.setFirstName(firstName);
				emp.setLastName(lastName);
				emp.setBirthday(birthday);
				emp.setGender(gender);
				emp.setPhoneNumber(phoneNumber);
				emp.setEmail(email);
				emp.setAddress(address);
				emp.setSection(section);
				emp.setDesignation(designation);
				emp.setBasicSalary(basicSalary);
				
				EmpModel newemp = new EmpModel();
				String edit1 = newemp.updateEmp(emp);
				
				response.sendRedirect("http://localhost:8090/Sewwandi/PerEmpDetails.jsp");
				System.out.println(edit1);
			
		}
		
		
	}

}
