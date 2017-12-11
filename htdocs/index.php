<?php 
function userchoice()
{
	include 'Connect.php';	
	$C = $_POST["C#"];
	$Java = $_POST["java"];
	$php = $_POST["php"];
	$html = $_POST["HTML"];
	$Python = $_POST["Python"];
	$Name = $_POST["Name"];
	$Lastname = $_POST["Lastname"];
	$Age = $_POST["Age"];

	
	
	$sql = "INSERT INTO `userchoice`( `Name`,`Lastname`,`Age`,`C Sharp`, `JAVA`, `Php`, `Html`, `Python`) 
	VALUES ('$Name','$Lastname','$Age','$C','$Java','$php','$html','$Python')";
	echo $sql;
	//$result = mysqli_query($conn,$sql);
	$conn->query($sql);
	//echo $result;

	}
	if (isset($_POST["Submitbutton"])) {
	userchoice();
	}
?>

<form action="index.php" method="post"> 
Name: <br>
<input type="text" name="Name" required><br>
Lastname: <br>
<input type="text" name="Lastname"  required><br>
Age: <br>
<input type="input" name="Age"  required><br>
FavoriteProgramLangauge: <br>
C#: 
<input type="checkbox" name="C#" value="1" ><br>
Java:
<input type="checkbox" name="java" value="1" ><br>
Php:
<input type="checkbox" name="php" value="1" ><br>
Html:
<input type="checkbox" name="HTML" value="1" ><br>
Python:
<input type="checkbox" name="Python" value="1" ><br>
Submitbutton: <br>
<input type="submit" name="Submitbutton"><br>	
</form>