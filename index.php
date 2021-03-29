<?php

session_start();

    if (!isset($_SESSION['userlogin'])) {
        header('Location: login.php');
    }

    if (isset($_GET['logout'])) {
        session_destroy();
        unset($_SESSION);
        header('Location: login.php');
    }

    $pdo = new PDO('mysql:host=localhost;port=3306;dbname=SMU PLAY&STUDY', 'root', 'root');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $subject = "";
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $title = $_POST['subject-name'];
        if (!$subject) {
            $errors[] = 'Subject title is required';
            if (empty($errors)) {
                $statement = $pdo->prepare("INSERT INTO Professor_Subjects (Professor_Id, Subject_Name)
                        VALUES ( :profId, :subjectName)");
                $statement->bindValue(':profId', $_SESSION['userlogin']['Id']);
                $statement->bindValue(':subjectName', $subject);
                $statement->execute();
                header('Location: contact.php');
            }
        }

    }

?>
<!DOCTYPE html>
<html>
<head>
  <title>Cohorts</title>
  <link rel="stylesheet" type="text/css" href="index.css">
  <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

</head>
<body>
<a href="index.php?logout=true">Logout</a>
<div class="container">
  	<h2>Manage your cohort!</h2>
      <form method="post" enctype="multipart/form-data" >
    <div class="form-group">
        <label>Subject Title</label>
        <input type="text" name="subject-name" class="form-control">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
    </form>
    
</div>
</body>
</html>

<!-- 
<button type="button" name="button" id="vegan">vegan</button> 
<a href="index.php?logout=true">Logout</a>