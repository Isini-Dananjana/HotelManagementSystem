<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="inventory.inventoryupdatebean"%>
<%@ page import="inventory.Inventoriesupdate"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Item update Details</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" /></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
  
  function validate()
  {
    var itemtype = document.getElementById("itemtype");
    var itemname = document.getElementById("itemname");
    var itemamount = document.getElementById("itemamount");
    var itemdate = document.getElementById("itemdate");
    var itemdescription = document.getElementById("itemdescription");
    
      
      if(itemtype.value.trim() == "" ) {

          alert("Please select an Item type!");
          itemtype.style.border="solid 3px red";
          return false;
        }

      else if(itemname.value.trim() == "" ) {

          alert("Please enter Item name!");
          itemname.style.border="solid 3px red";
          return false;
        }
      
      else if(itemamount.value.trim() == "" ) {

          alert("Please enter amount you want to add!");
          itemamount.style.border="solid 3px red";
          return false;
        }
      else if(itemdate.value.trim() == ""  ) {

          alert("Please select the date!");
          itemdate.style.border="solid 3px red";
          return false;
        }
      else if(itemdescription.value.trim() == "" ) {

          alert("Please enter a small description!");
          itemdescription.style.border="solid 3px red";
          return false;
        }
      
      else{
       
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

.bg{background:url('img/iuw.jpg') no-repeat;
  width:100%;
  height:100%;
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
      width: 300px;
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
      margin-left: 300px;
    }

    .scrollable{
      height: 550px;
      overflow: scroll;
      width: 100%%;
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
        <div class="h1">Item Update Details</div>

<div class="wrapper">
  <div class="sidebar">

    <h5>hotel Sewwandi</h5>
    <center><img src="img/bad.jpg" width="100px" height="100px" ></center>
    <br>
    <ul>
      <li><a href="adminhome.jsp"><i class="fa fa-home"></i>Home</a></li>
      <li><a href="inventorydetails.jsp"><i class="fa fa-address-card"></i>Item details</a></li>
      <li><a href="inventoryadd.jsp"><i class="fa fa-download"></i>Add new Item</a></li>
      <li><a href="inventoryupdateandremove.jsp"><i class="fa fa-wrench"></i>Update or Remove Items</a></li>
      <li><a href="inventoryupdatelist.jsp"><i class="fa fa-wrench"></i>Item Update List</a></li>
      <li><a href="inventoryremovelist.jsp"><i class="fa fa-wrench"></i>Item Remove List</a></li>
      <li><a href="inventorylowalert.jsp"><i class="fa fa-wrench"></i>Items Running Low</a></li>
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
			
			<butto class="btn btn-primary" style="margin-left:50px;" ><a href="inventoryupdatepdf.jsp" style="color:#fff;">Create a PDF</a></button>
			
			</div>
			<div class="form-group pull-right" style="margin-right:50px;">
			
				<input type="text" class="search form-control" placeholder="Search item here"/>
			</div>
			</header>
			  <div class="panel-body">

<br>
<br>

 <%
 Inventoriesupdate inventoriesupdate= new Inventoriesupdate();
        
        
        List<inventoryupdatebean> inventoryupdatelist=inventoriesupdate.getvalues(); 
      
        Iterator<inventoryupdatebean> it_inventoryupdatelist=inventoryupdatelist.iterator();        
%> 

<div class="container">
       <div class="row">
         <div class="col-md-12">
           <div class="scrollable">
			<span class="counter pull-right"></span>
			<table class="table table-bordered table-striped results">
				<thead>
					<tr>
						<th><b>Item ID</b></th>
                    	<th><b>Item Name</b></th>
                    	<th><b>Quantity After Updated</b></th>
                    	<th><b>Updated Amount</b></th>
                    	<th><b>Date Updated</b></th>
					</tr>
					<tr class="no-result warning">
						<td colspan="3"> No item found</td>
					</tr>
				</thead>

<%   
  while(it_inventoryupdatelist.hasNext()){
  
  inventoryupdatebean Inventoryupdatebean = new inventoryupdatebean();
  Inventoryupdatebean=it_inventoryupdatelist.next();
%>

				<tbody>
					<tr>
						<td><%=Inventoryupdatebean.getItemid() %></td>
                    	<td><%=Inventoryupdatebean.getItemname() %></td>
                    	<td><%=Inventoryupdatebean.getItemamount() %></td>
                    	<td><%=Inventoryupdatebean.getItemaddedamount() %></td>
                    	<td><%=Inventoryupdatebean.getItemupdatedate() %></td>
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
 <div class="col-md-0"></div>
</div>
</div>
</div>
</div>
<br>


		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
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
               <li><a href="#">Tel - 0777 251 804</a></li>
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