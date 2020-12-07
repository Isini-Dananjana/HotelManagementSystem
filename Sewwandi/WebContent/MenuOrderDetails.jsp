<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu Order Details</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel = "stylesheet" href="css/stylek.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" /></script>


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
  
    <a href="login.jsp">Logout</a>
  </div>
</div>

        <br>
  			<center><h1><img src="img/bad.jpg" width="100px" height="100px"> HOTEL SEWWANDI & WEDDING CENTER <img src="img/bad.jpg" width="100px" height="100px"></h1></center>
		<br>
        <div class="h1">Menu Reservation</div>

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

 	<form style="font-size:20px;">
 	<table>
 	<c:forEach var="menu" items="${menuDetails}">
 	
 	<c:set var="menuOrderId" value="${menu.menuOrderId}"/>
 	<c:set var="customername" value="${menu.customername}"/>
 	<c:set var="menuId" value="${menu.menuId}"/>
 	<c:set var="quantity" value="${menu.quantity}"/>
 	<c:set var="menuPrice" value="${menu.menuPrice}"/>
 	 <c:set var="amount" value="${menu.amount}"/>
 	 
 	<%--<c:set var="eventtype" value="${eve.eventtype}"/>
 	<c:set var="eventdes" value="${eve.eventdes}"/>
 	<c:set var="noguests" value="${eve.noguests}"/>
 	<c:set var="photo" value="${eve.photo}"/>
 	<c:set var="pphone" value="${eve.pphone}"/>
 	<c:set var="deco" value="${eve.deco}"/>
 	<c:set var="dphone" value="${eve.dphone}"/>
 	<c:set var="makeup" value="${eve.makeup}"/>
 	<c:set var="mphone" value="${eve.mphone}"/>
 	<c:set var="price" value="${eve.price}"/>
 	<c:set var="dprice" value="${eve.dprice}"/>
 	<c:set var="mprice" value="${eve.mprice}"/>
 	<c:set var="pprice" value="${eve.pprice}"/>
 	<c:set var="tot" value="${eve.tot}"/> --%>
 
 
     	<tr>
   		<td>Menu Order Id &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</td>
   		<td>${menu.menuOrderId}</td>
   		</tr>
   	 	
   		<tr>
   		<td>Customer name &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</td>
   		<td> ${menu.customername}</td>
   		</tr>
   		
   		<tr>
   		<td>Menu  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</td>
   		<td>${menu.menuId}</td>
   		</tr>
   		
   		<tr>
   		<td>Number of servings &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</td>
   		<td>${menu.quantity}</td>
   		</tr>
   		<tr>
   		<td>Menu Price &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</td>
   		<td>${menu.menuPrice}</td>
   		</tr>
   		
   		<tr>
   		<td>Amount &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</td>
   		<td>${menu.amount}</td>
   		</tr>
   		
   		<%-- <tr>
   		<td>Event time:&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</td>
   		<td>${eve.eventtime}</td>
   		</tr>
   		
   		<tr>
   		<td>Event type:&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</td>
   		<td>${eve.eventtype}</td>
   		</tr>
   		
   		<tr>
   		<td>Event description:&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</td>
   		<td>${eve.eventdes}</td>
   		</tr>
   		
   		<tr>
   		<td>Number of guests:&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</td>
   		<td>${eve.noguests}</td>
   		</tr>
   		
   		<tr>
   		<td>Photographer:&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</td>
   		<td>${eve.photo}</td>
   		</tr>
   		
   		<tr>
   		<td>Contact Photographer:&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</td>
   		<td>${eve.pphone}</td>
   		</tr>
   		
   		<tr>
   		<td>Decorator:&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</td>
   		<td>${eve.deco}</td>
   		</tr>
   		
   		<tr>
   		<td>Contact Decorator:&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</td>
   		<td>${eve.dphone}</td>
   		</tr>
   	
   		<tr>
   		<td>Makeup Artist:&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</td>
   		<td>${eve.makeup}</td>
   		</tr>
   		
   		<tr>
   		<td>Contact Makeup Artist:&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</td>
   		<td>${eve.mphone}</td>
   		</tr>
   		
   		<tr>
   		<td>Hall Price:&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</td>
   		<td>${eve.price}</td>
   		</tr>
   		
   			<tr>
   		<td>Decorator Price:&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</td>
   		<td>${eve.dprice}</td>
   		</tr>
   		
   			<tr>
   		<td>Makeup Price:&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</td>
   		<td>${eve.mprice}</td>
   		</tr>
   		
   			<tr>
   		<td>Photographer Price:&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</td>
   		<td>${eve.pprice}</td>
   		</tr>
   		
   			<tr>
   		<td>Total Amount:&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</td>
   		<td>${eve.tot}</td>
   		</tr>
   		
   		
    --%>
  
 	
 	
 	</c:forEach>

</table>
<a href="form2.jsp">
<input type="button"  class="button confirm" name="confirm" value="Confirm">
</a>

<c:url value="UpdateMenuOrder.jsp" var="updatemenuorder">
<c:param name="menuOrderId" value="${menuOrderId}"/>
<c:param name="customername" value="${customername}"/>
<c:param name="menuId" value="${menuId}"/>
<c:param name="quantity" value="${quantity}"/>
<%-- <c:param name="eventtime" value="${eventtime}"/>
<c:param name="eventtype" value="${eventtype}"/>
<c:param name="eventdes" value="${eventdes}"/>
<c:param name="noguests" value="${noguests}"/>
<c:param name="photo" value="${photo}"/>
<c:param name="deco" value="${deco}"/>
<c:param name="makeup" value="${makeup}"/> --%>
</c:url>



<%-- <a href="${updatemenuorder}">
<input type="button" class="button button2" name="update" value="Update">
</a> --%>
<!--  <input type ="button" name="update" value="update booking">-->

<%-- <c:url value="DeleteEvent.jsp" var="deletebooking">
<c:param name="eventId" value="${eventId}"/>
<c:param name="customername" value="${customername}"/>
<c:param name="hallno" value="${hallno}"/>
<c:param name="eventdate" value="${eventdate}"/>
<c:param name="eventtime" value="${eventtime}"/>
<c:param name="eventtype" value="${eventtype}"/>
<c:param name="eventdes" value="${eventdes}"/>
<c:param name="noguests" value="${noguests}"/>
<c:param name="photo" value="${photo}"/>
<c:param name="deco" value="${deco}"/>
<c:param name="makeup" value="${makeup}"/>
</c:url>

<a href="${deletebooking}">
<input type="button" class="button button3" name="cancel" value="Cancel">
</a>
 --%>
 </form>
 <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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