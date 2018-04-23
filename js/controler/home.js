
angular.module('edificaciones').controller('mainController', ['$scope', '$http', function ($scope, $http) {
        // create a message to display in our view
        $scope.message = 'HomePage!';

        $http.get('pages/miembros.php')
                .success(function (data) {
                    $scope.equipo = data;
                })
                .error(function () {
                    $scope.equipo = "Ha Ocurrido un Error al cargar los Integrantes del Equipo";
                })
//        $scope.equipo = [
//            {"id": 1, "nombre": "Andrea Lobato", "foto": "img/cv.jpg", "descripcion": "es una notación de objetos basada en JavaScript, utiliza una sintaxis que nos permite crear objetos de manera rapida y simple, estos objetos pueden ser utilizados de la manera que queramos"},
//            {"id": 2, "nombre": "David Beltran", "foto": "img/cv.jpg", "descripcion": "es una notación de objetos basada en JavaScript, utiliza una sintaxis que nos permite crear objetos de manera rapida y simple, estos objetos pueden ser utilizados de la manera que queramos"}
//        ];
        $http.get('pages/eficiencia.php')
                .success(function (data) {
                    $scope.consejosEEE = data;
                })
                .error(function () {
                    $scope.consejosEEE = "Ha Ocurrido un Error al cargar los consejos de Eficiencia Energ&eacutetica";
                })
//        Desabilitar las preguntas        
//        $http.get('pages/preguntas.php')
//                .success(function (data) {
//                    $scope.preguntasEEE = data;
//                })
//                .error(function () {
//                    $scope.preguntasEEE = "Ha Ocurrido un Error al cargar las preguntas de Eficiencia Energ&eacutetica";
//                })
//        $scope.consejosEEE = [
//            {"id": 1, "titulo": "Cubierta", "foto": "img/55715e9dc461881f758b4592.jpg", "descripcion": "es una de objetos basada en JavaScript, utiliza una sintaxis que nos permite crear objetos de manera rapida y simple, estos objetos pueden ser utilizados de la manera que queramos"},
//            {"id": 2, "titulo": "Pared", "foto": "img/55715e9dc461881f758b4592.jpg", "descripcion": "es una Pared de objetos basada en JavaScript, utiliza una sintaxis que nos permite crear objetos de manera rapida y simple, estos objetos pueden ser utilizados de la manera que queramos"}
//        ];
    }]);