<%@page import="supplier.Read_supplier_payment"%>
<%@page import="supplier.Supplier_payment_bean"%>
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
<title>Supplier payment Details</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
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



.bg{background:url('images/1.jpg') no-repeat;
 height:100%;
 width:100%;
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
      height: 700px;
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
    }
.container{
border-radius: 5px;
padding:10px 10px;
margin-top:20px;
margin-bottom:20px;
-webkit-box-shadow: -5px 2px 62px 8px rgba(0,0,0,0.25);
-moz-box-shadow: -5px 2px 62px 8px rgba(0,0,0,0.25);
box-shadow: -5px 2px 62px 8px rgba(0,0,0,0.25);
color: #fff;
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
  padding: 20px;
  width: 80px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 2px;
}



</style>

</head>
<body>

<div class="header">
  <div class="header-right">
    <a href="adminhome.jsp">Home</a>
    <a href="#">Logout</a>
  </div>
</div>

        <br>
  			<center><h1><img src="img/bad.jpg" width="100px" height="100px"> HOTEL SEWWANDI & WEDDING CENTER <img src="img/bad.jpg" width="100px" height="100px"></h1></center>
		<br>
        <div class="h1">Supplier Payment Details</div>

		<div class="wrapper">
		<div class="sidebar">

		<h5>Hotel Sewwandi</h5>
    	<center><img src="img/bad.jpg" width="100px" height="100px" ></center>
    <br>
		<ul>
			<li><a href="adminhome.jsp"><i class="fa fa-home"></i>Home</a></li>
			<li><a href="AddSupplier.jsp"><i class="fa fa-user-plus"></i>Add New Supplier</a></li>
			<li><a href="ReadSupplier.jsp"><i class="fa fa-address-card"></i>Supplier Details</a></li>
			<li><a href="ReadSupplier.jsp"><i class="fa fa-edit"></i>Edit Supplier Details</a></li>
			<li><a href="ReadSupplier.jsp"><i class="fa fa-trash"></i>Delete Supplier Details</a></li>
			<li><a href="SupplierOrderList.jsp"><i class="fa fa-envelope"></i>Order</a></li>
			<li><a href="Read_supplier_payment.jsp"><i class="fa fa-envelope"></i>Supplier Payments</a></li>
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
  <div class="col-md-0"></div>
  <div class="col-md-12">
    <br>
    <header>
    <div class="form-group pull-left">
			
			<button class="btn btn-primary" style="margin-left:50px;" ><a href="Supplierpaymentpdf.jsp" style="color:#fff;">Create a PDF</a></button>
			
			</div>
    <div class="form-group pull-right">
				<input type="text" class="search form-control" placeholder="Search Supplier here..."/>
	</div>
    </header>
    
  <div class="panel-body">
<br>

<%


Read_supplier_payment obj_Read_supplier_payment=new Read_supplier_payment();
List<Supplier_payment_bean> list=obj_Read_supplier_payment.get_values();


Iterator<Supplier_payment_bean> it_list=list.iterator();


%>

<div class="container">
       <div class="row">
         <div class="col-md-12">
           <div class="scrollable">
			<span class="counter pull-right"></span>
				<table class="table table-bordered table-striped results" >
					<thead>
					
					<tr bgcolor="#f48fb1">
						<th><b>Order ID</b></th>
						<th><b>Supplier ID</b></th>
                    	<th><b></b>First Name</th>
                    	<th><b></b>Last Name</th>
                    	<th><b>E-Mail</b></th>
                    	<th><b>Item Name</b></th>
                    	<th><b>Item Amount</b></th>
                    	<th><b>Price per Item</b></th>
                    	<th><b>Order Discount</b></th>
                    	<th><b>Order Price</b></th>
                    	<th><b>Supplier Payment</b></th>
                    	<th><b>Received Date</b></th>
                    	
                    	<th><b>Edit</b></th>
                    	<th><b>Delete</b></th>
					</tr>
					<tr class="no-result warning">
						<td colspan="3"> No Order found</td>
					</tr>
				</thead>
				
<%


while(it_list.hasNext()){
	
	
	Supplier_payment_bean obj_Supplier_payment_bean=new Supplier_payment_bean();
	obj_Supplier_payment_bean=it_list.next();

%>

<tbody>
					<tr>
						<td><%=obj_Supplier_payment_bean.getOrderid()%></td>
                    	<td><%=obj_Supplier_payment_bean.getSupplierid()%></td>
                    	<td><%=obj_Supplier_payment_bean.getSupplierfirstname()%></td>
                    	<td><%=obj_Supplier_payment_bean.getSupplierlastname()%></td>
                    	<td><%=obj_Supplier_payment_bean.getSupplieremail()%></td>
                    	<td><%=obj_Supplier_payment_bean.getItemname()%></td>
                    	<td><%=obj_Supplier_payment_bean.getItemamount()%></td>
                    	<td><%=obj_Supplier_payment_bean.getItemprice()%></td>
                    	<td><%=obj_Supplier_payment_bean.getOrderdiscount()%></td>
                    	<td><%=obj_Supplier_payment_bean.getOrderprice()%></td>
                    	<td><%=obj_Supplier_payment_bean.getSupplierpayment()%></td>
                    	<td><%=obj_Supplier_payment_bean.getReceiveddate()%></td>
                    	
                    	<td>
                    	
                    	<div class="button10">

						<a href="editSupplierpayment.jsp?orderid=<%=obj_Supplier_payment_bean.getOrderid()%>">Edit</a>
						</div>
                    	
                    	
                    	</td>
                    	<td>
                    	
                    	<div class="button10">
	
						<a href="deleteSupplierpayment.jsp?orderid=<%=obj_Supplier_payment_bean.getOrderid()%>">Delete</a>

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
 </div>
 <div class="col-md-0"></div>
	</div>
</div>


<br>


<script src="jquery.min.js"></script>
		<script src="bootstrap.min.js"></script>
		<script >
			$(document).ready(function(){
				$('.search').keyup(function(){
					var searchTerm = $(".search").val();
					var listItem = $('.results tbody').children('tr');
					var searchSplit = searchTerm.replace(/ /g,"'):containsi('");
					$.extend($.expr[':'],{
						'containsi': function(elem,i,match,array){
							return(elem.textContent || elem.innerText || '').toLowerCase().indexOf((match[3] ||
								"").toLowerCase()) >= 0;
						}
					})
					$(".results tbody tr").not(":containsi('"+ searchSplit +"')").each(function(){
						$(this).attr('visible','false');
					})
					$(".results tbody tr:containsi('"+ searchSplit +"')").each(function(){
						$(this).attr('visible','true');
				})
					var jobCount = $('.results tbody tr[visible="true"]').length;
					$('.counter').text(jobCount +' item');
					if(jobCount == 0){
						$('no-result').show();
					}
					else{
						$('no-result').hide();
					}
			})
		  })
		</script>
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