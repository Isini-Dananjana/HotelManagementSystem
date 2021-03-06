<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Booking Details</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel = "stylesheet" href="css/stylek.css">

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
          equipmentamount.style.border="solid 3px red";
          return false;
        }
      else if(eventdate.value.trim() == ""  ) {

          alert("Please select the date!");
          numberofguests.style.border="solid 3px red";
          return false;
        }
      else if(eventdescription.value.trim() == "" ) {

          alert("Please enter a small description!");
          eventdescription.style.border="solid 3px red";
          return false;
        }
        else if(photographer.value.trim() == "" ) {

          alert("Please enter Equipment name!");
          photographer.style.border="solid 3px red";
          return false;
        }
         else if(decorator.value.trim() == "" ) {

          alert("Please enter Equipment name!");
          decorator.style.border="solid 3px red";
          return false;
        }
         else if(makeupartist.value.trim() == "" ) {

          alert("Please select a makeupartist!");
          makeupartist.style.border="solid 3px red";
          return false;
        }
        
        
      
      else{
       
          true;
      }
  }


</script>  

<style type="text/css">

*{color:#000;}

.header {
  overflow: hidden;
  background:#962C54;
  padding: 0 0;
}

.header a {
  float: left;
  color: #fff;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px; 
  line-height: 25px;
  border-radius: 4px;
}



.header a:hover {
  background: #de87a8;
}

.header-right {
  float: right;
}

@media screen and (max-width: 480px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
  }
  
  .header-right {
    float: none;
  }

    h1 img {
    float: none;
    display: block;
    text-align: center;
  }

}


h1{
	
	font-family: 'Red Rose';
	font-weight: bold;
	font-style: oblique;
}
 h1 img{
 	border-image: round;
 }


.h1{
	font-family: "Times New Roman", Times, serif;
	font-weight: 100px;
	text-align: center;
	background: #962C54;
	font-transform: uppercase;
	color: #fff;
}

.bg{background:url('img/i2.jpg') no-repeat;
  width:100%;
  height:100%;
}

.add{
border-radius: 5px;
padding:10px 10px;
margin-top:20px;
margin-bottom:20px;
-webkit-box-shadow: -5px 2px 62px 8px rgba(0,0,0,0.75);
-moz-box-shadow: -5px 2px 62px 8px rgba(0,0,0,0.75);
box-shadow: -5px 2px 62px 8px rgba(0,0,0,0.75);
height: auto;
}


.slide-container{
  width: 1600px;
  height: 450px;
  margin-left: auto;
  margin-right: auto;
  overflow: hidden;
  text-align: center;

}

.image-container{
  width: 4800px;
  height: 900px;
  position: relative;
  transition: left 2s;
  -webkit-transition:left 2s;
  -moz-transition:left 2s;
  -o-transition:left 2s;
}

.slider-image{
  float: left;
  margin: 0px;
  padding: 0px;
}

.button-container{
  top: -20px;
  position: relative;
}


.slider-button{
  display: inline-block;
  height: 10px;
  width:10px;
  border-radius: 5px;
  background-color: #fff;
}

#slider-image-1:target ~ .image-container{
  left: 0px;
}

#slider-image-2:target ~ .image-container{
  left: -1600px;
}

#slider-image-3:target ~ .image-container{
  left: -3200px;
}


.footer-top{
  background: #631d38;
  padding: 20px 0;
}

h2{
  color: #fff;
}

p{
  color: #fff;
}

.segment-one h2:before{
  content: '|';
  color: #c65039;
  padding-right: 10px;
}

.segment-two ul{
  margin: 0;
  padding: 0;
  list-style: none;
}
.segment-two h2:before{
  content: '|';
  color: #c65039;
  padding-right: 10px;
}

.segment-two ul li{
  border-bottom: 1px solid rgba(255,255,255,0.3);
  line-height: 40px;  
}
.segment-two ul li a{
  color: #fff;
  text-decoration: none;
}
.segment-three h2:before{
  content: '|';
  color: #c65039;
  padding-right: 10px;
}
.segment-three a{
  background: black;
  width: 40px;
  height: 40px;
  display: inline-block;
  border-radius: 50%;
}
.segment-three a i{
  font-size: 20px;
  color: #fff;
  padding: 10px 12px;
}

.segment-four ul{
  margin: 0;
  padding: 0;
  list-style: none;
}
.segment-four h2:before{
  content: '|';
  color: #c65039;
  padding-right: 10px;
}

.segment-four ul li{
  border-bottom: 1px solid rgba(255,255,255,0.3);
  line-height: 40px;  
}
.segment-four ul li a{
  color: #fff;
  text-decoration: none;
}

.footer-bottom{
  background: #280b16;
  padding: 5px 0;
  color:#fff;
}



		*{
			margin: 0;
			padding: 0;
			box-sizing: border-box;
			list-style: none;
			text-decoration: none;
			font-family: "Times New Roman", Times, serif;
		}

		.wrapper{
			display: flex;
			position: relative;
		}
		.wrapper .sidebar{
			position: absolute;
			width: 250px;
			height: 100%;
			background: #962C54;
			padding: 30px 0;
		}
		.wrapper .sidebar h5{
			color: #fff;
			text-transform: uppercase;
			text-align: center;
			margin-bottom: 30px;
		}
		.wrapper .sidebar ul li{
			padding: 15px;
			border-bottom: 1px solid rgba(0,0,0,0.05);
			border-top: 1px solid rgba(225,225,225,0.05);
		}
		.wrapper .sidebar ul li a{
			color: #fff;
			display: block;
		}
		.wrapper .sidebar ul li a .fa{
			width: 25px;
		}
		.wrapper .sidebar ul li i{
			color: #fff;
		}
		.wrapper .sidebar ul li :hover i{
			color: #000;
		}
		.wrapper .sidebar ul li:hover{
			background: #de87a8;
		}
		.wrapper .sidebar ul li:hover a{
			color: #000;
		}
		.wrapper .sidebar .social_media{
			position: absolute;
			bottom: 5px;
			left: 50%;
			transform: translateX(-50%);
			display: flex;
		}
		.wrapper .sidebar .social_media a{
			display: block;
			width: 40px;
			height: 40px;
			line-height: 40px;
			text-align: center;
			margin: 0 15px;
			color: #fff; 
			border-top-right-radius: 5px;
			border-top-left-radius: 5px;
		}
		.wrapper .siderbar .social_media a i{
			color: #fff;
		}
		.wrapper .main_content{
			width: 100%;
			margin-left: 250px;
		}

