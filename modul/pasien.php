<?php
$server   ="localhost" ; //server localhost
$username ="root"; //username default 
$password =""; //password root. Default kosongkan aja
$database   ="doktergigi_php"; //ini adalah nama database
$conn = mysqli_connect($server, $username, $password, $database) or die("Connection failed: " . mysqli_connect_error());
switch($_GET['aksi']){
case "tampil": //untuk mengakses aksi=tampil
echo "<h3>Data Pasien</h3>";
$query=mysqli_query($conn,"SELECT * FROM tabel_pasien order by kode_pasien"); 
echo "<table class='tabel' border='1' width='600px'>
<tr>
<th>Nomor</th>
<th>Kode Pasien</th>
<th>Nama Pasien</th>
<th>Golongan</th>
<th>Jenis Kelamin</th>
<th>Tinggi</th>
<th>Alamat</th>
<th>Keterangan</th>
<th>Hapus</th>
<th>Print</th>
</tr>"; 
$nomor=1; 
while($tampil=mysqli_fetch_array($query))
{
echo "<td>$nomor</td>";
echo "<td>$tampil[kode_pasien]</td>";
echo "<td>$tampil[nama_pasien]</td>";
echo "<td>$tampil[golongan_pasien]</td>";
echo "<td>$tampil[jenis_kelamin]</td>";
echo "<td>$tampil[tinggi]</td>";
echo "<td>$tampil[alamat]</td>";
echo "<td>$tampil[keterangan]</td>";
echo "<td><a href='?modul=pasien&aksi=aksihapus&kode_pasien=$tampil[kode_pasien]' onclick='return confirm(\"Anda Yakin Menghapus Data Ini?\")'>Hapus</a></td>";
echo "<td><a href='http://localhost/sisteminformasi/modul/printing.php?kode_pasien=$tampil[kode_pasien]&nama_pasien=$tampil[nama_pasien]&jenis_kelamin=$tampil[jenis_kelamin]&golongan_pasien=$tampil[golongan_pasien]&alamat=$tampil[alamat]'> Print Kartu Pasien</a></td>";
echo "</tr>";
$nomor++; 
}
echo "</table>";
break;

case "aksihapus": //untuk aksi menghapus data barang
$sql = mysqli_query($conn,"delete from tabel_pasien where kode_pasien = '$_GET[kode_pasien]'");  
if (!$sql)
    {
    echo '<script>alert(\'Data Gagal Dihapus\')
    setTimeout(\'location.href="?modul=pasien&aksi=tampil"\' ,0);</script>';
    }else
    {
    echo '<script>setTimeout(\'location.href="?modul=pasien&aksi=tampil"\' ,0);</script>';
    }
    break;
break;

}

?>

<body>
    <br></br>
    <button onclick="window.open('http://localhost/sisteminformasi/modul/pdfoutput.php')"> Print Seluruh Data </button>
</body>