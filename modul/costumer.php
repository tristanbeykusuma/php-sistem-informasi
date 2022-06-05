<!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Add font awesome icons -->
<?php
include 'koneksi/koneksi.php';
// Output message variable
switch($_GET['aksi']){

case "aksicostumer" :
    include 'koneksi/koneksi.php';
    include 'modul/db.php';
    
    echo "<span style='font-size:18pt; font-weight:bold;'>Antrian Pasien</span>";
    echo "<br><br/>";
    echo "Silahkan masukkan keluhan :";
    echo "<br></br>";
    getTicketItems($_COOKIE['my_id']);
    

    if(isset($_POST['submit_description'])){
        addTicketItem($_POST['ticket_title'], $_POST['msg'], $_POST['email']);
        header("Refresh:0");        
    }
    



break;
}
?>

<html>
<h1>Contact Us</h1>
<body>

<p> No. Telp : +628563936355 (<a href="https://wa.me/08563936355">Whatsapp</a>) </p>
<p> Alamat : </p>
<p> Jl. Danau Batur Raya No.54, Jimbaran, Kec. Kuta Sel., Kabupaten Badung, Bali 80361</p>
<p>Email: </p>
<p>doktergigidigitaldental@email.com</p>

</body>
</html>




<div class="footer">
<td>Hubungi kami di </td>
<br>&emsp;&emsp;&emsp;
<a href="https://www.facebook.com" class="fa fa-facebook"></a>
<a href="https://www.twitter.com" class="fa fa-twitter"></a>
<a href="https://www.instagram.com" class="fa fa-instagram"></a>
</div>