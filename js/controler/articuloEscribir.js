
angular.module('edificaciones').controller('articuloEscribir', ['$scope', '$http', function ($scope, $http) {
        $scope.message = 'Equipo Edificaciones.';
        $scope.htmlcontent = "<p>Redactar el Contenido Aqu&iacute!</p>";
        $scope.salvarEscrito = function () {
            $scope.Resultado = "";
            if ($scope.htmlcontent && $scope.contrasena && $scope.redactarSel && $scope.tituloE) {
                var dataSend = {"autor":$scope.autorE,"urlImg":$scope.imagenE, "tituloE":$scope.tituloE, "escrito": $scope.htmlcontent, "area": $scope.redactarSel, "contrasena": $scope.contrasena };
                $http.post('pages/salvarescrito.php', dataSend)
                        .success(function (data) {
                            $scope.Resultado = data;
                        })
                        .error(function () {
                            $scope.Resultado ="Ha Ocurrido un Error";
                        })

            } else {
                alert("Los campos Tipo de Contenido Contraseña \n Título y Contenido son Obligatorios");
            }

        }



    }]);