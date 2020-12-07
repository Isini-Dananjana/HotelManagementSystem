<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Leave Apply Form</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/aye-styles.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<script type="text/javascript">
	function validate() {

		var L_Emp_name = document.getElementById("L_Emp_name");
		var L_Emp_ID = document.getElementById("L_Emp_ID");
		var designation = document.getElementById("designation");
		var leaveDate = document.getElementById("leaveDate");
		var LeaveType = document.getElementById("LeaveType");
		var leaveDescription = document.getElementById("leaveDescription");



		if (L_Emp_ID.value == "") {

			alert("Please enter employees ID!!!");
			L_Emp_ID.style.border = "solid 3px red";
			return false;
		} else if (L_Emp_name.value == "") {

			alert("Please enter employees name!!!");
			L_Emp_name.style.border = "solid 3px red";
			return false;
		} else if (designation.value == "") {

			alert("Please enter employees designation!!!");
			designation.style.border = "solid 3px red";
			return false;
		} else if (leaveDate.value == "") {

			alert("Please enter Correct Date!!!");
			leaveDate.style.border = "solid 3px red";
			return false;
		}

		else if (leaveDescription.value == "") {

			alert("Please enter discription!!!");
			leaveDescription.style.border = "solid 3px red";
			return false;
		} else if (LeaveType.value == "") {

			alert("Please enter leave type!!!");
			LeaveType.style.border = "solid 3px red";
			return false;
		} else {
			return true;
		}

	}
	
	
</script>

</head>
<body>

	<div class="header">
		<div class="header-right">
			<a href="#">Hi Sam</a> <a href="customerhome.jsp">Log out</a>
		</div>

	</div>
	<center>
		<div class="h1">Leave apply for permanent Employee</div>
	</center>
	<div class="wrapper">
		<div class="sidebar">
			<h5>hotel Sewwandi</h5>
			<center>
				<img src="img/logo.jpg" width="100px" height="100px">
			</center>
			
			<ul>
				<li><a href="ManagerHome.jsp"><i class="fa fa-home"></i>Home</a></li>
				<li><a href="Per_leave_applyEID.jsp">Leave Apply</a></li>
				<li><a href="Per_leave_edit.jsp">Edit existing leave
						details</a></li>
				<li><a href="Per_leave_show.jsp">Permanent Employee Leave
						Details</a></li>
			</ul>

			<div class="social_media">
				<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
					class="fa fa-instagram"></i></a> <a href="#"><i
					class="fa fa-twitter"></i></a>
			</div>

		</div>
		<div class="main_content">
			<div class="bg-image">



				<div class="container-fluid bg">
					<div class="row">
						<div class="col-md-3"></div>
						<div class="col-md-6 col-sm-12">
							<div class="panel-body">

								<form onsubmit="return validate()" action="insetLeave"
									method="post" class="add">
									<c:forEach var="emp" items="${empDetails}">
									<center><div style="color: white; font-size:25px;font-family:'Times' background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */" >Total leaves for the this month
													<br> Full Day: ${emp.fullDay}
									<br> Half Day: ${emp.halfDay}	</div></center>
								
										<div class="form-group">
											<br>
											<div class="form-group">
												<div class="form-group">

													<label
														style="color: white; font-weight: bold; font-size: 24px;">Employee
														ID</label> <input type="text" class="form-control1" id="L_Emp_ID"
														name="L_Emp_ID" placeholder="${emp.employeeId}"
														value="${emp.employeeId}" readonly />
												</div>

												<label
													style="color: white; font-weight: bold; font-size: 24px;">Employee
													Name</label> <input type="text" class="form-control1"
													id="L_Emp_name" name="L_Emp_name"
													placeholder="${emp.firstName} ${emp.lastName}"
													value="${emp.firstName} ${emp.lastName}" readonly />
											</div>




											<label
												style="color: white; font-weight: bold; font-size: 24px;">Designation</label>
											<input type="text" class="form-control1" id="designation"
												name="designation" placeholder="${emp.designation}"
												value="${emp.designation}" readonly />

											<div class="form-group">

												<script>
													$(function() {
														var dtToday = new Date();

														var month = dtToday
																.getMonth() + 1;
														var day = dtToday
																.getDate();
														var year = dtToday
																.getFullYear();
														if (month < 10)
															month = '0'
																	+ month
																			.toString();
														if (day < 10)
															day = '0'
																	+ day
																			.toString();

														var minDate = year
																+ '-' + month
																+ '-' + day;

														$('#leaveDate').attr(
																'min', minDate);
													});
												</script>
												<label
													style="color: white; font-weight: bold; font-size: 24px;">Date of Leave
												</label> <input type="date" class="form-control1" id="leaveDate"
													name="leaveDate" placeholder="Select the date" />
											</div>

											<label
												style="color: white; font-weight: bold; font-size: 24px;">Leave
												Type</label> <select size="0" class="form-control1" id="LeaveType"
												name="LeaveType">
												<option value="#">Select an leave type(half day /
													full day)</option>
												<option value="Half Day">Half Day</option>
												<option value="Full Day">Full Day</option>
											</select>

											<div class="form-group">
												<label
													style="color: white; font-weight: bold; font-size: 24px;">Description</label>
												<textarea class="form-control2" id="leaveDescription"
													name="leaveDescription"
													placeholder="The reason for the leave"></textarea>
											</div>

											<br>
											<div class="form-group">
												<input type="submit" class="submit_btn"
													value="Submit the Leave" onClick="validate()"
													style="width: 100%; text-align: center; position: center; font-size: 1.5rem;" />
											</div>
											<br> <br> <br>
										</div>
									</c:forEach>
									
								
								</form>
								<c:url value="Per_leave_apply.jsp" var="empUpdate">
	
									<c:param name="id" value="${id}"></c:param>
								
								</c:url>
								<!-- create form -->
								<% String empID = request.getParameter("id");%>
								
								<%@ page import=" java.sql.Connection"%>
		<%@ page import=" java.sql.DriverManager"%>
		<%@page import="java.sql.ResultSet"%>
		<%@page import="java.sql.Statement"%>
		<%@page import="java.sql.Connection"%>
<%-- 	<%	
		String job_id = request.getParameter("leaveID");
		String driver = "com.mysql.cj.jdbc.Driver";
		String connectionUrl = "jdbc:mysql://localhost:3306/sewwandi?useSSL=false";
		String userid = "root";
		String password = "11111";
		try {
		Class.forName(driver);
		} catch (ClassNotFoundException e) {
		e.printStackTrace();
		}
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		
		try{
			connection = DriverManager.getConnection(connectionUrl, userid, password);
			statement=connection.createStatement();
			String sql ="select * from  sewwandi.leave where date LIKE '"+year+"-"+month+"-%'";
			resultSet = statement.executeQuery(sql);
			
			int j = 0;
			
			while(resultSet.next()){
		%>
		 --%>

							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3"></div>
			</div>

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