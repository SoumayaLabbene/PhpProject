<?php
session_start();

// initializing variables

$Email="";
$Id="";
$Name = "";


$errors = array(); 

// connect to the database
$db = mysqli_connect('localhost', 'root', 'root', 'SMU PLAY&STUDY');

// REGISTER USER
if (isset($_POST['reg_user'])) {
  // receive all input values from the form
  $Email = mysqli_real_escape_string($db, $_POST['Email']);
  $Id = mysqli_real_escape_string($db, $_POST['Id']);
  $Name = mysqli_real_escape_string($db, $_POST['Name']);
  $password_1 = mysqli_real_escape_string($db, $_POST['password_1']);
  $password_2 = mysqli_real_escape_string($db, $_POST['password_2']);

  // form validation: ensure that the form is correctly filled ...
  // by adding (array_push()) corresponding error unto $errors array
  if (empty($Email)) { array_push($errors, "Email is required");
    if (empty($Id)) { array_push($errors, "Id is required");
  if (empty($Name)) { array_push($errors, "Name is required"); }
   }
  }

  if (empty($password_1)) { array_push($errors, "Password is required"); }
  if ($password_1 != $password_2) {
	array_push($errors, "The two passwords do not match");
  }

  // first check the database to make sure 
  // a user does not already exist with the same Email and/or email
  $user_check_query = "SELECT * FROM user WHERE Email='$Email'  LIMIT 1";
  $result = mysqli_query($db, $user_check_query);
  $user = mysqli_fetch_assoc($result);
  
  if ($user) { // if user exists
    if ($user['Email'] === $Email) {
      array_push($errors, "Email already exists");
    }

  }

  // Finally, register user if there are no errors in the form
  if (count($errors) == 0) {
  	$password = $password_1;//encrypt the password before saving in the database

  	$query = "INSERT INTO user (Email, Id, Name, password) 
  			  VALUES('$Email','$Id','$Name','$password')";
  	mysqli_query($db, $query);
  	$_SESSION['Email'] = $Email;
  	$_SESSION['success'] = "You are now logged in";
  	header('location: server.php');
  }
}
