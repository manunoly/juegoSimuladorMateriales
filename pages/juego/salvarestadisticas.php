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
    if (array_key_exists('nombre', $arreglo) && array_key_exists('ocupacion', $arreglo)) {
        try {
            require '../conexion.php';
            $stmt = $conn->prepare("INSERT INTO `juego1.2`.`estadisticaSimulacion` (nombre ,ocupacion, resultado_simulacion_id, ip, tempConClima, hora)
                                        VALUES (:nombre, :ocupacion, :resultado_simulacion_id, :ip, :tempConClima, :hora)");
            $stmt->execute(array('nombre' => $arreglo['nombre'], 'ocupacion' => $arreglo['ocupacion'], 'resultado_simulacion_id' => $arreglo['resultadosSimulacion'], 'ip' => get_client_ip(), 'tempConClima' => $arreglo['tempConClima'], 'hora' => date("Y-m-d H:i:s")));
            die('Insertado Correctamente');
        } catch (PDOException $e) {
            die('Ha ocurrido un error'.$e);
        }
    }
}
?>