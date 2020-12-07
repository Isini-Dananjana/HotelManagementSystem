<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome admin page</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<style type="text/css">
*{color: #000;}
.bg{background:url('img/wa.jpg') no-repeat;
  width:100%;
  height: 100%;
 
}


.login
{
border-radius: 5px;
padding:60px 40px;
margin-top:40px;
margin-bottom:40px;
width:200%;
 -webkit-box-shadow: -5px 2px 62px 8px rgba(0,0,0,0.75);
-moz-box-shadow: -5px 2px 62px 8px rgba(0,0,0,0.75);
box-shadow: -5px 2px 62px 8px rgba(0,0,0,0.75);
background-color: #fff;
}


h1{

color:white;
text-align:center;
font-weight:bolder;
margin-top:-20px;

}


h2{
font-size:20px;
color:#000;
font-weight: bold;
}


</style>
</head>
<body>
	

<div class="container-fluid bg">
   <div class="row">
  <div class="col-md-3 col-sm-3 col-xs-12"></div>
  <div class="col-md-3 col-sm-3 col-xs-12">
    
 
    

 <form method="post" class="login" >
 
  <h1><u>Already An Admin!</u> </h1>
  
    <br>

	<a href="#" class="btn btn-primary btn-block " style="text-decoration: none;" >Login</a><br>

<br>
<br>
  <h1><u>New Admin!</u> </h1>

    <br>
	
	<a href="#" class="btn btn-primary btn-block " style="text-decoration: none;" >Register</a>
	
    
</form>
</div>
<div class="col-md-3 col-sm-3 col-xs-12"></div>
</div>
</div>
</body>
</html>