<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
table {
  border-collapse: collapse;
  width:500px;
  padding:20px;
}

tbody>:nth-child(2){
 color:black;
 width:200px;
 text-align:center;
 background:yellow;
 text:"uyfjhbk";
}

table, th, td {
  border: 1px solid black;
}
th {
background-color: gray;
	color: white;
	text-align: center;
	width:500px;
}

td {
	text-align: center;
	width:500px;
}
.center {
  margin-left: auto;
  margin-right: auto;
}
</style>
<script
function saveForm(){
document.form[0].submit;
}></script>
<!-- jQuery library -->
<script src="js/jquery.min.js"></script>
<script src="pdf.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js"></script>

<!-- jsPDF library -->
<script src="js/jsPDF/dist/jspdf.min.js"></script>
<script>
		function generatePDF(){
		var doc = new jsPDF();
		
		doc.text(20, 20, 'Hello world!');
		doc.text(20, 30, 'This is client-side Javascript to generate a PDF.');
		
		// Add new page
		doc.addPage();
		doc.text(20, 20, 'Visit CodexWorld.com');
		
		// Save the PDF
		doc.save('document.pdf');
}
</script>
</head>
<body style="  background-color: white;">


<center><div id = "come" style="width: 1100px;background-color: #fff;border:1px solid black;" >
<br>
<center><img src="image/sew.jpg" width="100px" height="100px">
		
<h2>EMPLOYEE ATTENDANCE SUMMARY REPORT</h2>
<h3>HOTEL SEWWANDI</h3></center>
       
    <%@ page import="java.sql.*" %> 
	<%@ page import="java.io.*" %> 
	<%@ page import="java.util.*" %>
	<%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>
	
	<%
	String date1 = request.getParameter("date1");
	String date2 = request.getParameter("date2");
	

	
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "sewwandi";
	String userid = "root";
	String password = "isini123";
	try {
	Class.forName(driver);
	} catch (ClassNotFoundException e) {
	e.printStackTrace();
	}
	Connection connection = null;
	Statement statement2 = null;
	Statement statement = null;
	ResultSet resultSet = null;
	ResultSet resultSet2 = null;
	%>
  
  <!---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  											Employee Details table
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------->      
  <br><br>
  <h4 style = "color:red"> Search results from  <% out.println(date1);%> to <% out.println(date2);%></h4>

	  <h5>Employee Summary report<h5><form>
<input type="button" value="Print report" onClick="window.print()" style=" color: black ;background:#fff;border: none; text-decoration: underline;padding-left: 10px; padding-right: 650px; 
	padding-top: 30px; 
	padding-bottom: 10px; 
outline:none;"><a style=" color: black ; text-align: right;" href="PerEmpDetails.jsp">Search again</a>
   
</form>



   <div   id="" >
   
		<table class="center"  style="background-color: #fff; width: 900px;">
		
		  <tr>
		 
		
		    <th>Emp ID</th>
		    <th>First Name</th> 
		      <th>Last Name</th> 
		        <th>Designation</th> 
		   
		      <th>Section</th>
		       
		         <th>Total OT hours</th> 
		  </tr>
		 <%
			try{
				connection = DriverManager.getConnection(connectionUrl+database, userid, password);
				statement=connection.createStatement();
		
				//String sql = "select *,count(case when status ='Absent'  then 1 end) as absent_count ,count(case when status ='Present' then 1 end) as present_count from sewwandi.per_empattendan where date between '"+date1+"' and '"+date2+"' group by employeeId order by present_count desc;";
				String sql ="SELECT *, SEC_TO_TIME( SUM( TIME_TO_SEC( OT) ) ) as  ot , SEC_TO_TIME( SUM( TIME_TO_SEC( no_OT) ) ) as  hrs FROM sewwandi.per_empattendan where date between '"+date1+"' and '"+date2+"' group by employeeId order by ot desc";
				
				
				
				resultSet = statement.executeQuery(sql);
				
				
				
				int j = 0;
				
				while(resultSet.next()){
			
			
			%>
		  <tr style = " padding: 20px;">
		  <form action="editPerEmpattendance.jsp" method="post">
		  
		     <td><%=resultSet.getString("employeeId") %> <input name="eid" type="hidden" value="<%=resultSet.getString("employeeId") %>"> </td>
		    <td><%=resultSet.getString("firstName") %> <input name="fname" type="hidden" value="<%=resultSet.getString("firstName") %>"> </td> 
		      <td><%=resultSet.getString("lastname") %> <input name="fname" type="hidden" value="<%=resultSet.getString("lastname") %>"> </td> 
		     
		    <td><%=resultSet.getString("Designation") %> <input name="designation" type="hidden" value="<%=resultSet.getString("Designation") %>"></td>
		    <td><%=resultSet.getString("section") %> <input name="section" type="hidden" value="<%=resultSet.getString("section") %>"></td>
		 
	<td><%=resultSet.getString("ot") %> <input name="fname" type="hidden" value="<%=resultSet.getString("ot") %>"> </td> 
		    
		           
		           </form>
		  </tr>
		     	
	
		<%
			
			j++;
				}
				
				connection.close();
			
			} catch (Exception e) {
			
				e.printStackTrace();
			}
			%>  
		</table>
		    
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
	</div>
    
    
 </div></center>
 </div>
 </div>
 <div class="col-md-3"></div>
	</div>

</div>
<br>



</body>

<footer>
  <div class="footer-top">
    <div class="container-fluid">
      <div class="row">

        <div class="col-md-3 col-sm-6 col-xs-12 segment-one">
          <h2>Location</h2>
          
          <p>Hotel "Sewwandi",</p>
          <p>192,</p>
          <p>Galaluwa,</p>
          <p>Manikhinna.</p>
        </div>

        <div class="col-md-3 col-sm-6 col-xs-12 segment-two">
          <h2>About Us</h2>
          
          <p>Hotel "Sewwandi"</p>contenteditable	
          <p>Katugasthot</p>
          <p>Kandy</p>
        </div>

        <div class="col-md-3 col-sm-6 col-xs-12 segment-three">
          <h2>Follow Us</h2>
          
            <p>Please follow us on Social media Profiles in order to keep updated.</p>
       <li><a href="#">Email - sewwandistudio@gmail.com</a></li>
               <li><a href="#">Tel - 07</a></li>
               <li><a href="#">Privacy & Terms</a></li>
        </div>

        <div class="col-md-3 col-sm-6 col-xs-12 segment-four">
          <h2>Contacts</h2>
       
            <p>Get in touch with us.</p>
            <ul>
               <li><a href="#">Email - sewwandistudio@gmail.com</a></li>
               <li><a href="#">Tel - 07</a></li>
               <li><a href="#">Privacy & Terms</a></li>
             </ul>
        </div>

      </div>
      </div>
    </div>
  </div>

  <div class="footer-bottom">
      <center><p>&copy; Hotel Management.com | Designed By KDY04 Developers (Pvt) Ltd.</p></center>
  </div>

</footer>
</div>

</html>