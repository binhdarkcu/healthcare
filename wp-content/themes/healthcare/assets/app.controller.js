'use strict';

angular.
module('MyApp').controller('AppController', ['$linq', '$scope', '$rootScope', '$q', "Params", "indexServices", 'MetaService', 'urlService', "CategoryService", "$location",
function MainController($linq, $scope, $rootScope, $q, Params, indexServices, MetaService, urlService, CategoryService, $location) {
    $rootScope.metaservice = MetaService;
    $rootScope.isLoading = true;
    $scope.cat_parent = null;
    $scope.cat_child = null;

    $scope.parseParams = function (params) {
        if (params == null || params.length == 0) return null;
        var data = angular.fromJson(params);
        return data;
    }
 
       
    var promiseContact = indexServices.getContact();
    var promiseTop3Post = indexServices.queryTop3Post(Params.languageCode, Params.hotpriority, 0, Params.numTopPostIndexPage, 1, 1);
    $q.all([promiseContact, promiseTop3Post]).then(function (resp) {
        if (resp[0].data !== null) {
            $scope.contact = resp[0].data;
            $rootScope.SEOTitle = $scope.contact.SEOTitle;
            $rootScope.SEODescription = $scope.contact.SEODescription;
            $rootScope.SEOKeyword = $scope.contact.SEOKeyword;

            $rootScope.metaservice.setMetaPage($rootScope.SEOTitle, $rootScope.SEODescription, $rootScope.SEOKeyword);
        }
        if (resp[1].data != null) {
            $scope.posts3 = resp[1].data;
                //Set meta data
               
            }
			$rootScope.isLoading = false;
        });
    

        $rootScope.seoTitle = function (str) {
            if (str != null) {
                return urlService.seoTitle(str);
            }
        }
        //Get bottom menu
        CategoryService.queryPosition({Position: "B"}, function (data) {
            $scope.bottomMenu = data;
        });

        //get category init menu
        CategoryService.query(function (data) {
            $scope.categories = data;
            data.forEach(function (entry) {
                if (entry.Handler === "hoi-dap") {
                    $rootScope.cate_hoidap = entry;
                }
            });
            //Start using $linq
            $scope.cat_parent = $linq.Enumerable().From(data)
                                .Where(function (x) {
                                    return x.ParentId === x.Id
                                })
                                .OrderBy(function (x) {
                                    return x.Sort
                                }).ToArray();
            $scope.cat_child = $linq.Enumerable().From(data)
                                .Where(function (x) {
                                    return x.ParentId !== x.Id
                                })
                                .OrderBy(function (x) {
                                    return x.Sort, x.Sort_Node
                                }).ToArray();
        });


       


        //animation menu
        $scope.checkMenu = function () {
            $('.dropdown').hover(
                function () {
                    $(this).children('.sub-menu').slideDown(200);
                },
                function () {
                    $(this).children('.sub-menu').slideUp(200);
                }
            );

            //Menu
            //if ($(window).width() <= 767) {
            //    $(".node").on("click", function () {
            //        var ul = $(this).next();
            //        //Get css
            //        var display = $(ul).css("display");
            //        if (display == "none")
            //            $(ul).css("display", "block");
            //        else
            //            $(ul).css("display", "none");
            //    });
            //}


        };


       
        $scope.hideMenu = function () {
            if (document.body.clientWidth <= 767) {                     
                $("#nav").slideToggle(400);
               
            }
        }

        $scope.show = function () {   
          
            $("#nav").slideDown();
        }


        //$scope.hideMenu = function () {
        //    if ($(window).width() > 480) {
        //        $("#nav ul").css("display", "none");
        //    }
        //    else {
        //        $(".navbar-toggle").click();
        //    }
        //}

        $scope.search = function () {
            if ($scope.searchText != undefined) {
                $location.url('/tim-kiem/tin-tuc/' + $scope.searchText);
            }
        }


    }

]);

