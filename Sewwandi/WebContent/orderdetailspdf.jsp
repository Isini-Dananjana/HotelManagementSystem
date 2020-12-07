
<%@ page import="java.lang.*"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="java.io.FileNotFoundException"%>
<%@ page import="java.io.FileOutputStream"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="com.itextpdf.text.Document"%>
<%@ page import="com.itextpdf.text.DocumentException"%>
<%@ page import="com.itextpdf.text.Paragraph"%>
<%@ page import="com.itextpdf.text.Phrase"%>
<%@ page import="com.itextpdf.text.pdf.PdfPCell"%>
<%@ page import="com.itextpdf.text.pdf.PdfPTable"%>
<%@ page import="com.itextpdf.text.pdf.PdfWriter"%>


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


		
		
		try {
			String orderdetails = "E:\\generate_pdf\\Current Order Report.pdf";
			Document document=new Document();
			PdfWriter.getInstance(document, new FileOutputStream(orderdetails));
			document.open();
			
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sewwandi", "root", "password");
			
			PreparedStatement pst=null;
			ResultSet rs = null;
			
			
			
			String query="select * from orders";
			pst=con.prepareStatement(query);
			rs=pst.executeQuery();
			
			Paragraph paragraph= new Paragraph("Current Order report of Hotel Sewwandi!\n\n\n");
	
			document.add(paragraph);
			PdfPTable table= new PdfPTable(8);
			table.setWidthPercentage(100);
			
			PdfPCell c1 = new PdfPCell(new Phrase("Order ID"));
			table.addCell(c1);
			c1 = new PdfPCell(new Phrase("Supplier ID"));
			table.addCell(c1);
			c1 = new PdfPCell(new Phrase("Supplier First Name"));
			table.addCell(c1);
			c1 = new PdfPCell(new Phrase("Supplier Last Name"));
			table.addCell(c1);
			c1 = new PdfPCell(new Phrase("Supplier Email"));
			table.addCell(c1);
			c1 = new PdfPCell(new Phrase("Item Name"));
			table.addCell(c1);
			c1 = new PdfPCell(new Phrase("Item Amount"));
			table.addCell(c1);
			c1 = new PdfPCell(new Phrase("Order Date"));
			table.addCell(c1);
			
			while(rs.next()) {
				
			
				
				
				table.addCell(paragraph= new Paragraph(rs.getString("orderid")));
				table.addCell(paragraph= new Paragraph(rs.getString("supplierid")));
				table.addCell(paragraph= new Paragraph(rs.getString("supplierfirstname")));
				table.addCell(paragraph= new Paragraph(rs.getString("supplierlastname")));
				table.addCell(paragraph= new Paragraph(rs.getString("supplieremail")));
				table.addCell(paragraph= new Paragraph(rs.getString("itemname")));
				table.addCell(paragraph= new Paragraph(rs.getString("itemamount")));
				table.addCell(paragraph= new Paragraph(rs.getString("orderdate")));
				
				
			
			}
			document.add(table);
			document.close();
			
		} catch (ClassNotFoundException e) {
		
			e.printStackTrace();
		}
	
		 catch (SQLException e) {
		
			e.printStackTrace();
		} 
		
		catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		catch (DocumentException e) {
			e.printStackTrace();
		}

	response.sendRedirect("orderdetails.jsp");	


%>
</body>
</html>