<?php

require '../conexion.php';
try {
    $sql = "SELECT * FROM `estadisticaSimulacion` ORDER BY `consumoCC`";
    $stmt = $conn->prepare($sql);
    $stmt->execute();

    $i = 1;
    while ($fila = $stmt->fetch()) {
        $ganadores[$i]['numero'] = $i;
        $ganadores[$i]['nombre'] = $fila['nombre'];
        $ganadores[$i]['ocupacion'] = $fila['ocupacion'];
        $ganadores[$i]['tempConClima'] = $fila['tempConClima'];
        $ganadores[$i]['consumoCC'] = $fila['consumoCC'];
        $ganadores[$i]['hora'] = $fila['hora'];
        $i = $i + 1;
    }
    die(json_encode($ganadores));
} catch (Exception $ex) {
    die("Ha ocurrido un error al obtener los datos");
}
?>