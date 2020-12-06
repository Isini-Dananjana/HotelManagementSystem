<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Result Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
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
				<a href="https://www.javaguides.net" class="navbar-brand"> Student Results(Grade 6 - 11)</a>
			</div>

			<ul class="navbar-nav" >
				<!--  <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Users</a></li>-->
				
	          <li>
	              <a href="<%=request.getContextPath()%>/Addmarks6-11.jsp" class="nav-link">Add Student Marks</a>
	          </li>
	          <li>
              <a href="<%=request.getContextPath()%>/list2"class="nav-link">View Student Marks</a>
	          </li>
	          <li>
	              <a href="<%=request.getContextPath()%>/Interface.jsp" class="nav-link">Back</a>
	          </li>
	          
	          <li>
			</ul>
		</nav>
	</header>

	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of  Student Results</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/Addmarks6-11.jsp" class="btn btn-success">Add
					New Result</a>
			</div>
			<br>
			
			
			<table class="table table-bordered" style="background-color: white" border-color = "solid black">
				<thead>
					<tr>
						<th>Action</th>
						<th>Result ID</th>
						<th>Class</th>
						<th>Student Roll</th>
						<th >Sinhala</th>                          
						<th >English</th>
						<th >Mathematics</th>
						<th >Science</th>
						<th >English</th>
						<th >Aesthetic Subjects</th>
						<th >PTS</th>
						<th >History</th>
						<th >Geography</th>
						<th >Tamil</th>
						
						
					</tr>
				</thead>
				<tbody>
				
				<!--   for (Todo todo: todos) {  -->
				<c:forEach var="r" items="${listResult}">
				
				<tr> 
				
				<td><a href="EditResult2?id=<c:out value='${r.id}' />">Edit</a>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="deleteResult2?id=<c:out value='${r.id}' />">Delete</a></td>
							<td><c:out value="${r.id}" /></td>
							<td><c:out value="${r.student_class}" /></td>
							<td><c:out value="${r.student_roll}" /></td>
							
							<td><c:out value="${r.mark1}" /></td>
							
							<td><c:out value="${r.mark2}" /></td>
							
							<td><c:out value="${r.mark3}" /></td>
						
							<td><c:out value="${r.mark4}" /></td>
						
							<td><c:out value="${r.mark5}" /></td>
						
							<td><c:out value="${r.mark6}" /></td>
							
							<td><c:out value="${r.mark7}" /></td>
							
							<td><c:out value="${r.mark8}" /></td>
							
							<td><c:out value="${r.mark9}" /></td>
						
							<td><c:out value="${r.mark10}" /></td>
							
						 
						</tr>
					</c:forEach>
					<!-- } -->
					
				
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>