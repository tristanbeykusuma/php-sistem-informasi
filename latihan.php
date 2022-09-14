<?php 
session_start();

if (isset($_SESSION['id']) && isset($_SESSION['username'])) {

 ?>

<!DOCTYPE html>

<html>
<?php
error_reporting(0);
?>

<head>
<title>Sistem Inventory</title>
<!--Memanggil File CSS-->
<link rel="stylesheet" type="text/css" href="style\style.css"> 
</head>

<body>
<link rel="stylesheet" type="text/css" href="style\style.css"> 
<div class="header">
<h1><center>Sistem Inventory Handphone</center></h1>
</div>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<div class="w3-sidebar w3-light-grey w3-bar-block" style="width:15%;right:0">
<a href='http://digital-dental-record.herokuapp.com/latihan.php' class="w3-bar-item w3-button">Home</a>
<a href='http://digital-dental-record.herokuapp.com/latihan.php?modul=handphone&aksi=tampil' class="w3-bar-item w3-button">Data Handphone</a>
<a href='http://digital-dental-record.herokuapp.com/modul/cari.php' class="w3-bar-item w3-button">Cari Data</a>
<a href='http://digital-dental-record.herokuapp.com/latihan.php?modul=tambah&aksi=tampil' class="w3-bar-item w3-button">Data Baru</a>
<a href='http://digital-dental-record.herokuapp.com/latihan.php?modul=costumer&aksi=tampil' class="w3-bar-item w3-button">Hubungi Kami</a>
<a class="w3-bar-item w3-button">Menu Lainnya</a>
<a href="logout.php" class="w3-bar-item w3-button">Logout</a>
</div>

<div style="margin-left:25%">
<div class="w3-container">
<?php
include "koneksi/koneksi.php"; //untuk koneksi mysql
switch($_GET['modul']){
    default:
    echo '<h1>Menu Utama</h1>
    <p>Selamat datang! Silahkan mengklik menu yang ingin dibuka</p>';
    break;
    case "handphone": //barang adalah nama modul nya
    include "modul/handphone.php";
    break;
    case "tambah":
    include "modul/tambah.php";
    break;
    case "costumer" :
    include "modul/costumer.php";
    break;
    case "cari" :
    break;
    case "printing" :
    include "modul/printing.php" ;
    include "modul/fpdf.php";
    break;
}
?>
</div>
</div>
</body>


</html>

<?php 

}else{

     header("Location: index.php");

     exit();

}

?>
