<?php

$username = "juego1.2";
$password = "juego1.2";

try {
    $conn = new PDO('mysql:dbname=juego1.2;host=localhost;charset=utf8', $username, $password);

    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
    
} catch (PDOException $e) {
    die("Ha ocurrido un error al tratar de conectar con la BD.");
//    die("Connection failed: " . $e->getMessage());
}
?>