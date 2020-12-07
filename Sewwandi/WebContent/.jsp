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
<title>Search Order</title>
<link rel="stylesheet" type="text/css" href="Bootstrap.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" /></script>


<style type="text/css">


*{color:#000;}

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



.bg{background:url('images/room4.jpg')repeat;
 
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
      height: 706px;
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

.button10 {
  display: inline-block;
  border-radius: 4px;
  background-color: #f06292  ;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 15px;
  padding: 8px;
  width: 80px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 2px;
}

.glow {
  font-size: 30px;
  color: #fff;
  text-align: center;
  -webkit-animation: glow 0.5s ease-in-out infinite alternate;
  -moz-animation: glow 0.5s ease-in-out infinite alternate;
  animation: glow 0.5s ease-in-out infinite alternate;
}

@-webkit-keyframes glow {
  from {
    text-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #e60073, 0 0 40px #e60073, 0 0 50px #e60073, 0 0 60px #e60073, 0 0 70px #e60073;
  }
  
  to {
    text-shadow: 0 0 20px #fff, 0 0 30px #ff4da6, 0 0 40px #ff4da6, 0 0 50px #ff4da6, 0 0 60px #ff4da6, 0 0 70px #ff4da6, 0 0 80px #ff4da6;
  }

</style>

</head>






<body>

<div class="header">
  <div class="header-right">
    <a href="#">Home</a>
    <a href="#">Logout</a>
  </div>
</div>

  <br>
  			<center><h1><img src="images/bad.jpg" width="100px" height="100px"> HOTEL SEWWANDI & WEDDING CENTER <img src="images/bad.jpg" width="100px" height="100px"></h1></center>
		<br>
        <div class="h1">Find Supplier</div>



		<div class="wrapper">
		
		
		

	<div class="sidebar">

		<h5>Hotel Sewwandi</h5>
    <center><img src="images/bad.jpg" width="100px" height="100px" ></center>
    <br>
		<ul>
			<li><a href="adminhome.jsp"><i class="fa fa-home"></i>Home</a></li>
			<li><a href="AddSupplier.jsp"><i class="fa fa-user-plus"></i>Add New Supplier</a></li>
			<li><a href="ReadSupplier.jsp"><i class="fa fa-address-card"></i>Supplier Details</a></li>
			<li><a href="ReadSupplier.jsp"><i class="fa fa-edit"></i>Edit Supplier Details</a></li>
			<li><a href="ReadSupplier.jsp"><i class="fa fa-trash"></i>Delete Supplier Details</a></li>
			<li><a href="#"><i class="fa fa-envelope"></i>Order</a></li>
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
   
    
    
  <div class="panel-body">

<br>

<%


Read_Supplier obj_Read_Supplier=new Read_Supplier();
List<Supplier_User_Bean> list=obj_Read_Supplier.get_values();


Iterator<Supplier_User_Bean> it_list=list.iterator();


%>

<div class="container">
       <div class="row">
         <div class="col-md-12">
           <div class="scrollable">
			<span class="counter pull-right"></span>
				<table class="table table-bordered table-striped results" id="tableMain" border="1" cellspacing="8" cellpadding="20" >
					<thead>
					
					<tr bgcolor="#f48fb1">
						
                    	<th><b>Supplier Type</b></th>
                    	<th><b></b>First Name</th>
                    	<th><b></b>Last Name</th>
                    	<th><b>E-Mail</b></th>
                    	<th><b>Item Name</b></th>
                    	
                    	
                    	<th><b>Order</b></th>
                    	
					</tr>
					
				</thead>
				
<%


while(it_list.hasNext()){
	
	
	Supplier_User_Bean obj_Supplier_User_Bean=new Supplier_User_Bean();
	obj_Supplier_User_Bean=it_list.next();

%>

<tbody>
					<tr>
						
                    	<td><%=obj_Supplier_User_Bean.getSuppliertype()%></td>
                    	<td><%=obj_Supplier_User_Bean.getSupplierfirstname()%></td>
                    	<td><%=obj_Supplier_User_Bean.getSupplierlastname()%></td>
                    	<td><%=obj_Supplier_User_Bean.getSupplieremail()%></td>
                    	<td><%=obj_Supplier_User_Bean.getSupplieritem()%></td>
                    	
                    	
                    		<td>
                    	
                    	<div class="button10">

						<a href="order.jsp?supplierid=<%=obj_Supplier_User_Bean.getSupplierid()%>">Order</a>
						</div>
                    	
                    	
                    	</td>
                    	
					</tr>
				</tbody>
				
				
				
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


	<br><br>

	

 </div>


</div>
 
 <div class="col-md-0"></div>
	</div>
</div>

		
	
		
	
</body>


<br>

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
  
 <div class="footer-bottom">
      <center><p>&copy; Hotel Management.com | Designed By KDY04 Developers (Pvt) Ltd.</p></center>
  </div>

</footer>



</html>