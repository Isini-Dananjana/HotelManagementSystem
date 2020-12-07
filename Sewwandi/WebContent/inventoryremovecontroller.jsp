<%@ page import="java.lang.*"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="java.sql.*"%>
<%@ page import="inventory.inventorybean"%>
<%@ page import="inventory.Removeinventory"%>
<%@ page import="inventory.Inventoryremove"%>
<%@ page import="inventory.inventoryremovebean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inventory Remove controller</title>
</head>
<body>
<%
 

int itemid=Integer.parseInt(request.getParameter("itemid"));
String itemname =request.getParameter("itemname");
int itemamount =Integer.parseInt(request.getParameter("itemamount"));
int itemremovedamount =Integer.parseInt(request.getParameter("itemremovedamount"));
String itemremovedate =request.getParameter("itemremovedate");

itemamount = itemamount-itemremovedamount; 

%>

<% 
inventorybean Inventorybean=new inventorybean();

Inventorybean.setItemid(itemid);
Inventorybean.setItemname(itemname);
Inventorybean.setItemamount(itemamount);


	Removeinventory removeinventory=new Removeinventory();
	
	removeinventory.removevalues(Inventorybean);
	
	
%>

<% 
inventoryremovebean Inventoryremovebean=new inventoryremovebean();

Inventoryremovebean.setItemid(itemid);
Inventoryremovebean.setItemname(itemname);
Inventoryremovebean.setItemamount(itemamount);
Inventoryremovebean.setItemremovedamount(itemremovedamount);
Inventoryremovebean.setItemremovedate(itemremovedate);

	Inventoryremove inventoryremove=new Inventoryremove();
	
	inventoryremove.inventory(itemid,itemname,itemamount,itemremovedamount,itemremovedate);
	
	response.sendRedirect("inventoryupdateandremove.jsp");
	
%>	
<h2>finished</h2>
</body>
</html>