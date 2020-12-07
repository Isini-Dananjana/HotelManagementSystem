<%@ page import="java.lang.*"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="java.sql.*"%>
<%@ page import="inventory.inventorybean"%>
<%@ page import="inventory.Editinventory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inventory Edit controller</title>
</head>
<body>
<%
 

int itemid=Integer.parseInt(request.getParameter("itemid"));
String itemtype =request.getParameter("itemtype");
String itemname =request.getParameter("itemname");
int itemamount =Integer.parseInt(request.getParameter("itemamount"));
int itemalertamount =Integer.parseInt(request.getParameter("itemalertamount"));
String itemdate =request.getParameter("itemdate");
String itemdescription =request.getParameter("itemdescription");

%>

<% 
inventorybean Inventorybean=new inventorybean();

Inventorybean.setItemid(itemid);
Inventorybean.setItemtype(itemtype);
Inventorybean.setItemname(itemname);
Inventorybean.setItemamount(itemamount);
Inventorybean.setItemalertamount(itemalertamount);
Inventorybean.setItemdate(itemdate);
Inventorybean.setItemdescription(itemdescription);


	Editinventory editinventory=new Editinventory();
	
	editinventory.editvalues(Inventorybean);
	
	response.sendRedirect("inventorydetails.jsp");
	
%>	
<h2>finished</h2>
</body>
</html>