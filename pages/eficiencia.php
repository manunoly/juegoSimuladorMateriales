<?php

require './conexion.php';
$sql = "SELECT * FROM `articulosEE`";
switch (rand(1, 8)) {
    case 1:
        $sql = $sql . " order by id Desc";
        break;
    case 2:
        $sql = $sql . " order by id Asc";
        break;
    case 3:
        $sql = $sql . " order by articulo Desc";
        break;
    case 4:
        $sql = $sql . " order by articulo Asc";
        break;
    case 5:
        $sql = $sql . " order by titulo Desc";
        break;
    case 6:
        $sql = $sql . " order by titulo Asc";
        break;
    case 7:
        $sql = $sql . " order by autor Desc";
        break;
    case 8:
        $sql = $sql . " order by autor Asc";
        break;
    default:
        break;
}
$stmt = $conn->prepare($sql);
$stmt->execute();
$i = 0;
while ($fila = $stmt->fetch()) {
    $equipo[$i]['id'] = $fila['id'];
    $equipo[$i]['descripcion'] = $fila['articulo'];
    $equipo[$i]['votos'] = $fila['votos'];
    $equipo[$i]['titulo'] = $fila['titulo'];
    $equipo[$i]['autor'] = $fila['autor'];
    $equipo[$i]['foto'] = $fila['urlImg'];
    $i = $i + 1;
}

echo (json_encode($equipo));
?>