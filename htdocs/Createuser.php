<?php 
function CreateNewuser()
{
	include 'Connect.php';	
	$User = $_POST["User"];
	$sql = "SELECT  Username FROM login WHERE Username = '$User'";
	$result = mysqli_query($conn,$sql);

	if(mysqli_num_rows($result) == 0)
	{
		$hashPassword = password_hash($_POST["Pass"], PASSWORD_DEFAULT);
		$sql = "INSERT INTO login(Username, Password) VALUES ('$User','$hashPassword')";
		$conn->query($sql);
	}

	else
	{
		echo "Du kan ikke bruge det bruger navn";
	}
}
	if (isset($_POST['Submitbutton'])) 
	{
		CreateNewuser();
	}
?>

<form action="Createuser.php" method="post"> 
Username: <br>
<input type="text" name="User"><br>
Password: <br>
<input type="password" name="Pass" required ><br>
Submitbutton: <br>
<input type="submit" name="Submitbutton"><br>	
</form>