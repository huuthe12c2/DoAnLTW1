<?php 
require "config.php";
require "db.php";
$db = new Db;
$id = $_GET['id'];
$product1 = $db->delete($id);
$key = $_GET['key'];
header("location:seach.php?key=".$key);
?>