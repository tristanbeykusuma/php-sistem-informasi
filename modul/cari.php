<!DOCTYPE html>

<?php 

session_start();

 ?>
<html>
<head>
<title>Cari Data</title>
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
    <th>Kode Handphone</th>
    <th>Nama Handphone </th>
    <th>Brand</th>
    <th>Stok Awal</th>
    <th>Stok Akhir</th>
   </tr>
  </thead>
  <tbody>
   <?php
   //untuk menyambungkan dengan file koneksi.php
    $server   ="sql6.freesqldatabase.com" ; //server localhost
    $username ="sql6519513"; //username default 
    $password ="xcmvhVFGC7"; //password root. Default kosongkan aja
    $database   ="sql6519513"; //ini adalah nama database
    $conn = mysqli_connect($server, $username, $password, $database) or die("Connection failed: " . mysqli_connect_error());

    //jika kita klik cari, maka yang tampil query cari ini
    if(isset($_GET['kata_cari'])) {
     //menampung variabel kata_cari dari form pencarian
     $kata_cari = $_GET['kata_cari'];

     //mencari data dengan menggunakan query
     $query = "SELECT * FROM tabel_stok WHERE nama_handphone like '%".$kata_cari."%' ORDER BY kode_handphone ASC";
    
    }
    else {
        //jika tidak ada pencarian, default yang dijalankan query ini
        $query = "SELECT * FROM tabel_stok ORDER BY kode_handphone ASC";
    }
    
    $result = mysqli_query($conn, $query);

    if(!$result) {
     die("Query Error : ".mysqli_errno($conn));
    }
    //kalau ini melakukan foreach atau perulangan
    while ($row = mysqli_fetch_assoc($result)) {
   ?>
   <tr>
    <td><?php echo $row['kode_handphone']; ?></td>
    <td><?php echo $row['nama_handphone']; ?></td>
    <td><?php echo $row['brand_name']; ?></td>
    <td><?php echo $row['stok_awal']; ?></td>
    <td><?php echo $row['stok_akhir']; ?></td>
   </tr>
   <?php
   }
   ?>

  </tbody>
 </table>
</body>
<body>

<button onclick="location.href = '../latihan.php';" id="myButton" class="float-left submit-button" >Home</button>

</body>
</html>
