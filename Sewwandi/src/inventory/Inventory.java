package inventory;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import inventory.inventorybean;
import inventory.inventoryDao;

@WebServlet("/inventoryadd")
public class Inventory extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       inventoryDao InventoryDao =new inventoryDao();
       
       /**
        * @see HttpServlet#HttpServlet()
        */
        
    public Inventory() {
        super();
    }
    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

				response.getWriter().append("Served at: ").append(request.getContextPath());
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("inventoryadd.jsp");
				dispatcher.forward(request,response);
				/**
				 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
				 */
			}
			
			protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
				
				
				String itemtype = request.getParameter("itemtype");
				String itemname = request.getParameter("itemname");
				int itemamount = Integer.parseInt(request.getParameter("itemamount"));
				int itemalertamount = Integer.parseInt(request.getParameter("itemalertamount"));
				String itemdate = request.getParameter("itemdate");
				String itemdescription = request.getParameter("itemdescription");
				
				inventorybean Inventorybean= new inventorybean();
				
				
					Inventorybean.setItemtype(itemtype);
					Inventorybean.setItemname(itemname);
					Inventorybean.setItemamount(itemamount);
					Inventorybean.setItemalertamount(itemalertamount);
					Inventorybean.setItemdate(itemdate);
					Inventorybean.setItemdescription(itemdescription);
					
				     try {
				    	 InventoryDao.inventory(Inventorybean);
				    	
				     } 
				     catch (ClassNotFoundException e) {
				            e.printStackTrace();
				        }
				     RequestDispatcher dispatcher = request.getRequestDispatcher("inventoryaddcontroller.jsp");
						dispatcher.forward(request,response);
					
				}			     
}
