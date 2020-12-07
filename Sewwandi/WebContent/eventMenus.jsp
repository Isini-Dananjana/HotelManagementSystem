<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Event Foods</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/util.css">

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

.bg{background:url('img/home/i2.jpg') no-repeat;
  width:100%;
  height:100%;
}

.add{
border-radius: 5px;
padding:10px 10px;
margin-top:20px;
margin-bottom:20px;
-webkit-box-shadow: -5px 2px 62px 8px rgba(0,0,0,0.75);
-moz-box-shadow: -5px 2px 62px 8px rgba(0,0,0,0.75);
box-shadow: -5px 2px 62px 8px rgba(0,0,0,0.75);
height: auto;
background-color: #fff;
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
        <center><h1><img src="1.jpg" width="100px" height="100px"> HOTEL SEWWANDI & WEDDING CENTER <img src="1.jpg" width="100px" height="100px"></h1></center>
    <br>
        <div class="h1">Event Menu</div>

<form action="" method="POST">
	 <div class="input-field col s12">
	 <h3>Menu 1</h3>
	 <img src="img/food2.jpg" alt="Snow" style="width:200px; height:200px">
	Number of servings<input type="txt" />
  </div>
  	<input type="submit" class="btn btn-primary" value="Order" style="width: 30%; text-align: center; position: absolute;" />
</form>
<br>
<br>
<br>
<form action="" method="POST">
	 <div class="input-field col s12">
	 <h3>Menu 2</h3>
	 <img src="img/food1.jpg" alt="Snow" style="width:200px; height:200px">
	Number of servings<input type="text" name ="order" />
  </div>
  	<input type="submit" class="btn btn-primary" value="Order" style="width: 30%; text-align: center; position: absolute;" />
</form>
<br>
<br>
<br>
<form action="" method="POST">
	 <div class="input-field col s12">
	 <h3>Menu 3</h3>
	 <img src="img/food3.jpg" alt="Snow" style="width:200px; height:200px">
	Number of servings<input type="txt" />
  </div>
  	<input type="submit" class="btn btn-primary" value="Order" style="width: 30%; text-align: center; position: absolute;" />
</form>
<br>
<br>
<br>
<form action="" method="POST">
	 <div class="input-field col s12">
	 <h3>Menu 4</h3>
	 <img src="img/food4.jpg" alt="Snow" style="width:200px; height:200px">
	Number of servings<input type="txt" />
  </div>
  	<input type="submit" class="btn btn-primary" value="Order" style="width: 30%; text-align: center; position: absolute;" />
</form>
<br>
<br>
<br>
<form action="" method="POST">
	 <div class="input-field col s12">
	 <h3>Menu 5</h3>
	 <img src="img/food6.jpg" alt="Snow" style="width:200px; height:200px">
	Number of servings<input type="txt" />
  </div>
  	<input type="submit" class="btn btn-primary" value="Order" style="width: 30%; text-align: center; position: absolute;" />
</form>
<br>
<br>
</body>
<br>
<br>
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
          <p>Katugasthota</p>
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