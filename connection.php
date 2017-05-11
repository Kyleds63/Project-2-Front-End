
<!-- Connect to the database -->
<?php
$link = mysqli_connect("localhost", "planner_db");
if(mysqli_connect_error()) {
	die("ERROR: Unable to connect:" . mysqli_connect_error());
	}
?>