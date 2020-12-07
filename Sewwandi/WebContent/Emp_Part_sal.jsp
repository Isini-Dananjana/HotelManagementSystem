<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.5/jspdf.debug.js"></script><head>
<meta charset="ISO-8859-1">
<title>Salary of part-time Employee</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/aye-styles.css">

</head>
<body >

	<div class="header">
		<div class="header-right">
			 <a href="#">Hi Sam</a>
    <a href="customerhome.jsp">Log out</a>
		</div>
	</div>

			<%
    String year=request.getParameter("year");
		 String month =request.getParameter("month");
    
    %>
    <center>
				<img src="img/logo.jpg" width="100px" height="100px">
			
	<h1>Salary Details of  Part Time Employee</h1>
				
 <h1>In <%=month %> month of <%=year %></h1></center>
		
		<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@ page import="java.util.ArrayList" %> 
<%@ page import="java.util.List" %> 
	
	
		<%
  String db = "sewwandi";
  String user = "root"; // assumes database name is the same as username
  
  List<List<String>> data = new ArrayList<List<String>>();
  
  	try {
  		String connectionURL = "jdbc:mysql://localhost:3306/" + db;
        Connection connection, connection1 = null;
        Statement statement, statement2 = null;
        ResultSet resultSet, salaryResultSet,ResultSet1;

        Class.forName("com.mysql.jdbc.Driver").newInstance();
        connection = DriverManager.getConnection(connectionURL, user, "isini123");
        if (!connection.isClosed()) {
            System.out.println("Successfully connected to " + "MySQL server using TCP/IP...");

            statement = connection.createStatement();
            String sql = "SELECT * FROM sewwandi.part_employee;";
            resultSet = statement.executeQuery(sql);

            while (!resultSet.isClosed() && resultSet.next()) {

                List<String> employeedetails = new ArrayList<String>();

                employeedetails.add(resultSet.getString("employeeId"));
                employeedetails.add(resultSet.getString("firstname"));
                employeedetails.add(resultSet.getString("lastName"));
                employeedetails.add(resultSet.getString("designation"));
                employeedetails.add(resultSet.getString("dailySalary"));


                int empId = resultSet.getInt("employeeId");

                //String empId = emp.getString("employeeId");

                //System.out.println(empId);

                double salary = resultSet.getDouble("dailySalary");

                statement2 = connection.createStatement();

                String SQL1 = "SELECT count(date) as workedDays FROM sewwandi.part_empattendance  where employeeId="+empId+" and date LIKE '"+year+"-"+month+"-%' group by employeeId";

                ResultSet1 = statement2.executeQuery(SQL1);

                int workedDays=0;
                if(ResultSet1.next()) {
                	workedDays = ResultSet1.getInt("workedDays");
                }
              
                ResultSet1.close();

				 employeedetails.add(String.valueOf(workedDays));
				// employeedetails.add(String.valueOf(epf));
 			   	employeedetails.add(String.valueOf((salary*workedDays)));
                //System.out.println(salary + (ot * ratio) - (totalNoPays * ratio) - epf);
                data.add(employeedetails);
            }
			
			%>
			<br><br><br>
<center>
<input type="button" value="Get Report" style=" display: inline-block;
border-radius: 12px;background-color: #cccccc;colour:white;padding: 20px;width: auto;transition: all 0.5s;cursor: pointer;align:left ; position: absolute;right: 50px; top: 50px;"  onClick="window.print()">

			<table style="width: 95%; background-color:#b2b2b2;color: black; " >

				 <tr style=" background:#8c8c8c;">
					 <th>Employee ID</th>
				    <th>Employee Name</th>
				    <th>Designation</th>
				    <th>Daily salary</th>
				    <th>Worked days</th>
				   <!--  <th>EPF </th> -->
				   
				     <th>Net Salary </th>
				     <th> salary slip</th>
				  </tr>
				 <%
			for(int i = 0; i < data.size(); i++){
				//out.println(data.get(i).get(0));
				%>
				  <tr style=" color: black;">
				    <td><% out.println(data.get(i).get(0)); %></td>
	    			<td><% out.println(data.get(i).get(1) +" "+ data.get(i).get(2)); %></td>
	    			<td><% out.println(data.get(i).get(3)); %></td>
	    			<td><% out.println(data.get(i).get(4)); %></td>
	    			<td><% out.println(data.get(i).get(5)); %></td>
	    		 	<td><% out.println(data.get(i).get(6)); %></td> 
	    								
						<button type='submit' name="slip-<%=i%>" value="<%=i%>" onClick="access(this)"> Salary Slip </button>
						
				  </tr>
				  <%

	  			
			}
			%>
				</table></center><br><br><br><br><br>
					<%
      	}
      	connection.close();
  	}catch(Exception ex){
      	out.println("Unable to connect to database: "+ex);
  	}   
