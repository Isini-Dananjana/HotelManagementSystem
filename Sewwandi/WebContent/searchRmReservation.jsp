
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page import="java.sql.*" %> 
	<%@ page import="java.io.*" %> 
	<%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>
	
<%

String checkIn = request.getParameter("checkIn");
String checkOut = request.getParameter("checkOut");

String roomReservationId = request.getParameter("roomReservationId");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "sewwandi";
String userid = "root";
String password = "isini123";
try {
Class.forName(driver);
} 

catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Results</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/util.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" /></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script type="text/javascript" src="mytable.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">




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
	font-size:27px;
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
.footer-top{

	
}
.btn-block{

width:100%;
align:center;
}
.border{
  width:55%;
}
.h4{
	font-family: "Times New Roman", Times, serif;
	
	text-align: center;
	font-transform: uppercase;
	font-size:20px;
}
.pt-3-half {
padding-top: 1.4rem;
}
.btn-success{

width:20%

}
.search {
  width: 40%;
  position: relative;
  display: flex;
}
.searchTerm {
  width: 100%;
  border: 3px solid #7F7F7F;
  border-right: none;
  padding: 5px;
  height: 40px;
  border-radius: 5px 0 0 5px;
  outline: none;
  color:#7F7F7F;
}

.searchTerm:focus{
  color: #7F7F7F;
}

.searchButton {
  width: 50px;
  height: 40px;
  border: 1px solid #7F7F7F;
  background: #7F7F7F;
  text-align: center;
  color: #7F7F7F;
  border-radius: 0 5px 5px 0;
  cursor: pointer;
  font-size: 20px;
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

		.card-text{
		color:black;
		}

</style>

</head>
<body>

<div class="header">
  <div class="header-right">
    <a href="MangerHome.jsp"><i class="fa fa-home"></i> Home</a>
    
    <a href="login.jsp">LogOut</a>
  </div>
</div>

        <br>
  			<center><h1><img src="img/media/rlogo.jpeg" width="100px" height="100px"> HOTEL SEWWANDI & WEDDING CENTER <img src="img/media/rlogo.jpeg" width="100px" height="100px"></h1></center>
		<br>
        <div class="h1">Room Bookings</div>

<div class="wrapper">
	<div class="sidebar">

		<h5>hotel Sewwandi</h5>

    <br>
		<ul>
			<li><a href="adminhome.jsp"><i class="fa fa-home"></i> Home</a></li>
			
			<li><a href="RoomsM.jsp"><i class="fa fa-bed" style="font-size:20px"></i>&nbsp  Room Reservation</a></li>
			<li><a href="#"><i class="material-icons" style="font-size:20px">&#xe7f1;</i> &nbsp Hall Reservation</a></li>
			
		</ul>

		<div class="social_media">
			<a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-instagram"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
		</div>

	</div>
	
	<!-- search -->

	<div class="main_content">
	
	<div class="wrap">
	

</div><br><br>
	
	 
	<br>
<!-- Editable table --><br>
<div class="card">
  <h3 class="card-header text-center font-weight-bold text-uppercase py-4"><i class='fas fa-book'></i>&nbsp Room bookings</h3>
  <div class="card-body">
    <div id="table" class="table-editable">
      
      <table class="table table-bordered table-responsive-md table-striped text-center">
        <thead>
          <tr>
            <th class="text-center">Booking Id</th>
            <th class="text-center">Customer name</th>
            <th class="text-center">Room No</th>
            <th class="text-center">Room type</th>
            <th class="text-center">From date</th>
            <th class="text-center">To date</th>
            <th class="text-center">Adults</th>
            <th class="text-center">Kids</th>
            <th class="text-center">Tot Amount(LKR)</th>
           
            
          </tr>
         
        </thead>
        <tbody>
        <%
			try{
				connection = DriverManager.getConnection(connectionUrl+database, userid, password);
				statement=connection.createStatement();
		        String sql ="select * from room_reservation WHERE checkIn='"+checkIn+"' OR checkOut='"+checkOut+"'";    
				
				
				
				resultSet = statement.executeQuery(sql);
				
				
				int j = 0;
				
				while(resultSet.next()){
					
					
					String cName= request.getParameter("cName");
					
					String arrivalTime =request.getParameter("arrivalTime");
					String no_of_adults =request.getParameter("no_of_adults");
					String no_of_kids =request.getParameter("no_of_kids");
					String roomNo =request.getParameter("roomNo");
					String phone_No =request.getParameter("phone_No");
					String roomType =request.getParameter("roomType");
					String totRAmount =request.getParameter("totRAmount");
			
			
			%>
          <tr>
          <%--  <td><%=resultSet.getString("checkIn") %> <input name="checkIn" type="hidden" value="<%=resultSet.getString("checkIn") %>"> </td> --%>
            <td class="pt-3-half" > <%=resultSet.getString("roomReservationId") %> </td>
            <td class="pt-3-half" ><%=resultSet.getString("cName") %></td>
            <td class="pt-3-half" ><%=resultSet.getString("roomNo") %></td>
            <td class="pt-3-half" ><%=resultSet.getString("roomType") %></td>
            <td class="pt-3-half" ><%=resultSet.getString("checkIn") %></td>
            <td class="pt-3-half" ><%=resultSet.getString("checkOut") %></td>
            <td class="pt-3-half" ><%=resultSet.getString("no_of_adults") %></td>
            <td class="pt-3-half" ><%=resultSet.getString("no_of_kids") %></td>
            <td class="pt-3-half"><%=resultSet.getString("totRAmount") %></td>
         <!--    <td>
              <span class="table-remove"><a
                  class="btn btn-danger btn-rounded btn-sm my-0" style="color: rgb(255, 255, 255);">Delete</a></span>
            </td> -->
         
          
           <%
			
			j++;
				}
				
				connection.close();
			
			} catch (Exception e) {
			
				e.printStackTrace();
			}
			%> 
            
            
        
        </tbody>
        	 
      </table>
    </div>
  </div>
</div>

<!-- End of the Editable table -->






<br><br><br><br><br><br><br><br><br><br><br><br>


	
	<div class="container-fluid bg">
   <div class="row">
  <div class="col-md-3"></div>
  <div class="col-md-6 col-sm-12">

    
   <div class="panel-body"> 
<%--  <form onsubmit="return validate()" action="<%= request.getContextPath() %>/#" method="post" class="add" > --%>

 



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
          <p>Katugasthota</p>
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