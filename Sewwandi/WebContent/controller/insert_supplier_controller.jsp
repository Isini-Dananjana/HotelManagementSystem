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


String suppliertype=request.getParameter("suppliertype");
String supplierfirstname=request.getParameter("supplierfirstname");
String supplierlastname=request.getParameter("supplierlastname");
String supplierbirth=request.getParameter("supplierbirth");
String suppliergender=request.getParameter("suppliergender");
String supplierNIC=request.getParameter("supplierNIC");
String supplierphone=request.getParameter("supplierphone");
String supplieremail=request.getParameter("supplieremail");
String supplieraddress=request.getParameter("supplieraddress");
String itemname=request.getParameter("itemname");
String supplierregidate=request.getParameter("supplierregidate");

Insert_Supplier obj_Insert_Supplier=new Insert_Supplier();

obj_Insert_Supplier.insert_supplier(suppliertype, supplierfirstname, supplierlastname, supplierbirth, suppliergender, supplierNIC, supplierphone, supplieremail, supplieraddress, itemname, supplierregidate);


%>
<script type="text/javascript">
window.location.href="http://localhost:8086/sewwandi/AddSupplier.jsp";
</script>
 
</body>
</html>