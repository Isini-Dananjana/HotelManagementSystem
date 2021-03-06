<%@page import="supplier.Edit_supplier"%>
<%@page import="java.util.Iterator"%>
<%@page import="commom.Supplier_User_Bean"%>
<%@page import="java.util.List"%>

<%@page import="supplier.Read_Supplier"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Supplier Details</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" /></script>


<script type="text/javascript">
  
  function validate()
  {
    var suppliertype = document.getElementById("suppliertype");
    var supplierfirstname = document.getElementById("supplierfirstname");
	var supplierlastname = document.getElementById("supplierlastname");
    var supplierbirth = document.getElementById("supplierbirth");
    var supplierNIC = document.getElementById("supplierNIC");
    var supplierphone = document.getElementById("supplierphone");
	var supplieremail = document.getElementById("supplieremail");
	var supplieraddress = document.getElementById("supplieraddress");
	var supplieritem = document.getElementById("itemname");
	var supplierregidate = document.getElementById("supplierregidate");
	
	
	
	
	 var emailValidate = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;  
	 var numerValidate = /^[0-9]+$/; 
	 var phoneno = /^\d{10}$/;
	 var alphaValidate = /^[a-zA-Z]+$/;  
	 
	
    
      
      if(suppliertype.value.trim() == "" ) {

          alert(" Select the supplier type...");
          suppliertype.style.border="solid 3px red";
          return false;
        }

      else if(supplierfirstname.value.trim() == "" ) {

          alert(" Enter Supplier first name...");
          supplierfirstname.style.border="solid 3px red";
          return false;
        }
		
		 else if(supplierlastname.value.trim() == "" ) {

          alert(" Enter Supplier last name...");
          supplierlastname.style.border="solid 3px red";
          return false;
        }
		
		else if(supplierbirth.value.trim() == ""  ) {

          alert(" Enter the date of birth...");
          supplierbirth.style.border="solid 3px red";
          return false;
        }
      
		 else if(supplierNIC.value.length != 0 && !Email.value.match(emailValidate) ) {
          alert(" Enter the National Identity Card number...");
          supplierNIC.style.border="solid 3px red";
          return false;
        }
      
      else if(supplierphone.value.trim().length != 10 ) {

          alert(" Enter the phone number...");
          supplierphone.style.border="solid 3px red";
          return false;
        }
		
		else if(supplieremail.value.trim() == "" ) {

          alert(" Enter the E-mail address...");
          supplieremail.style.border="solid 3px red";
          return false;
        }
      
		else if(supplieraddress.value.trim() == "" ) {

          alert(" Enter the address...");
          supplieraddress.style.border="solid 3px red";
          return false;
        }
		
		else if(itemname.value.trim() == ""  ) {

	          alert(" Enter the item name...");
	          itemname.style.border="solid 3px red";
	          return false;
	        }
      
		else if(supplierregidate.value.trim() == ""  ) {

          alert(" Enter the register date...");
          supplierregidate.style.border="solid 3px red";
          return false;
        }
      
      
      
      else{
    	  
    	  alert("Done...!");
       
          true;
      }
  }


</script>


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

.bg{background:url('images/sup9.jpg') no-repeat ;
height:100%;
width:100%;

 
}

