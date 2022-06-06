<?php
switch($_GET['aksi']){

case "tampil": //untuk mengakses aksi=tampil


    include 'koneksi/koneksi.php';
    include 'modul/db.php';
    
    echo "<span style='font-size:18pt; font-weight:bold;'>Antrian Pasien</span>";
    echo "<br><br/>";
    echo "<br>Diurut berdasarkan pertama masuk<br/>";
    echo "Silahkan masukkan nama dan nomor telepon pasien yang mengantri :";
    echo "<br></br>";
    getTodoItems($_COOKIE['my_id']);
    

    if(isset($_POST['submit_description'])){
        addTodoItem($_POST['description'], $_POST['telepon']);
        header("Refresh:0");        
    }
    
    if(isset($_POST['submit_check_list'])){
            deleteTodoItem($_POST['check_list']);
        header("Refresh:0");
    }



break;

}
?>

<html>
<body>
    <hr />
    <form method="post">
        <table>
            <td>Nama Pasien :</td><td><input type="text" name="description" /></td>
            <tr><td>Nomor Telepon :</td><td><input type="varchar" name="telepon" /></td></tr>
                <input type="submit" name="submit_description" value="Tambah Antrian"/>
            </td></tr>
        </table>
    </form>
    <hr />
</body>
</html>

<html>
<body>
    <hr />
    <form method="post">
        <table>
            <tr><td>
                <input type="submit" name="submit_check_list" value="Proses Antrian"/>
            </td></tr>
        </table>
    </form>
    <hr />
</body>
</html>