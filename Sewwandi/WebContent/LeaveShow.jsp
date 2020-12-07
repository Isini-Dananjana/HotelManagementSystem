<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Leave</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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

	<div class="h1">Leave apply for permanent Employee</div>

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
				<li><a href="#">Permanent Employee Leave Details</a></li>
			</ul>

			<div class="social_media">
				<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
					class="fa fa-instagram"></i></a> <a href="#"><i
					class="fa fa-twitter"></i></a>
			</div>

		</div>
		<div class="main_content">
		<div class="bg-image">

			 <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br> 
			
			<c:forEach var="emp" items="${leaveDetails}">
						
						<c:set var="leaveID" value="${emp.ID}" />
						<c:set var="name" value="${emp.name}" />
						<c:set var="id" value="${emp.empID}" />						
						<c:set var="desi" value="${emp.designation}" />
						<c:set var="date" value="${emp.date}" />
						<c:set var="type" value="${emp.type}" />
						<c:set var="descr" value="${emp.description}" />


						<!-- Internally calling  empLeaveBean class getName method -->
						<p  class="bg-text" >
							Leave ID   :${emp.ID}<br /> 
							Employee ID   :${emp.empID}<br /> 
							Name          :${emp.name}<br />
							Designation   :${emp.designation}<br /> 
							Date of Leave :${emp.date}<br />
							Type of Leave :${emp.type}<br /> 
							Description   :${emp.description}<br />

						</p>

						<br />
					
			</c:forEach>
					
					
	
	<c:url value="Per_leave_update.jsp" var="empUpdate">
	<c:param name="leaveID" value="${leaveID}"></c:param>
	<c:param name="name" value="${name}"></c:param>
	<c:param name="id" value="${id}"></c:param>
	<c:param name="desi" value="${desi}"></c:param>
	<c:param name="date" value="${date}"></c:param>
	<c:param name="type" value="${type}"></c:param>
	<c:param name="descr" value="${descr}"></c:param>
	
	
	</c:url>
	<br><br><br>
	<center><a href="${empUpdate}"> <input type="button" name="update"
		value="Update Leave details" id="update" class="submit_btn" style="position:absolute;bottom: 8px;right:40%;">	</a>
		
		<c:url value="Per_leave_delete.jsp" var="empdelete">
			<c:param name="leaveID" value="${leaveID}"></c:param>
			<c:param name="name" value="${name}"></c:param>
			<c:param name="id" value="${id}"></c:param>
			<c:param name="desi" value="${desi}"></c:param>
			<c:param name="date" value="${date}"></c:param>
			<c:param name="type" value="${type}"></c:param>
			<c:param name="descr" value="${descr}"></c:param>
			
		</c:url>
		
		
		<a href="${empdelete}"> <input type="button" name="delete"
		value="Delete Leave details" id="delete" class="submit_btn" style="position:absolute;bottom: 8px;right:20%;">	</a>
		
		</center>

	
				
		</div>
</div>
	</div>

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