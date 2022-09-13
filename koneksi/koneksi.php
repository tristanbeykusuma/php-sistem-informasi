<?php
$server   ="sql6.freesqldatabase.com" ; //server localhost
$username ="sql6519513"; //username default 
$password ="xcmvhVFGC7"; //password root. Default kosongkan aja
$database   ="sql6519513"; //ini adalah nama database
$conn = mysqli_connect($server, $username, $password, $database) or die("Connection failed: " . mysqli_connect_error());
?>
