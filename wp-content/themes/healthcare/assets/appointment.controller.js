angular.module('MyApp').controller('appointmentController', ['$scope', '$rootScope', '$linq', '$uibModal', '$route', 'AppointmentService', '$location', 'alertService',
function ($scope, $rootScope, $linq, $uibModal, $route, AppointmentService, $location, alertService) {
    var currentday = moment(new Date()).format("DD/MM/YYYY");
    $scope.appointment = {
        Date: currentday,
        Time: '',
        PhysicianId: '',
        PatientId: '',
        Symptom: '',
        Status: 1,
        PatientName: '',
        PatientAddress: '',
        PatientEmail: '',
        PatientPhone: '',
        PatientGender: null,
        PatientDoB: null,
        DoctorName: ''
    };
    $scope.mailActiveId = $route.current.params.id;
    $rootScope.isLoading = false;
    $scope.IspassPara = false;
    var valueSelectedType = null;
    
    $scope.doctor = null;
    $scope.initAppointment = function () {
        $scope.renderTimeDefault();
    };
    //get doctor
    $scope.getDoctor = function () {
        AppointmentService.queryDoctors({ search: "" }, function (data) {
            $scope.doctors = data;
        });
    };

    //change doctor select option
    $scope.scheduleDoctor = [];
    $scope.arrTimeDefault = [];
    $scope.changeDoctor = function (value) {
        if (value != null) {
            AppointmentService.getDoctor({ id: value }, function (data) {
                $scope.doctor = data;
                $scope.appointment.DoctorName = data.Name;
                $("#quickviewProfile").show(500);
                $("#PhysicianIdMessage").hide(500);
            });
            //Get schedule Doctor
            AppointmentService.getScheduleDoctor({ userId: value }, function (data) {

                if (data != null && data.length > 0) {
                    //check valid days
                    $scope.scheduleDoctor = $linq.Enumerable().From(data)
                       .Where(function (x) {
                           var day = moment(new Date(x.Start)).format("DD/MM/YYYY");                           
                           if (day > currentday) {
                               return day;
                           }
                       }).ToArray();
                    var validDays = $linq.Enumerable().From($scope.scheduleDoctor)
                        .Select(function (x) {
                            return moment(new Date(x.Start)).format("DD/MM/YYYY")
                        })
                        .ToArray();
                    var i = 0;
                    $('#dateTimePicker').datepicker('setDatesDisabled', validDays)
                }
            });

        } else {
            $("#quickviewProfile").hide(500);
        }
    };

    var isValidSchedule = false;
    $scope.transToInforOrderer = function () {
        $scope.appointment.Date = $("#dateAppointment").val();
        if ($scope.appointment.Date != null) {
            //activeShowTabInfo();
            var bookDate = formatDate($scope.appointment.Date);
            var tmpTime = $("#timeAppointment").val();
            var arrTime = tmpTime.split(':');
            var bookTime = (+arrTime[1]) * 60 + (+arrTime[2]);
            var para = { date: bookDate.toJSON(), time: bookTime };
            $scope.appointment.Time = bookTime;
            if (isNaN(bookTime) || $scope.appointment.Date <= currentday) {
                alertService.add("warning", "Ngày giờ khám không hợp lệ", 10000);
            }
            else {
                isValidSchedule = true;
                activeShowTabInfo();
            }

            //activeShowTabInfo();
        }
        else {
            $("#dateMessage").show(500);
        }
    };

    $scope.showDoctorList = function (searchText) {
        AppointmentService.queryDoctors({ search: searchText }, function (data) {
            $scope.doctors = data;
            $('#myModal').modal('show');
        });
    };

    //get time in schedule of a doctor
    $scope.timeStamp = null;
    $scope.changeDate = function (date) {
        if (valueSelectedType == 1) {
            $scope.IspassPara = true;
            UpdateGioKham($scope.arrTimeDefault);
            return;
        }
        var doctorId = $("#selectPhysician option:selected").val().split(':')[1];
        if (doctorId == undefined) {
            $("#PhysicianIdMessage").show(500);
        }
        else {
            $scope.appointment.Date = date;
            var from = date.split("/");

            date = moment(new Date(from[2], from[1] - 1, from[0], 0, 0, 0)).format("YYYY-MM-DD");
            $scope.getTimeByDate(date);
            //$scope.timeStamp = date.getTime();
            //AppointmentService.getScheduleExamine({ userId: doctorId, startTime: date.getTime() }, function (data) {
            //    $scope.schedules = data;
            //});

            $("#dateMessage").show(500);
        }
    };
    $scope.getTimeByDate = function (date) {
        var arrGio = [];
        var schedule = $linq.Enumerable().From($scope.scheduleDoctor)
                                .Where(function (x) {
                                    return x.Start.match(date.toString())
                                }).ToArray();
        if (schedule == null || schedule.length == 0) {
            UpdateGioKham(arrGio);
            return;
        }
        var mindate = new Date(schedule[0].Start);
        var maxdate = new Date(schedule[0].End);

        for (var i = 0; i < schedule.length; i++) {
            var item = schedule[i];
            if (item.IsExamine) {
                var currentDate = new Date(schedule[i].Start);
                //Get mindate
                if (currentDate < mindate) {
                    mindate = currentDate;
                }
                //Get maxdate
                if (currentDate > maxdate) {
                    maxdate = currentDate;
                }
                var startTime = new Date(schedule[i].Start);
                var endTime = new Date(schedule[i].End);

                var arrGioTemp = getGioKhamDoctor(startTime, endTime);
                if (arrGioTemp != undefined) {
                    arrGio = arrGio.concat(arrGioTemp);
                }
            }
            //$scope.scheduleDoctor[currentDate.getDate() + '/' + ("0" + (currentDate.getMonth() + 1)).slice(-2) + '/' + currentDate.getFullYear()] = arrGio;

        }
        UpdateGioKham(arrGio);
        
    }
    //active tab
    function activeShowTabInfo() {
        $("#infoOrderer").tab('show');
        $('a[href="#infoOrderer"]').parent('li').addClass('active');
        $('a[href="#appointment"]').parent('li').removeClass('active');

        $("#infoOrderer").addClass("active in");
        $("#appointment").removeClass("active in");
    };

    $scope.searchDoctorByTag = function (search) {
        if (valueSelectedType == 1) {
            AppointmentService.queryDoctors({ search: search }, function (data) {
                if (data.length > 0) {
                    $scope.doctor = data[0];
                    $scope.appointment.PhysicianId = data[0].Id;
                    $scope.appointment.DoctorName = data[0].Name;
                }
                else {
                    $scope.appointment.PhysicianId = "";
                    $scope.appointment.DoctorName = "";
                }
            });
        }
    };

    function activeShowTabConfirm() {
        $("#checkandConfirm").tab('show');
        $('a[href="#checkandConfirm"]').parent('li').addClass('active');
        $('a[href="#infoOrderer"]').parent('li').removeClass('active');

        $("#checkandConfirm").addClass("active in");
        $("#infoOrderer").removeClass("active in");
    };

    $scope.registerInfo = function (appointment) {
        $scope.appointment.PatientDoB = $("#ngaysinh").val();        
        $scope.TimeOrder = appointment.Time;
        $scope.DateOrder = $("#dateAppointment").val();
        $scope.DoBReview = $("#ngaysinh").val();
        
        if (isNaN(appointment.Time) || $scope.appointment.Date <= currentday) {
            alertService.add("warning", "Ngày giờ khám không hợp lệ", 10000);
        }
        else {
            $scope.sendPatientInfo($scope.appointment);
            activeShowTabConfirm();
        }
        
    };

    //show doctor detail
    $scope.viewDoctorProfile = function (id) {
        var startTime = Date.parse(new Date());

        AppointmentService.getProfile({ id: id }, function (data) {
            $scope.doctor = data;
            $("#quickviewProfile").show(500);
            $("#PhysicianIdMessage").hide(500);
            $('#collapseThongTinModal').modal('toggle');
            if (startTime != null) {
                AppointmentService.queryScheduleExamine({ userId: id, startTime: startTime }, function (data) {
                    $scope.schedules = data;
                });
            }
        });
        //AppointmentService.queryScheduleExamine({ userId: id, startTime: startTime }, function (data) {
        //    $scope.schedules = data;
        //    $('#collapseThongTinModal').modal('toggle');

        //    //console.log('opening pop up');
        //    //var modalInstance = $uibModal.open({
        //    //    templateUrl: 'doctor_profile.html',
        //    //});
        //});
    };

    $("#selectDoctor").on('change', 'select', function (e) {
        var optionSelected = $("option:selected", this);
        valueSelectedType = this.value;
        $('#dateTimePicker').datepicker('setDatesDisabled', [])
        //hideControlselectDoctor();
        if (valueSelectedType == 0) {
            $("#doctorSelected").show(500);
            $("#searchDoctor").hide(500);
            $("#quickviewProfile").hide(500);
            $scope.IspassPara = true;
            UpdateGioKham([]);
        }
        if (valueSelectedType == 2) {
            $("#searchDoctor").show(500);
            $("#doctorSelected").hide(500);
            $("#quickviewProfile").hide(500);
            $scope.IspassPara = true;
            UpdateGioKham([]);
        }
        if (valueSelectedType == 1) {
            $("#searchDoctor").hide(500);
            $("#doctorSelected").hide(500);
            $scope.IspassPara = true;
            UpdateGioKham($scope.arrTimeDefault);
        }
    });

    function hideControlselectDoctor() {
        $("#doctorSelected").hide(500);
        $("#searchDoctor").hide(500);
        $("#quickviewProfile").hide(500);
    };

    //Lấy lịch làm việc của bác sĩ
    $scope.getScheduleByPhysicianId = function (physicianId) {

    }

    $scope.sendPatientInfo = function (item) {
        item.Date = formatDate(item.Date).toDateString();
        if (item.PatientDoB != null)
            item.PatientDoB = formatDate(item.PatientDoB).toDateString();

        AppointmentService.sendPatientInfo({
            AbsoluteUri: $location.$$absUrl
        }, item, function (success) {
            if (success) {
                $scope.infoOrdererForm.$setPristine();
                $scope.appointmentInfoForm.$setPristine();
                $scope.infoOrdererForm.$submitted = false;
                $scope.appointment = null;
                $("#appointment").tab('show');
                alertService.add("success", "Đã đặt hẹn thành công. Chúng tôi sẽ gửi mail xác nhận vào mail đăng ký của bạn. Vui lòng kiểm tra trong hộp thư spam nếu chưa thấy!", 10000);
            }
        }, function (error) { });


    };
    $scope.getApointmentFromMail = function (activeEmailId) {

        AppointmentService.getApointmentFromMail({
            mailActiveId: activeEmailId
        }, function (success) {
            if (success) {
                $scope.infoOrdererForm.invalid = false;
                if (success.PatientName == undefined) {
                    alertService.add("success", "Cuộc hẹn này không còn hiệu lực!", 10000);
                    $scope.infoOrdererForm.invalid = true;
                    return;
                }
                $scope.appointment.PatientName = success.PatientName
                $scope.appointment.patientEmail = success.PatientEmail
                $scope.DoBReview = success.PatientDoB
                $scope.appointment.PatientGender = success.PatientGender
                $scope.appointment.PatientPhone = success.PatientPhone
                $scope.appointment.DoctorName = success.DoctorName
                $scope.appointment.Date = success.Date
                $scope.appointment.Time = success.Time
                $scope.timeStamp = Math.floor(success.Time / 60) + ":" + (success.Time % 60)
                $scope.appointment.Symptom = success.Symptom

            }
        }, function (error) { });
    };
    $scope.makeAppointment = function (item) {

        AppointmentService.MakeApointment({ action: 'I', activeMailId: $scope.mailActiveId }, item, function (success) {
            if (success) {
                $scope.infoOrdererForm.$setPristine();
                $scope.appointmentInfoForm.$setPristine();
                $scope.infoOrdererForm.$submitted = true;
                $scope.appointment = null;
                $("#appointment").tab('show');
                alertService.add("success", "Đã đặt hẹn thành công!", 10000);
            }
        }, function (error) { });
        //}
        //else {
        //    alertService.add("warning", "Lịch khám bệnh không tồn tại", 2000);
        //}
    }

    function formatDate(date) {
        var from = date.split("/");
        //date = new Date(from[2] + "-" + from[1] + "-" + from[0] + " 0:0:0");
        date = new Date(from[2], from[1] - 1, from[0], 0, 0, 0);

        return date;
    };

    //Init time 
    $scope.renderTimeDefault = function () {
        if ($scope.mailActiveId != undefined) {
            $scope.getApointmentFromMail($scope.mailActiveId);
        } else {
            $scope.arrTimeDefault = getGioKhamDefault();
            UpdateGioKham([]);
            $scope.getDoctor();
        }

    };

    $scope.cancelAppointment = function () {
        $location.url('/')
    };

    $scope.makeAppointmentDoctor = function (value) {
        $scope.changeDoctor(value);
        //$scope.appointment.PhysicianId = value;
        //AppointmentService.getDoctor({ id: value }, function (data) {
        //    $scope.doctor = data;
        //    $("#quickviewProfile").show(500);
        //    $("#PhysicianIdMessage").hide(500);
        //});
    };

    function getGioKhamDefault() {
        var now = moment().hours(8).minutes(0).seconds(0).milliseconds(0);
        var max = moment().hours(19).minutes(0).seconds(0).milliseconds(0);
        var gio = [];
        var duration = moment.duration({ 'minutes': 15 });
        now = now.add(duration);
        while (now < max) {
            gio.push(now.format('HH:mm'));
            now = now.add(duration);
        }
        return gio;

    };

    function getGioKhamDoctor(startTime, endTime) {

        var start = moment().hours(startTime.getHours()).minutes(startTime.getMinutes()).format('HH:mm');
        var end = moment().hours(endTime.getHours()).minutes(endTime.getMinutes()).format('HH:mm');

        var validTimes = $linq.Enumerable().From($scope.arrTimeDefault)
                       .Where(function (x) {
                           var time = x;
                           if (time > start && time < end) {
                               return time;
                           }
                       })
                       .ToArray();
        return validTimes;
    };

    function UpdateGioKham(values) {
        if ($scope.appointment.Date != null && values != null) {
            $scope.giohens = values;
            $scope.appointment.Time = $scope.giohens[0];
        }
        else {
            $scope.giohens = [];
        }
    }
}]);
