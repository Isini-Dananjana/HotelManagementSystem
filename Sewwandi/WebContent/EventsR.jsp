<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Events</title> <!-- receptionist search page -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/stylek.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" /></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	


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
        <div class="h1">Hall Reservations</div>

<div class="wrapper">
	<div class="sidebar">

		<h5>hotel Sewwandi</h5>
    <center><img src="img/bad.jpg" width="100px" height="100px" ></center>
    <br>
	<ul>
			<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
			 <li><a href="EventsM.jsp"><i class="material-icons">&#xe7f1;</i>Event Reservation</a></li>
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
  
  <div class="col-md-6 col-sm-12">

 <%@ page import="java.sql.*" %> 
	<%@ page import="java.io.*" %> 
	<%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>
	
   
   <div class="form-group">
  <form method="post" action="searchresults.jsp">
    		<input name="eventdate" id="eventdate" type="date" class="form-control" placeholder="Enter date"><br>
    		 <button style = "background-color:#612a3f; padding: 6px; width: 200px height:100px"  id = "submitbtn" type="submit"  class="btn btn-primary" onclick="validate()"> Search Employee details</button>
   </div>
   
   <input type="button" name=report class="btn btn-success" style="width:100px;" value="Get Report"> 
   <br>
   <br>
   
     <div class="panel-body">
     
     
    
    	
    	<%
		String eventdate = request.getParameter("eventdate");
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
     
     	<table class="table table-condensed" style="width: 83%">
		  <tr>
		     <th>Event ID</th>
		    <th>Customer Name</th> 
		    <th>Hall No</th>
		    <th>Event date</th>
		    <th>Event Time</th>
		    <th>Event Type</th>
		    <th>Event des</th>
		    <th>Number of guests</th>
		    <th>Photographer</th>
		    <th>Decorator</th>
		    <th>Makeup Artist</th>
		    <th>Photographer price</th>
		    <th>Decorator Price</th>
		    <th>Makeup Artist price</th>
		    <th>Total</th>
		    
		 
		  </tr>
		   <%
			try{
				connection = DriverManager.getConnection(connectionUrl+database, user, password);
				statement=connection.createStatement();
				String sql ="select eventId, customername, e.hallno, eventdate, eventtime, eventtype, eventdes,noguests, e.photo, p.pphone, e.deco, d.dphone, e.makeup, m.mphone, h.price, d.dprice, m.mprice, p.pprice, h.price+d.dprice+m.mprice+p.pprice as tot from event e, sewwandi.hall h,decorator d, makeup m, photographer p where e.hallno=h.hallno AND e.deco=d.deco And e.makeup=m.makeup AND e.photo=p.photo group by eventId";
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
		      <td>
			    <%=resultSet.getString("pprice") %> 
			    <input name="pprice" type="hidden" value="<%=resultSet.getString("pprice") %>">
		    </td>
		     <td>
			    <%=resultSet.getString("dprice") %> 
			    <input name="dprice" type="hidden" value="<%=resultSet.getString("dprice") %>">
		    </td>
		     <td>
			    <%=resultSet.getString("mprice") %> 
			    <input name="mprice" type="hidden" value="<%=resultSet.getString("mprice") %>">
		    </td>
		     <td>
			    <%=resultSet.getString("tot") %> 
			    <input name="total" type="hidden" value="<%=resultSet.getString("tot") %>">
		    </td>
		    
		    <!-- <td> <button name="delete" id = "editbtn" type="submit"  class="btn btn-success" >View</button> </td>
		    <td> <a  class="btn btn-success" href="addeventServlet?dEvent=<%=resultSet.getString("eventId") %>" >Delete</a></td> -->
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