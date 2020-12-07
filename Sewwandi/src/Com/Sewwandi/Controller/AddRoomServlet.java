package Com.Sewwandi.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Com.Sewwandi.Bean.*;

import Com.Sewwandi.Model.AddRoomDB;

@WebServlet("/AddRoomServlet")
public class AddRoomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public AddRoomServlet() {
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
				if(request.getParameter("addRoom") != null)
				{
					String imgName = request.getParameter("image");
					String roomType = request.getParameter("roomType");
					String roomNo = request.getParameter("RoomNo");
					String roomDescription = request.getParameter("roomDesc");
					String roomPrice = request.getParameter("roomPrice"); 
					
					AddRoomBean Addroombean = new AddRoomBean();
					
					Addroombean.setImgName(imgName);
					Addroombean.setRoomType(roomType);
					Addroombean.setRoomNo(roomNo);
					Addroombean.setRoomDescription(roomDescription);
					Addroombean.setRoomPrice(roomPrice);
					
					
					 
					
					AddRoomDB roomDB = new AddRoomDB();			
					String e1 = roomDB.addRoom(Addroombean);
					System.out.println("hi");
					
					
					response.sendRedirect("allRooms.jsp");
					System.out.println(e1);
					
					
				}else if(request.getParameter("updateRoom") != null) { //edit
					
					String roomId = request.getParameter("roomId");
					String imgName = request.getParameter("image");
					String roomType = request.getParameter("roomType");
					String roomNo = request.getParameter("RoomNo");
					String roomDescription = request.getParameter("roomDesc");
					String roomPrice = request.getParameter("roomPrice");
					
					int rmID = Integer.parseInt(roomId);
					
					AddRoomBean Addroombean = new AddRoomBean();
					
					Addroombean.setRoomId(rmID);
					Addroombean.setImgName(imgName);
					Addroombean.setRoomType(roomType);
					Addroombean.setRoomNo(roomNo);
					Addroombean.setRoomDescription(roomDescription);
					Addroombean.setRoomPrice(roomPrice);
					
					
					 
					
					AddRoomDB roomDB = new AddRoomDB();			
					String e1 = roomDB.updateRoom(Addroombean);
					System.out.println("hi");
					
					
					response.sendRedirect("allRooms.jsp");
					System.out.println(e1);
					
					
				}else if(request.getParameter("DeleteRoom") != null) { //delete
		  
		  String roomId = request.getParameter("roomId");
		  
		  int rmID = Integer.parseInt(roomId);
		  
		  AddRoomBean Addroombean = new AddRoomBean();
		  
		  Addroombean.setRoomId(rmID);
		  
			/*
			 *  Addroombean.setImgName(imgName);
			 * Addroombean.setRoomType(roomType); Addroombean.setRoomNo(roomNo);
			 * Addroombean.setRoomDescription(roomDescription);
			 * Addroombean.setRoomPrice(roomPrice);
			 */
		  
		  
		  
		  
		  AddRoomDB roomDB = new AddRoomDB();
		  String s6 = roomDB.DeleteRoom(Addroombean);
		  
		  System.out.println("hi");
		  
		  
		  response.sendRedirect("allRooms.jsp");
		  System.out.println(s6);
		  
		  
		  }//end
		 				
				
				
				
		
				
				
	}

}
