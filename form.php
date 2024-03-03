<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>formulaire</title>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="content_patient">
        <form action="">
            <span class="content_message">Identité du patient</span><br><br>
            <input class="input_box" type="email" name="name" placeholder="Votre Nom" required><i class='bx bxs-user'></i>
            <input class="input_box" type="password" name="lastname" placeholder="Votre Post-Nom" required><i class='bx bx-user-circle'></i>
            <input class="input_box" type="text" name="adress" placeholder="Votre Adresse" required><i class='bx bx-vertical-bottom'></i>
            <input class="input_box" type="text" name="genre" placeholder="Votre Genre" required><i class='bx bx-check-shield'></i>
            <input class="input_box" type="text" name="poids" placeholder="Votre Poids" required><i class='bx bx-alarm-add'></i>
            <input class="input_btn" type="submit" name="btn" value="Envoyer">
        </form>
    </div>
    <div class="content_consultation">
        <form action="">
            <span class="content_message">Consultation</span>
            <input class="input_box" type="email" name="name" placeholder="L'intitulé" required><i class='bx bx-key'></i>
            <input class="input_box" type="password" name="lastname" placeholder="Le Motif" required><i class='bx bx-power-off'></i>
            <input class="input_box" type="date" name="adress" placeholder="La Date du consultation" required>
            <input class="input_btn" type="submit" name="btn" value="Envoyer">
        </form>
    </div>
    <div class="content_prescription">
        <form action="">
            <span class="content_message">Prescription</span>
            <input class="input_box" type="email" name="name" placeholder="L'objet" required><i class='bx bxs-volume-full'></i>
            <input class="input_box" type="password" name="lastname" placeholder="Libellé" required><i class='bx bxl-telegram'></i>
            <input class="input_box" type="date" name="adress" placeholder="La date du prescription" required>
            <input class="input_btn" type="submit" name="btn" value="Envoyer">
        </form>
    </div>
    
    
    
</body>
</html>