<?php

if ($_SERVER['REQUEST_METHOD'] === 'POST' && !empty(file_get_contents('php://input'))) {
    $arreglo = json_decode(file_get_contents('php://input'), TRUE);
//    if ($arreglo['contrasena'] == "iner2015publicar") {
    if (!array_key_exists('contrasena', $arreglo) || $arreglo['contrasena'] == "as") {
        if (!array_key_exists('area', $arreglo) || !array_key_exists('autor', $arreglo) || !array_key_exists('escrito', $arreglo) || !array_key_exists('tituloE', $arreglo))
            die("Parametros Insuficientes");
        
        $urlImg = "";
        if(array_key_exists('urlImg',$arreglo)) 
            $urlImg = $arreglo['urlImg'];
        try {
            require './conexion.php';
            if ($arreglo['area'] == "Articulo") {
                $stmt = $conn->prepare("INSERT INTO `juego1.2`.`articulosEE` (articulo ,autor, titulo, urlImg)
                                        VALUES (:articulo, :autor, :titulo, :urlImg)");
                $stmt->execute(array('articulo' => $arreglo['escrito'], 'autor' => $arreglo['autor'], 'titulo' => $arreglo['tituloE'], 'urlImg' => $urlImg));
            } elseif ($arreglo['area'] == "Pregunta") {
                $stmt = $conn->prepare("INSERT INTO `juego1.2`.`preguntas` (pregunta, autor, titulo, urlImg)
                                        VALUES (:pregunta, :autor, :titulo, :urlImg)");
                $stmt->execute(array('pregunta' => $arreglo['escrito'], 'autor' => $arreglo['autor'], 'titulo' => $arreglo['tituloE'], 'urlImg' => $urlImg));
            }
            die('Escrito Insertado Correctamente');
        } catch (PDOException $e) {
            die("Ha ocurrido un error al tratar de insertar en BD.");
        }
    } else
        die("Contraseña Incorrecta para Publicar");
} else
    die("Debe Completar los datos");
?>