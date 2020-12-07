<%@page import="supplier.Insert_Supplier_Payment"%>
<%@page import="supplier.Insert_Supplier"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert controller</title>
</head>
<body>


<%



int orderid=Integer.parseInt(request.getParameter("orderid"));
int supplierid=Integer.parseInt(request.getParameter("supplierid"));
String supplierfirstname=request.getParameter("supplierfirstname");
String supplierlastname=request.getParameter("supplierlastname");
String supplieremail=request.getParameter("supplieremail");
String itemname=request.getParameter("itemname");
int itemamount=Integer.parseInt(request.getParameter("itemamount"));
double itemprice=Double.parseDouble(request.getParameter("itemprice"));
double orderdiscount=Double.parseDouble(request.getParameter("orderdiscount"));
double orderprice=Double.parseDouble(request.getParameter("orderprice"));
double supplierpayment=Double.parseDouble(request.getParameter("supplierpayment"));
String receiveddate=request.getParameter("receiveddate");

orderprice = (itemamount * itemprice) - orderdiscount;


Insert_Supplier_Payment obj_Insert_Supplier_Payment=new Insert_Supplier_Payment();

obj_Insert_Supplier_Payment.insert_payment(orderid,supplierid,supplierfirstname,supplierlastname,supplieremail,itemname,itemamount,itemprice,orderdiscount,orderprice,supplierpayment,receiveddate);

response.sendRedirect("Read_supplier_payment.jsp");
%>
<script type="text/javascript">
</script>
 
</body>
</html>