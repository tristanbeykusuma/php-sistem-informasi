<!DOCTYPE html>

<?php 

session_start();

 ?>
<html>
<head>
<title>Belajar PHP</title>
</head>
<body>
 <h1>Pencarian Data</h1>
 <form method="GET" action="cari.php" >

  <label>Kata Pencarian : </label>
  <input type="text" name="kata_cari" value="<?php if(isset($_GET['kata_cari'])) { echo $_GET['kata_cari']; } ?>"  />
  <button type="submit">Cari</button>
 </form>
 <br/>
 <table border="1">
  <thead>
   <tr>
    <th>Kode Pasien</th>
    <th>Nama </th>
    <th>Tinggi</th>
    <th>Alamat</th>
    <th>Keterangan</th>
   </tr>
  </thead>
  <tbody>
   <?php
   //untuk menyambungkan dengan file koneksi.php
    $server   ="localhost" ; //server localhost
    $username ="root"; //username default 
    $password =""; //password root. Default kosongkan aja
    $database   ="php_database"; //ini adalah nama database
    $conn = mysqli_connect($server, $username, $password, $database) or die("Connection failed: " . mysqli_connect_error());

    //jika kita klik cari, maka yang tampil query cari ini
    if(isset($_GET['kata_cari'])) {
     //menampung variabel kata_cari dari form pencarian
     $kata_cari = $_GET['kata_cari'];

     //mencari data dengan menggunakan query
     $query = "SELECT * FROM tabel_pasien WHERE nama_pasien like '%".$kata_cari."%' ORDER BY kode_pasien ASC";
    
    }
    else {
        //jika tidak ada pencarian, default yang dijalankan query ini
        $query = "SELECT * FROM tabel_pasien ORDER BY kode_pasien ASC";
    }
    
    $result = mysqli_query($conn, $query);

    if(!$result) {
     die("Query Error : ".mysqli_errno($conn));
    }
    //kalau ini melakukan foreach atau perulangan
    while ($row = mysqli_fetch_assoc($result)) {
   ?>
   <tr>
    <td><?php echo $row['kode_pasien']; ?></td>
    <td><?php echo $row['nama_pasien']; ?></td>
    <td><?php echo $row['tinggi']; ?></td>
    <td><?php echo $row['alamat']; ?></td>
    <td><?php echo $row['keterangan']; ?></td>
   </tr>
   <?php
   }
   ?>

  </tbody>
 </table>
</body>
<body>

<button onclick="location.href = 'http://localhost/php-sistem-informasi/latihan.php';" id="myButton" class="float-left submit-button" >Home</button>

</body>
</html>
