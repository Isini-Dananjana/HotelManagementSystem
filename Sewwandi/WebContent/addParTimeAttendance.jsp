<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Attendance Management</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" /></script>

	<link rel="stylesheet" style="text/css" href="css/empDetails.css">

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
 <script>

  $(function(){
    $("#timepicker").timepicker();
    defaultTime: null;
  });
  </script>

 <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
  
<style type="text/css">


*{color:#000;}

.header {
  overflow: hidden;
  background:#612a3f;
  padding: 0 0;
}

.header a {
  float: left;
  color: #fff;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 16px; 
  line-height: 12px;
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

body{
background-image: url('img/');
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
	font-weight: 70px;
	text-align: center;
	background: #962C54;
	font-transform: uppercase;
	color: #fff;
}

.bg{ 
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
<body >

<div class="header">
  <div class="header-right">
    
    <a href="#">Hi Sam</a>
    <a href="#">Log out</a>
  </div>
</div>

     
        <div class="h1">Part-Time Employee Attendance</div>

<div class="wrapper">
	<div class="sidebar">

		<h5>DASH BOARD</h5>
    
		<ul>
		<li><a href="#"><center><img src="image/sew.jpg" width="100px" height="100px"> </center></a>
		<li><a href="empManagement.jsp"><i class="fa fa-home"></i>Home</a></li>
			<li><a href="addAttendance.jsp"><i class="fa fa-address-card"></i>Add Permanent Employee Attendance</a></li>
			<li><a href="PerEmpAttendanceDetails.jsp"><i class="fa fa-download"></i>Permanent Employee Attendance Details</a></li>
			<li><a href="addParTimeAttendance.jsp"><i class="fa fa-wrench"></i>Add Part Time Employee Attendance</a></li>
			<li><a href="PartEmpAttendanceDetails.jsp"><i class="fa fa-cut"></i>Part time employee Attendance details </a></li>
			
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
	 <%@ page import="java.util.*" %>
	<%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>
	
	<%
	String job_id = request.getParameter("job_id");
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
    
     <jsp:useBean id="date" class="java.util.Date"/>
<h3 style="color:gray;font-size:35px;">Today <fmt:formatDate dateStyle = "long" value = "${date}" type="date" /></h3>
    
  <!---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  											Employee Details table
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------->      
   <div   id="container" >
		<table class="table table-condensed"  style="  background-color: #fff; padding: 30px; width: 560px;">
		  <tr>
		 
		 <th></th>
		    <th>Employee ID</th>
		    <th>First Name</th> 
		    <th>Last Name</th>
		    <th>Designation</th>
		    <th>Section</th>
		    <th>Status</th>
		   
		  </tr>
		 <%
			try{
				connection = DriverManager.getConnection(connectionUrl+database, userid, password);
				statement=connection.createStatement();
				String sql ="select * from part_employee order by employeeId desc";
				resultSet = statement.executeQuery(sql);
				
				int j = 0;
				
				while(resultSet.next()){
			
			
			%>
		  <tr>
		  <form action="PartEmpAttenServlet" method="post">
		  
		   <td><input class="logText"   type = "hidden" name="date" id="date" value="<fmt:formatDate value="${date}" type="date" pattern="YYYY-MM-dd"/>" /> </td>
		   <td><input class="noOutLine" name = "employeeId" style="border:none;width :40px" value="<%=resultSet.getString("employeeId") %>"></input></td>
		     <td><input class="noOutLine"  name = "firstName" style="border:none;width :100px"value="<%=resultSet.getString("firstName") %>"></input></td> 
		    <td> <input class="noOutLine" name = "lastName" style="border:none;width :80px"value="<%=resultSet.getString("lastName") %>"></input></td>
		    <td><input class="noOutLine"  name = "designation" style="border:none;width :130px"value="<%=resultSet.getString("designation") %>"></td>
		    <td><input class="noOutLine" name = "section" style="border:none;width :130px"value="<%=resultSet.getString("section") %>"></td>
		      <td> <input  type="radio" name="status" value="Present" id="present" onchange="validateNewEmp()" required><lable style="color:black;" > Present </lab><input class="" type="radio" name="status" value="Absent" id="absent" onchange="newEmployeeValidate" >
			                        <label style="color:black;">  Absent</label> </td>
		   
		        <td><button name="create" id = "submitbtn" type="submit"  class="btn btn-success" onclick="validateNewEmp()"> OK</button></td>
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