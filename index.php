<?php include 'navbar.php'; ?>
<?php
require "settings/init.php";

if(!empty($_GET["type"])){
    if($_GET["type"] == "slet"){
        $id = $_GET["id"];

        $db->sql("DELETE FROM produkter WHERE prodId = :prodId", [":prodId"=> $id], false);

        header("Location: index.php");
    }

}

$produkter = $db->sql("SELECT * FROM produkter");
?>



<!DOCTYPE html>
<html lang="da">
<head>
    <meta charset="utf-8">

    <title>Film liste</title>

    <meta name="robots" content="All">
    <meta name="author" content="Udgiver">
    <meta name="copyright" content="Information om copyright">

    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="css/styles.css" rel="stylesheet" type="text/css">

    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
<div class="container mt-5">
    <h1 class="fw-bold text-uppercase border-bottom">Filmshop</h1>
</div>
<br>
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <p class="insert-p">Hos os finder du et omfattende udvalg af film fra forskellige genrer, årtier og verdensdele. Uanset om du er på jagt efter den seneste blockbuster, en klassisk favorit eller en skjult perle, har vi det hele samlet her til dig.<br>
                <br>
                Så start din søgen nu, og lad os hjælpe dig med at finde den perfekte film til din næste filmoplevelse!</p>
        </div>
        <div class="col-md-6 image-overlay-container">
            <div class="overlay"></div>
            <img class="top-dino" src="images/top-dino.jpg">
        </div>
    </div>
</div>

<div class="container">

    <div class="products">
       <div class="filter p-5">
           <div class="row align-items-center">
              <div class="col-11">
                 <input type="search" class="form-control nameSearch" placeholder="Søg efter navn, genre, skuespiller">
              </div>
                <div class="col-1 pe-0">
                   <i class="fa-solid fa-magnifying-glass fa-xl" style="color: #ffffff;"></i>
               </div>
           </div>
       </div>

        <div class="items">

        </div>

    </div>
</div>

<?php include 'footer.php'; ?>

<script src="node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<script type="module">
   /* import Kage from "./js/kage.js";

    const kage = new Kage();

    kage.kageEllerHvad();*/

    /*kage.skalKimGiveKage(true ).then((response) => {

        console.log(response);

        kage.erDetEnStorKage('small').then((response) => {
            console.log(response);

        }).catch((error) => {
            console.log(error);
        });

    }).catch((error) => {
        console.log(error);
    });*/
</script>

<script type="module">
    import Users from "./js/products.js";
    import Products from "./js/products.js";

    const products = new Products();
    products.init();
</script>
<script src="https://kit.fontawesome.com/645a3a1c42.js" crossorigin="anonymous"></script>
</body>
</html>