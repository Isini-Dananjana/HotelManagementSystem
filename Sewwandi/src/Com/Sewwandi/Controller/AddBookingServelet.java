package Com.Sewwandi.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Com.Sewwandi.Bean.AddBookingDetailsBean;
import Com.Sewwandi.Bean.AddRoomBean;

import Com.Sewwandi.Model.AddBookingDetailsDB;
import Com.Sewwandi.Model.AddRoomDB;
import Com.Sewwandi.Util.*;

@WebServlet("/AddBookingServelet")
public class AddBookingServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddBookingServelet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);

		// add

		if (request.getParameter("addBook") != null) {
			String cName = request.getParameter("cName");
			String checkIn = request.getParameter("checkIn");
			String checkOut = request.getParameter("checkOut");
			String arrivalTime = request.getParameter("arrivalTime");
			String no_of_adults = request.getParameter("no_of_adults");
			String no_of_kids = request.getParameter("no_of_kids");
			String roomNo = request.getParameter("roomNo");
			String phone_No = request.getParameter("phone_No");
			String roomType = request.getParameter("roomType");
			String totRAmount = request.getParameter("totRAmount");

			int adults = Integer.parseInt(no_of_adults);
			int kids = Integer.parseInt(no_of_kids);

			AddBookingDetailsBean AddBookingDetailsBean = new AddBookingDetailsBean();

			AddBookingDetailsBean.setcName(cName);
			AddBookingDetailsBean.setCheckIn(checkIn);
			AddBookingDetailsBean.setCheckOut(checkOut);
			AddBookingDetailsBean.setArrivalTime(arrivalTime);
			AddBookingDetailsBean.setNo_of_adults(adults);
			AddBookingDetailsBean.setNo_of_kids(kids);
			AddBookingDetailsBean.setRoomNo(roomNo);
			AddBookingDetailsBean.setPhone_No(phone_No);
			AddBookingDetailsBean.setRoomType(roomType);
			AddBookingDetailsBean.setTotRAmount(totRAmount);

			AddBookingDetailsDB roomDB = new AddBookingDetailsDB();
			String e1 = roomDB.addBook(AddBookingDetailsBean);
			System.out.println("hi");

			response.sendRedirect("Booking_details.jsp");
			System.out.println(e1);

		}
		// edit
		else if (request.getParameter("updateBook") != null) {

			String roomReservationId = request.getParameter("roomReservationId");
			String cName = request.getParameter("cName");
			String checkIn = request.getParameter("checkIn");
			String checkOut = request.getParameter("checkOut");
			String arrivalTime = request.getParameter("arrivalTime");
			String no_of_adults = request.getParameter("no_of_adults");
			String no_of_kids = request.getParameter("no_of_kids");
			String roomNo = request.getParameter("roomNo");
			String phone_No = request.getParameter("phone_No");
			String roomType = request.getParameter("roomType");
			String totRAmount = request.getParameter("totRAmount");

			int bkID = Integer.parseInt(roomReservationId);
			int adults = Integer.parseInt(no_of_adults);
			int kids = Integer.parseInt(no_of_kids);

			AddBookingDetailsBean AddBookingDetailsBean = new AddBookingDetailsBean();

			AddBookingDetailsBean.setRoomReservationId(bkID);
			AddBookingDetailsBean.setcName(cName);
			AddBookingDetailsBean.setCheckIn(checkIn);
			AddBookingDetailsBean.setCheckOut(checkOut);
			AddBookingDetailsBean.setArrivalTime(arrivalTime);
			AddBookingDetailsBean.setNo_of_adults(adults);
			AddBookingDetailsBean.setNo_of_kids(kids);
			AddBookingDetailsBean.setRoomNo(roomNo);
			AddBookingDetailsBean.setPhone_No(phone_No);
			AddBookingDetailsBean.setRoomType(roomType);
			AddBookingDetailsBean.setTotRAmount(totRAmount);

			AddBookingDetailsDB roomDB = new AddBookingDetailsDB();
			String s2 = roomDB.updateBook(AddBookingDetailsBean);
			System.out.println("hi");

			response.sendRedirect("Booking_details.jsp");
			System.out.println(s2);

		}

		
		  //delete
		  
		  else if(request.getParameter("DeleteBook") != null) {
		  
		  String roomReservationId =request.getParameter("roomReservationId");
		  
		  int bkID = Integer.parseInt(roomReservationId);
		  
		  
		  
		  
		  AddBookingDetailsBean AddBookingDetailsBean = new AddBookingDetailsBean();
		  
		  
		  AddBookingDetailsBean.setRoomReservationId(bkID);
			/*
			 * Addroombean.setImgName(imgName); Addroombean.setRoomType(roomType);
			 * Addroombean.setRoomNo(roomNo);
			 * Addroombean.setRoomDescription(roomDescription);
			 * Addroombean.setRoomPrice(roomPrice);
			 */
		  
		  
		  
		  
		  
		  AddBookingDetailsDB roomDB = new AddBookingDetailsDB();
		  String s5 =roomDB.DeleteBook(AddBookingDetailsBean);
		  
		  System.out.println("hi");
		  
		  
		  response.sendRedirect(
		  "Check_Availability.jsp");
		  System.out.println(s5);
		  
		  
		  }//end
		  
		 

	}

}
