<?php
session_start();
require_once "user.php";
if(isset($_GET['user'])){
	$user1 = new User($_GET['user'],$_GET['pass']);
	if($user1->login($_GET['user'],$_GET['pass'])){
		if(isset($_GET['remember'])){
			setcookie('user',$_GET['user'],time()+3600);
			setcookie('pass',$_GET['pass'],time()+3600);
		}
		//echo "Logged in successfully";
		//Luu thong tin vao session
		$_SESSION['user']=$_GET['user'];
		header('location:admin.php');
	}
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
</head>
<body>
<form action="" method="get" ">
	Username<input style="margin-left: 1%;" type="text" name="user" value="<?php echo isset($_COOKIE['user'])?$_COOKIE['user']:"" ?>"><br><br>
	Password<input style="margin-left: 1%;" type="Password" name="pass"><br><br>
	<input type="checkbox" name="remember">Remember
	<input type="submit" name="" value="Submit">
</form>
</body>
</html>
