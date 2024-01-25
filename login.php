<?php
include 'connection.php';
if(isset($_POST['btn_submit'])){

        $name = $_POST['username'];
        $password = $_POST['pass'];

        $query = "SELECT * from login where username = 'daniyal6429' and pass = '12345'";

        $res = mysqli_query($link, $query);
        $count = mysqli_num_rows($res);

        if($count>0){
            if($name == 'daniyal6429' && $password == '12345'){
            header("location:http://localhost/DataBase_Project/index.php");
            exit();
            }
            else{
                header("location:http://localhost/DataBase_Project/404page.html");
                exit();
            }
        }
        else{
            echo "ERROR: " .sql . "<br>" .mysqli_error($link);
        }
        }
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="x-icon" href="img/logos/cake_logo.png">
    <link rel="stylesheet" type="text/css" href="login.css">
    <title>DLS Bakers</title>
</head>

<body>
    <div id="container">
        <div id="left-container">
            <section>
                <div>
                    <img src="img/logos/cake_logo.png" alt="Logo" width="300px" height="150px" style="padding-left: 60px;">
                </div>
                <!-- <div id="web-name">
                    <h1>DLS</h1>
                    <h1>Bakers</h1>
                </div> -->
            </section>
            <hr>

            <p>Cookies must be enabled in your browser?</p>
        </div>

        <div id="container2">
            <h2 class="login-heading">Login</h2>

            <form method="post">

                <div class="login-user-box">
                    <label>Username</label><br>
                    <input type="text" name="username" required=""><br>
                </div>

                <div class="login-user-box">
                    <label>Password</label><br>
                    <input type="password" name="pass" required=""><br>
                </div>

                <button name="btn_submit"><a href="index.php">Login</a></button>
            </form>
        </div>
    </div>

    <script src="javascript.js"></script>
</body>

</html>