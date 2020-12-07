<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Details</title>
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
		<!-- <form method="post" action="searchresults.jsp">
    		<input name="eventdate" id="eventdate" type="date" class="form-control" placeholder="Enter date"><br>
    		 <button style = "background-color:#612a3f; padding: 6px; width: 200px height:100px"  id = "submitbtn" type="submit"  class="btn btn-primary" onclick="validate()"> Search Event Reservation</button>
		                
		            </form> end of the form  --> 
		         
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
  

       
 
    
    
  <!---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  											Event Details table
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------->      
    <div   id="container" >
		<table class="table table-condensed"  style="  background-color: #fff; padding: 30px; width: 560px;">
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
				String sql = "select eventId, customername, e.hallno, eventdate, eventtime, eventtype, eventdes,noguests, e.photo, p.pphone, e.deco, d.dphone, e.makeup, m.mphone, h.price, d.dprice, m.mprice, p.pprice, h.price+d.dprice+m.mprice+p.pprice as tot from event e, sewwandi.hall h,decorator d, makeup m, photographer p where e.hallno=h.hallno AND e.deco=d.deco And e.makeup=m.makeup AND e.photo=p.photo AND eventdate='"+eventdate+"' group by eventId";
				resultSet = statement.executeQuery(sql);
				
				int j = 0;
				
				while(resultSet.next()){
					
					
			
			
			%>
		  <tr>
		   <form action="searchresults.jsp" method="post">
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
			    <input name="tot" type="hidden" value="<%=resultSet.getString("tot") %>">
		    </td> 
		 
		    <!-- <td> <button name="delete" id = "editbtn" type="submit"  class="btn btn-success" >View</button> </td>
		     <td> <a  class="btn btn-success" href="addeventServlet?dEvent=<%=resultSet.getString("eventId") %>" >Delete</a></td> -->
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
		 <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br>
	</div>
    
    
 </div>
 </div>
 </div>
 <div class="col-md-3"></div>
	</div>

</div>
<br>






<script src="jquery.min.js"></script>
		<script src="bootstrap.min.js"></script>
		<script >
			$(document).ready(function(){
				$('.search').keyup(function(){
					var searchTerm = $(".search").val();
					var listItem = $('.results tbody').children('tr');
					var searchSplit = searchTerm.replace(/ /g,"'):containsi('");
					$.extend($.expr[':'],{
						'containsi': function(elem,i,match,array){
							return(elem.textContent || elem.innerText || '').toLowerCase().indexOf((match[3] ||
								"").toLowerCase()) >= 0;
						}
					})
					$(".results tbody tr").not(":containsi('"+ searchSplit +"')").each(function(){
						$(this).attr('visible','false');
					})
					$(".results tbody tr:containsi('"+ searchSplit +"')").each(function(){
						$(this).attr('visible','true');
				})
					var jobCount = $('.results tbody tr[visible="true"]').length;
					$('.counter').text(jobCount +' item');
					if(jobCount == 0){
						$('no-result').show();
					}
					else{
						$('no-result').hide();
					}
			})
		  })
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