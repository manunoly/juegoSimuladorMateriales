<?php

//        $scope.region = [{"id": 1, "region": "Sierra", "foto": "img/img.png"}, {"id": 2, "region": "Costa", "foto": "img/img.png"}, {"id": 3, "region": "Oriente", "foto": "img/img.png"}];
//        $scope.pared = [{"id": 1, "pared": "Bloque"}, {"id": 2, "pared": "Ladrillo"}];
//        $scope.piso = [{"id": 1, "piso": "Cemento"}, {"id": 2, "piso": "Ladrillo"}];
//        $scope.techo = [{"id": 1, "techo": "Zinc"}, {"id": 2, "techo": "Loza"}];
//        $scope.rangoHoras = [{"id": 1, "rangoHoras": "06h00 a 11h00"}, {"id": 2, "rangoHoras": "12h00 a 19h00"}, {"id": 3, "rangoHoras": "20h00 a 05h00"}];

require '../conexion.php';
try {
    $sql = "SELECT * FROM `juego_region`";
    $stmt = $conn->prepare($sql);
    $i = 0;
    $stmt->execute();
    while ($fila = $stmt->fetch()) {
        $ganadores['region'][$i]['id'] = $fila['id'];
        $ganadores['region'][$i]['region'] = $fila['region'];
        $ganadores['region'][$i]['foto'] = $fila['foto'];
        $i++;
    }
    $juegoDatos['region'] = json_encode($ganadores['region']);
    
    $i = 0;
    $sql = "SELECT * FROM `juego_paredes`";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    while ($fila = $stmt->fetch()) {
        $ganadores['pared'][$i]['id'] = $fila['id'];
        $ganadores['pared'][$i]['pared'] = $fila['pared'];
        $ganadores['pared'][$i]['foto'] = $fila['foto'];
        $i++;
    }
    $juegoDatos['pared'] = json_encode($ganadores['pared']);
    $i = 0;
    $sql = "SELECT * FROM `juego_piso`";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    while ($fila = $stmt->fetch()) {
        $ganadores['piso'][$i]['id'] = $fila['id'];
        $ganadores['piso'][$i]['piso'] = $fila['piso'];
        $ganadores['piso'][$i]['foto'] = $fila['foto'];
        $i++;
    }
    $juegoDatos['piso'] = json_encode($ganadores['piso']);
    
    $i = 0;
    $sql = "SELECT * FROM `juego_techo`";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    while ($fila = $stmt->fetch()) {
        $ganadores['techo'][$i]['id'] = $fila['id'];
        $ganadores['techo'][$i]['techo'] = $fila['techo'];
        $ganadores['techo'][$i]['foto'] = $fila['foto'];
        $i++;
    }
    $juegoDatos['techo'] = json_encode($ganadores['techo']);
    
    $i = 0;
    $sql = "SELECT * FROM `juego_rangoHoras`";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    while ($fila = $stmt->fetch()) {
        $ganadores['rangoHoras'][$i]['id'] = $fila['id'];
        $ganadores['rangoHoras'][$i]['region_id'] = $fila['region_id'];
        $ganadores['rangoHoras'][$i]['rangoHoras'] = $fila['rangoHoras'];
        $ganadores['rangoHoras'][$i]['foto'] = $fila['foto'];
        $i++;
    }
    $juegoDatos['rangoHoras'] = json_encode($ganadores['rangoHoras']);
    
    die(json_encode($juegoDatos));
} catch (Exception $ex) {
    die("Ha ocurrido un error al obtener los datos");
}
?>