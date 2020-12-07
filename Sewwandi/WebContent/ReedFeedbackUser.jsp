<%@page import="commom.Feedback_User_Bean"%>
<%@page import="feedback.Read_Feedback"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>

<%@page import="supplier.Read_Supplier"%>
<%@page import="commom.Supplier_User_Bean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> feedback</title>
<link rel="stylesheet" type="text/css" href="Bootstrap.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" /></script>


<style type="text/css">


*{color:#000;}




header{
  background:#962C54;

}

header ul{
  display: flex;
  justify-content: flex-end;
  max-width: 100%;
  margin: 0 auto;
  padding: 0;
  width:200;
}

header ul li{
  list-style: none;
  position: relative;
  border-radius: 5px;
  padding: 10px 0;
  transition: 0.5s;
  box-sizing: border-box;
  border-right: 1px solid rgba(255,255,255,.2);
}

header ul li:hover{
  background: #de87a8;
}

header ul li:last-child{
  border-right: none;
}

header ul li a{
  text-decoration: none;
  padding: 0 20px;
  color: #fff;

}

header ul li ul{
  position: absolute;
  top: 45px;
  background: #962C54;
  left: 0;
  border-radius: 5px;
  display: block;
  width: 200px;
  transition: 0.1s;
  opacity: 0;
  visibility: hidden;
}

header ul li:hover ul{
  opacity: 1;
  visibility: visible;
}

header ul li ul li{
  border-right: none;
  border-bottom:  1px solid rgba(255,255,255,.2); 
}






.header {
  overflow: hidden;
  background:#962C54;
  padding: 0 0;
}

.header a {
  float: left;
  color: #fff;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px; 
  line-height: 25px;
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
  font-weight: 100px;
  text-align: center;
  background: #962C54;
  font-transform: uppercase;
  color: #fff;
}


}

.details{
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



.bg{background:url('img/feedcus.png') no-repeat;
 
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
      height: 688px;
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
      height: 700px;
      margin-left: 250px;
    }

    .scrollable{
      height: 550px;
      overflow: scroll;
      width: 100%;
      padding: 10px 10px;
    }
.container{
border-radius: 5px;
padding:10px 10px;
margin-top:20px;
margin-bottom:20px;
-webkit-box-shadow: -5px 2px 62px 8px rgba(0,0,0,0.25);
-moz-box-shadow: -5px 2px 62px 8px rgba(0,0,0,0.25);
box-shadow: -5px 2px 62px 8px rgba(0,0,0,0.25);

}

		
		.results tr[visible='false'], .no-result{
			display: none;
		}

		.results tr[visible='true']{
			display: table-row;
		}
		.counter{
			padding: 8px;
			color: #acacac;
		}



</style>

</head>
<body>

<header>
    <ul>
      <li><a href="customerloghome.jsp">Home</a></li>
      <li><a href="#">My Bookings</a>
          <ul>
                <li><a href="#">Rooms</a></li>
                <li><a href="#">Events</a></li>
          </ul>
      </li>
      <li><a href="#">Logout</a>
      
    </ul>
</header>

        <br>
  			<center><h1><img src="img/bad.jpg" width="100px" height="100px"> HOTEL SEWWANDI & WEDDING CENTER <img src="img/bad.jpg" width="100px" height="100px"></h1></center>
		<br>
        <div class="h1"> Feedbacks </div>

		<div class="wrapper">
		<div class="sidebar">

		<h5>Hotel Sewwandi</h5>
    	<center><img src="img/bad.jpg" width="100px" height="100px" ></center>
    <br>
		<ul>
			<li><a href="customerloghome.jsp"><i class="fa fa-home"></i>Home</a></li>
			<li><a href="addfeedback.jsp"><i class="fa fa-comment"></i>Add Feedback</a></li>
			
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
  	<div class="col-md-1"></div>
  	<div class="col-md-10 col-sm-20">

    <br>

    
   <center>
<p >

	<h2 style=" font-style: italic;  font-weight: bold; font-family:Arial; color: #0d47a1"><a href="addfeedback.jsp" style=" font-style: italic;  font-weight: bold; font-family:Arial; color: #FF0000 "><i class="fa fa-comment"> </i> Click Here</a> To Add Your Feedback</h2>
	
</p>
  
</center>
  <div class="panel-body">


<%


Read_Feedback obj_Read_Feedback=new Read_Feedback();
List<Feedback_User_Bean> list=obj_Read_Feedback.get_values();


Iterator<Feedback_User_Bean> it_list=list.iterator();


%>

<div class="container">
       <div class="row">
         <div class="col-md-12">
           <div class="scrollable">
			<span class="counter pull-right"></span>
		
				
<%


while(it_list.hasNext()){
	
	
	Feedback_User_Bean obj_Feedback_User_Bean=new Feedback_User_Bean();
	obj_Feedback_User_Bean=it_list.next();

%>

				
					<table  class="table table-bordered table-striped results"  cellspacing="2" cellpadding="20" >
					
					
					<thead >
						<tr bgcolor="#d1c4e9">
                   		<td><b><%=obj_Feedback_User_Bean.getFeedfirstname()%></b>
                    	<b><%=obj_Feedback_User_Bean.getFeedlastname()%> </b><br>
                    	<b><%=obj_Feedback_User_Bean.getFeedemail()%></b></td>
                    	</tr>
                    	<tr bgcolor="  #f8bbd0 " >
                    	<td ><b><%=obj_Feedback_User_Bean.getFeedbacks()%></b></td><br>
                    	</tr>
                    </thead>	
                    
						
                    	
                    
                    	
                    	
					
			
				
				
				
<%	
}

%>

			</table>
		</div>
		</div>
	</div>
</div>

</div>
 </div>
 </div>
 </div>
 <div class="col-md-0"></div>
	</div>
</div>




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
               <li><a href="#">Tel - 0777 251 804<font color=blue></a></li>
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