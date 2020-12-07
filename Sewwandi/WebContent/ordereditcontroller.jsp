<%@page import="order.orderbean"%>
<%@page import="order.Editorder"%>
<%@ page import="java.lang.*"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Edit controller</title>
</head>
<body>
<%
 
int orderid=Integer.parseInt(request.getParameter("orderid"));
int supplierid=Integer.parseInt(request.getParameter("supplierid"));
String supplierfirstname = request.getParameter("supplierfirstname");
String supplierlastname = request.getParameter("supplierlastname");
String supplieremail = request.getParameter("supplieremail");
String itemname= request.getParameter("itemname");
int itemamount = Integer.parseInt(request.getParameter("itemamount"));
String orderdate = request.getParameter("orderdate");

%>

<% 
orderbean Orderbean=new orderbean();

Orderbean.setOrderid(orderid);
Orderbean.setSupplierid(supplierid);
Orderbean.setSupplierfirstname(supplierfirstname);
Orderbean.setSupplierlastname(supplierlastname);
Orderbean.setSupplieremail(supplieremail);
Orderbean.setItemname(itemname);
Orderbean.setItemamount(itemamount);
Orderbean.setOrderdate(orderdate);	


	Editorder editorder=new Editorder();
	
	editorder.editvalues(Orderbean);
	
	response.sendRedirect("orderdetails.jsp");
	
%>	
<h2>finished</h2>
</body>
</html>