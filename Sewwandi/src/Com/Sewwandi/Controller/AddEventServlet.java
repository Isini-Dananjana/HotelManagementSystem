package Com.Sewwandi.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Com.Sewwandi.Bean.EventBean;

import Com.Sewwandi.Model.EventDB;

@WebServlet("/AddEventServlet")
public class AddEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String customername = request.getParameter("customername");
		String hallno = request.getParameter("hallno");
		String eventdate = request.getParameter("eventdate");
		String eventtime = request.getParameter("eventtime");
		String eventtype = request.getParameter("eventtype");
		String eventdes = request.getParameter("eventdescription");
		String noguests = request.getParameter("numberofguests");
		String photo = request.getParameter("photographer");
		String pphone = request.getParameter("pphone");
		String deco = request.getParameter("decorator");
		String dphone = request.getParameter("dphone");
		String makeup = request.getParameter("makeupartist");
		String mphone = request.getParameter("mphone");
		String price = request.getParameter("price");
		String dprice = request.getParameter("dprice");
		String mprice = request.getParameter("mprice");
		String pprice = request.getParameter("pprice");
		String tot = request.getParameter("tot");
		
		boolean isTrue;
		
		isTrue = EventDB.addEvent(customername, hallno, eventdate, eventtime, eventtype, eventdes, noguests, photo, deco, makeup);
		
		if(isTrue == true) {
			
			List<EventBean> eventDetails = EventDB.eveDetails(customername,eventdate);
			request.setAttribute("eventDetails", eventDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("HallBookingDetails.jsp");
			dis.forward(request, response);
			
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("HallBooking.jsp");
			dis2.forward(request, response);
		}
	}

}
;