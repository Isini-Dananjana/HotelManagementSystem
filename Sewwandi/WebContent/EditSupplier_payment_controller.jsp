<%@page import="supplier.Edit_supplier_payment"%>
<%@page import="supplier.Supplier_payment_bean"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

Supplier_payment_bean obj_Supplier_payment_bean=new Supplier_payment_bean();



obj_Supplier_payment_bean.setOrderid(orderid);
obj_Supplier_payment_bean.setSupplierid(supplierid);
obj_Supplier_payment_bean.setSupplierfirstname(supplierfirstname);
obj_Supplier_payment_bean.setSupplierlastname(supplierlastname);
obj_Supplier_payment_bean.setSupplieremail(supplieremail);
obj_Supplier_payment_bean.setItemname(itemname);
obj_Supplier_payment_bean.setItemamount(itemamount);
obj_Supplier_payment_bean.setItemprice(itemprice);
obj_Supplier_payment_bean.setOrderdiscount(orderdiscount);
obj_Supplier_payment_bean.setOrderprice(orderprice);
obj_Supplier_payment_bean.setSupplierpayment(supplierpayment);
obj_Supplier_payment_bean.setReceiveddate(receiveddate);



Edit_supplier_payment obj_Edit_supplier_payment=new Edit_supplier_payment();

obj_Edit_supplier_payment.edit_payment(obj_Supplier_payment_bean);

response.sendRedirect("Read_supplier_payment.jsp");
%>
<script type="text/javascript">
</script>
 
</body>
</html>