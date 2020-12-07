package Com.Sewwandi.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Com.Sewwandi.Bean.*;

import Com.Sewwandi.Model.AddMenuDB;
import Com.Sewwandi.Model.AddRoomDB;

@WebServlet("/AddMenuServlet")
public class AddMenuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public AddMenuServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	
	 } 

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		//add	
				if(request.getParameter("addMenu") != null)
				{
					String menuImage = request.getParameter("menuImage");
					String menuId = request.getParameter("menuId");
					String menuDescription = request.getParameter("menuDescription");
					String menuPrice = request.getParameter("menuPrice"); 
					
					AddMenuBean Addroombean = new AddMenuBean();
					
					Addroombean.setMenuImage(menuImage);
					Addroombean.setMenuDescription(menuDescription);
					Addroombean.setMenuId(menuId);
				
					Addroombean.setMenuPrice(menuPrice);
					
					
					 
					
					AddMenuDB menuDB = new AddMenuDB();			
					String e1 = menuDB.addRoom(Addroombean);
					System.out.println("hi");
					
					
					response.sendRedirect("allmenu.jsp");
					System.out.println(e1);
					
					
				}else if(request.getParameter("updateMenu") != null) { //edit
					String menuImage = request.getParameter("menuImage");
					String menuId = request.getParameter("menuId");
					String menuDescription = request.getParameter("menuDescription");
					String menuPrice = request.getParameter("menuPrice"); 
					
					
					
					AddMenuBean Addroombean = new AddMenuBean();
					
					Addroombean.setMenuImage(menuImage);
					Addroombean.setMenuDescription(menuDescription);
					Addroombean.setMenuId(menuId);
				
					Addroombean.setMenuPrice(menuPrice);
					
					 
					
					AddMenuDB roomDB = new AddMenuDB();			
					String e1 = roomDB.updateRoom(Addroombean);
					System.out.println("hi");
					
					
					response.sendRedirect("allmenu.jsp");
					System.out.println(e1);
					
					
				}else if(request.getParameter("DeleteMenu") != null) { //delete
		  
		  String menuId = request.getParameter("menuId");
		  
		  
		  AddMenuBean Addroombean = new AddMenuBean();
		  
		  Addroombean.setMenuId(menuId);
		  
			/*
			 *  Addroombean.setImgName(imgName);
			 * Addroombean.setRoomType(roomType); Addroombean.setRoomNo(roomNo);
			 * Addroombean.setRoomDescription(roomDescription);
			 * Addroombean.setRoomPrice(roomPrice);
			 */
		  
		  
		  
		  
		  AddMenuDB roomDB = new AddMenuDB();
		  String s6 = roomDB.DeleteRoom(Addroombean);
		  
		  System.out.println("hi");
		  
		  
		  response.sendRedirect("allmenu.jsp");
		  System.out.println(s6);
		  
		  
		  }//end
		 				
				
				
				
		
				
				
	}

}
