<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hall Booking</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/stylek.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" /></script>


<script type="text/javascript">
  
  function validate()
  {
	  
    var eventtype = document.getElementById("eventtype");
   var numberofguests = document.getElementById("numberofguests");
    var eventdate = document.getElementById("eventdate");
    var eventdescription = document.getElementById("eventdescription");
    var photographer = document.getElementById("photographer");
    var decorator = document.getElementById("decorator");
    var makeupartist = document.getElementById("makeupartist");
    
      
      if(eventtype.value.trim() == "" ) {

          alert("Please select an event type!");
          eventtype.style.border="solid 3px red";
          return false;
        }  
      
      else if(numberofguests.value.trim() == "" ) {

          alert("Please enter number of guests!");
          numberofguests.style.border="solid 3px red";
          return false;
        }
      else if(eventdate.value.trim() == ""  ) {

          alert("Please select the date!");
          eventdate.style.border="solid 3px red";
          return false;
        }
      else if(eventdescription.value.trim() == "" ) {

          alert("Please enter a small description!");
          eventdescription.style.border="solid 3px red";
          return false;
        }
        else if(photographer.value.trim() == "" ) {

          alert("Please select a photographer!");
          photographer.style.border="solid 3px red";
          return false;
        }
         else if(decorator.value.trim() == "" ) {

          alert("Please select decorator!");
          decorator.style.border="solid 3px red";
          return false;
        }
         else if(makeupartist.value.trim() == "" ) {

          alert("Please select a makeupartist!");
          makeupartist.style.border="solid 3px red";
          return false;
        }
        
        
      
      else{
    	  
    	  "successfully inserted!!";
       
          true;
      }
  }


</script>  



</head>
<body>

<div class="header">
  <div class="header-right">
    <a href="#">Home</a>
 
    <a href="login.jsp">Logout</a>
  </div>
</div>

        <br>
  			<center><h1><img src="img/bad.jpg" width="100px" height="100px"> HOTEL SEWWANDI & WEDDING CENTER <img src="img/bad.jpg" width="100px" height="100px"></h1></center>
		<br>
        <div class="h1">Hall Reservations</div>

<div class="wrapper">
	<div class="sidebar">

		<h5>hotel Sewwandi</h5>
    <center><img src="img/bad.jpg" width="100px" height="100px" ></center>
    <br>
		<ul>
			<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
			<div class="dropdown">
			 <li><a href = "#"><i class="fa fa-edit"><button class="dropbtn"></button></i>My Bookings</button></a></li>
			  <div class="dropdown-content">
			    <a href="selectbooking.jsp">My Events</a>
			    <a href="#">My Room Bookings</a>
			  </div>
			</div>
			<li><a href="checkHallAvailability.jsp"><i class="material-icons">&#xe7f1;</i>Event Reservation</a></li>
			 <li><a href="#"><i class="fa fa-bed"></i>Room Reservation</a></li>
			<!--<li><a href="#"><i class="fa fa-cut"></i>Remove existing equipment</a></li>
			<li><a href="#"><i class="fa fa-edit"></i>Edit equipment details</a></li> -->
		</ul>

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
 <form action="insert" method="POST" onsubmit="return validate()" action="<%= request.getContextPath() %>/#">
 
 	 <div class="form-group">
    	<label for="customername">Customer Name</label>
    	<input type="text" class="form-control"  id="customername" name="customername" value="<%=session.getAttribute("fname")%> <%=session.getAttribute("lname")%>">
    </div>
    
       	<div class="form-group">
    	<label for="hallno">Hall no</label>
    	<input type="number" class="form-control" pattern="numbers" id="hallno" name="hallno" min="1" placeholder=""/>
   		 </div>
    
    
    <div class="form-group">
    	<label for="eventdate">Event Date</label>
    	<input type="date" class="form-control"  id="eventdate" name="eventdate" placeholder="Enter event date">
    </div>
    
     <div class="form-group">
    	<label for="eventtime">Event Time</label>
    	<input type="time" class="form-control"  id="eventtime" name="eventtime" placeholder="Enter event time">
    </div>
    
    <div class="form-group">
      <br>
    <label for="eventtype">Event type</label>
    <select size = "0" class="form-control" id="eventtype" name="eventtype" placeholder="Select an event type">
    	  <option value="#">--Select an event type--</option>
      	<option value="Wedding">Wedding</option>
      	<option value="Party">Party</option>
        <option value="Meetings">Meetings</option>
    </select>
    </div>

    <div class="form-group">
    	<label for="eventdescription">Event Description</label>
    	<textarea class="form-control" style="width:100%; height:100px;" id="eventdescription" name="eventdescription" placeholder="Enter a small description"></textarea>
    </div>

    <div class="form-group">
    	<label for="numberofguests">Number of guests</label>
    	<input type="number" class="form-control" pattern="numbers" id="numberofguests" name="numberofguests" min="1" placeholder="Enter the number of guests"/>
    </div>

    <div class="form-group">
      <br>
    <label for="photographer">Photographer</label>
    <select size = "0" class="form-control" id="photographer" name="photographer" placeholder="Select a photographer">
    	  <option value="#">--Select a photographer--</option>
    	 <option value="none">none</option> 
      	<option value="Thiloka">Thiloka(0772904562) LKR 20,000</option>
      	<option value="Lakindu">Lakindu Sandeep(0771809234) LKR 35,000</option>
        <option value="Madusanka">Madusanka Herath(0713343342)LKR 30,000</option>
    </select>
    </div>

  	<div class="form-group">
      <br>
    <label for="decorator">Decorator</label>
    <select size = "0" class="form-control" id="decorator" name="decorator" placeholder="Select a decorator">
    	  <option value="#">--Select a decorator--</option>
    	  <option value="none">none</option>
      	<option value="Kasun">Kasun (Wanamal ) LKR 50,000</option>
      	<option value="Dilhara"> Dilhara (Lassana Flora) LKR 35,000</option>
        <option value="Kapila"> Kapila (Araliya Flora ) LKR 25,000</option>
    </select>
    </div>    
     <div class="form-group">
      <br>
    <label for="makeupartist">Makeup Artist</label>
    <select size = "0" class="form-control" id="makeupartist" name="makeupartist" placeholder="Select a makeup artist">
    	  <option value="#">--Select a makeup artist--</option>
    	 	<option value="none">none</option>
	      	<option value="tishi"> tishi (salon roots) LKR 20,000</option>
	      	<option value="Ann">Ann (Lakshi salon)LKR 15,000</option>
	        <option value="Nihal"> Nihal (The flower bride) (0718125074) LKR25,000</option>
    </select>
    </div>
    <br>
     
 
   <input type="submit" class="btn btn-primary" value="submit" style="width: 30%; text-align: center;" />

  
</form>
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