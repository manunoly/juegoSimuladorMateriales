
angular.module('edificaciones').controller('edificacionesController', ['$scope', '$routeParams', function ($scope, $routeParams) {
        $scope.message = 'Equipo Edificaciones.';
        $scope.idTip = $routeParams.tip;
        if ($routeParams.tip) {
            for (var i in $scope.consejosEEE) {
                if ($scope.consejosEEE[i].id == $routeParams.tip){
                    $scope.tipEEE = $scope.consejosEEE[i];
                    break;
                }
            }
        }
    }]);