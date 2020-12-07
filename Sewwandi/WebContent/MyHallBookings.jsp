<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Hall Bookings</title> <!-- receptionist search page -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet"  href="css/stylek.css">

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
          equipmenttype.style.border="solid 3px red";
          return false;
        }  
      
      else if(numberofguests.value.trim() == "" ) {

          alert("Please enter number of guests!");
          equipmentamount.style.border="solid 3px red";
          return false;
        }
      else if(eventdate.value.trim() == ""  ) {

          alert("Please select the date!");
          equipmentdate.style.border="solid 3px red";
          return false;
        }
      else if(eventdescription.value.trim() == "" ) {

          alert("Please enter a small description!");
          equipmentdescription.style.border="solid 3px red";
          return false;
        }
        else if(photographer.value.trim() == "" ) {

          alert("Please enter Equipment name!");
          equipmentname.style.border="solid 3px red";
          return false;
        }
         else if(decorator.value.trim() == "" ) {

          alert("Please enter Equipment name!");
          equipmentname.style.border="solid 3px red";
          return false;
        }
         else if(makeupartist.value.trim() == "" ) {

          alert("Please select a makeupartist!");
          equipmentname.style.border="solid 3px red";
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
        <div class="h1">Event Reservations</div>

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
			<li><a href="HallBooking.jsp"><i class="material-icons">&#xe7f1;</i>Event Reservation</a></li>
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
  <!--  <div class="col-md-3"></div>-->
  <div class="col-md-6 col-sm-12">

 <%@ page import="java.sql.*" %> 
	<%@ page import="java.io.*" %> 
	<%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>
   
     <div class="panel-body">
     <%
		String job_id = request.getParameter("job_id");
		String driver = "com.mysql.cj.jdbc.Driver";
		String connectionUrl = "jdbc:mysql://localhost:3306/";
		String database = "sewwandi";
		String user = "root";
		String password = "kaushi123";
		try {
		Class.forName(driver);
		} catch (ClassNotFoundException e) {
		e.printStackTrace();
		}
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
	%>           
     
 
     
     	<table class="table table-condensed" style="width:75% ">
		  <tr>
		    <th>Event ID</th>
		    <th>Customer Name</th> 
		    <th>Event type</th>
		    <th>Event date</th>
		    <th>Description</th>
		    <th>date</th>
		    <th>From-Time</th>
		    <th>Photographer Name</th>
		    <th>Photographer Price</th>
		    <th>Decorator</th>
		    <th>Decorator Price</th>
		    <th>Makeup Artist</th>
		    <th>Makeup Artist Price</th>
		    <th>Edit</th>
		    <th>Delete</th>
		  </tr>
		   <%
			try{
				connection = DriverManager.getConnection(connectionUrl+database, user, password);
				statement=connection.createStatement();
				String sql ="select * from event";
				resultSet = statement.executeQuery(sql);
				
				int j = 0;
				
				while(resultSet.next()){
			
			
			%>
			 <tr>
		  <form action="HallBookingDetails.jsp" method="post">
		    <td>
		    	<%=resultSet.getString("eventId") %> 
		    	<input name="eventId" type="hidden" value="<%=resultSet.getString("eventId") %>"> 
		    </td>
		    <td>
			    <%=resultSet.getString("customername") %> 
			    <input name="customername" type="hidden" value="<%=resultSet.getString("customername") %>"> 
		    </td> 
		    <td>
			    <%=resultSet.getString("hallno") %> 
			    <input name="hallno" type="hidden" value="<%=resultSet.getString("hallno") %>">
		    </td>
		    <td>
			    <%=resultSet.getString("eventdate") %> 
			    <input name="eventdate" type="hidden" value="<%=resultSet.getString("eventdate") %>">
		    </td>
		    <td>
			    <%=resultSet.getString("eventtime") %> 
			    <input name="eventtime" type="hidden" value="<%=resultSet.getString("eventtime") %>">
		    </td>
		    <td>
			    <%=resultSet.getString("eventtype") %> 
			    <input name="eventtype" type="hidden" value="<%=resultSet.getString("eventtype") %>">
		    </td>
		    <td>
			    <%=resultSet.getString("eventdes") %> 
			    <input name="eventdes" type="hidden" value="<%=resultSet.getString("eventdes") %>">
		    </td>
		    <td>
			    <%=resultSet.getString("noguests") %> 
			    <input name="noguests" type="hidden" value="<%=resultSet.getString("noguests") %>">
		    </td>
		    <td>
			    <%=resultSet.getString("photo") %> 
			    <input name="photo" type="hidden" value="<%=resultSet.getString("photo") %>">
		    </td>
		       <td>
			    <%=resultSet.getString("deco") %> 
			    <input name="deco" type="hidden" value="<%=resultSet.getString("deco") %>">
		    </td>
		       <td>
			    <%=resultSet.getString("makeup") %> 
			    <input name="makeup" type="hidden" value="<%=resultSet.getString("makeup") %>">
		    </td>
		    
		    <td> <button name="delete" id = "editbtn" type="submit"  class="btn btn-success" >Edit</button> </td>
		    <td> <a  class="btn btn-success" href="addeventServlet?dEvent=<%=resultSet.getString("eventId") %>" >Delete</a></td>
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