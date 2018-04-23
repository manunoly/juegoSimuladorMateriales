var edif = angular.module('edificaciones', ['ngRoute', 'textAngular', 'ngAnimate']);

// configure our routes
edif.config(function ($routeProvider) {
    $routeProvider

            // route for the home page
            .when('/', {
                templateUrl: 'pages/home.html',
                controller: 'mainController'
            })

            // route for the about page
            .when('/edificaciones', {
                templateUrl: 'pages/edificaciones.html',
                controller: 'edificacionesController'
            })
            .when('/edificaciones/:tip', {
                templateUrl: 'pages/edificaciones.html',
                controller: 'edificacionesController'
            })
            // route for the contact page
            .when('/preguntas', {
                templateUrl: 'pages/preguntas.html',
                controller: 'preguntasController'
            })
            .when('/preguntas/:idP', {
                templateUrl: 'pages/preguntas.html',
                controller: 'preguntasController'
            })
            .when('/equipo/:miembro', {
                templateUrl: 'pages/miembro.html',
                controller: 'equipoController'
            })
            .when('/equipo', {
                templateUrl: 'pages/equipo.html',
                controller: 'equipoController'
            })
            .when('/aplicaciones/:app', {
                templateUrl: 'pages/aplicacion.html',
                controller: 'aplicacionesController'
            })
            .when('/escribir', {
                templateUrl: 'pages/articuloEscribir.html',
                controller: 'articuloEscribir'
            })
            // route for the about page
            .when('/aplicaciones', {
                templateUrl: 'pages/aplicaciones.html',
                controller: 'aplicacionesController'
            })
            .when('/juego', {
                templateUrl: 'pages/juego/index.html',
                controller: 'juegoController'
            })
            .otherwise({redirectTo: "/"});

});