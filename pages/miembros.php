<?php

require './conexion.php';
$sql = "SELECT `id` , `nombre` , `correo` , `cargo` , `empresa` , `bibliografia` , descripcionCorta, `urlImg` FROM `equipo`";
switch (rand(1, 6)) {
    case 1:
        $sql = $sql . " order by id Desc";
        break;
    case 2:
        $sql = $sql . " order by id Asc";
        break;
    case 3:
        $sql = $sql . " order by nombre Desc";
        break;
    case 4:
        $sql = $sql . " order by nombre Asc";
        break;
    case 5:
        $sql = $sql . " order by bibliografia Desc";
        break;
    case 6:
        $sql = $sql . " order by bibliografia Asc";
        break;
    default:
        break;
}
$stmt = $conn->prepare($sql);
$stmt->execute();
$i = 0;
while ($fila = $stmt->fetch()) {
    $equipo[$i]['id'] = $fila['id'];
    $equipo[$i]['nombre'] = $fila['nombre'];
    $equipo[$i]['correo'] = $fila['correo'];
    $equipo[$i]['cargo'] = $fila['cargo'];
    $equipo[$i]['empresa'] = $fila['empresa'];
    $equipo[$i]['descripcion'] = $fila['bibliografia'];
    $equipo[$i]['descripcionCorta'] = $fila['descripcionCorta'];
    $equipo[$i]['foto'] = $fila['urlImg'];
    $i = $i + 1;
}

echo (json_encode($equipo));
?>