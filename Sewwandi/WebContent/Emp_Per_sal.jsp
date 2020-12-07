<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.5/jspdf.debug.js"></script>

<meta charset="ISO-8859-1">
<title>Salary of Permanent Employee</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/aye-styles.css">

</head>
<body >

	<div class="header">
		<div class="header-right">
			<a href="#">Hi Sam</a> <a href="customerhome.jsp">Log out</a>
		</div>
		<br>
		
	</div>

	<!-- <div class="wrapper">
		 
		<div class="main_content"> -->
			<!-- <div class="bg-image1" style="background:#ffffff;"> -->
				<%
					String year = request.getParameter("year");
					String month = request.getParameter("month");
				%>
				<center>
				<img src="img/logo.jpg" width="100px" height="100px">
			
	<h1>Salary Details of Permanent Employee</h1>
				
 <h1>In <%=month %> month of <%=year %></h1></center>
				<%@ page import="java.sql.*"%>
				<%@ page import="java.io.*"%>
				<%@ page import="java.util.ArrayList"%>
				<%@ page import="java.util.List"%>
				<%@page import="java.text.DecimalFormat"%>
				<%
					String db = "sewwandi";
					String user = "root"; // assumes database name is the same as username

					List<List<String>> data = new ArrayList<List<String>>();

					try {
						String connectionURL = "jdbc:mysql://localhost:3306/" + db;
						Connection connection, connection1 = null;
						Statement statement, statement2 = null;
						ResultSet resultSet, salaryResultSet, otResultSet, noPayResultSet = null;

						Class.forName("com.mysql.jdbc.Driver").newInstance();
						connection = DriverManager.getConnection(connectionURL, user, "isini123");
						if (!connection.isClosed()) {
							System.out.println("Successfully connected to " + "MySQL server using TCP/IP...");

							statement = connection.createStatement();
							String sql = "SELECT * FROM sewwandi.per_employee;";
							resultSet = statement.executeQuery(sql);

							while (!resultSet.isClosed() && resultSet.next()) {

								List<String> employeedetails = new ArrayList<String>();

								employeedetails.add(resultSet.getString("employeeId"));
								employeedetails.add(resultSet.getString("firstname"));
								employeedetails.add(resultSet.getString("lastName"));
								employeedetails.add(resultSet.getString("designation"));
								employeedetails.add(resultSet.getString("basicsalary"));

								int empId = resultSet.getInt("employeeId");

								//String empId = emp.getString("employeeId");

								//System.out.println(empId);

								double salary = resultSet.getDouble("basicSalary");

								statement2 = connection.createStatement();

								String otSQL = "SELECT sum(OT) ot FROM sewwandi.per_empattendan where employeeId=" + empId+ " and date LIKE '"+year+"-"+month+"-%'";
								
								/* + " and date BETWEEN CAST('"+year+"-"+month+"-01' AS DATE) AND CAST('"+year+"-"+month+"-31' AS DATE)"; */
								otResultSet = statement2.executeQuery(otSQL);

								int ot = 0;
								if (otResultSet.next()) {
									ot = otResultSet.getInt("ot");
								}
								otResultSet.close();

								String nopaySQL = "SELECT l.type, count(*) count FROM sewwandi.leave as l where l.empid="
										+ empId + " group by l.type";
								noPayResultSet = statement2.executeQuery(nopaySQL);

								int totalLeaveHrs = 0;
								double NoPayF = 0, NoPayH = 0;
								while (noPayResultSet.next()) {
									String type = noPayResultSet.getString("type");
									int count = noPayResultSet.getInt("count");
									if (type.equals("Full Day")) {
										/*  if(count>4){
										 	NoPayF=(salary/25)*(count-4);
										 }
										 else{
										 	NoPayF=0;
										 } */
										totalLeaveHrs += count;
									} else if (type.equals("Half Day")) {
										/* if(count>2){
											NoPayH=(salary/50)*(count-2);
										}
										else{
											NoPayH=0;
										} */

										totalLeaveHrs += (count / 2);
									}
								}
								noPayResultSet.close();

								//   double totalNoPays = NoPayF+NoPayH;
								int totalNoPays = totalLeaveHrs * 8 / 40;

								double ratio = salary / 30;
								double epf = 0.08 * salary;
System.out.println(ot);
System.out.println(ratio);

								
								employeedetails.add(String.format("%.2f", ot*ratio/100000));//OT pay
								System.out.println(ot);
								employeedetails.add(String.valueOf(totalLeaveHrs));
								employeedetails.add(String.valueOf(epf));//EPF
								employeedetails.add(String.format("%.2f", (totalNoPays * ratio)));//No payS
								// employeedetails.add(String.valueOf(totalNoPays));
								employeedetails.add(String.format("%.2f", salary + (ot * ratio/100000) - ((totalNoPays * ratio) + epf)));

								//System.out.println(salary + (ot * ratio) - (totalNoPays * ratio) - epf);
								data.add(employeedetails);
							}
				%>
				<br>
				<center>
				
				<input type="button" value="Get Report" style=" display: inline-block;
border-radius: 12px;background-color: #949494;padding: 20px;width: auto;transition: all 0.5s;cursor: pointer;align:left ; position: absolute;right: 50px; top: 50px;"  onClick="window.print()">

				<table style="width: 95%; background-color:#b2b2b2;color: black; " >
					<tr style=" background: #4d4d4d;">
						<th>Employee ID</th>
						<th>Employee Name</th>
						<th>Designation</th>
						<th>Basic salary</th>
						<th>OT pay</th>
						<!--  <th>Leave(full/half)</th> -->
						<th>EPF</th>
						<th>No pay</th>
						<th>Net Salary</th>
						<th> salary slip</th>
						
					</tr>
					<%
						for (int i = 0; i < data.size(); i++) {
									//out.println(data.get(i).get(0));
					%>
					
					<tr style="color: black;" >
						<td>
							<%
								out.println(data.get(i).get(0));
							%>
						</td>
						<td>
							<%
								out.println(data.get(i).get(1) +" "+ data.get(i).get(2));
							%>
						</td>
						<td>
							<%
								out.println(data.get(i).get(3));
							%>
						</td>
						<td>
							<%
								out.println(data.get(i).get(4));
							%>
						</td>
						<td>
							<%
								out.println(data.get(i).get(5));
							%>
						</td>
						 	<%-- <td><% out.println(data.get(i).get(5)); %></td>  --%>
						<td>
							<%
								out.println(data.get(i).get(7));
							%>
						</td>
						<td>
							<%
								out.println(data.get(i).get(8));
							%>
						</td>
						<td>
							<%
								out.println(data.get(i).get(9));
							%>
						</td>
						<td>
						<!-- <input type="button" value="print report" onClick="row.print()"> -->
						
							<%--  <button type='submit' name="slip-<%=i%>" > Salary Slip </button> --%>
						<button type='submit' name="slip-<%=i%>" value="<%=i%>" onClick="access(this)"> Salary Slip </button>
						
				
						</td>
					</tr>
					
					<%
					
						}
					%>
				

<br><br><br><br><br><br>
				</table></center>
				<%
					}
						connection.close();
					} catch (Exception ex) {
						out.println("Unable to connect to database: " + ex);
					}
				%>
			
			</script>
