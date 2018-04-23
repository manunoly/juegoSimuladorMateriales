<?php

require './conexion.php';
$sql = "SELECT * FROM `preguntas`";
switch (rand(1, 8)) {
    case 1:
        $sql = $sql . " order by id Desc";
        break;
    case 2:
        $sql = $sql . " order by id Asc";
        break;
    case 3:
        $sql = $sql . " order by pregunta Desc";
        break;
    case 4:
        $sql = $sql . " order by pregunta Asc";
        break;
    case 5:
        $sql = $sql . " order by autor Desc";
        break;
    case 6:
        $sql = $sql . " order by autor Asc";
        break;
    case 7:
        $sql = $sql . " order by titulo Desc";
        break;
    case 8:
        $sql = $sql . " order by titulo Asc";
        break;
    default:
        break;
}
$stmt = $conn->prepare($sql);
$stmt->execute();
$i = 0;
$cantC = $conn->prepare("SELECT count( `preguntas_id` ) as cant FROM `comentario` INNER JOIN preguntas ON ( preguntas_id = id ) WHERE id =:id");
while ($fila = $stmt->fetch()) {
    $equipo[$i]['id'] = $fila['id'];
    $equipo[$i]['autor'] = $fila['autor'];
    $equipo[$i]['votos'] = $fila['votos'];
    $equipo[$i]['titulo'] = $fila['titulo'];
    $equipo[$i]['descripcion'] = $fila['pregunta'];
    $equipo[$i]['foto'] = $fila['urlImg'];
    $cantC->execute(array('id'=>$fila['id']));
//    $cantC->fetch();
//    $equipo[$i]['cantComentarios'] = $cantC['cantComentarios'];
    $i = $i + 1;
}

die (json_encode($equipo));
?>