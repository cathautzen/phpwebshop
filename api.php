<?php
require "settings/init.php";

$data = json_decode(file_get_contents('php://input'), true);

/* Password: Det skal udfyldes og skal være KickPHP
*  nameSeach: Valgfri
 */

$data["password"] = "KickPHP";

/*
Her tester jeg at man har skrevet en værdi i nameSeach og at filmen kommer frem som Json
*/
//$data["nameSeach"] = "2012";

header('Content-type: application/json; charset=utf-8');

if(isset($data["password"]) && $data["password"] == "KickPHP") {
    $sql ="SELECT * FROM produkter WHERE 1=1";
    $bind = [];

    if(!empty($data["nameSearch"])){
        $sql .= " AND prodNavn LIKE CONCAT('%', :prodNavn, '%') ";
        $bind[":prodNavn"] = $data["nameSearch"];

        $sql .= " OR prodGenre LIKE CONCAT('%', :prodGenre, '%') ";
        $bind[":prodGenre"] = $data["nameSearch"];

        $sql .= " OR prodStars LIKE CONCAT('%', :prodStars, '%') ";
        $bind[":prodStars"] = $data["nameSearch"];
    }

    /*
     * Sortere produkter efter pris i JSON
     */
    $sql .= " ORDER BY prodPris";

    $produkter = $db->sql($sql, $bind);
    header("HTTP/1.1 200 OK");

    echo json_encode($produkter);

} else {
    header("HTTP/1.1 401 Unauthorized");
    $error["errorMessage"] = "Dit kodeord er forkert";

    echo json_encode($error);
}
?>