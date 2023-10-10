<?php
foreach ($produkter as $produkt){
    ?>
    <div class="row border-bottom">
        <div class="col-12 col-md-4">
            <?php
            echo $produkt->prodNavn;
            ?>
        </div>
        <div class="col-12 col-md-4">
            <?php
            echo number_format($produkt->prodPris, 2, ",", ".");
            ?>
        </div>
        <div class="col-12 col-md-2">
            <a href="index.php?type=rediger&id=<?php echo $produkt->prodId; ?>">Rediger</a>
        </div>
        <div class="col-12 col-md-2">
            <a href="index.php?type=slet&id=<?php echo $produkt->prodId; ?>">Slet</a>
        </div>
    </div>
    <?php
}
?>
