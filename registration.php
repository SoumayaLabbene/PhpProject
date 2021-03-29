
<?php include('server.php') ?>
<!DOCTYPE html>
<html>
<head>
  <title>Registration system PHP and MySQL</title>
  <link rel="stylesheet" type="text/css" href="registration.css">
</head>
<body>
  <div class="header">
  	<h2>Register</h2>
  </div>
	
  <form method="post" action="registration.php">
  	<?php include('errors.php'); ?>
  	<div class="input-group">
  	  <label>Email</label>
  	  <input type="email" name="Email" value="<?php echo $Email; ?>">
  	</div>
  	<div class="input-group">
  	  <label>Id</label>
  	  <input type="int" name="Id" value="<?php echo $Id; ?>">
      </div>
      <div class="input-group">
  	  <label>Name</label>
  	  <input type="text" name="Name" value="<?php echo $Name; ?>">
  	</div>
	  
  	<div class="input-group">
  	  <label>Password</label>
  	  <input type="password" name="password_1">
  	</div>
  	<div class="input-group">
  	  <label>Confirm password</label>
  	  <input type="password" name="password_2">
      </div>
      
    
  	<div class="input-group">
  	  <button type="submit" class="btn" name="reg_user">Register</button>
  	</div>
  	<p>
  		Already a member? <a href="login.php">Sign in</a>
  	</p>
  </form>
</body>
</html>

