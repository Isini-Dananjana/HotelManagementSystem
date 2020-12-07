<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Home</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" /></script>


<script type="text/javascript">
  
  function validate()
  {
    var equipmenttype = document.getElementById("equipmenttype");
    var equipmentname = document.getElementById("equipmentname");
    var equipmentamount = document.getElementById("equipmentamount");
    var equipmentalertamount = document.getElementById("equipmentalertamount");
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
      else if(equipmentalertamount.value.trim() == "" ) {

          alert("Please enter expected amount without warning alert!");
          equipmentalertamount.style.border="solid 3px red";
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
.header-left {
  float: left;
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
background-color: #fff;
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
  width: 300%;
  height: auto;
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
  left: -100%;
}

#slider-image-3:target ~ .image-container{
  left: -200%;
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
}
.card{
  border-radius: 10px;
  -webkit-box-shadow: -1px 9px 40px -12px rgba(0,0,0,0.75);
  -moz-box-shadow: -1px 9px 40px -12px rgba(0,0,0,0.75);
  box-shadow: -1px 9px 40px -12px rgba(0,0,0,0.75);
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

  .row:after {
  display: table;
  clear: both;
}
.column {
  float: left;
  width: 50%;
  padding: 0;
  height: 100%;
}

.mySlides {display: none;}
img {vertical-align: middle;}

.slideshow-container {
  max-width: 100%;
  position: relative;
  margin: auto;
}


.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@media only screen and (max-width: 1920px) {
  .text {font-size: 11px}
}


</style>

</head>
<body>


<div class="header">
<div class="header-left">
    <a href="customerhome.jsp">Home</a>
    </div>
  <div class="header-right">
  <a href="register.jsp">Register</a>
    <a href="login.jsp">Login</a>
  </div>
</div>
	 <br>
  			<center><h1><img src="img/media/rlogo.jpeg" width="100px" height="100px"> HOTEL SEWWANDI & WEDDING CENTER <img src="img/media/rlogo.jpeg" width="100px" height="100px"></h1></center>
		<br>
<div class="header">
    

  <div class="header-right">
  <a href="B_Check.jsp">Rooms</a>
  <a href="bcheckAvailability.jsp">Event Halls</a>
  <a href="#">Foods</a>
 
   <a href="galleryhome.jsp">Gallery</a>
    <a href="#">Contact Us</a>
  </div>
</div>

	<br>
	<br>
<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 6</div>
  <img src="img/media/3.jpg" style="width:100%">
  <div class="text">Hotel Sewwandi</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 6</div>
  <img src="img/media/9.jpg" style="width:100%">
  <div class="text">Hotel Sewwandi</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 6</div>
  <img src="img/media/4.jpg" style="width:100%">
  <div class="text">Hotel Sewwandi</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">4 / 6</div>
  <img src="img/media/14.jpg" style="width:100%">
  <div class="text">Hotel Sewwandi</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">5 / 6</div>
  <img src="img/media/10.jpg" style="width:100%">
  <div class="text">Hotel Sewwandi</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">6 / 6</div>
  <img src="img/media/7.jpg" style="width:100%">
  <div class="text">Hotel Sewwandi</div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span>
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span>  
</div>

	<br>
	<br>
<div class="container">


      <div class="col-1-lg ml-11">
        <div class="card" style="width:100%; height:300px;">
          <div class="container-fluid">
            <div class="row">
              <div class="col-md-6 col-sm-12 ">
                    <img src="img/media/rdeluxe-triple-room_orig.jpg" style="width: 100%;height: 300px;">
              </div>
              <div class="col-md-6 col-sm-12 ">
                <br>
                    <h2 style="color: #000;"><center><u><b>Rooms</center></u></b></h2>
                <br>
                <h5>
                  "These rooms have been recently refurbished and are fully ensuite with toilet, shower and bath and toileteries. Also available in the room is  Flat Screen TV, and Free Wifi. Iron and ironing board available upon request.<br>Sewwandi Hotel offers every comfort to make your stay a memorable one."
                </h5>
                <br>
                <center><BUTTON class="btn btn-primary"><a href="B_Check.jsp" style="color: #fff;">Go to Rooms</a></BUTTON></center>
              </div>
            </div>
          </div>
        </div>
      </div>

     <br>


       <div class="col-1-lg ml-11">
        <div class="card" style="width:100%; height:300px;">
          <div class="container-fluid">
            <div class="row">
              
              <div class="col-md-6 col-sm-12">
                <br>
                    <h2 style="color: #000;"><center><u><b>Events</center></u></b></h2>
                <br>
                <h5>
                  This is the place where you can manage the Inventory details . You can Add , Delete & Edit every equipment in the hotel from here. Also you can Update and Remove quantity of every equipment . As well as You can review the details of every equipment in the hotel.
                </h5>
                <br>
                <center><BUTTON class="btn btn-primary"><a href="bcheckAvailability.jsp" style="color: #fff;">Go to Event Halls</a></BUTTON></center>
              </div>
              <div class="col-md-6 col-sm-12">
                    <img src="img/media/rem.jpg" style="width: 100%;height: 300px;">
              </div>
            </div>
          </div>
        </div>
      </div>

     <br>
 <div class="col-1-lg ml-11">
        <div class="card" style="width:100%; height:300px;">
          <div class="container-fluid">
            <div class="row">
              <div class="col-md-6 col-sm-12">
                    <img src="img/media/rfm.jpg" style="width: 100%;height: 300px;">
              </div>
              <div class="col-md-6 col-sm-12">
                <br>
                    <h2 style="color: #000;"><center><u><b>Foods</center></u></b></h2>
                <br>
                  This is the place where you can manage the Inventory details . You can Add , Delete & Edit every equipment in the hotel from here. Also you can Update and Remove quantity of every equipment . As well as You can review the details of every equipment in the hotel.
                </h5>
                <br>
                <br>
                <center><BUTTON class="btn btn-primary"><a href="#" style="color: #fff;">Go to Foods</a></BUTTON></center>
              </div>
            </div>
          </div>
        </div>
      </div>

     <br>


       <div class="col-1-lg ml-11">
        <div class="card" style="width:100%; height:300px;">
          <div class="container-fluid">
            <div class="row">
              
              <div class="col-md-6 col-sm-12">
                <br>
                    <h2 style="color: #000;"><center><u><b>Gallery</center></u></b></h2>
                <br>
                <h5>
                  This is the place where you can manage the Inventory details . You can Add , Delete & Edit every equipment in the hotel from here. Also you can Update and Remove quantity of every equipment . As well as You can review the details of every equipment in the hotel.
                </h5>
                <br>
                <center><BUTTON class="btn btn-primary"><a href="galleryhome.jsp" style="color: #fff;">Go to Gallery</a></BUTTON></center>
              </div>
              <div class="col-md-6 col-sm-12">
                    <img src="img/media/remp.jpg" style="width: 100%;height: 300px;">
              </div>
            </div>
          </div>
        </div>
      </div>

    </div>

  <br>
  <br>
  
  <script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
  
<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000);
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
          <h2><a href="AboutUs.jsp">About Us</a></h2>
          <br>
          <p>Hotel "Sewwandi" is located in a beautiful up country environment  see more..<a href="AboutUs.jsp">About Us</a><p>
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
               <li><a href="#">Tel - 0777 251 804</a></li>
               <li><a href="AboutUs.jsp">Privacy & Terms</a></li>
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