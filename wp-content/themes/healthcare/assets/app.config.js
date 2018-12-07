'use strict';
var $routeProviderReference;
var $urlProvider;
var myApp = angular.module("MyApp");

myApp.config(['$routeProvider', '$locationProvider', '$logProvider', '$compileProvider', function ($routeProvider, $locationProvider, $logProvider, $compileProvider) {
    $routeProviderReference = $routeProvider;
    $logProvider.debugEnabled(true);
    $locationProvider.html5Mode(true).hashPrefix('!'); //the hashPrefix is for SEO
    $compileProvider.debugInfoEnabled(false);
}]);
myApp.run(['$route', '$http', '$rootScope', 'authService', function ($route, $http, $rootScope, authService) {
    //$http.get('http://localhost:18892/api/RoutingPage/Get').then(function (success) {
    $http.get('../assets/data/routedata.json').then(function (success) {
        if(success.data != null)
        {
            var data = success.data;
            var index = 0, currentRoute;

            for (index = 0; index < data.pages.length; index++) {
                currentRoute = data.pages[index];
                var routeName = currentRoute.keyName;
                $routeProviderReference.when(routeName, {
                    templateUrl: currentRoute.pageUrls,
                    controller: currentRoute.controller
                });
            }
            $routeProviderReference.otherwise("/");
        }
        $route.reload();
        $rootScope.auth = authService.authentication;
    });
}]);

//myApp.config(['$stateProvider', '$urlRouterProvider', '$locationProvider', '$logProvider', '$compileProvider', function ($stateProvider, $urlRouterProvider, $locationProvider, $logProvider, $compileProvider) {
//    $routeProviderReference = $stateProvider;
//    $urlProvider = $urlRouterProvider;
//    $logProvider.debugEnabled(true);
//    $locationProvider.html5Mode(true).hashPrefix('!'); //the hashPrefix is for SEO
//    $compileProvider.debugInfoEnabled(false);
//}]);
//myApp.run(['$route','$state', '$http', '$rootScope', 'authService', function ($route, $state, $http, $rootScope, authService) {
//    $urlProvider.otherwise('/');
//    $http.get('http://localhost:18892/api/RoutingPage/Get').then(function (success) {
//        var data = success.data;
//        var index = 0, currentRoute;

//        for (index = 0; index < data.length; index++) {
//            currentRoute = data[index];
//            var routeName = currentRoute.Key.trim();
//            var url = currentRoute.Url;
            
//            if (currentRoute.Params!= null && currentRoute.Params.length > 0)
//            {
//                var paramsJson = angular.fromJson(currentRoute.Params);
//                $routeProviderReference.state(routeName, {
//                    url: url,
//                    templateUrl: currentRoute.PageUrl,
//                    controller: currentRoute.Controller,
//                    params: paramsJson
//                });
//            }
//            else {
//                $routeProviderReference.state(routeName, {
//                    url: url,
//                    templateUrl: currentRoute.PageUrl,
//                    controller: currentRoute.Controller
//                });
//            }
            
//        }
//        $route.reload();
//        $rootScope.auth = authService.authentication;
//        $state.go('Home');
//    });
//}]);

//myApp.config(['$routeProvider', '$locationProvider', '$logProvider', '$compileProvider', function ($routeProvider, $locationProvider, $logProvider, $compileProvider) {
//    $routeProviderReference = $routeProvider;
//    $logProvider.debugEnabled(true);
//    $locationProvider.html5Mode(true).hashPrefix('!'); //the hashPrefix is for SEO
//    $compileProvider.debugInfoEnabled(false);
//}]);
//myApp.run(['$route', '$http', '$rootScope', function ($route, $http, $rootScope) {
//    $http.get("../assets/data/routedata.json").then(function (success) {
//        var data = success.data;
//        var index = 0, currentRoute;
//        for (index = 0; index < data.pages.length; index++) {
//            currentRoute = data.pages[index];
//            var routeName = currentRoute.keyName;
//            $routeProviderReference.when(routeName, {
//                templateUrl: currentRoute.pageUrls,
//                controller: currentRoute.controller
//            });
//        }
//        $routeProviderReference.otherwise("/");
//        $route.reload();
//    });
//}]);



//"use strict";

//angular.module('MyApp')
//    .run(function ($rootScope) {
//    $rootScope.title = "FIS Health Medical Center";
//}).config([
//        "$routeProvider", "$locationProvider", '$httpProvider', '$qProvider',
//        function ($routeProvider, $locationProvider, $httpProvider, $qProvider) {
//            $locationProvider.html5Mode(true).hashPrefix('!'); //the hashPrefix is for SEO
//            $qProvider.errorOnUnhandledRejections(false);

//            $routeProvider
//            .when('/', {
//                templateUrl: '/app/components/home-page/home-page.template.html',
//                controller: 'HomePageController'
//            })
//            .when('/lien-he', {
//                templateUrl: '/app/components/contact/contact.template.html',
//                controller: 'ContactController'
//            })
//            .when('/dat-lich-hen', {
//                templateUrl: 'app/components/appointment/appointment.template.html',
//                controller: 'appointmentController'
//            })
//            .when('/tin-tuc', {
//                templateUrl: '/app/components/post/post.template.html',
//                controller: 'PostController'
//            })
//            .when('/:categoryName/:id', {
//                templateUrl: '/app/components/post/post.template.html',
//                controller: 'PostController'
//            })
//            .when('/tin-tuc/:categoryName/:title/:id', {
//                templateUrl: '/app/components/post-detail/post-detail.template.html',
//                controller: 'detailController'
//            })
//            .when('/tin-tuc-lien-quan/:id', {
//                templateUrl: '/app/components/post-detail/post-relate.template.html',
//                controller: 'detailController'
//            })
//            .when('/chuyen-khoa/:id', {
//                templateUrl: '/app/components/child-departments/child-department.template.html',
//                controller: 'ChildDepartmentController'
//            })
//            .when('/so-y-te', {
//                templateUrl: '/app/components/rss/rss.template.html',
//                controller: 'RSSController'
//            })
//            .when('/hoi-dap', {
//                templateUrl: '/app/components/answer-question/answer-question.template.html',
//                controller: 'AnswerQuestionController'
//            })
//            .when('/tim-bac-si', {
//                templateUrl: '/app/components/doctor-list/doctor-list.template.html',
//                controller: 'DoctorListController'
//            })
//            .otherwise('/');
//        }
//    ]);