<?php

function get_client_ip() {
    $ipaddress = '';
    if ($_SERVER['HTTP_CLIENT_IP'])
        $ipaddress = $_SERVER['HTTP_CLIENT_IP'];
    else if ($_SERVER['HTTP_X_FORWARDED_FOR'])
        $ipaddress = $_SERVER['HTTP_X_FORWARDED_FOR'];
    else if ($_SERVER['HTTP_X_FORWARDED'])
        $ipaddress = $_SERVER['HTTP_X_FORWARDED'];
    else if ($_SERVER['HTTP_FORWARDED_FOR'])
        $ipaddress = $_SERVER['HTTP_FORWARDED_FOR'];
    else if ($_SERVER['HTTP_FORWARDED'])
        $ipaddress = $_SERVER['HTTP_FORWARDED'];
    else if ($_SERVER['REMOTE_ADDR'])
        $ipaddress = $_SERVER['REMOTE_ADDR'];
    else
        $ipaddress = 'UNKNOWN';
    return $ipaddress;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST' && !empty(file_get_contents('php://input'))) {
    $arreglo = json_decode(file_get_contents('php://input'), TRUE);
    if (array_key_exists('seleccionRegion', $arreglo) && array_key_exists('seleccionPared', $arreglo) && array_key_exists('seleccionPiso', $arreglo) && array_key_exists('seleccionTecho', $arreglo) && array_key_exists('seleccionRangoHoras', $arreglo)) {
        try {
            require '../conexion.php';
            $stmt = $conn->prepare("SELECT res.id AS id, region, reg.id AS region_id, pared, p.id AS pared_id, piso, piso.id AS piso_id, techo, t.id AS techo_id, rh.rangoHoras, rh.id AS rangoHoras_id, temperaturaExterna, temperaturaInterior, consumoSinClimatizacion, consumoConClimatizacion
                FROM juego_resultados res
                INNER JOIN juego_region reg ON ( res.region_id = reg.id )
                INNER JOIN juego_paredes p ON ( res.paredes_id = p.id )
                INNER JOIN juego_piso piso ON ( res.piso_id = piso.id )
                INNER JOIN juego_techo t ON ( res.techo_id = t.id )
                INNER JOIN juego_rangoHoras rh ON ( res.rangoHoras_id = rh.id )
                WHERE region = :region_id
                AND pared = :paredes_id
                AND piso = :piso_id
                AND techo = :techo_id
                AND rangoHoras = :rangoHoras_id");
            $stmt->execute(array('region_id' => $arreglo['seleccionRegion'], 'paredes_id' => $arreglo['seleccionPared'], 'piso_id' => $arreglo['seleccionPiso'], 'techo_id' => $arreglo['seleccionTecho'], 'rangoHoras_id' => $arreglo['seleccionRangoHoras']));
            $fila = $stmt->fetch();
            //{"region": "Costa", "techo_id": 2, "temperaturaExterna": 21.91, "pared_id": 1, "rangoHoras_id": 1, "region_id": 2, "consumoSinClimatizacion": 1.26, "piso": "Cemento", "consumoConClimatizacion": 1.7, "temperaturaInterior": 31.42, "id": 28, "pared": "Bloque", "rangoHoras": "06h00 a 11h00", "piso_id": 1, "techo": "Loza"}
            $datos['id'] = $fila['id'];
            $datos['region'] = $fila['region'];
            $datos['pared'] = $fila['pared'];
            $datos['piso'] = $fila['piso'];
            $datos['techo'] = $fila['techo'];
            $datos['rangoHoras'] = $fila['rangoHoras'];
            $datos['temperaturaExterna'] = $fila['temperaturaExterna'];
            $datos['temperaturaInterior'] = $fila['temperaturaInterior'];
            $datos['consumoSinClimatizacion'] = $fila['consumoSinClimatizacion'];
            $datos['consumoConClimatizacion'] = $fila['consumoConClimatizacion'];

            $stmt = $conn->prepare("INSERT INTO `juego1.2`.`estadisticaSimulacion` (nombre ,ocupacion, resultado_simulacion_id, ip,consumoCC, tempConClima, hora)
                                        VALUES (:nombre, :ocupacion, :resultado_simulacion_id, :ip, :consumoCC, :tempConClima, :hora)");
            $insertar = $stmt->execute(array('nombre' => $arreglo['nombre'], 'ocupacion' => $arreglo['ocupacion'], 'resultado_simulacion_id' => $datos['id'], 'ip' => get_client_ip(), 'consumoCC' => $datos['consumoConClimatizacion'],'tempConClima' => $datos['temperaturaInterior'] ,'hora' => date("Y-m-d H:i:s")));
            if($insertar)
                $datos['insertado'] = "Ok";
            die(json_encode($datos));
        } catch (PDOException $e) {
            die('Ha ocurrido un error' . $e);
        }
    }
}
?>