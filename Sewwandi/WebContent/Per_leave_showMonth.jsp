<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employees Leave</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/aye-styles.css">

 <script type="text/javascript">
	function validate() {

		
		var year = document.getElementById("year");
		var month = document.getElementById("month");
		
		if (year.value == "" ) {
			alert("Please enter  year!!!");
			year.style.border = "solid 3px red";
			return false;
		} if (month.value == "" ) {
			alert("Please enter  month!!!");
			month.style.border = "solid 3px red";
			return false;
		}  else {
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
		<div class="h1">Employees Leave Details</div>
	</center>
	<div class="wrapper">
		<div class="sidebar">
			<h5>hotel Sewwandi</h5>
			<center>
				<img src="img/logo.jpg" width="100px" height="100px">
			</center>
			<br>
			<ul>
				<li><a href="MangerHome.jsp"><i class="fa fa-home"></i>Home</a></li>
				<li><a href="Per_leave_applyEID.jsp">Leave Apply</a></li>
				<li><a href="Per_leave_edit.jsp">Edit existing leave
						details</a></li>
				<li><a href="Per_leave_showMonth.jsp">Permanent Employee Leave
						Details</a></li>
			</ul>

			<div class="social_media">
				<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
					class="fa fa-instagram"></i></a> <a href="#"><i
					class="fa fa-twitter"></i></a>
			</div>

		</div>
		<div class="main_content">
			<div class="bg-image" >


				<div class="container-fluid bg">
					<div class="row">
						<div class="col-md-3"></div>
						<div class="col-md-6 col-sm-12">
							<div class="panel-body">
<br><br><br><br><br><br>
									<form action="Per_leave_show.jsp" method="post" onsubmit="return validate()">
										<div class="form-group">
										
										
											
											<label
												style="color: white; font-weight: bold; font-size: 24px;">Enter the year and month to see the leave details</label>
												 <input type="number" class="form-control1" id="year"
												name="year" placeholder=" Enter the year" min="2000" max="2100"/>
												
												<input type="number" class="form-control1" id="month"
												name="month" placeholder=" Enter the month" min='01' max='12' />
												
												<center><input type="submit" class="submit_btn"
												value="OK"
												style="width: 50%; text-align: center; position:center; font-size: 1.0rem;" onclick="window.location.href='Per_leave_show.jsp'" /></center>
										</div>
										  
									</form>	
									<!--  <c:url value="searchLeave.jsp" var="leaveSer">
											  <c:param date="date" value="<script> document.getElementById("year") </script>" />
											    <c:param month="month" value="<script> document.getElementById("month") </script>" />
										</c:url>  -->

<br><br><br><br><br><br><br><br>
								
								
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