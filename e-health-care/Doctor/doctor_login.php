<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Doctor Login Page</title>
</head>

<style>
h1{
font-size:50px;
text-align:center;
padding-top:30px;
color:#000066;
}
img
{ float: left;
width: 77px;
}
li{
font-size:24px;
}
h3{
font-size:24px;}
p{
text-align:center;
font-size:26px;}

body {margin:0;
padding:0;
      font: 400 15px/1.8 Lato, sans-serif;
      color: #777;
width:100%;
height:100vh;
background-image:url(../pic/1.jpg);
background-size:cover;
}
</style>
<body class="container display-4">
<?php
error_reporting(0);
session_start();
include("connection.php");

if(isset($_POST['submit'])){

$d_id=$_POST['id'];
$d_pswd=$_POST['pswd'];
$d_email = $_POST['email'];
if(empty($d_email) || empty ($d_pswd))
{
$error_msg="filled all the requirements";
}
//elseif($d_query="select* from doctor where  email='$d_email'  AND pswd='$d_pswd' AND permission='Pending'")
//{
//$error_msg="Wait for  Admins Approval";

//}
else

{

$d_query="select* from doctor where  email='$d_email'  AND pswd='$d_pswd' AND permission='Approved' OR  email='$d_email'    AND pswd='$d_pswd' AND permission='Added'";
	$check=mysqli_query($db,$d_query);

	if(mysqli_num_rows($check)>0)
	/*if($_POST['id']=='$id' && $_POST['pswd']=='$pswd')*/

	{
	$check_drow= mysqli_fetch_assoc($check);
	$_SESSION['email']=$check_drow['email'];
	//$_SESSION['id']=$check_drow['id'];
	echo "<script> window.location='doctor_home_page.php' </script> ";
	}

else
{
$invalid_msg="Invalid email / password / Not Approved/Added by Admin ";
}
}
}
?>

      <!-- Login -->
      <div class="w3-white w3-margin" >
        <div class="w3-container w3-padding w3-black" >
 <h1  class=" text-center font-weight-bold text-white ">Doctor Login</h1>
        </div>

  <form class="modal-content animate" action="doctor_login.php" method="post">
        <div class="w3-container w3-white">

      <label for="email"><b> Email</b></label>
          <p><input class="w3-input w3-border" type="text" placeholder="Enter e-mail"  name="email" style="width:100%" required></p>
         <label for="pswd"><b>Password</b></label>
     <p> <input class="w3-input w3-border" type="password" placeholder="Enter Password" name="pswd" required></p>
      <p> <button type ="submit" name="submit" value="login" class="w3-button w3-block w3-black">Login</button></p>
        </div>

<a style="text-align:center" href="../index.php"><strong style="color:#000000">Back To Home Page</strong></a></p>

      </form>

</body>
</html>
