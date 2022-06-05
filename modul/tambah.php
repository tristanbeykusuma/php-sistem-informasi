<?php
switch($_GET['aksi']){
    case "tampil": //untuk interface tambah barang
    $query2=mysqli_query($conn,"SELECT COUNT(kode_pasien) AS total FROM tabel_pasien"); 
    $tampil2=mysqli_fetch_array($query2);
    echo "<span style='font-size:18pt; font-weight:bold;'>Tambah Data Pasien</span></br></br>
        <form method='POST' action='?modul=tambah&aksi=aksitambah'>
        <table class='forminput'>
        <tr>
        <td>Kode Pasien</td><td>: <input type='varchar' name='kode_pasien' maxlength='12' required='required' oninput='setCustomValidity(\"\")' oninvalid='this.setCustomValidity(\"Isi Kode ..!\")'/></td>
        </tr>
        <tr>
        <td>Nama Pasien</td><td>: <input type='varchar' name='nama_pasien' maxlength='30' required='required' oninput='setCustomValidity(\"\")' oninvalid='this.setCustomValidity(\"Isi Nama ..!\")'/></td>
        </tr>
        <tr>
        <td>Golongan Pasien</td><td>: <input type='char' name='golongan_pasien' maxlength='4' required='required' oninput='setCustomValidity(\"\")' oninvalid='this.setCustomValidity(\"Isi Golongan..!\")'/></td>
        </tr>
        <tr>
        <td>Jenis Kelamin</td><td>: <input type='varchar' name='jenis_kelamin' maxlength='4' required='required' oninput='setCustomValidity(\"\")' oninvalid='this.setCustomValidity(\"Isi jenis kelamin..!\")'/></td>
        </tr>
        <tr>
        <td>Tinggi</td><td>: <input type='int' name='tinggi' maxlength='10' required='required' oninput='setCustomValidity(\"\")' oninvalid='this.setCustomValidity(\"Isi Tinggi..!\")'/></td>
        </tr>
        <tr>
        <td>Alamat</td><td>: <input type='varchar' name='alamat' maxlength='255' required='required' oninput='setCustomValidity(\"\")' oninvalid='this.setCustomValidity(\"Isi Alamat..!\")'/></td>
        </tr>
        <tr>
        <td>Keterangan</td><td>: <input type='varchar' name='keterangan' maxlength='255' required='required' oninput='setCustomValidity(\"\")' oninvalid='this.setCustomValidity(\"Isi Keterangan..!\")'/></td>
        </tr>
        <tr><td colspan='2'><input type='submit' value='Simpan'/><input type='submit' value='Batal' onclick='self.history.back()'/></tr>
        <tr></tr>
        </table>
        ";
    echo "<th>Total Data Pasien : $tampil2[total]</th>";
    break;
    
    case "aksitambah": //untuk aksi tambah barang
    $sql = mysqli_query($conn,"INSERT INTO tabel_pasien
        (kode_pasien,nama_pasien,golongan_pasien,jenis_kelamin,tinggi,alamat,keterangan) 
        values (
        '$_POST[kode_pasien]',
        '$_POST[nama_pasien]',
        '$_POST[golongan_pasien]',
        '$_POST[jenis_kelamin]',
        '$_POST[tinggi]',
        '$_POST[alamat]',
        '$_POST[keterangan]')
        ");  
        if (!$sql)
                {
                echo '<script>alert(\'Data Gagal Dimasukkan\')
                    setTimeout(\'location.href="?modul=pasien&aksi=tampil"\' ,0);</script>';
                }else
                {
                echo '<script>alert(\'Data Berhasil Dimasukkan\')
                    setTimeout(\'location.href="?modul=pasien&aksi=tampil"\' ,0);</script>';
        }
    break;
}
?>