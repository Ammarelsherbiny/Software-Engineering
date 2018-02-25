<?php
function getButtons()
{
$servername = "localhost";
$username = "root";
$password = "";
$db = "projectone";
	

$conn = new mysqli($servername, $username, $password, $db);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT ID,Number FROM `rooms` ";
$result = $conn->query($sql);
$x=0;
$btns= array();
	

if ($result->num_rows > 0) {
	while($row = $result->fetch_assoc()) 
		{
			//$btns[$x]=array($row["ID"]=>$row["Number"]);
			$btns[$x]=array('ID'=>$row['ID'],'Num'=>$row['Number']);
			$x=$x+1;
		}
	}
	
$str='';

	
foreach($btns as $btn)
	{
		$str.='&nbsp;<input type="button" value="'.$btn['Num'].'" name="btn_'.$btn['Num'].'" id="button1" class="button1"/>';
	
	}
	return $str;
	$conn->close();
	}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Rooms</title>
    <link href="Room.css" rel="stylesheet" />
    
</head>
<body>
	
	<div id="buttons_panel">
	<?php echo getButtons();?>
	</div>
	<br>
	<button class="button1" id="bf1" onclick="parent.location='AddRoom.php'">Add new room</button>

	
	
	
</body>
</html>