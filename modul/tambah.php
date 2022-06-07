<?php
switch($_GET['aksi']){
    case "tampil": //untuk interface tambah barang
    $query2=mysqli_query($conn,"SELECT COUNT(kode_handphone) AS total FROM tabel_stok"); 
    $tampil2=mysqli_fetch_array($query2);
    echo "<span style='font-size:18pt; font-weight:bold;'>Tambah Data HP</span></br></br>
        <form method='POST' action='?modul=tambah&aksi=aksitambah'>
        <table class='forminput'>
        <tr>
        <td>Kode Handphone</td><td>: <input type='varchar' name='kode_handphone' maxlength='12' required='required' oninput='setCustomValidity(\"\")' oninvalid='this.setCustomValidity(\"Isi Kode ..!\")'/></td>
        </tr>
        <tr>
        <td>Nama Handphone</td><td>: <input type='varchar' name='nama_handphone' maxlength='30' required='required' oninput='setCustomValidity(\"\")' oninvalid='this.setCustomValidity(\"Isi Nama ..!\")'/></td>
        </tr>
        <tr>
        <td>Brand Name</td><td>: <input type='varchar' name='brand_name' maxlength='30' required='required' oninput='setCustomValidity(\"\")' oninvalid='this.setCustomValidity(\"Isi Brand..!\")'/></td>
        </tr>
        <tr>
        <td>Stok Awal</td><td>: <input type='int' name='stok_awal' maxlength='20' required='required' oninput='setCustomValidity(\"\")' oninvalid='this.setCustomValidity(\"Isi stok awal..!\")'/></td>
        </tr>
        <tr>
        <td>Barang Masuk</td><td>: <input type='int' name='barang_masuk' maxlength='20' required='required' oninput='setCustomValidity(\"\")' oninvalid='this.setCustomValidity(\"Isi barang masuk..!\")'/></td>
        </tr>
        <tr>
        <td>Barang Keluar</td><td>: <input type='int' name='barang_keluar' maxlength='20' required='required' oninput='setCustomValidity(\"\")' oninvalid='this.setCustomValidity(\"Isi barang keluar..!\")'/></td>
        </tr>
        <tr>
        <td>Stok Akhir</td><td>: <input type='int' name='stok_akhir' maxlength='20' required='required' oninput='setCustomValidity(\"\")' oninvalid='this.setCustomValidity(\"Isi stok akhir..!\")'/></td>
        </tr>
        <tr><td colspan='2'><input type='submit' value='Simpan'/><input type='submit' value='Batal' onclick='self.history.back()'/></tr>
        <tr></tr>
        </table>
        ";
    echo "<th>Total Data Pasien : $tampil2[total]</th>";
    break;
    
    case "aksitambah": //untuk aksi tambah barang
    $sql = mysqli_query($conn,"INSERT INTO tabel_stok
        (kode_handphone,nama_handphone,brand_name,stok_awal,barang_masuk,barang_keluar,stok_akhir) 
        values (
        '$_POST[kode_handphone]',
        '$_POST[nama_handphone]',
        '$_POST[brand_name]',
        '$_POST[stok_awal]',
        '$_POST[barang_masuk]',
        '$_POST[barang_keluar]',
        '$_POST[stok_akhir]')
        ");  
        if (!$sql)
                {
                echo '<script>alert(\'Data Gagal Dimasukkan\')
                    setTimeout(\'location.href="?modul=handphone&aksi=tampil"\' ,0);</script>';
                }else
                {
                echo '<script>alert(\'Data Berhasil Dimasukkan\')
                    setTimeout(\'location.href="?modul=handphone&aksi=tampil"\' ,0);</script>';
        }
    break;
}
?>