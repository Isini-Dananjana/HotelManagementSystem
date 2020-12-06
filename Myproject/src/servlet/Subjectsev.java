package servlet;

import java.io.IOException;
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
import java.sql.SQLException;
//import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import javabean.Result;


import dao.Result2DAO;
import dao.Result3DAO;
import dao.ResultDAO;



/**
 * Servlet implementation class SubjectServlet
 */
@WebServlet("/")
public class Subjectsev extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private ResultDAO resultdao;
	private Result2DAO result2dao;
	private Result3DAO result3dao;
	
	 public void init() {
	       
	        resultdao = new ResultDAO();
	        result2dao = new Result2DAO();
	        result3dao = new Result3DAO();
	    }

	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			doGet(request, response);
			
		}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String act = request.getServletPath();

	        try {
	            switch (act) {
	                
	               
	                case "/insertResult1":
	                    insertResult(request, response);
	                    break;
	                    
	                case "/veiwResult1":
	                	listResult1(request, response);
	                    break;
	                    
	                case "/EditResult1":
	                	showEditFormResult1(request, response);
	                    break;
	                case "/updateResult1":
		                	updateResult1(request, response);
		                    break;  
	                case "/deleteResult1":
	                	deleteResult1(request, response);
	                    break;  
	                    
	                case "/gettotal1":
	                	listtot1(request, response);
	                    break;  
	                    
	                    
	                case "/insertResult2":
	                    insertResult2(request, response);
	                    break;
	                    
	                case "/veiwResult2":
	                	listResult2(request, response);
	                    break;
	                    
	                case "/EditResult2":
	                	showEditFormResult2(request, response);
	                    break;
	                case "/updateResult2":
		                	updateResult2(request, response);
		                    break;  
	                case "/deleteResult2":
	                	deleteResult2(request, response);
	                    break;
	                    
	                case "/list2":
	                	listResult2(request, response);
	                    break;
	                case "/gettotal2":
	                	listtot2(request, response);
	                    break; 
	                    
	                    
	                    
	                case "/insertResult3":
	                    insertResult3(request, response);
	                    break;
	                    
	                case "/veiwResult3":
	                	listResult3(request, response);
	                    break;
	                    
	                case "/EditResult3":
	                	showEditFormResult3(request, response);
	                    break;
	                case "/updateResult3":
		                	updateResult3(request, response);
		                    break;  
	                case "/deleteResult3":
	                	deleteResult3(request, response);
	                    break;
	                    
	                case "/list3":
	                	listResult3(request, response);
	                    break;
	                    
	                case "/gettotal3":
	                	listtot3(request, response);
	                    break; 
	                    
	                   
	                default:
	                 listResult1(request, response);
	                    break;
	            }
	        } catch (SQLException ex) {
	            throw new ServletException(ex);
	        }
	    }


	 

	 
	 
	 private void insertResult(HttpServletRequest request, HttpServletResponse response)
			    throws SQLException, IOException {
			
			
		 String student_class = request.getParameter("student_class");
			String student_roll = request.getParameter("student_roll");
			String mark1 = request.getParameter("mark1");
			String mark2 = request.getParameter("mark2");
			
			String mark3 = request.getParameter("mark3");
			String mark4 = request.getParameter("mark4");
			String mark5 = request.getParameter("mark5");
			String mark6 = request.getParameter("mark6");
			String mark7 = request.getParameter("mark7");
			String mark8 = request.getParameter("mark8");
			String mark9 = request.getParameter("mark9");
			String mark10 = request.getParameter("mark10");
			
			
				Result result = new Result(student_class,student_roll,mark1,mark2,mark3,mark4,mark5,mark6,mark7,mark8,mark9,mark10);
				resultdao.insertResult(result);
				
				System.out.println("Succesfully inserted");
				response.sendRedirect("list");
			    }
	 
	 
	
	 
	 private void listResult1(HttpServletRequest request, HttpServletResponse response)
	    	    throws SQLException, IOException, ServletException {
	    	        List < Result > listResult =  resultdao.selectAllResults();
	    	        request.setAttribute("listResult", listResult);
	    	        RequestDispatcher dispatcher = request.getRequestDispatcher("ViewResult1.jsp");
	    	        dispatcher.forward(request, response);
	    	    }
	 
	 
	 
	 private void showEditFormResult1(HttpServletRequest request, HttpServletResponse response)
			    throws SQLException, ServletException, IOException {
			        int id = Integer.parseInt(request.getParameter("id"));
			        Result existingResult= resultdao.selectResult1(id);
			        RequestDispatcher dispatcher = request.getRequestDispatcher("Addmarks1-5.jsp");
			        request.setAttribute("result", existingResult);
			        dispatcher.forward(request, response);

			    }
	 
	 
	 
	 private void listtot1(HttpServletRequest request, HttpServletResponse response)
	    	    throws SQLException, IOException, ServletException {
		 String student_roll = request.getParameter("student_roll");
		 List < Result > listTotal =  resultdao.selectTotal1(student_roll);
	        request.setAttribute("listTotal", listTotal);
	        RequestDispatcher dispatcher = request.getRequestDispatcher("Resultsheet1.jsp");
	        dispatcher.forward(request, response);
	 }

	
	 
	 
	 
	 private void updateResult1(HttpServletRequest request, HttpServletResponse response)
			    throws SQLException, IOException {
			        int id = Integer.parseInt(request.getParameter("id"));
			        String student_class = request.getParameter("student_class");
					String student_roll = request.getParameter("student_roll");
					String mark1 = request.getParameter("mark1");
					String mark2 = request.getParameter("mark2");
					
					String mark3 = request.getParameter("mark3");
					String mark4 = request.getParameter("mark4");
					String mark5 = request.getParameter("mark5");
					String mark6 = request.getParameter("mark6");
					String mark7 = request.getParameter("mark7");
					String mark8 = request.getParameter("mark8");
					String mark9 = request.getParameter("mark9");
					String mark10 = request.getParameter("mark10");
					Result result = new Result(id,student_class,student_roll,mark1,mark2,mark3,mark4,mark5,mark6,mark7,mark8,mark9,mark10);
					resultdao.updateResult(result);
					
			        response.sendRedirect("list1");

	 }
	 

	 private void deleteResult1(HttpServletRequest request, HttpServletResponse response)
			    throws SQLException, IOException {
			        int id = Integer.parseInt(request.getParameter("id"));
			        resultdao.deleteResult1(id);
			        response.sendRedirect("list1");
	
	 }
	 
	 
	 
	 
	 //resultsheet3
	 
	 
	 
	 private void insertResult3(HttpServletRequest request, HttpServletResponse response)
			    throws SQLException, IOException {
			
			
		 String student_class = request.getParameter("student_class");
			String student_roll = request.getParameter("student_roll");
			String mark1 = request.getParameter("mark1");
			String mark2 = request.getParameter("mark2");
			
			String mark3 = request.getParameter("mark3");
			String mark4 = request.getParameter("mark4");
			String mark5 = request.getParameter("mark5");
			String mark6 = request.getParameter("mark6");
			String mark7 = request.getParameter("mark7");
			String mark8 = request.getParameter("mark8");
			String mark9 = request.getParameter("mark9");
			String mark10 = request.getParameter("mark10");
			
			
				Result result = new Result(student_class,student_roll,mark1,mark2,mark3,mark4,mark5,mark6,mark7,mark8,mark9,mark10);
				result3dao.insertResult3(result);
				
				System.out.println("Succesfully inserted");
				response.sendRedirect("list3");
			    }
	 
	 
	
	 
	 private void listResult3(HttpServletRequest request, HttpServletResponse response)
	    	    throws SQLException, IOException, ServletException {
	    	        List < Result > listResult =  result3dao.selectAllResults3();
	    	        request.setAttribute("listResult", listResult);
	    	        RequestDispatcher dispatcher = request.getRequestDispatcher("ViewResult3.jsp");
	    	        dispatcher.forward(request, response);
	    	    }
	 
	 
	 
	 private void showEditFormResult3(HttpServletRequest request, HttpServletResponse response)
			    throws SQLException, ServletException, IOException {
			        int id = Integer.parseInt(request.getParameter("id"));
			        Result existingResult= result3dao.selectResult3(id);
			        RequestDispatcher dispatcher = request.getRequestDispatcher("Addmarks12.jsp");
			        request.setAttribute("result", existingResult);
			        dispatcher.forward(request, response);

			    }
	 
	 
	 private void updateResult3(HttpServletRequest request, HttpServletResponse response)
			    throws SQLException, IOException {
			        int id = Integer.parseInt(request.getParameter("id"));
			        String student_class = request.getParameter("student_class");
					String student_roll = request.getParameter("student_roll");
					String mark1 = request.getParameter("mark1");
					String mark2 = request.getParameter("mark2");
					
					String mark3 = request.getParameter("mark3");
					String mark4 = request.getParameter("mark4");
					String mark5 = request.getParameter("mark5");
					String mark6 = request.getParameter("mark6");
					String mark7 = request.getParameter("mark7");
					String mark8 = request.getParameter("mark8");
					String mark9 = request.getParameter("mark9");
					String mark10 = request.getParameter("mark10");
					Result result = new Result(id,student_class,student_roll,mark1,mark2,mark3,mark4,mark5,mark6,mark7,mark8,mark9,mark10);
					result3dao.updateResult3(result);
					
			        response.sendRedirect("list3");

	 }
	 
	 private void listtot3(HttpServletRequest request, HttpServletResponse response)
	    	    throws SQLException, IOException, ServletException {
		 String student_roll = request.getParameter("student_roll");
		 List < Result > listTotal =  result3dao.selectTotal3(student_roll);
	        request.setAttribute("listTotal", listTotal);
	        RequestDispatcher dispatcher = request.getRequestDispatcher("Resultsheet3.jsp");
	        dispatcher.forward(request, response);
	        
	        
	 }

	
	 

	 private void deleteResult3(HttpServletRequest request, HttpServletResponse response)
			    throws SQLException, IOException {
			        int id = Integer.parseInt(request.getParameter("id"));
			        result3dao.deleteResult3(id);
			        response.sendRedirect("list3");
	 }
			        
			        
			        
			        
			        //resultsheet2
			   	 
			   	 
			   	 
			   	 private void insertResult2(HttpServletRequest request, HttpServletResponse response)
			   			    throws SQLException, IOException {
			   			
			   			
			   		 String student_class = request.getParameter("student_class");
			   			String student_roll = request.getParameter("student_roll");
			   			String mark1 = request.getParameter("mark1");
			   			String mark2 = request.getParameter("mark2");
			   			
			   			String mark3 = request.getParameter("mark3");
			   			String mark4 = request.getParameter("mark4");
			   			String mark5 = request.getParameter("mark5");
			   			String mark6 = request.getParameter("mark6");
			   			String mark7 = request.getParameter("mark7");
			   			String mark8 = request.getParameter("mark8");
			   			String mark9 = request.getParameter("mark9");
			   			String mark10 = request.getParameter("mark10");
			   			
			   			
			   				Result result = new Result(student_class,student_roll,mark1,mark2,mark3,mark4,mark5,mark6,mark7,mark8,mark9,mark10);
			   				result2dao.insertResult2(result);
			   				
			   				System.out.println("Succesfully inserted");
			   				response.sendRedirect("list2");
			   			    }
			   	 
			   	 
			   	
			   	 
			   	 private void listResult2(HttpServletRequest request, HttpServletResponse response)
			   	    	    throws SQLException, IOException, ServletException {
			   	    	        List < Result > listResult =  result2dao.selectAllResults2();
			   	    	        request.setAttribute("listResult", listResult);
			   	    	        RequestDispatcher dispatcher = request.getRequestDispatcher("ViewResult2.jsp");
			   	    	        dispatcher.forward(request, response);
			   	    	    }
			   	 
			   	 
			   	 
			   	 private void showEditFormResult2(HttpServletRequest request, HttpServletResponse response)
			   			    throws SQLException, ServletException, IOException {
			   			        int id = Integer.parseInt(request.getParameter("id"));
			   			        Result existingResult= result2dao.selectResult2(id);
			   			        RequestDispatcher dispatcher = request.getRequestDispatcher("Addmarks6-11.jsp");
			   			        request.setAttribute("result", existingResult);
			   			        dispatcher.forward(request, response);

			   			    }
			   	 
			   	 
			   	 private void updateResult2(HttpServletRequest request, HttpServletResponse response)
			   			    throws SQLException, IOException {
			   			        int id = Integer.parseInt(request.getParameter("id"));
			   			        String student_class = request.getParameter("student_class");
			   					String student_roll = request.getParameter("student_roll");
			   					String mark1 = request.getParameter("mark1");
			   					String mark2 = request.getParameter("mark2");
			   					
			   					String mark3 = request.getParameter("mark3");
			   					String mark4 = request.getParameter("mark4");
			   					String mark5 = request.getParameter("mark5");
			   					String mark6 = request.getParameter("mark6");
			   					String mark7 = request.getParameter("mark7");
			   					String mark8 = request.getParameter("mark8");
			   					String mark9 = request.getParameter("mark9");
			   					String mark10 = request.getParameter("mark10");
			   					Result result = new Result(id,student_class,student_roll,mark1,mark2,mark3,mark4,mark5,mark6,mark7,mark8,mark9,mark10);
			   					result2dao.updateResult2(result);
			   					
			   			        response.sendRedirect("list2");

			   	 }
			   	 
			   	 
			   	private void listtot2(HttpServletRequest request, HttpServletResponse response)
			    	    throws SQLException, IOException, ServletException {
				 String student_roll = request.getParameter("student_roll");
				 List < Result > listTotal =  result2dao.selectTotal2(student_roll);
			        request.setAttribute("listTotal", listTotal);
			        RequestDispatcher dispatcher = request.getRequestDispatcher("Resultsheet2.jsp");
			        dispatcher.forward(request, response);
			 }

			

			   	 private void deleteResult2(HttpServletRequest request, HttpServletResponse response)
			   			    throws SQLException, IOException {
			   			        int id = Integer.parseInt(request.getParameter("id"));
			   			        result2dao.deleteResult2(id);
			   			        response.sendRedirect("list2");
	
	 }


			   	 
			   	 
			   		
			   		
			   
}