<?php
$server   ="localhost" ; //server localhost
$username ="root"; //username default 
$password =""; //password root. Default kosongkan aja
$database   ="doktergigi_php"; //ini adalah nama database
$conn = mysqli_connect($server, $username, $password, $database) or die("Connection failed: " . mysqli_connect_error());
?>