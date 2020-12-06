<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>GRADE 6 - 11 RESULT </title>
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
				<!--  <li><a href="<%=request.getContextPath()%>/list2" class="nav-link">Users</a></li>-->
				<li>
	             <a href="" class="nav-link" class="nav-link">Add Results</a>
	            
	          </li>
	          <li>
	              <a href="<%=request.getContextPath()%>/list2" class="nav-link">View Results</a>
	          </li>
	          <li>
	              <a href="<%=request.getContextPath()%>/Interface.jsp" class="nav-link">Back</a>
	          </li>
	         
	          <li>
			</ul>
		</nav>
		
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${result != null}">
					<form action="updateResult2" method="post">
				</c:if>
				<c:if test="${result == null}">
					<form action="insertResult2" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${result != null}">
            			Edit Marks
            		</c:if>
						<c:if test="${result == null}">
            			Add Marks
            		</c:if>
					</h2>
				</caption>

				<c:if test="${result != null}">
					<input type="hidden" name="id" value="<c:out value='${result.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Student Roll</label> <input type="text"
						value="<c:out value='${result.student_roll}' />" class="form-control"
						name="student_roll" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>class</label> <input type="text" value="<c:out value='${result.student_class}' />" class="form-control"
						name="student_class" required="required">
				</fieldset>

				<fieldset class="form-group">
					<table>
						  <tr>
							<th></th>
							<th>Subject</th>
							<th>Mark</th>
						 
						  </tr>
						  <tr>
							<td></td>
							<td>Sinhala</td>
							<td><input type="text"  name="mark1" value="<c:out value='${result.mark1}' />" class="form-control" ></td>
							 </tr>
						  <tr>
							<td></td>
							<td>English</td>
							<td><input type="text" value="<c:out value='${result.mark2}' />" class="form-control" name="mark2" ></td>
							 </tr>
						  <tr>
							<td></td>
							<td>Mathematics</td>
							<td><input type="text" value="<c:out value='${result.mark3}' />" class="form-control" name="mark3" ></td>
							 </tr>
						  <tr>
							<td></td>
							<td>Science</td>
							<td><input type="text" value="<c:out value='${result.mark4}' />" class="form-control" name="mark4" ></td>
							 </tr>
						  
						   <tr>
							<td></td>
							<td>English</td>
							<td><input type="text" value="<c:out value='${result.mark5}' />" class="form-control" name="mark5" ></td>
							</tr>
						   <tr>
							<td></td>
							<td>Aesthetic Subjects</td>
							<td><input type="text" value="<c:out value='${result.mark6}' />" class="form-control" name="mark6" ></td>
							 </tr>
						   <tr>
							<td></td>
							<td>PTS</td>
							<td><input type="text" value="<c:out value='${result.mark7}' />" class="form-control" name="mark7" ></td>
							 </tr>
						   <tr>
							<td></td>
							<td>History</td>
							<td><input type="text" value="<c:out value='${result.mark8}' />" class="form-control" name="mark8" ></td>
							</tr>
							<tr>
							<td></td>
							<td>Geography</td>
							<td><input type="text" value="<c:out value='${result.mark9}' />" class="form-control" name="mark9" ></td>
							</tr>
							<tr>
							<td></td>
							<td>Tamil</td>
							<td><input type="text" value="<c:out value='${result.mark10}' />" class="form-control" name="mark10" ></td>
							</tr>
						 
							
						</table></fieldset>

				<button type="submit" class="btn btn-success">Submit</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>