.add{
border-radius: 5px;
padding:10px 10px;
margin-top:20px;
margin-bottom:20px;

-webkit-box-shadow: -5px 2px 62px 8px rgba(0,0,0,1);
-moz-box-shadow: -5px 2px 62px 8px rgba(0,0,0,1);
box-shadow: -5px 2px 62px 8px rgba(0,0,0,1);
background:url('.jpeg') no-repeat;

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
        <div class="h1">Edit Supplier Details</div>

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
			<li><a href="SupplierOrderList.jsp"><i class="fa fa-envelope"></i>Order</a></li>
			<li><a href="Read_supplier_payment.jsp"><i class="fa fa-envelope"></i>View Supplier Payments</a></li>
		</ul>

		<div class="social_media">
			<a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-instagram"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
		</div>

	</div>
	
	
	
	<%
	int supplierid=Integer.parseInt(request.getParameter("supplierid"));
	
	Edit_supplier obj_Edit_supplier=new Edit_supplier();
	
	Supplier_User_Bean obj_Supplier_User_Bean=obj_Edit_supplier.get_values_of_supplier(supplierid);
	
	%>
	
	
	
	<div class="main_content">
	
	<div class="container-fluid bg">
  <div class="row">
  <div class="col-md-2"></div>
  <div class="col-md-6 col-sm-12">

    
  <div class="panel-body">
 <form onsubmit="return validate()" action="<%= request.getContextPath() %>/controller/edit_supplier_controller.jsp" method="post" class="add" >
 

<b>	

    <div class="form-group">
      
      
       <div class="form-group">
  		<label for="supplierid"  >Supplier ID</label>
     	<input type="text" class="form-control" id="supplierid" name="supplierid" value=<%=supplierid%> placeholder="Enter the First name..." />
    </div>
      
      
    <label for="suppliertype" >Supplier Type</label>
    <select size = "0" class="form-control" id="suppliertype" name="suppliertype" value=<%=obj_Supplier_User_Bean.getSuppliertype() %> placeholder="Select the supplier type...">
<option value="0">--Select a Supplier type--</option>
      	<option value="1">Hotel Design & Decorations</option>
		<option value="2">Food Items</option>
		<option value="3">Hotel Catering</option>
		<option value="4">Furniture</option>
		<option value="5">Hotel Electrical & Technological Equipments</option>
		<option value="6">Beauty Saloon Equipments & Supplies</option>
		<option value="7">Safety & Engineering</option>
		<option value="8">Other Equipments</option>
      	
    </select>
    </div>

    <div class="form-group">
  		<label for="supplierfirstname" >First Name</label>
     	<input type="text" class="form-control" id="supplierfirstname" name="supplierfirstname" value=<%=obj_Supplier_User_Bean.getSupplierfirstname() %> placeholder="Enter the First name..." />
    </div>
    
     <div class="form-group">
    	<label for="supplierlastname" >Last Name</label>
    	<input type="text" class="form-control" id="supplierlastname" name="supplierlastname" value=<%=obj_Supplier_User_Bean.getSupplierlastname() %> placeholder="Enter the Last name..."/>
    </div>
    
    
    
     <div class="form-group">
    	<label for="suppliergender" >Gender</label><br>
    	<input type="radio" id="male" name="suppliergender" value=<%=obj_Supplier_User_Bean.getSuppliergender() %>>
  		<label for="male">Male</label>
  		<input type="radio" id="female" name="suppliergender" value=<%=obj_Supplier_User_Bean.getSuppliergender() %>>
  		<label for="female" >Female</label>
    </div>
    
    
     <div class="form-group">
    	<label for="supplierbirth">Date of Birth</label>
    	<input type="date" class="form-control" id="supplierbirth" name="supplierbirth" value=<%=obj_Supplier_User_Bean.getSupplierbirth() %> placeholder="Select the Date of birth..." />
    </div> 
     

  	<div class="form-group">
    	<label for="supplierNIC" >National Identity Card Number</label>
    	<input type="text" class="form-control" id="supplierNIC" name="supplierNIC" value=<%=obj_Supplier_User_Bean.getSupplierNIC() %> placeholder="Enter the NIC..." pattern="[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][Vv]" />
    </div>

	 <div class="form-group">
    	<label for="supplierphone" >Contact Number</label>
    <input type="text" class="form-control" id="supplierphone" name="supplierphone" value=<%=obj_Supplier_User_Bean.getSupplierphone() %> placeholder="Enter the Contact Number..."  pattern="[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]" required/>
    </div>

	 <div class="form-group">
    	<label for="supplieremail" >E-Mail Address</label>
    <input type="text" class="form-control" id="supplieremail" name="supplieremail" value=<%=obj_Supplier_User_Bean.getSupplieremail()%> placeholder="Enter the e-mail address..." pattern="[a-zA-Z0-9._%+-]+@[a-z0-9.-]+\.[a-zA-Z]{2,4}" required/>
    </div>

 	<div class="form-group">
    	<label for="supplieraddress" >Address</label>
    <input type="text" class="form-control" id="supplieraddress" name="supplieraddress" value=<%=obj_Supplier_User_Bean.getSupplieraddress() %> placeholder="Enter the Permanent Address..."/>
    </div>
    
       <div class="form-group">
    	<label for="itemname" style="color:#fff;">Item Name</label>
    <input type="text" class="form-control" id="itemname" name="itemname" value=<%=obj_Supplier_User_Bean.getItemname() %>  />
    </div>
       <div class="form-group">
    	<label for="supplierregidate" >Registered Date</label>
    	<input type="date" class="form-control" id="supplierregidate" name="supplierregidate" value=<%=obj_Supplier_User_Bean.getSupplierregidate() %> placeholder="Select the Date of Register" />
    </div> 

</b>
		
   <input type="submit" class="btn btn-primary" value="Edit" style="width: 30%; text-align: center; position: center;" />
	
   
  </form>
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