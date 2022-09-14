<?php
$server   ="localhost" ; //server localhost
$username ="root"; //username default 
$password =""; //password root. Default kosongkan aja
$database   ="php_database"; //ini adalah nama database
$conn = mysqli_connect($server, $username, $password, $database) or die("Connection failed: " . mysqli_connect_error());
switch($_GET['aksi']){
case "tampil": //untuk mengakses aksi=tampil
echo "<h3>Data Handphone</h3>";
$query=mysqli_query($conn,"SELECT * FROM tabel_stok order by kode_handphone"); 
echo "<table class='tabel' border='1' width='600px'>
<tr>
<th>Nomor</th>
<th>Kode HP</th>
<th>Nama HP</th>
<th>Brand</th>
<th>Stok Awal</th>
<th>Barang Masuk</th>
<th>Barang Keluar</th>
<th>Stok Akhir</th>
<th>Hapus</th>
</tr>"; 
$nomor=1; 
while($tampil=mysqli_fetch_array($query))
{
echo "<td>$nomor</td>";
echo "<td>$tampil[kode_handphone]</td>";
echo "<td>$tampil[nama_handphone]</td>";
echo "<td>$tampil[brand_name]</td>";
echo "<td>$tampil[stok_awal]</td>";
echo "<td>$tampil[barang_masuk]</td>";
echo "<td>$tampil[barang_keluar]</td>";
echo "<td>$tampil[stok_akhir]</td>";
echo "<td><a href='?modul=handphone&aksi=aksihapus&kode_handphone=$tampil[kode_handphone]' onclick='return confirm(\"Anda Yakin Menghapus Data Ini?\")'>Hapus</a></td>";
echo "</tr>";
$nomor++; 
}
echo "</table>";
break;

case "aksihapus": //untuk aksi menghapus data barang
$sql = mysqli_query($conn,"delete from tabel_stok where kode_handphone = '$_GET[kode_handphone]'");  
if (!$sql)
    {
    echo '<script>alert(\'Data Gagal Dihapus\')
    setTimeout(\'location.href="?modul=handphone&aksi=tampil"\' ,0);</script>';
    }else
    {
    echo '<script>setTimeout(\'location.href="?modul=handphone&aksi=tampil"\' ,0);</script>';
    }
    break;
break;

}

?>

<body>
    <br></br>
    <button onclick="window.open('http://digital-dental-record.herokuapp.com/php-sistem-informasi/modul/pdfoutput.php')"> Print Seluruh Data </button>
</body>
