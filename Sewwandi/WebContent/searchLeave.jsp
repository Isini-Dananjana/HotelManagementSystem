<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> search Leave Show</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" /></script>

<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/aye-styles.css">

<script type="text/javascript">
  
  function validate()
  {
    var equipmenttype = document.getElementById("equipmenttype");
    var equipmentname = document.getElementById("equipmentname");
    var equipmentamount = document.getElementById("equipmentamount");
    var equipmentdate = document.getElementById("equipmentdate");
    var equipmentdescription = document.getElementById("equipmentdescription");
    
      
      if(equipmenttype.value.trim() == "" ) {

          alert("Please select an Equipment type!");
          equipmenttype.style.border="solid 3px red";
          return false;
        }

      else if(equipmentname.value.trim() == "" ) {

          alert("Please enter Equipment name!");
          equipmentname.style.border="solid 3px red";
          return false;
        }
      
      else if(equipmentamount.value.trim() == "" ) {

          alert("Please enter amount you want to add!");
          equipmentamount.style.border="solid 3px red";
          return false;
        }
      else if(equipmentdate.value.trim() == ""  ) {

          alert("Please select the date!");
          equipmentdate.style.border="solid 3px red";
          return false;
        }
      else if(equipmentdescription.value.trim() == "" ) {

          alert("Please enter a small description!");
          equipmentdescription.style.border="solid 3px red";
          return false;
        }
      
      else{
       
          true;
      }
  }


</script>

</head>
<body>

	<div class="header">
		<div class="header-right">
			<div class="header-right">
			 <a href="#">Hi Sam</a>
    <a href="customerhome.jsp">Log out</a>
		</div>
	</div>
	<div class="h1">Employees Leave Details </div>

	<div class="wrapper">
		<div class="sidebar">

			<h5>hotel Sewwandi</h5>
			<center>
				<img src="img/logo.jpg" width="100px" height="100px">
			</center>
			<br>
			<ul>
			
			<li>
		<form method="post" action="searchLeave.jsp">
    		<input name="fname" id="fname" type="text" class="form-control" placeholder="Enter Employee first name"><br>
    		 <button style = "background-color:#612a3f; padding: 6px; width: 200px height:100px"  id = "submitbtn" type="submit"  class="btn btn-primary" onclick="validate()"> Search Employee leave details</button>
		                
		            </form>  <!-- end of the form  --> 
		         
    	</li>
			
			<li><a href="ManagerHome.jsp"><i class="fa fa-home"></i>Home</a></li>
				<li><a href="Per_leave_applyEID.jsp">Leave Apply</a></li>
				<li><a href="Per_leave_edit.jsp">Edit existing leave
						details</a></li>
				<li><a href="Per_leave_showMonth.jsp">Permanent Employee Leave Details</a></li>
			
				
			</ul>

			<div class="social_media">
				<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
					class="fa fa-instagram"></i></a> <a href="#"><i
					class="fa fa-twitter"></i></a>
			</div>

		</div>
		<div class="main_content">
		<div class="bg-image">
		
	
		
		<%@ page import=" java.sql.Connection"%>
		<%@ page import=" java.sql.DriverManager"%>
		<%@page import="java.sql.ResultSet"%>
		<%@page import="java.sql.Statement"%>
		<%@page import="java.sql.Connection"%>
	
		<%	
		String job_id = request.getParameter("fname");
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
		Statement statement = null;
		ResultSet resultSet = null;
		%>
		
		<br><br>
		<button class="report_btn" > Generate a monthly report</button>
 <br><br><br><br>
			<table style="width: 100%;height:auto" >

				 <tr><th>Leave ID</th>
				    <th>Employee Name</th>
				    <th>Employee ID</th>
				    <th>Designation</th>
				    <th>Type</th>
				    <th>Date</th>
				    <th>Description </th>
				  </tr>
				   <%
					try{
					connection = DriverManager.getConnection(connectionUrl, userid, password);
					statement=connection.createStatement();
					String sql ="select * from  sewwandi.leave where name ='"+job_id+"' order by date";
					resultSet = statement.executeQuery(sql);
					
					int j = 0;
					
					while(resultSet.next()){
				
			
			%>

				  
				  <tr>
				    <td><%=resultSet.getString("leaveID") %></td>
				    <td><%=resultSet.getString("name") %></td>
				    <td><%=resultSet.getString("EmpID") %></td>
				    <td><%=resultSet.getString("designationl") %></td>
				    <td><%=resultSet.getString("type") %></td>
				    <td><%=resultSet.getString("date") %></td>
				      <td><%=resultSet.getString("description") %></td>
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
			</div>
		<br><br><br><br><br><br><br><br><br><br><br>
		</div>
	</div>
<script src="jquery.min.js"></script>
		<script src="bootstrap.min.js"></script>
		<script >
			$(document).ready(function(){
				$('.search').keyup(function(){
					var searchTerm = $(".search").val();
					var listItem = $('.results tbody').children('tr');
					var searchSplit = searchTerm.replace(/ /g,"'):containsi('");
					$.extend($.expr[':'],{
						'containsi': function(elem,i,match,array){
							return(elem.textContent || elem.innerText || '').toLowerCase().indexOf((match[3] ||
								"").toLowerCase()) >= 0;
						}
					})
					$(".results tbody tr").not(":containsi('"+ searchSplit +"')").each(function(){
						$(this).attr('visible','false');
					})
					$(".results tbody tr:containsi('"+ searchSplit +"')").each(function(){
						$(this).attr('visible','true');
				})
					var jobCount = $('.results tbody tr[visible="true"]').length;
					$('.counter').text(jobCount +' item');
					if(jobCount == 0){
						$('no-result').show();
					}
					else{
						$('no-result').hide();
					}
			})
		  })
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