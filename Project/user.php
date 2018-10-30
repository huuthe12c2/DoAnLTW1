<?php
class User{
	public $username;
	public $password;
	public function __construct($username,$password){
		$this->username = $username;
		$this->password = password_hash($password,PASSWORD_DEFAULT);
	}
	public function getFullName(){
		return $this->firstName.$this->lastName;
	}
	public function getUsername(){
		return $this->username;
	}
	public function login($username,$password){
		$hash = password_hash("123456",PASSWORD_DEFAULT);
		if($username=="admin"&&password_verify ($password,$hash)){
			return true;
		}
	}
}
