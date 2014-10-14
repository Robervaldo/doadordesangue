var cnds = angular.module('cnds', ['ngRoute', 'ngResource']);

cnds.config(['$routeProvider', '$locationProvider', function($routeProvider, $locationProvider) {
	
	$locationProvider.html5Mode(false).hashPrefix('!');

	$routeProvider.when('/home', {templateUrl: '/partials/home.html'});
}]);