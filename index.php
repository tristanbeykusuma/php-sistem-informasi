<!DOCTYPE html>

<html>

<head>

    <title>LOGIN</title>

    <link rel="stylesheet" type="text/css" href="style/style.css">

</head>

<body><center>
    
     <form action="login.php" method="post">
    
        <h2 class="header"><center>SISTEM INVENTORY HANDPHONE</center></h2>
        
        <section>
        <div>
            <img src="img\connect.png" alt="myPic" width="125" height="125"/>
        </div>
        </section>

        <?php if (isset($_GET['error'])) { ?>

            <p class="error"><?php echo $_GET['error']; ?></p>

        <?php } ?>

        <label>Username</label>

        <input type="varchar" name="username" placeholder="Username"><br>

        <label> Password </label>

        <input type="varchar" name="password" placeholder="Password"><br> 

        <button type="submit">Login</button>
    

     </form>


</center></body>

</html>