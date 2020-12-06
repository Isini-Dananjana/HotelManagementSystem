<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<head>
<title>Result Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	
	<style type = "text/css">
	.example_d {
color: #494949 !important;
text-transform: uppercase;
text-decoration: none;
background: #ffffff;
padding: 20px;
border: 4px solid #494949 !important;
display: inline-block;
transition: all 0.4s ease 0s;
width:300px;
}

.example_d:hover {
color: #ffffff !important;
background: #f6b93b;
border-color: #f6b93b !important;
transition: all 0.4s ease 0s;

}
	
	
	</style>
	
	<style type = "text/css">
	
body {
    background-color: linen;
}
h1{
	color:blue;
	margin-left:40px;
}
.input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  font-weight: 900;
}

input[type=submit] {
  width: 50%;
  background-color:#12326b;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
	display: block;
    margin-left: auto;
    margin-right: auto;
}
.error{
  width: 20%;
 
 
  border: 1px solid linen;
  border-radius: 4px;
  
  font-weight: 900;
    border-radius: 4px;
  cursor: pointer;
	display: block;
    margin-left: auto;
    margin-right: auto;
	
}

input[type=submit]:hover {
  background-color:blue;
}
input[type=Reset] {
  width: 50%;
  background-color:#818181;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
 	display: block;
    margin-left: auto;
    margin-right: auto
}

input[type=Reset]:hover {
  background-color: #818181;
}
.A {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  font-weight: 900;
}
input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  font-weight: 900;
}
input[type=number] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  font-weight: 900;
}
.header ul{
     list-style-type: none;
     margin: 0;
     padding: 0;
     overflow: hidden;
     background-color: #12326b;
 }
 .header li{
     float: left;
 }

.header li .log-out {
    margin-top: 23px;
    margin-right: 17px;
}
.LOGOUT{
	  width: 30%;
 display:inline-block;
  color: white;
  float: right;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
 	display: block;
    text-transform:uppercase;
    margin-right: auto;
    font-family:'Roboto',sans-serif;
    transition: all 0.2s;
}
.header li h2 {
    margin-left: 23px;
}


/*dashboard navigation bar(navigation bar 1)*/
.nav_bar-1 ul{
    list-style-type: none;
    margin: 5px 0 5px 2px;
    padding: 0;
    overflow: hidden;
    background-color: #e2d4d4;
}
.nav_bar-1 li {
    float: left;
}
.nav_bar-1 li  a{
    display: block;
    color: black;
    text-decoration: none;
    padding: 14px 16px;
    text-align: center;
}
.nav_bar-1 i.glyphicon.glyphicon-cloud {
    /* margin-left: 7px; */
    padding: 0px;
    padding-right: 6px;
}

/*side navigation bar*/

input[type=button] {
  width: 50%;
  background-color:#818181;
  color: blue;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
 font-weight: 900;
}

/*main*/

.main {
    margin-left: 160px; /* Same as the width of the sidenav */
    padding: 0px 10px;
  }
  
  
.loginT{
  background-color:#818181;
  border: none;
  color: white;
  padding: 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 20px;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 12px;
  
}
  
.header {
  overflow: hidden;
  background-color: #f1f1f1;
  padding: 20px 10px;
}

.header a {
  float: left;
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px; 
  line-height: 25px;
  border-radius: 4px;
}

.header a.logo {
  font-size: 25px;
  font-weight: bold;
}

.header a:hover {
  background-color: #ddd;
  color: black;
}

.header a.active {
  background-color: dodgerblue;
  color: white;
}

.header-right {
  float: right;
}

@media screen and (max-width: 500px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
  }
  
  .header-right {
    float: none;
  }


}
	
	
	</style>
	
	
</head>
<body style="background-color: gray">
<c:url value="ContactUs.jsp" var="Contact">
</c:url>
<c:url value="PrivateSchool.jsp" var="PS">
</c:url>
<c:url value="AboutUs.jsp" var="AB">
</c:url>
<c:url value="AboutUs.jsp" var="AB">
</c:url>
<c:url value="LoginType.jsp" var="LT">
</c:url>

	<div class="header">
  <a href="#" class="logo">SYDNEY PRIVATE</a>
  <div class="header-right">
    <a class="active" href="PrivateSchool.jsp">Home</a>
    <a href="${Contact}">Contact</a>
    <a href="${AB}">About</a>
    
  </div>
</div>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: black">
			<div>
				<br><a  class="navbar-brand" style="color:#f6b93b; size:48px;"> STUDENT RESULTS </a><br>
			</div>
			

			<ul class="navbar-nav" >
				<!--  <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Users</a></li>-->
				
			</ul>
		</nav>
	</header>
	<br>
	
		<br><br><br><br>
		<div class="button_cont" align="center"><a  class="example_d" href="<%=request.getContextPath()%>/Resultsheet1.jsp" rel="nofollow noopener">     Grade 1 - 5           </a></div><br><br>
		<div class="button_cont" align="center"><a class="example_d" href="<%=request.getContextPath()%>/Resultsheet2.jsp"  rel="nofollow noopener">     Grade 6 - 11          </a></div><br><br>
		<div class="button_cont" align="center"><a class="example_d" href="<%=request.getContextPath()%>/Resultsheet3.jsp"  rel="nofollow noopener">     12 - 13 BIO / MATHS   </a></div><br><br>
		</div>
		</div>
	</div>
	
	 
</body>
</html>