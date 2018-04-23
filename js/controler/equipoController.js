
angular.module('edificaciones').controller('equipoController',['$scope','$routeParams', function ($scope,$routeParams) {
        $scope.message = 'Miembros del Equipo Edificaciones del Proyecto Edificaciones.';
        if ($routeParams.miembro){
            for (var i in $scope.equipo){
                if ($scope.equipo[i].id == $routeParams.miembro)
                    $scope.integrante = $scope.equipo[i];
            }
        }
//        $http.get("/equipo/"+$routeParams.miembro).success(function(data) {
//        $scope.message = data;
//     });
    }]);