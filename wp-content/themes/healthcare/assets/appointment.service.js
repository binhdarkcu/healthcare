
angular.module('MyApp').factory('AppointmentService', ['$resource', 'Params',
    function ($resource, Params) {
        return $resource(Params.rootUrl + 'User', {}, {
            queryDoctors: {
                method: 'GET',
                url: Params.rootUrl + 'User/Get?search=:search',
                params: {
                    search: '@search'
                },
                isArray: true
            },
            getDoctor: {
                method: 'GET',
                url: Params.rootUrl + 'User/GetById?id=:id',
                params: {
                    id: '@id'
                }
            },
            getDefaultDoctorByTag: {
                method: 'GET',
                url: Params.rootUrl + 'GetDefaultDoctor?search=:search',
                params: {
                    searc: '@search'
                }
            },
            queryScheduleExamine: {
                method: 'GET',
                url: Params.rootUrl + 'Schedule/QueryScheduleExamine?userId=:userId&startTime=:startTime',
                params: {
                    userId: '@userId', startTime: '@startTime'
                },
                isArray: true
            },
            getScheduleExamine: {
                method: 'GET',
                url: Params.rootUrl + 'Schedule/GetScheduleExamine?userId=:userId&startTime=:startTime',
                params: {
                    userId: '@userId', startTime: '@startTime'
                },
                isArray: true
            },
            getScheduleDoctor: {
                method: 'GET',
                url: Params.rootUrl + 'Schedule/GetScheduleDoctor?userId=:userId',
                params: {
                    userId: '@userId'
                },
                isArray: true
            },
            sendPatientInfo: {
                method: 'POST',
                url: Params.rootUrl + 'Appointment/SendPatientInfo',
                params: {
                    action: '@action'
                }
            },
            getApointmentFromMail: {
                method: 'GET',
                url: Params.rootUrl + 'Appointment/GetApointmentFromMail',
                params: {
                    mailActiveId: '@mailActiveId'
                }
            },
            insertAppointment: {
                method: 'POST',
                url: Params.rootUrl + 'Appointment/Transaction?action=:action',
                params: {
                    action: '@action'
                }
            },
            MakeApointment: {
                method: 'POST',
                url: Params.rootUrl + 'Appointment/MakeApointment?action=:action&activeMailId=:activeMailId',
                params: {
                    action: '@action',
                    activeMailId: '@activeMailId'
                }
            },
            getProfile: {
                method: 'GET',
                url: Params.rootUrl + "DoctorProfile/Get/:id",
                params: { id: '@id' }
            },
            checkSchedule: {
                method: 'GET',
                url: Params.rootUrl + 'Appointment/checkSchedule?date=:date&time=:time',
                params: {
                    date: '@date',
                    time: '@time'
                }
            }
        });
    }]);