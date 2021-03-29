<?php

$db_user = "root";
$db_pass = "root";
$db_name = "SMU PLAY&STUDY";

$db = new PDO('mysql:host=localhost;dbname='. $db_name . ';port=8889', $db_user, $db_pass);
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

//$db = mysqli_connect('localhost', 'root', 'root', 'SMU PLAY&STUDY');
