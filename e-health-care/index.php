
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>E-Health Care Hospitals</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>
  <style>
  body {
      font: 400 15px/1.8 Lato, sans-serif;
      color: #777;
  }
  h3, h4 {
      margin: 10px 0 30px 0;
      font-size: 20px;
      color: #111;
  }input[type=text] {
    width: 130px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-position: 10px 10px;
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
    width: 100%;
}
  .container {
      padding: 80px 120px;
  }
  .carousel-inner img {
    -webkit-filter: grayscale(60%);
      filter: grayscale(60%); /* make all photos black and white */
      width: 100%; /* Set width to 100% */
      margin: auto;
  }
  .carousel-caption h3 {
      color: #fff !important;
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
  .bg-1 {
      background: #2d2d30;
      color: #bdbdbd;
  }
  .bg-1 h3 {color: #fff;
  font-size:24px;}
  .bg-1 p {font-style:oblique;
  font-size:20px;}
  .list-group-item:first-child {
      border-top-right-radius: 0;
      border-top-left-radius: 0;
  }
  .list-group-item:last-child {
      border-bottom-right-radius: 0;
      border-bottom-left-radius: 0;
  }


  .nav-tabs li a {
      color:#999999;
  }
  .navbar {
      font-family: Montserrat, sans-serif;
      margin-bottom: 0;
      background-color: #2d2d30;
      border: 0;
      font-size: 16px !important;
	font-weight:900;
      letter-spacing: 2px;
      opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand {
      color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
      color: #fff !important;
  }
  .navbar-nav li.active a {
      color: #fff !important;
      background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
  }
  .open .dropdown-toggle {
      color: #fff;
      background-color: #555 !important;
  }
  .dropdown-menu li a {
      color: #000 !important;
  }
  .dropdown-menu li a:hover {
      background-color: red !important;
  }
  footer {
      background-color: #2d2d30;
      color: #f5f5f5;
      padding: 22px;
  }
  footer a {
      color: #f5f5f5;
  }
  footer a:hover {
  color:#FFFF66;
      text-decoration: none;
  }
  .form-control {
      border-radius: 0;
  }
  textarea {
      resize: none;
  }    footer .glyphicon {
      font-size: 20px;
      margin-bottom: 20px;
      color:#999999;
  }  .container-fluid {
      padding: 5px 20px;
  }
  </style></head>

  <?php
	   include("connection.php");
error_reporting(0);
 $queryPermission="WHERE permission='Approved'";
  $show_number_pending_request_query = "SELECT *
                  FROM doctor $queryPermission
				";
				   $run = mysqli_query($db, $show_number_pending_request_query);
				   $count=mysqli_num_rows($run);




?>
<?php    $queryPermission="WHERE permission='Approved' || permission='Added' ";
       $show_approve_request_query = "SELECT *
                  FROM doctor WHERE permission='Approved' || permission='Added'
				 ";
$n_query=mysqli_query($db,$show_approve_request_query );
                              while($drow = mysqli_fetch_array($n_query))
				                  {}
								    $count=mysqli_num_rows($n_query);
								  ?>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid ">
    <div class="navbar-header">
      <a class="navbar-brand text-dark" href="#myPage"><strong>E-Health Care Hospitals</strong></a>
    </div>

    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">LogIn <span class="caret"></span></a>
          <ul class="dropdown-menu">
                  <li><a href="Doctor/doctor_login.php">Doctor</a></li>
                  <li><a href="Users/login.php">User</a></li>
            	<li><a href="Admin/adminlogin.php">Admin</a></li>
                  </ul>
          </li>
        <li>
          <a href="#about_us">About Us</a>
        </li>


        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Doctors
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
     <li> <a href='medicine.php'>Medicine</a></li>
    <li>  <a href='dentist.php'>Dentist</a></li>
      <li> <a href='cardiologist.php'>Cardiologist</a></li>
     </ul>
        </li>

   <li> <a href="#contact" onclick="toggleFunction()">Contact Us</a></li>

      </ul>
    </div>
  </div>
</nav>

<img src="pic/1.jpg" alt="img1" width=100% height="auto">

<div id="about_us" class="bg-1" height="auto">
  <div class="container">
    <h3 class="text-center">E-Health care Hospitals , Hyderabad</h3>
  <p class="text-center"><em>Virtual healthcare  means online patient care!</em></p>
    <p class="text-center"> Our highly specialized experts are deeply experienced in treating rare and complex conditions . You can book a appointment by login/register . If you are not registered user, please register from above  link.
    <br/><br/>We have very specialized doctors who pursed their studies at abroad. And the combining these dots from various places is intiated by the E-Care Hospitals.Our first branch established in Hyderabad.And we forwardly looking to open more branches to provide our services to the whole nation.
     <br/><br/>&quot; Medicines cure disesases , but only doctors can cure patients &quot;
 </p>

    </div>
  </div>

  <!-- The Contact Section -->
  <div  id="contact" style="text-align:center;font-size:20px">
    <br/>
    <h2 class=" w3-center text-center text-capitalize">CONTACT US</h2>
    <p class="w3-opacity w3-center"><i>If you want to know anythings from us ?Contact us from below links..</i></p>
    <br/>
    <i class="fa fa-map-marker" style="text-align:center;"></i> E-Care Hospitals , Hyderabad<br>
    <i class="fa fa-phone w3-center text_center"></i>  Phone: +91 8432156754<br>
    <i class="fa fa-envelope w3-center text_center"> </i>  Email:  Ecarehosptalsadmin@gmail.com<br>
    <br/>
      </div>


        <?php
if(isset($error_msg)){echo $error_msg;}
if(isset($success_msg)){echo $success_msg;}

?>
        </form>
      </div>
    </div>
  </div>

<!-- Footer -->
<footer class="text-center">
  <p>Copyright &copy;E-Healthcare</a></p>
  <br/>
  <h5>E-Health Care Hospitals , Hyderabad</h5>
</footer>

</body>
</html>
