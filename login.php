<?php
session_start();

if(!empty($_SESSION['user'])) {
  header('location: index.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulaire</title>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="login.css">
</head>
<body>
    <div class="content_form">
        <form action="">
            <span class="content_message">S'authentifier</span><br><br>
            <input class="input_box" type="email" name="email" placeholder="Votre Email" required><i class='bx bx-envelope'></i><br>
            <input class="input_box" type="password" name="password" placeholder="Votre mot de passe" required><i class='bx bxs-lock'></i><br>
            <input class="input_btn" type="submit" name="btn" value="Se connecter">
        </form>
    </div>
    
</body>
</html>