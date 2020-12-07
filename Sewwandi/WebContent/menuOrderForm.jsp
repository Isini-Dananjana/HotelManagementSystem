<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page import="java.sql.*" %> 
   	<%@page import="java.sql.DriverManager"%>
 	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>
	
	<%


    String menuId = request.getParameter("menuId");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "sewwandi";
	String userid = "root";
	String password = "isini123";

	try {
	Class.forName(driver);
	} catch (ClassNotFoundException e) {
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
    <a href="#">Register</a>
    <a href="login.jsp">Logout</a>
  </div>
</div>

        <br>
  			<center><h1><img src="img/bad.jpg" width="100px" height="100px"> HOTEL SEWWANDI & WEDDING CENTER <img src="img/bad.jpg" width="100px" height="100px"></h1></center>
		<br>
        <div class="h1">Menu Reservations</div>

<div class="wrapper">
	<div class="sidebar">

		<h5>hotel Sewwandi</h5>
    <center><img src="img/bad.jpg" width="100px" height="100px" ></center>
    <br>
		<ul>
			<li><a href="customerloghome.jsp"><i class="fa fa-home"></i>Home</a></li>
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

   
<div class="panel-body ">
     <%
			try{
				connection = DriverManager.getConnection(connectionUrl+database, userid, password);
				statement=connection.createStatement();
				String sql ="select menuId from menu where menuId='"+menuId+"'";
				resultSet = statement.executeQuery(sql);
				
				int j = 0;
				
				while(resultSet.next()){
					
					
			
			
			%>
		
	
 <form action="insertmenu" method="POST" onsubmit="return validate()" action="<%= request.getContextPath() %>/#">
 
 	 <div class="form-group">
    	<label for="customername">Customer Name</label>
    	<input type="text" class="form-control"  id="customername" name="customername" value="<%=session.getAttribute("fname")%> <%=session.getAttribute("lname")%>">
    </div>
    
       	<div class="form-group">
    	<label for="menuId">Menu</label>
    	<input type="text" class="form-control"  id="menuId" name="menuId" value="<% out.print(menuId); %>"  placeholder=""/>
   		 </div>
    
    
    <div class="form-group">
    	<label for="quantity">Number of servings</label>
    	<input type="number" class="form-control" pattern="numbers"  id="quantity" name="quantity" placeholder="Enter number of servings">
    </div>
    
     
   <input type="submit" class="btn btn-primary" value="submit" style="width: 30%; text-align: center;" />

  
</form>
  
    <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>
     
 

 <%
			
			j++;
				}
				
				connection.close();
			
			} catch (Exception e) {
			
				e.printStackTrace();
			}
		
		%> 
  
  </div>
  </div>
  </div>
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