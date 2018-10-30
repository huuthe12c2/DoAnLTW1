<?php
	require "config.php";
	require "db.php";
	$db = new Db();
	$id = $_GET['id'];
	echo"111";
	if (isset($_POST['edit']))
	{
		if (isset($_FILES['fileUpload']))
		{
			$image = $_FILES['fileUpload']['name'];
			$file_tmp = $_FILES['fileUpload']['tmp_name'];
		}
		else
		{
			$image = "";
		}
		$name = $_POST['name'];
		$type_id = $_POST['type_id'];
		$manu_id = $_POST['manu_id'];
		$description = $_POST['description'];
		$price = $_POST['price'];
		$feature = $_POST['feature'];
		$edit = $db->editProduct($name, $manu_ID, $price, $image, $description, $id);

		if (isset($edit))
		{
			move_uploaded_file($file_tmp,"public/images/".$image);
			header('location:index.php');
		}
	}
?>