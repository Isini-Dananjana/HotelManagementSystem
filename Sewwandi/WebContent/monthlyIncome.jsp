<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Report</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">

<link rel="stylesheet" type="text/css" href="css/stylek.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" /></script>

	

<script type="text/javascript">
  
  function validate()
  {
    var equipmenttype = document.getElementById("equipmenttype");
    var equipmentname = document.getElementById("equipmentname");
    var equipmentamount = document.getElementById("equipmentamount");
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




</head>
<body >

   <%@ page import="java.sql.*" %> 
	<%@ page import="java.io.*" %> 
	<%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>
	
	<%
	String eventdate = request.getParameter("eventdate");
	String driver = "com.mysql.cj.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "sewwandi";
	String user = "root";
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

<div class="header">
  <div class="header-right">
    
    <a href="#">Hi sam</a>
    <a href="#">Log out</a>
  </div>
</div>

     
        <div class="h1">Event Reservations</div>

<div class="wrapper">
	<div class="sidebar">

		<h5>DASH BOARD</h5>
    
		<ul>
			
		<li>
		
		         
    	</li>
    	
			<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
			<li><a href="#"><i class="fa fa-wrench"></i>settings</a></li>
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

  <div class="col-md-6 col-sm-12">  
  

       
 
    
    
  <!-- monthly income-->      
    <div   id="container" >
    
    <br> 


    <h3>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Monthly Income</h3>
    <br>

		<table class="table table-bordered table-responsive-md table-striped text-center" style="width:1000px;">
		  <thead class="thead-dark">
		  <tr>
		     <th> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Year</th>
		    <th>Month</th>
		    <th>Monthly Income</th>
		    
		  </tr>
		    <thead class="thead-dark">
		 <%
			try{
				connection = DriverManager.getConnection(connectionUrl+database, user, password);
				statement=connection.createStatement();
				String sql ="select year(eventdate) as Year, monthname(e.eventdate) as Month, sum(tot) as tot_Income from sewwandi.event_reservation e where monthname(eventdate)=monthname(e.eventdate) group by monthname(e.eventdate) order by Year";
				resultSet = statement.executeQuery(sql);
				
				int j = 0;
				
				while(resultSet.next()){
					
					
			
			
			%>
		  <tr>
		  <form action="HallBookingDetails.jsp" method="post">
		    <td>
		   	 &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
		    	<%=resultSet.getString("Year") %> 
		    	<input name="Year" type="hidden" value="<%=resultSet.getString("Year") %>"> 
		    </td>
		       <td>
		    	<%=resultSet.getString("Month") %> 
		    	<input name="Month" type="hidden" value="<%=resultSet.getString("Month") %>"> 
		    </td>
		    <td>
			    <%=resultSet.getString("tot_Income") %> 
			    <input name="tot_Income" type="hidden" value="<%=resultSet.getString("tot_Income") %>"> 
		    </td> 
		
		   </form>
		  </tr>
		<%
			
			j++;
				}
				
				connection.close();
			
			} catch (Exception e) {
			
				e.printStackTrace();
			}
			%>  
		</table>
		 <br>
		 		 <!-- yearly income-->  
		 <center>
		 <h3>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Yearly Income</h3>
		 	</center>
		 	<table class="table table-bordered table-responsive-md table-striped text-center" style="width:1000px;">
		  <thead class="thead-dark">
		  <tr>
		     <th>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Year</th>
		    <th>Yearly Income</th> 
		  </tr>
		    <thead class="thead-dark">
		 <%
			try{
				connection = DriverManager.getConnection(connectionUrl+database, user, password);
				statement=connection.createStatement();
				String sql ="select  year(e.eventdate) as Year, sum(tot) as Yearly_Income from sewwandi.event_reservation e where year(eventdate)=year(e.eventdate) group by year(e.eventdate) order by year(e.eventdate) desc";
				resultSet = statement.executeQuery(sql);
				
				int j = 0;
				
				while(resultSet.next()){
					
					
			
			
			%>
		  <tr>
		  <form action="HallBookingDetails.jsp" method="post">
		    <td>
		     &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
		    	<%=resultSet.getString("Year") %> 
		    	<input name="Year" type="hidden" value="<%=resultSet.getString("Year") %>"> 
		    </td>
		   
		      <td>
		    	<%=resultSet.getString("Yearly_Income") %> 
		    	<input name="Yearly_Income" type="hidden" value="<%=resultSet.getString("Yearly_Income") %>"> 
		    </td>
		   
		
		   </form>
		  </tr>
		<%
			
			j++;
				}
				
				connection.close();
			
			} catch (Exception e) {
			
				e.printStackTrace();
			}
			%>  
		</table>
		 <br> <br>
		 <!-- daily income-->  
		 
		 <h3>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Daily Income</h3>
		 	<table class="table table-bordered table-responsive-md table-striped text-center" style="width:1000px;">
		  <thead class="thead-dark">
		  <tr>
		  	<th>Year</th>
		     <th>Month</th>
		    <th>Date</th> 
		    <th>Daily Income</th> 
		  </tr>
		    <thead class="thead-dark">
		 <%
			try{
				connection = DriverManager.getConnection(connectionUrl+database, user, password);
				statement=connection.createStatement();
				String sql ="select  year(eventdate) as Year,monthname(e.eventdate) as Month, eventdate as Date, tot as Daily_income from sewwandi.event_reservation e where eventdate=e.eventdate group by monthname(e.eventdate), eventdate,tot order by Year";
				resultSet = statement.executeQuery(sql);
				
				int j = 0;
				
				while(resultSet.next()){
					
					
			
			
			%>
		  <tr>
		  <form action="HallBookingDetails.jsp" method="post">
		   <td>
		    	<%=resultSet.getString("Year") %> 
		    	<input name="Year" type="hidden" value="<%=resultSet.getString("Year") %>"> 
		    </td>
		    <td>
		    	<%=resultSet.getString("Month") %> 
		    	<input name="Month" type="hidden" value="<%=resultSet.getString("Month") %>"> 
		    </td>
		     <td>
		    	<%=resultSet.getString("Date") %> 
		    	<input name="Date" type="hidden" value="<%=resultSet.getString("Date") %>"> 
		    </td>
		      <td>
		    	<%=resultSet.getString("Daily_income") %> 
		    	<input name="Daily_income" type="hidden" value="<%=resultSet.getString("Daily_income") %>"> 
		    </td>
		   
		
		   </form>
		  </tr>
		<%
			
			j++;
				}
				
				connection.close();
			
			} catch (Exception e) {
			
				e.printStackTrace();
			}
			%>  
		</table>
		<br><br><br><br>
	
		
		
<br>
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