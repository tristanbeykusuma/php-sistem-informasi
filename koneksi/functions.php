<?php

$server   ="localhost" ; //server localhost
$username ="root"; //username default 
$password =""; //password root. Default kosongkan aja
$database   ="php_database"; //ini adalah nama database
$pdo = mysqli_connect($server, $username, $password, $database) or die("Connection failed: " . mysqli_connect_error());


function template_header($title) {
    echo <<<EOT
    <!DOCTYPE html>
    <html>
        <head>
            <meta charset="utf-8">
            <title>$title</title>
            <link href="style.css" rel="stylesheet" type="text/css">
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
        </head>
        <body>
        <nav class="navtop">
            <div>
                <h1>Ticketing System</h1>
                <a href="index.php"><i class="fas fa-ticket-alt"></i>Tickets</a>
            </div>
        </nav>
    EOT;
    }

function template_footer() {
        echo <<<EOT
            </body>
        </html>
        EOT;
    }
?>

<div class="content create">
        <h2>Masukkan keluhan</h2>
        <form action="?modul=costumers&aksi=aksicostumer" method='POST'>
            <label for="title">Title</label>
            <input type="text" name="title" placeholder="Title" id="title" required>
            <label for="email">Email</label>
            <input type="email" name="email" placeholder="johndoe@example.com" id="email" required>
            <label for="msg">Message</label>
            <textarea name="msg" placeholder="Enter your message here..." id="msg" required></textarea>
            <input type="submit" value="Simpan">
        </form>
    </div>

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