<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand"> User
					Management App </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Users</a></li>
			</ul>
		</nav>
</head>
<body>


<table class="table table-bordered">
				<thead>
					<tr>
						<th>action</th>
						<th>Subject1</th>
						<th>subject2</th>
						<th>subject3</th>
						<th>subject4</th>
						<th>Subject5</th>
						<th>subject6</th>
						<th>subject7</th>
						<th>subject8</th>
						<th>Subject9</th>
						<th>subject10</th>
						<th>subject11</th>
					
					</tr>
				</thead>
				<tbody>
					<!--   for (Todo todo: todos) {  -->
					<c:forEach var="subjectdetails" items="${listSubject}">

						<tr>
						<td><a href="edit?id=<c:out value='${subjectdetails.id}' />">Edit</a>
							&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?id=<c:out value='${subjectdetails.id}' />">Delete</a></td>
						<td><c:out value="${subjectdetails.id}" /></td>
							
							<td><c:out value="${subjectdetails.sub1}" /></td>
							<td><c:out value="${subjectdetails.sub2}" /></td>
							<td><c:out value="${subjectdetails.sub3}" /></td>
							<td><c:out value="${subjectdetails.sub4}" /></td>
							<td><c:out value="${subjectdetails.sub5}" /></td>
							<td><c:out value="${subjectdetails.sub6}" /></td>
							<td><c:out value="${subjectdetails.sub7}" /></td>
							<td><c:out value="${subjectdetails.sub8}" /></td>
							<td><c:out value="${subjectdetails.sub9}" /></td>
							<td><c:out value="${subjectdetails.sub10}" /></td>
					
							<td><c:out value="${subjectdetails.sub11}" /></td>
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>

</body>
</html>