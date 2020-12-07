<%@ page import="java.lang.*"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="java.sql.*"%>
<%@ page import="inventory.inventorybean"%>
<%@ page import="inventory.Updateinventory"%>
<%@ page import="inventory.Inventoryupdate"%>
<%@ page import="inventory.inventoryupdatebean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inventory Update controller</title>
</head>
<body>
<%
 

int itemid=Integer.parseInt(request.getParameter("itemid"));
String itemname =request.getParameter("itemname");
int itemamount =Integer.parseInt(request.getParameter("itemamount"));
int itemaddedamount =Integer.parseInt(request.getParameter("itemaddedamount"));
String itemupdatedate =request.getParameter("itemupdatedate");

itemamount = itemamount+itemaddedamount; 


%>

<% 
inventorybean Inventorybean=new inventorybean();

Inventorybean.setItemid(itemid);
Inventorybean.setItemname(itemname);
Inventorybean.setItemamount(itemamount);

	Updateinventory updateinventory=new Updateinventory();
	
	updateinventory.updatevalues(Inventorybean);

	
%>

<% 
inventoryupdatebean Inventoryupdatebean=new inventoryupdatebean();

Inventoryupdatebean.setItemid(itemid);
Inventoryupdatebean.setItemname(itemname);
Inventoryupdatebean.setItemamount(itemamount);
Inventoryupdatebean.setItemaddedamount(itemaddedamount);
Inventoryupdatebean.setItemupdatedate(itemupdatedate);

	Inventoryupdate inventoryupdate=new Inventoryupdate();
	
	inventoryupdate.inventory(itemid,itemname,itemamount,itemaddedamount,itemupdatedate);
	
	response.sendRedirect("inventoryupdateandremove.jsp");
	
%>

<h2>finished</h2>
</body>
</html>