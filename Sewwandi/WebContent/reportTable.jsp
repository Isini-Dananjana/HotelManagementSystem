
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
    
     <%@ page import="java.sql.*" %> 
	<%@ page import="java.io.*" %> 
	<%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>
	
<%
String roomType = request.getParameter("roomType");
String roomReservationId = request.getParameter("roomReservationId");
String checkIn = request.getParameter("checkIn");
String checkOut = request.getParameter("checkOut");
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
<title>Report</title>
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
  width: 36%;
  position: relative;
  display: flex;
  outline:solid;
   outline-color:#7F7F7F;
}
.searchTerm {
  width: 100%;
  border: 3px solid #7F7F7F;
  border-right: none;
  padding: 5px;
  height: 30px;
  border-radius: 5px 0 0 5px;
  
  color:#7F7F7F;
}

.searchTerm:focus{
  color: #7F7F7F;
}

.searchButton {
  width: 70px;
  height: 50px;
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
			.table{
		
		background-color: #fcfcfc;
		
		}
		.form-control-borderless {
    border: none;
}


.form-control-borderless:hover, .form-control-borderless:active, .form-control-borderless:focus {
    border: none;
    outline: none;
    box-shadow: none;
}

</style>

</head>
<body>

<div class="header">
  <div class="header-right">
    
    <a href="#">Hi sam</a>
    <a href="#">Log out</a>
  </div>
</div>

        
        <div class="h1">Room Bookings</div>

<div class="wrapper">
	<div class="sidebar">

		<h5>DASH BOARD</h5>

    <br>
		<ul>
			<li><a href="MangerHome.jsp"><i class="fa fa-home"></i> Home</a></li>
			
			<li><a href="RoomsM.jsp"><i class="fa fa-bed" style="font-size:20px"></i>&nbsp  Room Reservation</a></li>
			<li><a href="#"><i class="material-icons" style="font-size:20px">&#xe7f1;</i> &nbsp Hall Reservation</a></li>
			
		</ul>

		<div class="social_media">
			<a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-instagram"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
		</div>

	</div>
	
	<!-- Search bar -->

	<div class="main_content"><div class="wrap">

 
   
    
 <!-- 
	<div class="row justify-content-center">
                        <div class="col-12 col-md-10 col-lg-8">
                            <form class="card card-sm" method = "post" action="searchRmReservation.jsp">
                                <div class="card-body row no-gutters align-items-center">
                                
                                    end of col
                                    <div class="col">
                                        <input  type="date" id="checkIn" name="checkIn" required >&nbsp &nbsp &nbsp &nbsp
                                         <input type="date" id="checkOut" name="checkOut" required>
                                    </div>
                                    end of col
                                    <div class="col-auto">
                                   &nbsp &nbsp &nbsp &nbsp     <button class="btn btn-light" type="submit" href="searchRmReservation.jsp"><i class="material-icons">search</i></button>
                                    </div>
                                    end of col
                                </div>
                            </form>
                        </div>
                        end of col
                    </div>
</div> <br><br><br><br> <br> -->


	<!-- End of the search bar-->
	
	 <!--  &nbsp &nbsp &nbsp &nbsp  &nbsp<button type="button" class="btn btn-success"><i class="fa fa-file-pdf-o"></i> &nbsp  GENERATE PDF </button> -->
	
	<br>
<br>
 <!---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  											Income from a room type
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------->      
<div class="card">
  <h5 class="card-header text-center font-weight-bold text-uppercase py-4">&nbsp Yearly Income from a room type</h5>
  <div class="card-body">
    <div id="table" class="table-editable">
      
      <table class="table table-bordered table-responsive-md table-striped text-center">
        <thead class="thead-light">
          <tr>
         <!--  <th>Month</th> -->
         <th>&nbsp &nbsp Year</th>
		     <th> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Room type</th>
		     <th>No of times booked</th>
		    <th>Yearly Income(LKR)</th> 
		    
		 
		  </tr>
		   <%
			try{
				connection = DriverManager.getConnection(connectionUrl+database, userid, password);
				statement=connection.createStatement();
				//String sql ="select  monthname(e.checkIn) as Month, sum(totRAmount) as tot_Income from sewwandi.room_reservation e where monthname(checkIn)=monthname(e.checkIn) group by monthname(e.checkIn) order by monthname(e.checkIn) desc";
				String sql="select year(checkIn) as Year,roomType,COUNT(roomType) AS ValueFrequency,sum(totRAmount) As tot_Income from room_reservation group by roomType,Year order by Year, ValueFrequency DESC ";
				resultSet = statement.executeQuery(sql);
				
				int j = 0;
				
				while(resultSet.next()){
			
			
			%>
			  <tr>
			 
		  <form action="Booking_details.jsp" method="post">
	    <td>
		    	&nbsp &nbsp 
		    	<%=resultSet.getString("Year") %> 
		    	<input name="Month" type="hidden" value="<%=resultSet.getString("Year") %>">
		    	 
		    </td> 
		    <td>
		    	&nbsp &nbsp &nbsp &nbsp &nbsp
		    	<%=resultSet.getString("roomType") %> 
		    	<input name="Month" type="hidden" value="<%=resultSet.getString("roomType") %>">
		    	 
		    </td>
		    	    <td>
		   
			    <%=resultSet.getString("ValueFrequency") %> 
			    <input name="tot_Income" type="hidden" value="<%=resultSet.getString("ValueFrequency") %>"> 
		    </td> 
		    <td>
		   
			    <%=resultSet.getString("tot_Income") %> 
			    <input name="tot_Income" type="hidden" value="<%=resultSet.getString("tot_Income") %>"> 
		    </td> 
		
		   </form>
		 
		  </tr>
		  <tr>
		  <%
			
			j++;
				}
				
				connection.close();
			
			} catch (Exception e) {
			
				e.printStackTrace();
			}
			%>  
		
		</table><br><hr><br><br>
		<!-- Monthly income table-->
		<div class="card">
  <h5 class="card-header text-center font-weight-bold text-uppercase py-4">&nbsp Monthly Income report </h5>
  <div class="card-body">
    <div id="table" class="table-editable">
      
      <table class="table table-bordered table-responsive-md table-striped text-center">
        <thead class="thead-light">
          <tr>
         <!--  <th>Month</th> -->
		   <!--   <th> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Room type</th> -->
		     <th>&nbsp &nbsp &nbsp &nbsp &nbsp Year</th>
		     <th>&nbsp &nbsp &nbsp &nbsp Month</th>
		    <th>Monthly Income(LKR)</th> 
		    
		 
		  </tr>
		   <%
			try{
				connection = DriverManager.getConnection(connectionUrl+database, userid, password);
				statement=connection.createStatement();
				//String sql ="select  monthname(e.checkIn) as Month, sum(totRAmount) as tot_Income from sewwandi.room_reservation e where monthname(checkIn)=monthname(e.checkIn) group by monthname(e.checkIn) order by monthname(e.checkIn) desc";
				String sql="select year(e.checkIn) as Year, monthname(e.checkIn) as Month,sum(totRAmount) As tot_Income from sewwandi.room_reservation e where monthname(checkIn)=monthname(e.checkIn) group by monthname(e.checkIn) order by Year,Month DESC";
				resultSet = statement.executeQuery(sql);
				
				int j = 0;
				
				while(resultSet.next()){
			
			
			%>
			  <tr>
			 
		  <form action="Booking_details.jsp" method="post">
		  	       <td>
		    	&nbsp &nbsp &nbsp &nbsp &nbsp 
		    	<%=resultSet.getString("Year") %> 
		    	<input name="Year" type="hidden" value="<%=resultSet.getString("Year") %>">
		    	 
		    </td> 
	       <td>
		    	&nbsp &nbsp &nbsp &nbsp &nbsp 
		    	<%=resultSet.getString("Month") %> 
		    	<input name="Month" type="hidden" value="<%=resultSet.getString("Month") %>">
		    	 
		    </td>  
		  <%--   <td>
		    	&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
		    	<%=resultSet.getString("roomType") %> 
		    	<input name="Month" type="hidden" value="<%=resultSet.getString("roomType") %>">
		    	 
		    </td> --%>
	<%-- 	    	    <td>
		   
			    <%=resultSet.getString("ValueFrequency") %> 
			    <input name="tot_Income" type="hidden" value="<%=resultSet.getString("ValueFrequency") %>"> 
		    </td> --%> 
		    <td>
		   
			    <%=resultSet.getString("tot_Income") %> 
			    <input name="tot_Income" type="hidden" value="<%=resultSet.getString("tot_Income") %>"> 
		    </td> 
		
		   </form>
		 
		  </tr>
		  <tr>
		  <%
			
			j++;
				}
				
				connection.close();
			
			} catch (Exception e) {
			
				e.printStackTrace();
			}
			%>  
		
		</table>
    </div>
  </div>
</div>
 <!---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  											End of the Booking Details table
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------->      




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