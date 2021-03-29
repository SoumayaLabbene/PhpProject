<?php
session_start();
require_once('config.php');


$Email = $_POST['Email'];
$password = $_POST['password'];

$sql = "SELECT * FROM user WHERE Email = ? AND Password = ? LIMIT 1";
$stmtselect  = $db->prepare($sql);
$result = $stmtselect->execute([$Email, $password]);

if($result){
	$user = $stmtselect->fetch(PDO::FETCH_ASSOC);
	if($stmtselect->rowCount() > 0){
		$_SESSION['userlogin'] = $user;
		echo '1';
	}else{
		echo 'Email or password incorrect';		
	}
}else{
	echo 'There were errors while connecting to database.';
}