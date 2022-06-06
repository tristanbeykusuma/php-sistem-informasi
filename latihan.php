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

<div class="navbar">
<?php
include "includes/menu.php"; //ini untuk memanggil file menu
?>
</div>

<body>
<link rel="stylesheet" type="text/css" href="style\style.css"> 
<div class="header">
<h1><center>Sistem Inventory Handphone</center></h1>
</div>


<div class="konten">
<?php
include "koneksi/koneksi.php"; //untuk koneksi mysql
switch($_GET['modul']){
    default:
    echo '<h1>Menu Utama</h1>
    <p>Selamat datang! Silahkan mengklik menu yang ingin dibuka</p>';
    break;
    case "pasien": //barang adalah nama modul nya
    include "modul/pasien.php";
    break;
    case "tambah":
    include "modul/tambah.php";
    break;
    case "list":
    include "modul/list.php";
    break;
    case "db" :
    include "modul/db.php";
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

</body>
<body>

     <a href="logout.php">Logout</a>

</body>
</html>

<?php 

}else{

     header("Location: index.php");

     exit();

}

?>