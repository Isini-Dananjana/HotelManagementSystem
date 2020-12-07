<%@page import="supplier.Delete_Supplier"%>
<%@page import="supplier.Edit_supplier"%>
<%@page import="commom.Supplier_User_Bean"%>
<%@page import="supplier.Insert_Supplier"%>

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

int supplierid=Integer.parseInt(request.getParameter("supplierid"));

Delete_Supplier obj_Delete_Supplier=new Delete_Supplier();

obj_Delete_Supplier.delete_value(supplierid);

%>
<script type="text/javascript">
window.location.href="http://localhost:8086/sewwandi/AddSupplier.jsp";
</script>
 
</body>
</html>