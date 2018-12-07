﻿angular.module('MyApp').factory('AnswerQuestionService', ['$resource', 'Params',
    function ($resource, Params) {
        return $resource(Params.rootUrl + 'QA', {}, {
            get: {
                method: 'GET',
                url: Params.rootUrl + "QA/Get?pageIndex=:pageIndex&numberInPage=:numberInPage",
                params: { pageIndex: '@pageIndex', numberInPage: '@numberInPage' }
            },
            sendMail: {
                method: 'POST',
                url: Params.rootUrl + 'Configuration/SendMail'
            }
        });
    }]);