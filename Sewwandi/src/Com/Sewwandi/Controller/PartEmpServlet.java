package Com.Sewwandi.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Com.Sewwandi.Bean.EmpBean;
import Com.Sewwandi.Bean.PartEmpBean;
import Com.Sewwandi.Model.EmpModel;
import Com.Sewwandi.Model.PartEmpModel;

/**
 * Servlet implementation class PerEmpServlet
 */
@WebServlet("/PartEmpServlet")
public class PartEmpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PartEmpServlet() {
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
					 
		PartEmpBean employeebean = new PartEmpBean(); 
			
		employeebean.setEmployeeId(emp);		 
					 
			PartEmpModel newemp = new PartEmpModel();
		String s4 = newemp.DeleteEmp(employeebean);
		response.sendRedirect("http://localhost:8090/Sewwandi/PartEmpDetails.jsp");
			System.out.println(s4);
	}
		
		
if (request.getParameter("dnewEmpid") != null) {				
			
			String emp = request.getParameter("dnewEmpid"); 			 
					 
			PartEmpBean employeebean = new PartEmpBean(); 
			
		employeebean.setEmployeeId(emp);		 
					 
			PartEmpModel newemp = new PartEmpModel();
		String s4 = newemp.InsertDeleteEmp(employeebean);
		response.sendRedirect("http://localhost:8090/Sewwandi/PartEmpDetails.jsp");
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
			String dailySalary = request.getParameter("dSal");
			
			
			
			PartEmpBean emp = new PartEmpBean();
			
			emp.setFirstName(firstName);
			emp.setLastName(lastName);
			emp.setBirthday(birthday);
			emp.setGender(gender);
			emp.setPhoneNumber(phoneNumber);
			emp.setEmail(email);
			emp.setAddress(address);
			emp.setSection(section);
			emp.setDesignation(designation);
			emp.setDailySalary(dailySalary);
			
			PartEmpModel ademp = new PartEmpModel();			
			String e1 = ademp.insertEmp(emp);
			System.out.println("hi");
			
			
			response.sendRedirect("http://localhost:8090/Sewwandi/PartEmpDetails.jsp");
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
				String dailySalary = request.getParameter("dSal");
				
				
				
				PartEmpBean emp = new PartEmpBean();
				
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
				emp.setDailySalary(dailySalary);
				
				PartEmpModel newemp = new PartEmpModel();
				String edit1 = newemp.updateEmp(emp);
				
				response.sendRedirect("http://localhost:8090/Sewwandi/PartEmpDetails.jsp");
				System.out.println(edit1);
			
		}
			
			

			if (request.getParameter("select") != null) {
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
				String dailySalary = request.getParameter("dSal");
				
				
				
				PartEmpBean emp = new PartEmpBean();
				
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
				emp.setDailySalary(dailySalary);
				
				PartEmpModel newemp = new PartEmpModel();
				String edit1 = newemp.SelectEmp(emp);
				
				response.sendRedirect("http://localhost:8090/Sewwandi/NewFile1.jsp");
				System.out.println(edit1);
			
		}
		
		
		
	}

}
