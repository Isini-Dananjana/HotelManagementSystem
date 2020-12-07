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


Supplier_User_Bean obj_Supplier_User_Bean=new Supplier_User_Bean();

obj_Supplier_User_Bean.setSupplierid(supplierid);
obj_Supplier_User_Bean.setSuppliertype(suppliertype);
obj_Supplier_User_Bean.setSupplierfirstname(supplierfirstname);
obj_Supplier_User_Bean.setSupplierlastname(supplierlastname);
obj_Supplier_User_Bean.setSupplierbirth(supplierbirth);
obj_Supplier_User_Bean.setSuppliergender(suppliergender);
obj_Supplier_User_Bean.setSupplierNIC(supplierNIC);
obj_Supplier_User_Bean.setSupplierphone(supplierphone);
obj_Supplier_User_Bean.setSupplieremail(supplieremail);
obj_Supplier_User_Bean.setSupplieremail(supplieremail);
obj_Supplier_User_Bean.setSupplieraddress(supplieraddress);
obj_Supplier_User_Bean.setItemname(itemname);
obj_Supplier_User_Bean.setSupplierregidate(supplierregidate);



Edit_supplier obj_Edit_supplier=new Edit_supplier();

obj_Edit_supplier.edit_supplier(obj_Supplier_User_Bean);


%>
<script type="text/javascript">
window.location.href="http://localhost:8086/sewwandi/AddSupplier.jsp";
</script>
 
</body>
</html>