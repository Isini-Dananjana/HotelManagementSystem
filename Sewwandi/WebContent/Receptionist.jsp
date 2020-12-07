<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Profile</title>
    <link href="assets/css/siteFont.css" rel="stylesheet">

    <script src="assets/js/jquery-3.3.1.min.js"></script>
    <script src="assets/js/jquery.okayNav.js"></script>

    <link rel="stylesheet" type="text/css" href="assets/css/styles.css">
</head>
<body style="background-image: url('img/media/rim.jpg');background-repeat: no-repeat;background-attachment: fixed;">
<header id="header" style="z-index: 999;">
    <a class="site-logo" href="home.jsp">
        Hotel Sewwandi
    </a>
    <div class="slider"></div>
    <nav role="navigation" id="nav-main" class="okayNav">
        <ul>
            <li><a href="home.jsp">Home</a></li>
            <li><a href="<% if(session.getAttribute("userType")==null){ %>login.jsp<% }else if(session.getAttribute("userType")=="admin"){ %>admin.jsp<% }else{ %>profile.jsp<% } %>"><% if(session.getAttribute("userType")==null){ %>Login<% }else{ %>Profile<% } %></a></li>
            <li><a onclick="<% if(session.getAttribute("userType")==null){ %>window.location.href='register.jsp'<% }else { %>logout()<% }%>"><% if(session.getAttribute("userType")==null){ %>Register<% }else{ %>Logout<% } %></a></li>
            <li><a href="package.jsp">Packages</a></li>
            <li><a href="home.jsp#real2">Contacts</a></li>
        </ul>
    </nav>
</header>
<form action="logoutServlet" method="post" id="logout_user"></form>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

<div class="profileBox">
    <h2>Receptionist</h2>
    <br>
    <form action="systemUsers.jsp" >
        <input type="submit" value="Customer Details">
    </form>
     <form action="RoomsR.jsp" >
        <input type="submit" value="Room Booking Details">
    </form>
     <form action="EventsR.jsp" >
        <input type="submit" value="Hall Booking Details">
    </form>
    <br>
  
</div>

<script type="text/javascript">
    var navigation = $('#nav-main').okayNav();
</script>
</body>
</html>
<script>

	window.onload = function(){
	    var x=${sessionScope.errors_success };
	    if("1"==x){
	        swal("Success!", "Payment Successful!", "success");
	        <% session.setAttribute("errors_success", null); %>
	    }else if("2"==x){
	        swal({
	            title: "Error",
	            text: "Your Password Or Email Is Wrong!",
	            icon: "warning",
	            dangerMode: true,
	        });
	        <% session.setAttribute("errors_success", null); %>
	    }else if("3"==x){
	        swal({
	            title: "Error",
	            text: "Registration Unsuccessful!",
	            icon: "warning",
	            dangerMode: true,
	        });
	        <% session.setAttribute("errors_success", null); %>
	    }
	}

</script>
<script type="text/javascript">
	function logout(){
		document.getElementById("logout_user").submit();
	}
</script>
<script src="assets/js/sweetalert.min.js"></script>