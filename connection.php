<?php 
	
	$dbhost = "localhost";
	$dbuser = "root";
	$dbpass = "";
	$dbname = "apartmentdb";

	$connection = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);

	//checking the connection
	if (!$connection) {
		die("Connection failed: " . mysqli_connect_error());
	} else {
		echo "Connected successfully!";
	}

?>