%>
		<script language="javascript" > 

	function access(btn){ 
  		 <% String str="Hello World"; %> 
  		
  		var jsArray = [];
  		<%for(int i=0;i<data.size();i++){
  			List<String> item = data.get(i);%>
  			var jsItem = [];
  			<%for (int j=0; j<item.size(); j++){%>
  				jsItem.push("<%= item.get(j)%>")
  			<%}%>
  		    jsArray.push(jsItem);
  		<%}%>
   		
   		var doc = new jsPDF()
   		
   		doc.text('Salary Slip', 10, 10)
   		doc.text('========', 10, 20)
   		doc.text('Employee - ID: ', 10, 40)
   		doc.text(jsArray[btn.value][0], 100, 40)
   		doc.text('Employee - Name: ', 10, 50)
   		doc.text(jsArray[btn.value][1], 100, 50)
   		doc.text('Designation: ', 10, 60)
   		doc.text(jsArray[btn.value][2], 100, 60)
   		
   		doc.text('Basic Salary: ', 10, 80)
   		doc.text(jsArray[btn.value][3], 100, 80)
   		
   		doc.text('Deductions', 10, 100)
   		doc.text('--------------', 10, 105)
   		
   		doc.text('No Pay: ', 10, 120)
   		doc.text(jsArray[btn.value][7], 100, 120)
   		doc.text('EPF: ', 10, 130)
   		doc.text(jsArray[btn.value][6], 100, 130)
   		doc.text('---------------------', 90, 135)
   		var totalDeductions = parseFloat(jsArray[btn.value][6]) + parseFloat(jsArray[btn.value][7]);
   		doc.text("-" + totalDeductions.toString(), 100, 140)
   		
   		doc.text('Extras', 10, 160)
   		doc.text('-------', 10, 165)
   		
   		doc.text('Over Time: ', 10, 180)
   		doc.text("+" + jsArray[btn.value][4], 100, 180)
   		doc.text('---------------------', 90, 185)
   		
   		doc.text("Net Salary: ", 10, 195)
   		doc.text(jsArray[btn.value][8], 100, 195)
   		doc.text('============', 90, 200)
   		
   		doc.save('salary-slip.pdf')
   		
	} 
	
	function generateSalarySlip() {
		
	}

</script> 		


</body><br><br><br><br><br>
<footer>
	<div class="footer-top">
		<div class="container-fluid">
			<div class="row">

				<div class="col-md-3 col-sm-6 col-xs-12 segment-one">
					<h2>Location</h2>
					<br>
					<p>Hotel "Sewwandi",</p>
					<p>192,</p>
					<p>Galaluwa,</p>
					<p>Manikhinna.</p>
				</div>

				<div class="col-md-3 col-sm-6 col-xs-12 segment-two">
					<h2>About Us</h2>
					<br>
					<p>Hotel "Sewwandi"</p>
					<p>Katugasthot</p>
					<p>Kandy</p>
				</div>

				<div class="col-md-3 col-sm-6 col-xs-12 segment-three">
					<h2>Follow Us</h2>
					<br>
					<p>Please follow us on Social media Profiles in order to keep
						updated.</p>
					<br> <a href="#"><i class="fa fa-facebook"></i></a> <a
						href="#"><i class="fa fa-instagram"></i></a> <a href="#"><i
						class="fa fa-twitter"></i></a>
				</div>

				<div class="col-md-3 col-sm-6 col-xs-12 segment-four">
					<h2>Contact Us</h2>
					<br>
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
		<center>
			<p>&copy; Hotel Management.com | Designed By KDY04 Developers
				(Pvt) Ltd.</p>
		</center>
	</div>

</footer>
</html>