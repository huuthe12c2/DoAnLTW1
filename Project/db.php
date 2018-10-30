<?php
class Db{
	public static $conn = NULL;
	public function __construct(){
		self::$conn = new mysqli(DB_HOST,DB_USER,DB_PASS,DB_NAME);
		self::$conn->set_charset('utf8');
	}
	public function __destruct(){
		self::$conn->close();
	}
	public function getData($obj){
		$arr = array();
		while($row = $obj->fetch_assoc()){
			$arr[]=$row;
		}
		return $arr;
	}
	
	
	//Viet ham lay ra chi tiet san pham theo ID
	public function detail($id){
		$sql = "SELECT * FROM `products`, `manufactures`,`protypes` WHERE `products`.`manu_ID`= `manufactures`.`manu_ID` AND `products`.`type_ID`= `protypes`.`type_ID` AND `ID`= $id";
		$result = self::$conn->query($sql);
		return $this->getData($result);
	}
	public function delete($id){
		$sql="DELETE FROM `products` WHERE `ID`= $id";
		$result = self::$conn->query($sql);
		return $result;
	}
	public function search($key){
		$sql = "SELECT * FROM `products`, `manufactures`,`protypes` WHERE `products`.`manu_ID`= `manufactures`.`manu_ID` AND `products`.`type_ID`= `protypes`.`type_ID` AND `name`LIKE '%".$key."%'";
		$result = self::$conn->query($sql);
		return $this->getData($result);
	}
	public function search1(){
		$sql = "SELECT * FROM `products`, `manufactures`,`protypes` WHERE `products`.`manu_ID`= `manufactures`.`manu_ID` AND `products`.`type_ID`= `protypes`.`type_ID` ORDER BY `ID` DESC LIMIT 1";
		$result = self::$conn->query($sql);
		return $this->getData($result);
	}
	public function listProduct($page,$per_page){
		

		$first_link=($page-1)*$per_page;
		$sql="SELECT * FROM `products`,`manufactures`,`protypes` WHERE `products`.`manu_ID`= `manufactures`.`manu_ID` AND `products`.`type_ID`= `protypes`.`type_ID` LIMIT $first_link,$per_page";
		$kq = self::$conn->query($sql);
		return $this->getData($kq);
	}
	public function phanTrang($base_url,$total_row,$page,$per_page){
		$total_link=($total_row/$per_page);
		$link="";
		for ($i=1; $i <= $total_link ; $i++) { 
			$link=$link."<li><a href='$base_url?page=$i'>$i</a></li>";
		}
		return $link;
	}
	public function login(){
		$sql="SELECT * FROM user";
		//Thuc thi cau truy van
		$result = self::$conn->query($sql);
		return $this->getData($result);
	}
	public function AddCart($name, $type_ID, $manu_ID, $img, $description, $price)
	{
		$sql = "INSERT INTO `products`(`name`, `type_ID`, `manu_ID`, `image`, `description`, `price`) VALUES ('".$name."', '".$type_ID."', '".$manu_ID."', '".$img."', '".$description."', '".$price."')";
		self::$conn->query($sql);
	}
	public function getAllProtype(){
		$sql="SELECT * FROM protype";
		$result = self::$conn->query($sql);
		$arr = array();
		while($row = $result->fetch_assoc()){
			$arr[] = $row;
		}
		return $arr;
	}
	public function editProduct($name, $manu_ID, $price, $image, $desc,$id){
			if ($image == "")
			{
				$sql ="UPDATE products SET name = '$name', manu_ID = '$manu_ID', price = '$price', description = '$desc', date = now() WHERE id = $id";
			}
			else
			{
				$sql ="UPDATE products SET name = '$name', manu_ID = '$manu_ID', price = '$price', image = '$image', description = '$desc',date = now() WHERE id = $id";
			}
		$result = self::$conn->query($sql);
		return $result;
		}


	public function getProtypeByID($id){
		$sql="SELECT * FROM `products`, `protypes`, `manufactures` WHERE `products`.`manu_ID` = `manufactures`.`manu_ID`  AND `products`.`type_ID`= `protypes`.`type_ID` AND  `protypes`.`type_ID`= $id";
		$result = self::$conn->query($sql);
		$row = $result->fetch_assoc();
		return $row;
		}

	public function getProductByID($id){
		$sql="SELECT * FROM products WHERE id = $id";
		$result = self::$conn->query($sql);
		$row = $result->fetch_assoc();
		return $row;
		}
	public function getManufactures(){
		$sql="SELECT * FROM manufactures";
		$result = self::$conn->query($sql);
		$arr = array();
		while($row = $result->fetch_assoc()){
			$arr[] = $row;
		}
		return $arr;
	}

}

