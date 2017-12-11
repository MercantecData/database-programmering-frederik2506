<?php
$servername = "localhost";
$username = "fhje.skp";
$password = "kugodt952506";
$dbname = "superhelte";
//create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

//check connection
if(!$conn){

	die("connection failed: " . $mysqli_connect_error());
}

//selecter data from database
$sql = "SELECT ID , Superkrafter FROM power";
$result = mysqli_query($conn, $sql);

	if(mysqli_num_rows($result)>0)	{
		//output
		while ($row = mysqli_fetch_assoc($result)) {
			echo "id: " . $row["ID"]." - SuperKraft: " . $row["Superkrafter"]. "<br>";
}

}else{

		echo "0 results";
}	
mysqli_close($conn);
?>
