<?php 
require "config.php";
require "db.php";
$name = $_POST['name'];
$key = $_POST['name'];
$type_ID = $_POST['type_id'];
$manu_ID = $_POST['manu_id'];
$img = $_FILES['fileUpload']['name'];
$description = $_POST['description'];
$price = $_POST['price'];
///
$target_dir ="public/images/";
$target_file = $target_dir.basename($_FILES["fileUpload"]["name"]);
$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {
    $check = getimagesize($_FILES["fileUpload"]["tmp_name"]);
    if($check !== false) {
        echo "File is an image - ".$check["mime"] . ".";
        $uploadOk = 1;
    } else {
        echo "File is not an image.";
        $uploadOk = 0;
    }
}
// Check if file already exists
//if (file_exists($target_file)) {
   // echo "Sorry, file already exists.";
   // $uploadOk = 0;
//}
// Check file size
//if ($_FILES["fileUpload"]["size"] > 50000000) {
   // echo "Sorry, your file is too large.";
   // $uploadOk = 0;
//}
// Allow certain file formats
if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
&& $imageFileType != "gif" ) {
    
    $uploadOk = 0;
}
// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
    
// if everything is ok, try to upload file
} else {
    if (move_uploaded_file($_FILES["fileUpload"]["tmp_name"], $target_file)) {
        echo "The file ". basename( $_FILES["fileUpload"]["name"]). " has been uploaded.";
    } else {
        
    }
}
///
$db = new Db;
//$db->checkImg();
if( $uploadOk==1)
{
	$addcart = $db->AddCart($name, $type_ID, $manu_ID, $img, $description, $price);
	header("location:detail2.php");
}else{
	header("location:notification.php");
}

 ?>