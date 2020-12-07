<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Check Hall Availability</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/stylek.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" /></script>


<script type="text/javascript">
  
  function validate()
  {
  
    var eventdate = document.getElementById("eventdate");

     
      if(eventdate.value.trim() == ""  ) {

          alert("Please select the date!");
          equipmentdate.style.border="solid 3px red";
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
    <a href="#">Home</a>
    <a href="#">Register</a>
    <a href="#">Login</a>
  </div>
</div>

        <br>
  			<center><h1><img src="img/bad.jpg" width="100px" height="100px"> HOTEL SEWWANDI & WEDDING CENTER <img src="img/bad.jpg" width="100px" height="100px"></h1></center>
		<br>
        <div class="h1">Hall Reservations</div>

<%-- <div class="wrapper">
	<div class="sidebar">

		<h5>hotel Sewwandi</h5>
    <center><img src="img/bad.jpg" width="100px" height="100px" ></center>
    <br> --%>
	<!-- 	<ul>
			<li><a href="customerhome.jsp"><i class="fa fa-home"></i>Home</a></li>
			<div class="dropdown">
			 <li><a href = "#"><i class="fa fa-edit"><button class="dropbtn"></button></i>My Bookings</button></a></li>
			  <div class="dropdown-content">
			    <a href="selectbooking.jsp">My Events</a>
			    <a href="#">My Room Bookings</a>
			  </div>
			</div>
			<li><a href="checkHallAvailability.jsp"><i class="material-icons">&#xe7f1;</i>Event Reservation</a></li>
			 <li><a href="#"><i class="fa fa-bed"></i>Room Reservation</a></li>
		</ul> -->

		<div class="social_media">
			<a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-instagram"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
		</div>

	</div>
	<div class="main_content">
	
	<div class="container-fluid bg">
   <div class="row">
  <div class="col-md-3"></div>
  <div class="col-md-6 col-sm-12">

   
 <div class="panel-body">
  <div id="bRight">
	 	<div id="availability" >
	 	  <form action="bAvailableHalls.jsp" method="post">
	 	
	 		<div id="check">
		 		<b >Enter Event Date</b><br>
		 		<input type="date" name="eventdate" class="form-control" id="eventdate">
	 			<br>
	 		<button type="submit"  name="checkAvailability" style="background-color:#e7e7e7; padding: 10px 30px"><b>Check Availability</b></button>
	 		</div>
	 		 </form>
	 		     
	   </div>
	 </div>
	 <div class="row">
  <div class="column">
    <img src="img/hall1.jpg" alt="hall 1" style="width:200px; height:200px">
    <figcaption>Hall No 1<br>
    			Maximum guests 100<br> price LKR 10,000</figcaption>
  </div>
  <div class="column">
    <img src="img/hall2.jpg" alt="hall 2" style="width:200px; height:200px">
     <figcaption>Hall No 2<br>
    			Maximum guests 200<br> price LKR 25,000</figcaption>
  </div>
  <div class="column">
    <img src="img/hall3.jpg" alt="hall 3" style="width:200px; height:200px">
     <figcaption>Hall No 3<br>
    			Maximum guests 350<br> price LKR 30,000</figcaption>
  </div>
</div>
 <br><br><br><br><br><br><br><br>
  </div>
 </div>
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
            <p>Please follow us on Social media Profiles in order to keep updated.</p>
            <br>
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-instagram"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
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
      <center><p>&copy; Hotel Management.com | Designed By KDY04 Developers (Pvt) Ltd.</p></center>
  </div>

</footer>


</html>