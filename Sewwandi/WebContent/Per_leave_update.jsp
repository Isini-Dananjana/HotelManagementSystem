<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Apply Leave</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/aye-styles.css">


</head>
<body>

	<div class="header">
		<div class="header-right">
		 <a href="#">Hi Sam</a>
    <a href="customerhome.jsp">Log out</a>
		</div>
	</div>

	<div class="h1">Leave update for permanent Employee</div>

	<div class="wrapper">
		<div class="sidebar">

			<h5>hotel Sewwandi</h5>
			<center>
				<img src="img/logo.jpg" width="100px" height="100px">
			</center>
			<br>
			<ul>
				<li><a href="ManagerHome.jsp"><i class="fa fa-home"></i>Home</a></li>
				<li><a href="Per_leave_applyEID.jsp">Leave Apply</a></li>
				<li><a href="Per_leave_edit.jsp">Edit existing leave details</a></li>
				<li><a href="Per_leave_showMonth">Permanent Employee Leave Details</a></li>
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


							<!-- catch the details in passed by LeaveShow.jsp -->

							<%
								String leaveID = request.getParameter("leaveID");
								String empID = request.getParameter("id");
								String empName = request.getParameter("name");
								String desig = request.getParameter("desi");
								String date = request.getParameter("date");
								String type  = request.getParameter("type");
								String descr  = request.getParameter("descr");
							%>

							<form action="leaveUpdateServlet" method="post" class="add">

								<div class="form-group">
									<br>
									
									<div class="form-group">

										<label style="color: white;font-weight: bold;font-size: 24px;">Leave ID</label> <input type="text"
											class="form-control1" id="leaveID" name="leaveID"
											value="<%=leaveID%>" readonly />
									</div>
									
									<div class="form-group">

										<label style="color: white;font-weight: bold;font-size: 24px;">Employee Name</label> <input type="text"
											class="form-control1" id="L_Emp_name" name="L_Emp_name"
											value="<%=empName%>" readonly />
									</div>

									<div class="form-group">

										<label style="color: white;font-weight: bold;font-size: 24px;">Employee ID</label> <input type="text"
											class="form-control1" id="L_Emp_ID" name="L_Emp_ID"
											value="<%=empID%>" />
									</div>



									<label style="color: white;font-weight: bold;font-size: 24px;">Designation</label> <select size="0"
										class="form-control1" id="designation" name="designation">
										<option value="<%=desig%>"><%=desig%></option>
										<option value="Manager">Manager</option>
										<option value="Cook">Cook</option>
										<option value="waiter">waiter</option> 
										<option value="Receptionist">Receptionist</option>
										<option value="cleaning">cleaning</option>
									</select>


									<div class="form-group">
										<label style="color: white;font-weight: bold;font-size: 24px;">Date </label> <input type="date" class="form-control1"
											id="leaveDate" name="leaveDate" value="<%=date%>" />
									</div>

									<label style="color: white;font-weight: bold;font-size: 24px;">Leave Type</label> <select size="0"
										class="form-control1" id="LeaveType" name="LeaveType">
										<option value="<%=type%>"><%=type%></option>
										<option value="Half Day">Half Day</option>
										<option value="Full Day">Full Day</option>
									</select>

									<div class="form-group">
										<label style="color: white;font-weight: bold;font-size: 24px;">Description</label>
										<input type="text" class="form-control1" id="leaveDescription" name="leaveDescription" value="<%=descr%>"/>
									
									</div>

									<br>
									<div class="form-group">
										<input type="submit" class="submit_btn"
											value="Update the Leave"
											style="width: 100%; text-align: center; position: center; font-size: 1.5rem;" />
									</div>
									<br> <br> <br>
								</div>

									<c:url value="Per_leave_update.jsp" var="empUpdate">
											<c:param name="leaveID" value="${leaveID}"></c:param>
											<c:param name="name" value="${name}"></c:param>
											<c:param name="id" value="${id}"></c:param>
											<c:param name="desi" value="${desi}"></c:param>
											<c:param name="date" value="${date}"></c:param>
											<c:param name="type" value="${type}"></c:param>
											<c:param name="descr" value="${descr}"></c:param>
											
	
								</c:url>
			
							</form>
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