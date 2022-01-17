<?php
// SETUP 
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', 'root');
define('DB_NAME', 'university');

// CONESSIONE 
$conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);

if($conn->connect_error) {
	die("Conection Failed");
}
echo '<h1>DB OK</h1>';
?>
