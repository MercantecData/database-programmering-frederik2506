<?php
$servername = "localhost";
$username = "fhje.skp";
$password = "kugodt952506";
$dbname = "userlogin";
$conn = mysqli_connect($servername, $username, $password, $dbname);

if(!$conn){

	die("connection failed: " . $mysqli_connect_error());
}
echo "test";
?>