</style>

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

<div class="wrapper">
	<div class="sidebar">

	<h5>hotel Sewwandi</h5>
    <center><img src="img/bad.jpg" width="100px" height="100px" ></center>
    <br>
		<ul>
			<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
			<div class="dropdown">
			<li><a href = "#"><i class="fa fa-edit"><button class="dropbtn"></button></i>My Bookings</a></li>
			  	<div class="dropdown-content">
			    	<a href="selectbooking.jsp">My Events</a>
			    	<a href="#">My Room Bookings</a>
			 	</div>
			 </div>
			 <li><a href="checkHallAvailability.jsp"><i class="material-icons">&#xe7f1;</i>Event Reservation</a></li>
			 <li><a href="#"><i class="fa fa-bed"></i>Room Reservation</a></li>
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
     <%
String eventId = request.getParameter("eventId");
String customername = request.getParameter("customername");
String hallno = request.getParameter("hallno");
String eventdate = request.getParameter("eventdate");
String eventtime = request.getParameter("eventtime");
String eventtype = request.getParameter("eventtype");
String eventdes = request.getParameter("eventdes");
String noguests = request.getParameter("noguests");
String photo = request.getParameter("photo");
String deco = request.getParameter("deco");
String makeup = request.getParameter("makeup");
%>

<form action = "update" method="post">

 <div class="form-group">
    	<label for="eventId">Event ID</label>
    	<input type="text" class="form-control"  id="eventId" name="eventId" value="<%=eventId%>" >
    </div>

 <div class="form-group">
    	<label for="customername">Customer Name</label>
    	<input type="text" class="form-control"  id="customername" name="customername" value="<%=customername %>" >
    </div>
    
       	<div class="form-group">
    	<label for="hallno">Hall no</label>
    	<input type="number" class="form-control" pattern="numbers" id="hallno" name="hallno" min="1" value="<%=hallno%>"/>
   		 </div>
    
    
    <div class="form-group">
    	<label for="eventdate">Event Date</label>
    	<input type="date" class="form-control"  id="eventdate" name="eventdate" value="<%=eventdate%>">
    </div>
    
     <div class="form-group">
    	<label for="eventtime">Event Time</label>
    	<input type="time" class="form-control"  id="eventtime" name="eventtime" value="<%=eventtime%>">
    </div>
    
    <div class="form-group">
      <br>
    <label for="eventtype">Event type</label>
    <select size = "0" class="form-control" id="eventtype" name="eventtype" value="<%=eventtype%>" >
    <option value="<%=eventtype%>"><%=eventtype%></option>
      	<option value="Wedding">Wedding</option>
      	<option value="Party">Party</option>
        <option value="Meetings">Meetings</option>
    </select>
    </div>

    <div class="form-group">
    	<label for="eventdescription">Event Description</label>
    	<textarea class="form-control" style="width:100%; height:100px;" id="eventdescription" name="eventdescription" value="<%=eventdes%>"><%=eventdes%></textarea>
    </div>

    <div class="form-group">
    	<label for="numberofguests">Number of guests</label>
    	<input type="number" class="form-control" pattern="numbers" id="numberofguests" name="numberofguests" min="1" value="<%=noguests%>"/>
    </div>

    <div class="form-group">
      <br>
    <label for="photographer">Photographer</label>
    <select size = "0" class="form-control" id="photographer" name="photographer" value="<%=photo%>"  >
    <option value="<%=photo%>"><%=photo%></option>
    	 <option value="none">none</option> 
      	<option value="Thiloka">Thiloka Lakshan(0772904562) LKR 20,000</option>
      	<option value="Lakindu">Lakindu Sandeep(0771809234) LKR 35,000</option>
        <option value="Madusanka">Madusanka Herath(0713343342)LKR 30,000</option>
    </select>
    </div>

  	<div class="form-group">
      <br>
    <label for="decorator">Decorator</label>
    <select size = "0" class="form-control" id="decorator" name="decorator" >
    <option value="<%=deco%>"><%=deco%></option>
   	  <option value="none">none</option>
      	<option value="Kasun">Kasun (Wanamal ) LKR 50,000</option>
      	<option value="Dilhara"> Dilhara (Lassana Flora) LKR 35,000</option>
        <option value="Kapila"> Kapila (Araliya Flora ) LKR 25,000</option>
    </select>
    </div>
    
     <div class="form-group">
      <br>
    <label for="makeupartist">Makeup Artist</label>
    <select size = "0" class="form-control" id="makeupartist" name="makeupartist">
    		<option value="<%=makeup%>"><%=makeup%></option>
    	  	<option value="none">none</option>
	      	<option value="tishi"> tishi (salon roots) LKR 20,000</option>
	      	<option value="Ann">Ann (Lakshi salon)LKR 15,000</option>
	        <option value="Nihal"> Nihal (The flower bride) (0718125074) LKR25,000</option>
    </select>
    </div>
    
<button class="button button2" name="update">Update</button>


</form>


 <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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