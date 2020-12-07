
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
			String itemdetails = "E:\\generate_pdf\\Inventory Updated History.pdf";
			Document document=new Document();
			PdfWriter.getInstance(document, new FileOutputStream(itemdetails));
			document.open();
			
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sewwandi", "root", "password");
			
			PreparedStatement pst=null;
			ResultSet rs = null;
			
			
			
			String query="select * from itemupdate";
			pst=con.prepareStatement(query);
			rs=pst.executeQuery();
			
			Paragraph paragraph= new Paragraph("Inventory Updated History report of Hotel Sewwandi!\n\n\n");
	
			document.add(paragraph);
			PdfPTable table= new PdfPTable(5);
			table.setWidthPercentage(100);
			
			
			PdfPCell c1 = new PdfPCell(new Phrase("Item ID"));
			table.addCell(c1);
			c1 = new PdfPCell(new Phrase("Item Name"));
			table.addCell(c1);
			c1 = new PdfPCell(new Phrase("Current Amount After Update"));
			table.addCell(c1);
			c1 = new PdfPCell(new Phrase("Updated Amount"));
			table.addCell(c1);
			c1 = new PdfPCell(new Phrase("Date Updated"));
			table.addCell(c1);
			
			while(rs.next()) {
				
			
				
				
				
				table.addCell(paragraph= new Paragraph(rs.getString("itemid")));
				table.addCell(paragraph= new Paragraph(rs.getString("itemname")));
				table.addCell(paragraph= new Paragraph(rs.getString("itemamount")));
				table.addCell(paragraph= new Paragraph(rs.getString("itemaddedamount")));
				table.addCell(paragraph= new Paragraph(rs.getString("itemupdatedate")));
				
				
			
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

	response.sendRedirect("inventoryupdatelist.jsp");	


%>
</body>
</html>