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


@WebServlet("/DeleteEventServlet")
public class DeleteEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String id = request.getParameter("eventId");
		boolean isTrue;
		
		isTrue = EventDB.deleteEvent(id);
		
		if(isTrue == true) {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("checkHallAvailability.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<EventBean> eventDetails = EventDB.getEventDetails(id);
			request.setAttribute("eventDetails", eventDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("HallBookingDetails.jsp");
			dispatcher.forward(request, response);
					}
	}

}
