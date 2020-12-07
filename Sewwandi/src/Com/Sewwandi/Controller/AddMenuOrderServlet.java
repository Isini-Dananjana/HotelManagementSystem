package Com.Sewwandi.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Com.Sewwandi.Bean.AddMenuOrderBean;

import Com.Sewwandi.Model.menuOrderDB;

/**
 * Servlet implementation class AddMenuOrderServlet
 */
@WebServlet("/AddMenuOrderServlet")
public class AddMenuOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;



	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String customername = request.getParameter("customername");
		String menuId = request.getParameter("menuId");
		String quantity = request.getParameter("quantity");
		String menuPrice = request.getParameter("menuPrice");
		String amount = request.getParameter("amount");
		/*
		 * String eventtime = request.getParameter("eventtime"); String eventtype =
		 * request.getParameter("eventtype"); String eventdes =
		 * request.getParameter("eventdescription"); String noguests =
		 * request.getParameter("numberofguests"); String photo =
		 * request.getParameter("photographer"); String pphone =
		 * request.getParameter("pphone"); String deco =
		 * request.getParameter("decorator"); String dphone =
		 * request.getParameter("dphone"); String makeup =
		 * request.getParameter("makeupartist"); String mphone =
		 * request.getParameter("mphone"); String price = request.getParameter("price");
		 * String dprice = request.getParameter("dprice"); String mprice =
		 * request.getParameter("mprice"); String pprice =
		 * request.getParameter("pprice"); String tot = request.getParameter("tot");
		 */
		
		boolean isTrue;
		
		isTrue = menuOrderDB.addMenuOrder(customername, menuId, quantity);
		
		if(isTrue == true) {
			
			List<AddMenuOrderBean> menuDetails = menuOrderDB.menuDetails(customername);
			request.setAttribute("menuDetails", menuDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("MenuOrderDetails.jsp");
			dis.forward(request, response);
			
		
			 }else { RequestDispatcher dis2 =
			  request.getRequestDispatcher("HallBooking.jsp"); dis2.forward(request,
			  response); }
			 
	}

}