<br><br>	<br><br>				</div>

		<!-- </div>
	</div>
	</div> -->
<br><br><br><br><br><br><br><br>
<script language="javascript"> 

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
  		console.log(jsArray[btn.value]);
   		var doc = new jsPDF()
   		
   		var imgData = 'data:image/jpeg;base64,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'

   	     doc.setFontSize(20)
   	 
   	     doc.addImage(imgData, 'JPEG', 80, 10, 30, 30)
   	       
   	        
        doc.text('HOTEL SEWWANDI', 70, 50)
   		doc.text('Salary Slip', 80, 60)
   		
   		
   		
   		doc.text('Employee - ID: ', 10, 70)
   		doc.text(jsArray[btn.value][0], 100, 70)
   		doc.text('Employee - Name: ', 10, 80)
   		doc.text(jsArray[btn.value][1], 100, 80)
   		doc.text('Designation: ', 10, 90)
   		doc.text(jsArray[btn.value][3], 100, 90)
   		
   		doc.text('Basic Salary: ', 10, 100)
   		doc.text(jsArray[btn.value][4], 100, 100)
   		
   		doc.text('Deductions', 10, 110)
   		doc.text('--------------', 10, 115)
   		
   		doc.text('No Pay: ', 10, 120)
   		doc.text(jsArray[btn.value][8], 100, 120)
   		doc.text('EPF: ', 10, 130)
   		doc.text(jsArray[btn.value][7], 100, 130)
   		doc.text('---------------------', 90, 135)
   		var totalDeductions = parseFloat(jsArray[btn.value][7]) + parseFloat(jsArray[btn.value][8]);
   		doc.text("-" + totalDeductions.toString(), 100, 140)
   		
   		doc.text('Extras', 10, 160)
   		doc.text('-------', 10, 165)
   		
   		doc.text('Over Time: ', 10, 180)
   		doc.text("+" + jsArray[btn.value][5], 100, 180)
   		doc.text('---------------------', 90, 185)
   		
   		doc.text("Net Salary: ", 10, 195)
   		doc.text(jsArray[btn.value][9], 100, 195)
   		doc.text('============', 90, 200)
   		
   		/* doc.text('Employee - ID: ', 10, 70)
   		doc.text(jsArray[btn.value][0], 100, 70)
   		doc.text('Employee - Name: ', 10, 80)
   		doc.text(jsArray[btn.value][1]+ " " + jsArray[btn.value][2], 100,80)
   		doc.text('Designation: ', 10, 90)
   		doc.text(jsArray[btn.value][3], 100, 90)
   		
   		doc.text('Basic Salary: ', 10, 100)
   		doc.text(jsArray[btn.value][4], 100, 100)
   		
   		doc.text('Deductions', 10, 120)
   		doc.text('--------------', 10, 125)
   		
   		doc.text('No Pay: ', 10, 130)
   		doc.text(jsArray[btn.value][8], 100, 130)
   		doc.text('EPF: ', 10, 140)
   		doc.text(jsArray[btn.value][7], 100, 140)
   		doc.text('---------------------', 90, 145)
   		var totalDeductions = parseFloat(jsArray[btn.value][6]) + parseFloat(jsArray[btn.value][7]);
   		doc.text("-" + totalDeductions.toString(), 100, 150)
   		
   		doc.text('Extras', 10, 160)
   		doc.text('-------', 10, 165)
   		 
   		doc.text('Over Time: ', 10, 180)
   		doc.text("+" + jsArray[btn.value][5], 100, 180)
   		doc.text('---------------------', 90, 185) 
   		
   		doc.text("Net Salary: ", 10, 190)
   		doc.text(jsArray[btn.value][9], 100, 190)
   		doc.text('============', 90, 200) */
   		
   		doc.save('salary-slip-perEmp.pdf')
   		
	} 
	
	function generateSalarySlip() {
		
	}
	</script>

</body>

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