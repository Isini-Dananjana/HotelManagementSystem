<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us & Privacy Policy</title>
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



header{
  background:#962C54;

}

header ul{
  display: flex;
  justify-content: flex-end;
  max-width: 100%;
  margin: 0 auto;
  padding: 0;
  width:200;
}

header ul li{
  list-style: none;
  position: relative;
  border-radius: 5px;
  padding: 10px 0;
  transition: 0.5s;
  box-sizing: border-box;
  border-right: 1px solid rgba(255,255,255,.2);
}

header ul li:hover{
  background: #de87a8;
}

header ul li:last-child{
  border-right: none;
}

header ul li a{
  text-decoration: none;
  padding: 0 20px;
  color: #fff;

}

header ul li ul{
  position: absolute;
  top: 45px;
  background: #962C54;
  left: 0;
  border-radius: 5px;
  display: block;
  width: 200px;
  transition: 0.1s;
  opacity: 0;
  visibility: hidden;
}

header ul li:hover ul{
  opacity: 1;
  visibility: visible;
}

header ul li ul li{
  border-right: none;
  border-bottom:  1px solid rgba(255,255,255,.2); 
}






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

@import url('https://fonts.googleapis.com/css?family=Poppins');


.bg{
	  margin: 0;

  padding: 0;

  display: flex;

  justify-content: center;

  align-items: center;

  min-height: 100vh;

  background: #003e46;

  font-family: 'Poppins', sans-serif;


}

.container {

  width: 1000px;

  display: flex;

  flex-wrap: wrap;

  justify-content: space-between;

}



.box {

  position: relative;

  width: 450px;

  height: 600px;

  background: #000;

  box-shadow: 0 30px 30px rgba(0,0,0,.5);

}



.box .imgBx {

  position: relative;

  top: 0;

  left: 0;

  width: 100%;

  height: 100%;

}



.box .imgBx img {

  position: absolute;

  top: 0;

  left: 0;

  width: 100%;

  height: 100%;

  object-fit: cover;

  transition: 0.5s;

}



.box:hover .imgBx img {

  opacity: 0;

}



.box .content {

  position: absolute;

  bottom: 20px;

  left: 10%;

  width: 80%;

  height: 60px;

  background: #fff;

  transition: 0.5s;

  overflow: hidden;



  padding: 15px;

  box-sizing: border-box;

}



.box:hover .content {

  width: 100%;

  height: 100%;

  bottom: 0;

  left: 0;

}



.box .content h3 {

  margin: 0;

  padding: 0;

  font-size: 20px;

}



.box .content p {

  margin: 10px 0 0;

  padding: 0;

  opacity: 0;

  line-height: 1.2em;

  transition: 0.5s;

  text-align: justify;

}



.box:hover .content p {

  opacity: 1;

  transition-delay: 0.5s;

}

</style>

</head>
<body>


	<header>
    <ul>
      <li><a href="customerloghome.jsp">Home</a></li>
      <li><a href="#">My Bookings</a>
          <ul>
                <li><a href="#">Rooms</a></li>
                <li><a href="#">Events</a></li>
          </ul>
      </li>
      <li><a href="#">Logout</a>
      
    </ul>
</header>
	 <br>
  			<center><h1><img src="img/bad.jpg" width="100px" height="100px"> HOTEL SEWWANDI & WEDDING CENTER <img src="img/bad.jpg" width="100px" height="100px"></h1></center>
		<br>
<div class="header">
    

  <div class="header-right">
 <a href="#">Rooms</a>
  <a href="#">Event Halls</a>
  <a href="#">Foods</a>
  <a href="#">Gallery</a>
  <a href="#">Contact Us</a>
 
  </div>
</div>

	

<br>



<div class="container">
	<div class="box">
		<div class="imgBx">
			<img src="img/hotel.jpg">
		</div>
		<div class="content">
			<b><h3>About Us</h3></b>
			
			<br>
		Sewwandi Hotel is located in a beautiful upcountry environment. When it comes to management, there is a welcoming staff with new ideas from manager to downstairs.
W.M Udaya Kumara who is the owner has been a giant in the field of photography for nearly three decades and later opened the Sewwandi Hotel.
By now  have a great reputation in the village and town for providing all the services , delicious food and accommodation you need for your wedding day.  Beautiful Mahaweli River are easily accessible by three wheelers for have a fun.We invite you to receive a friendly, efficient service for your wedding day as well as all festive occasions. 
			
		</div>
	</div>
	
	<div class="box">
		<div class="imgBx">
			<img src="img/privacy.jpg">
		</div>
		<div class="content">
			<b><h3>Privacy & Policy</h3></b>
			<br>We respect the privacy of all our customers and business partners, and treat personal information (personal data) provided by you to us as confidential. We know that you are concerned how information about you is collected, processed, used and stored, and we appreciate you trusting that we will do so with every due care and diligence.
			In order for us to operate effectively and provide you with the best experiences with our services, we may request and collect information about you, whether as hotel guests, loyalty programme members, web site visitors or you contacting us for any other purposes, that includes personal information that can identify you as an individual.
			Some of the personal information which you provide to us are considered "sensitive personal information"under the privacy and data protection laws in specific jurisdiction-such as personal information from which we can determine or infer an individual's racial or ethnic origin, health or biometric data. We only process sensitive personal information in such jurisdiction if and to the extent permitted or required by applicable law.
			Except where required by local laws, we do not knowingly collect personal information from our websites from any children or minors. As a parent or legal guardian, please do not allow your children or minors to submit personal information without your permission.
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