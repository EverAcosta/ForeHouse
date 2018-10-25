<?php
	class dbForeHouse{
		private $host = "localhost";
		private $user = "root";
		private $pass = "";
        private $db_Name = "forehousedb";
        private $conectdb;
        private $errors=false;

        function __construct(){
            $conectdb=new mysqli($this->host ,$this->user,$this->pass,$this->db_Name);
            if(mysqli_connect_errno()){
                $this->errors=true;
            }
        }
        function getMysqli(){
            return $this->conectdb;
        }
        function getError(){
            return $this->errors;
        }
        function emailExist($email){
            $results = $conectdb->query("Select id from usuarios where correo = $email");
            $cont = $results->num_rows;
            if($cont>0){
                return true;
            }else{
                return false;
            }
        }
}
?>