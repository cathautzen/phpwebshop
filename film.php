<?php
require "settings/init.php";

$bind = [':prodId' => $_GET["prodId"]];
$produkt = $db->sql("SELECT * FROM produkter WHERE prodId=:prodId", $bind, true)[0];
?>

<!DOCTYPE html>

<html lang="da">

<head>
    <meta charset="utf-8">
    <title>Film</title>

    <meta name="robots" content="All">
    <meta name="author" content="Udgiver">
    <meta name="copyright" content="Information om copyright">

    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="css/styles.css" rel="stylesheet" type="text/css">

    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>

<div class="container mt-4 d-flex justify-content-center">
    <script src="https://cdn.lordicon.com/bhenfmcm.js"></script>
    <lord-icon
            src="https://cdn.lordicon.com/ehexapks.json"
            trigger="hover"
            colors="primary:#4be1ec,secondary:#cb5eee"
            style="width:200px;height:200px">
    </lord-icon>
</div>

<div class="container mt-2">
    <div class="row ">
        <div class="col-4 d-flex justify-content-end">
            <!-- Billede af filmen -->
            <img src="<?php
            echo "images/prodBillede/" . $produkt->prodBillede;
            ?>" style="height: 350px" alt="Filmbillede" class="img-fluid">
        </div>
        <div class="col-6 bg-white mborder ">
            <!-- Filminformation -->
            <h1><?php
                echo $produkt->prodNavn;
                ?>
            </h1>
            <p> <?php
                echo $produkt->prodBeskrivelse;
                ?></p>
            <p><strong>Skuespillere:</strong>
                <?php
                echo $produkt->prodStars;
                ?></p>
            <p><strong>Instruktør:</strong>
                <?php
                echo $produkt->prodDirector;
                ?></p>
            <p><strong>Genre:</strong>
                <?php
                echo $produkt->prodGenre;
                ?>
            </p>
            <p><strong>Længde: </strong><?php
                echo $produkt->prodTid;
                ?></p>
<br>
            <div class="container d-flex align-items-end">
                <button class="btn btn-primary ">Køb filmen til <?php
                        echo $produkt->prodPris;
                        ?> kr</button>
            </div>
        </div>
    </div>
</div>

</body>
</html>