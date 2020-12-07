<%@page import="Com.Sewwandi.Bean.*"%>
<%@page import="Com.Sewwandi.Model.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" /></script>

<link href="assets/css/new_styles.css" rel="stylesheet">

</head>
<body>

<div class="header">
  <div class="header-right">
    <a href="#">My bookings</a>
    <a href="logoutServlet">Logout</a>
  </div>
</div>

        <br>
        <center><h1><img src="img/bad.jpg" width="100px" height="100px"> HOTEL SEWWANDI & WEDDING CENTER <img src="img/bad.jpg" width="100px" height="100px"></h1></center>
    <br>
        <div class="h1">Profile</div>

<div class="wrapper">
  <div class="sidebar">

    <h5>hotel Sewwandi</h5>
    <center><img src="img/bad.jpg" width="100px" height="100px" ></center>
    <br>
    <ul>
       <li><a href="viewProfileDetails"><i class="fa fa-home"></i>View Profile</a></li>
      <li><a href="deleteAccount.jsp"><i class="fa fa-address-card"></i>Delete My Account</a></li>
    </ul>

  </div>
  <div class="main_content">
  
  <div class="container-fluid bg">
  <div class="row">
  <div class="col-md-3"></div>
  <div class="col-md-6 col-sm-12">

    <%
			User user = (User) request.getAttribute("user");
			%>
  <div class="panel-body">
  <div class="add">
 
  <img src="img/user.png" style="width: 50px; height:50px;">
  

    <div class="form-group">
      <br>
    <label>First Name  :</label>
        <label><%=user.getFname()%></label>
        </div> 
        <div class="form-group">
        <label>Last Name  :</label>
        <label><%=user.getLname()%></label>
        </div>
        <div class="form-group">
        <label>Gender  :</label>
        <label><%=user.getGender()%></label>
        </div>
        <div class="form-group">
        <label>NIC  :</label>
        <label><%=user.getNic()%></label>
        </div>
        <div class="form-group">
        <label>Email  :</label>
        <label><%=user.getEmail()%></label>
        </div>
        <div class="form-group">
        <label>Address  :</label>
        <label><%=user.getAddress()%></label>
        </div>
        <div class="form-group">
        <label>Phone  :</label>
        <label><%=user.getPhone()%></label>
        </div>
        <div class="form-group">
        <label>Username  :</label>
        <label><%=user.getUsername()%></label>
        </div>
        <br>
        
        <a class="btn btn-primary" href="viewProfile" style="width: 30%; text-align: center; position: absolute;">Edit Profile</a>
        
        
   <br>
<br>
<br>

  </div>
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

<script type="text/javascript">

    function checkDetails() {
        var pass1 =document.getElementById("pass1").value;
        var pass2 =document.getElementById("pass2").value;

        if (pass1.length<6){
            swal({
                title: "Error",
                text: "Your Password Must Contain At Least 6 Characters!",
                icon: "warning",
                dangerMode: true,
            });
            return false;
        }else if (pass1 != pass2){
            swal({
                title: "Error",
                text: "Your Password & Confirm Password Are not Match!",
                icon: "warning",
                dangerMode: true,
            });
            document.getElementById("pass1").value = "";
            document.getElementById("pass2").value = "";
            return false;
        } else {
            return confirmNic();
        }
    }
    

    function confirmNic() {

        var nic = document.getElementById("nic").value;

        re = /[0-9]{9}[V]$/;
        if(!re.test(nic)) {
        	swal({
                title: "Error",
                text: "Your Entered Wrong NIC Number !",
                icon: "warning",
                dangerMode: true,
            });
            return false;
        }

        return checkPhone();

    }
    
    function checkPhone() {

        var reg = document.getElementById("phone").value;

        re = /[0-9]{10}$/;

        if(!re.test(reg)) {
        	swal({
                title: "Error",
                text: "Your Entered Wrong Phone Number !",
                icon: "warning",
                dangerMode: true,
            });
            return false;
        }

        return true;

    }

</script>
<script>

	window.onload = function(){
	    var x=${sessionScope.errors_success };
	    if("1"==x){
	        swal("Success!", "Your Account Has Been Registered. You Can Login Now!", "success");
	        <% session.setAttribute("errors_success", null); %>
	    }else if("2"==x){
	        swal({
	            title: "Error",
	            text: "This Email is Already Exists",
	            icon: "warning",
	            dangerMode: true,
	        });
	        <% session.setAttribute("errors_success", null); %>
	    }else if("3"==x){
	        swal({
	            title: "Error",
	            text: "This Username is Already Exists!",
	            icon: "warning",
	            dangerMode: true,
	        });
	        <% session.setAttribute("errors_success", null); %>
	    }
	}
		
</script>
<script src="assets/js/sweetalert.min.js"></script>