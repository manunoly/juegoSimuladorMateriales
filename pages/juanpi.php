<?php

//validacion 
//$codigo = "12345";
//if (strlen($codigo) == 5 and is_numeric($codigo)) {
//    $url = "http://www.webservicex.net/uszip.asmx/GetInfoByZIP?USZip=" . $codigo;
//    $response = file_get_contents($url);
//    if (strpos($response, $codigo) !== false) {
//        echo 'true';
//    } else {
//        echo 'False';
//    }
//} else {
//    echo 'False';
//}

die("Final");
$final = 100;
$vuelta = 1;

for ($Tf = 273; $Tf <= 330; $Tf += 0.1) {
    for ($Tw = 273; $Tw <= 330; $Tw += 0.1) {
//        echo $Tw." Tw<br>";
//        echo $Tf." Tf<br>";
        $vuelta +=1;
        if ($vuelta > 10000)
            die("Solo 10");
        $Tm = ($Tw + $Tf) / 2;
        $u = (1.846 + 0.00472 * ($Tm - 300)) * pow(10, -5);
        $d = 1.1614 - 0.00353 * ($Tm - 300);
        $K = 0.0263 + 0.000074 * ($Tm - 300);
        $Cf = (1.007 + 0.00004 * ($Tm - 300)) * pow(10, 3);
        //echo $u."<-u<br>".$d."<-d<br>".$K."<-K<br>".$Cf."<-Cf<br>";
        $B = 1 / $Tm;
        $v = $u / $d;
        $Pr = ($u * $Cf) / $K;
        $Gr = (9.8 * $B * ($Tw - $Tf) * 125) / pow($v, 2);
        $Ra = $Pr * $Gr;
//        echo 'Gr'.$Gr."<br>";
//        echo 'Pr'.$Pr."<br>";
//        echo 'Ra'.$Ra."<br>";

        $h1 = ((0.68 + ((0.67 * pow($Ra, (1 / 4))) / pow(1 + pow((0.492 / $Pr), (9 / 16)), (4 / 9)))) * ($K / 5));

        $h2 = ((9.5 * 60 * $Tw) / (60 + (0.05 * 9.5))) * (1 / (300 + $Tf + $Tw));
        if ($h1 == $h2) {
            echo "Tw " . $Tw . "<br>";
            echo "Tf" . $Tf;
            die("Se igualo");
        }
        $tmp = $h1 - $h2;
        echo 'resta' . $tmp . "<br>";
//        echo 'h2'.$h2."<br>";

        if ($tmp > 0) {
            if ($tmp < $final) {
                $finalTw1P = $Tw;
                $finalTf2P = $Tf;
            }
        } elseif ($tmp < 0) {
            if ($tmp < 0) {
                if ($tmp < $final) {
                    $finalTw1 = $Tw;
                    $finalTf2 = $Tf;
                }
            }
        }
    }
}
echo $vuelta . "<br>";
echo $finalTw1P . "finalTw1P<br>";
echo $finalTf2P . "finalTf2P<br>";
echo $finalTw1 . "finalTw1<br>";
echo $finalTf2 . " finalTf2 <br>";


//Tm = (Tw+Tf)/2
//Propiedades del fluido
//u = [1.846+0.00472*(Tm-300)]*10^(-5)
//d = 1.1614-0.00353*(Tm-300)
//K = 0.0263+0.000074*(Tm-300)
//Cf = [1.007+0.00004*(Tm-300)]*10^3
//B0 = 1/Tm
//v = u / d
//
//
//Pr = (u*Cf)/K Gr = (9.8*B*(Tw-Tf)*125)/v^2
//Ra = Pr*Gr
//
//Cálculo de las temperaturas
//
//
//h1 = [0.68+((0.67*Ra^(1/4))/(1+(0.492/Pr)^(9/16))^(4/9)))]*(K/5)
//h2 = ((9.5*60*Tw)/(60+(0.05*9.5)))*(1/(300+Tf+Tw)
?>