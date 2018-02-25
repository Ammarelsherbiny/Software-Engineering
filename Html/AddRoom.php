<html>
<body>
<h1> Signup</h1>	
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "projectone";
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
if($_POST){
$Number = $_POST['num1'];
$sql = "INSERT INTO rooms (`ID`,`Number`) VALUES (Null,'$Number' )";
$sql = "INSERT INTO`rooms` (`ID`, `Number`) VALUES (NULL, '$Number')";
if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
$conn->close();
}
?>

<form action="" method ="Post" >
  Enter Room Number:<br>
  <input type="text" name="num1" >
  <br>
  
  <input type="submit" name="submit" value="Submit" onclick="Rooms.php"  >
  <input type="button" onclick="parent.location='Rooms.php'" value="Back">
</form> 


</body>
</html>