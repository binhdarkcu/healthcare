angular.module('MyApp').controller('AnswerQuestionController', ['$scope', 'Params', 'AnswerQuestionService', '$route', "PagerService", "alertService", "CategoryService",
    function AnswerQuestionController($scope, Params, AnswerQuestionService, $route, PagerService, alertService, CategoryService) {

        $scope.subTitle = "Hỏi đáp";
        $scope.pager = {};

        $scope.setPage = function (page) {
            $scope.activeValue = page;
            var para = { pageIndex: page, numberInPage: Params.numberPerPage, Search: $scope.searchValue };

            AnswerQuestionService.get(para, function (data) {
                if (data !== null) {
                    $scope.qas = data.ListViewModel;
                    $scope.totalItems = data.TotalItem;

                    if (page < 1 || (page > $scope.pager.totalPages && $scope.pager.totalPages !== null)) {
                        return;
                    }
                    // get pager object from service
                    $scope.pager = PagerService.GetPager($scope.totalItems, page, Params.numberPerPage);
                }
            });
        }

        $scope.sendMail = function (question) {
            AnswerQuestionService.sendMail(question, function (data) {
                if (data.$resolved) {
                    alertService.add("success", "Đã gửi câu hỏi góp ý thành công!", 1000);
                    $scope.QAMessage = "Đã gửi câu hỏi góp ý thành công!";
                }
                else {
                    alertService.add("danger", "Đã có lỗi xảy ra!", 1000);
                    $scope.QAMessage = "Đã có lỗi xảy ra!";
                }
            });
        }

        $scope.resetMessage = function () {
            $scope.QAMessage = null;
        }

        $scope.setPage(1);

        //Chuyển đổi image
        $scope.convertImg = function (img) {
            if (img != null) {
                img = img.replace('~\\', '')
                         .replace(/\\/g, '/');
                return img;
            }
        }

        ////Lấy category theo id
        //$scope.getCategory = function (id) {
        //    CategoryService.getCategory(id, function (data) {
        //        if (data != null) {
        //            $scope.category = data;
        //        }
        //    });
        //}
    }
]);