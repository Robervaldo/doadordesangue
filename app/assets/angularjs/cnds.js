var cnds = angular.module('cnds', ['ngRoute', 'ngResource']);


cnds.config(function($routeProvider, $locationProvider) {
	$locationProvider.html5Mode(false).hashPrefix('!');

	$routeProvider.when('/', {
		templateUrl: '/partials/home.html'
	});
})