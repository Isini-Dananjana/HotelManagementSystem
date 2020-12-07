package order;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Order")
public class Order extends HttpServlet {
	private static final long serialVersionUID = 1L;

	orderDao OrderDao =new orderDao();
	  
    /**
     * @see HttpServlet#HttpServlet()
     */
     
    public Order() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("order.jsp");
		dispatcher.forward(request,response);
		/**
		 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		 */
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		int supplierid = Integer.parseInt(request.getParameter("supplierid"));
		String supplierfirstname = request.getParameter("supplierfirstname");
		String supplierlastname = request.getParameter("supplierlastname");
		String supplieremail = request.getParameter("supplieremail");
		String itemname= request.getParameter("itemname");
		int itemamount = Integer.parseInt(request.getParameter("itemamount"));
		String orderdate = request.getParameter("orderdate");
		
		orderbean Orderbean= new orderbean();
		
		 Orderbean.setSupplierid(supplierid);
		 Orderbean.setSupplierfirstname(supplierfirstname);
		 Orderbean.setSupplierlastname(supplierlastname);
		 Orderbean.setSupplieremail(supplieremail);
		 Orderbean.setItemname(itemname);
		 Orderbean.setItemamount(itemamount);
		 Orderbean.setOrderdate(orderdate);	
		 
		     try {
		    	 OrderDao.orders(Orderbean);
		    	
		     } 
		     catch (ClassNotFoundException e) {
		            e.printStackTrace();
		        }
		     RequestDispatcher dispatcher = request.getRequestDispatcher("orderaddcontroller.jsp");
				dispatcher.forward(request,response);
			
		}			     
}


