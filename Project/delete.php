<?php 
require "config.php";
require "db.php";
$db = new Db;
$id = $_GET['id'];
$product1 = $db->delete($id);

header("location:index.php?".$page);
?>