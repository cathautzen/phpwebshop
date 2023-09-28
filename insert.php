<?php
require "settings/init.php";

if(!empty($_POST["data"])){
    $data = $_POST["data"];

//    Tilføjelse af billede til database
$fileName = "";
if(!empty($_FILES["prodBillede"]["name"])){
    $targetDir = "images/prodBillede/";

    $fileName = basename($_FILES["prodBillede"]["name"]);
    $targetFilePath = $targetDir . $fileName;

    move_uploaded_file($_FILES["prodBillede"]["tmp_name"], $targetFilePath);

    }

    $sql = "INSERT INTO produkter (
                       prodNavn, 
                       prodBeskrivelse, 
                       prodPris, 
                       prodDirector,
                       prodStars,
                       prodTid,
                       prodGenre,
                       prodBillede
                       ) 
VALUES(
       :prodNavn, 
       :prodBeskrivelse, 
       :prodPris, 
       :prodDirector,
       :prodStars,
       :prodTid,
       :prodGenre,
       :prodBillede)

       ";
    $bind = [":prodNavn" => $data["prodNavn"],
            ":prodBeskrivelse" => $data["prodBeskrivelse"],
            ":prodDirector" => $data["prodDirector"],
            ":prodStars" => $data["prodStars"],
            ":prodPris" => $data["prodPris"],
            ":prodTid" => $data["prodTid"],
            ":prodGenre" => $data["prodGenre"],
            ":prodBillede" => $fileName

    ];

    $db->sql($sql, $bind, false);

    header("Location: insert_approve.php");
    exit;
}
?>

<!DOCTYPE html>
<html lang="da">
<head>
    <meta charset="utf-8">

    <title>Webshop - Film</title>

    <meta name="robots" content="All">
    <meta name="author" content="Udgiver">
    <meta name="copyright" content="Information om copyright">

    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="css/styles.css" rel="stylesheet" type="text/css">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <script src="https://cdn.tiny.cloud/1/iptdsizon31420xzwdsajiivylaht85jr9dehmkbnovvdgm5/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>
</head>

<body>
<div class="container d-flex justify-content-center mt-5">
    <h1>Tilføj film til databasen</h1>
</div>
<br>
<div class="container col-12">
    <p class="d-flex justify-content-center">Denne formular er et praktisk værktøj
        til at indsamle information om nye film til vores database. Med denne formular kan
        vi nemt opdatere vores samling med relevante oplysninger om titel, instruktør og
        udgivelsesår for hver film, hvilket sikrer, at vores database forbliver opdateret
        og informativ.</p>
</div>
<br>
<div class="container formstyle">
    <form method="post" action="insert.php" enctype="multipart/form-data">
        <div class="row">
            <div class="col-12 col-md-6">
                <div class="form-group">
                    <label for="prodNavn">Filmens navn</label>
                    <input class="form-control" type="text" name="data[prodNavn]" id="prodNavn" placeholder="Filmens navn" value="">
                </div>
                <br>
            </div>
            <div class="col-12 col-md-6">
                <div class="form-group">
                    <label for="prodDirector">Instruktør</label>
                    <input class="form-control" type="text" name="data[prodDirector]" id="prodDirector" placeholder="Instruktør" value="">
                </div>
            </div>
            <div class="col-12 col-md-6">
                <div class="form-group">
                    <label for="prodPris">Filmens pris</label>
                    <input class="form-control" type="number" step="0.1" name="data[prodPris]" id="prodPris" placeholder="Filmens pris" value="">
                </div>
            </div>

            <div class="col-12 col-md-6">
                <div class="form-group">
                    <label for="prodDirector">Skuespillere</label>
                    <input class="form-control" type="text" name="data[prodStars]" id="prodStars" placeholder="Stjerner" value="">
                </div>
            </div>
            <div class="col-12">
                <div class="form-group">
                    <br>
                    <br>
                    <span class="prodBeskrivelse titles">Filmens beskrivelse</span>
                    <textarea class="form-control" name="data[prodBeskrivelse]" id="prodBeskrivelse"></textarea>
                </div>
            </div>
            <div class="col-12 col-md-6">
                <div class="form-group">
                    <label for="prodTid">Spilletid (i min.)</label>
                    <input class="form-control" type="text" name="data[prodTid]" id="prodTid" placeholder="Spilletid" value="">
                </div>
            </div>
            <div class="col-12 col-md-6">
                <div class="form-group">
                    <label for="prodGenre">Genre</label>
                    <input class="form-control" type="text" name="data[prodGenre]" id="prodGenre" placeholder="Genre" value="">
                </div>
            </div>
            <div class="col-12">
               <br>
                <div class="input-group mb-3">
                    <input name="prodBillede" type="file" class="form-control" id="prodBillede">
                </div>
            </div>
            <div class="col-12 col-md-6 offset-md-6">
                <br>
                <button class="form-control btn btn-custom" type="submit" id="btnSubmit">Opret produkt</button>
            </div>
            <br>
        </div>
</div>
</form>
</div>




<script src="node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        tinymce.init({
            selector: 'textarea'
        });
    </script>
</body>
</html>
