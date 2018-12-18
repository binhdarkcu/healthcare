<?php get_header()?>
<?php
    $queried_object = get_queried_object();
?>
<div ng-init="loadData()">
    <section>
        <div class="container container-bd" id="container" style="padding-top: 50px">

            <div class="conten col-md-12 col-sm-12 col-xs-12" style="margin-top:30px">

                <div ng-init="initAppointment()" class="frmAppointment" style="margin-bottom: 50px;">
                    <div class="container container-bd">
                        <ul class="nav nav-tabs" ng-show="mailActiveId === undefined" aria-hidden="false">
                            <li class="active"><a showtab="" data-toggle="tab" href="#appointment" aria-expanded="true"><i class="fa fa-calendar" aria-hidden="true"></i> Thông tin cuộc hẹn</a></li>
                            <li class=""><a showtab="" data-toggle="tab" href="#infoOrderer" aria-expanded="false"><i class="fa fa-id-card-o" aria-hidden="true"></i> Thông tin cá nhân</a></li>
                            <!--<li class=""><a ng-show="mailActiveId!=undefined" showtab="" data-toggle="tab" href="#checkandConfirm"><i class="fa fa-calendar-check-o" aria-hidden="true"></i> Kiểm tra và xác nhận</a></li>-->
                        </ul>
                        <div class="tab-content" ng-show="mailActiveId === undefined" aria-hidden="false">
                            <div id="appointment" class="tab-pane fade active in" style="width: 100%">
                                <div class="col-md-6" style="padding-left: 0px; padding-right: 0px">
                                    <form name="appointmentInfoForm" class="form-horizontal ng-pristine ng-invalid ng-invalid-required" ng-submit="transToInforOrderer()">
                                        <div class="form-group">
                                            <label class="col-md-4 col-sm-4 col-xs-4">Hình thức đặt hẹn:</label>
                                            <div class="col-md-8 col-sm-8 col-xs-8" id="selectDoctor">
                                                <select class="form-control">
                                                    <option value="0">Chọn bác sĩ của bạn</option>
                                                    <option value="1">Đặt lịch hẹn theo ngày giờ</option>
                                                    <option value="2">Tìm bác sĩ mà bạn biết</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group" id="doctorSelected" style="display: none;">
                                            <label class="col-md-4 col-sm-4 col-xs-4"></label>
                                            <div class="col-md-8 col-sm-8 col-xs-8" id="chooseADoctor">
                                                <select id="selectPhysician" data-placeholder="Chọn một bác sĩ..." class="form-control ng-pristine ng-untouched ng-valid ng-empty" tabindex="2" ng-model="appointment.PhysicianId" ng-options="doctor.Id as doctor.Name for doctor in doctors" ng-change="changeDoctor(appointment.PhysicianId)" aria-invalid="false"><option value="?" selected="selected"></option><option label="Nguyễn Thiện Nhân" value="string:1f2ce3e4-16a0-4967-85e2-a7bf29e0a6b2">Nguyễn Thiện Nhân</option><option label="Nguyễn Thanh Hiền" value="string:52f523b1-f513-4832-9ccf-5c43f6616110">Nguyễn Thanh Hiền</option></select>
                                                <label id="PhysicianIdMessage" style="display: none" class="field-validation-error">Vui lòng chọn bác sĩ</label>
                                            </div>
                                        </div>
                                        <div class="form-group" style="display: none;" id="searchDoctor">
                                            <label class="col-md-4 col-sm-4 col-xs-4"></label>
                                            <div class="col-md-8 col-sm-8 col-xs-8">
                                                <div class="input-group">
                                                    <input type="text" class="form-control ng-pristine ng-untouched ng-valid ng-empty" placeholder="Nhập tên ..." ng-model="searchText" aria-invalid="false">
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-info" type="button" ng-click="showDoctorList(searchText)" style="margin-left: 17px;padding-top: 8px;"><i class="fa fa-search"></i></button>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="dateOrder" class="col-md-4 col-sm-4 col-xs-4" style="padding-right:0;">Thời gian đặt hẹn: </label>
                                            <div class="col-md-4 col-sm-4 col-xs-4">
                                                <div id="dateTimePicker" class="input-group date" data-provide="datepicker" data-date-autoclose="true" data-date-format="dd/mm/yyyy" data-date-days-of-week-highlighted="0,6" data-date-language="vi" data-date-today-highlight="true">
                                                    <input type="text" class="form-control ng-pristine ng-untouched ng-valid ng-not-empty ng-valid-required" id="dateAppointment" placeholder="Chọn ngày" ng-change="changeDate(appointment.Date)" ng-model="appointment.Date" required="" aria-invalid="false">
                                                    <div class="input-group-addon">
                                                        <span class="glyphicon glyphicon-calendar"></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <label for="timeOrder" class="col-md-1 col-sm-1 col-xs-1">giờ:</label>
                                            <div class="col-md-3 col-sm-3 col-xs-3">
                                                <select name="timeOrder" class="form-control ng-pristine ng-untouched ng-valid ng-not-empty ng-valid-required" ng-init="appointment.Time = giohens[0]" ng-model="appointment.Time" id="timeAppointment" ng-options="gio for gio in giohens" required="" aria-invalid="false"><option label="08:15" value="string:08:15" selected="selected">08:15</option><option label="08:30" value="string:08:30">08:30</option><option label="08:45" value="string:08:45">08:45</option><option label="09:00" value="string:09:00">09:00</option><option label="09:15" value="string:09:15">09:15</option><option label="09:30" value="string:09:30">09:30</option><option label="09:45" value="string:09:45">09:45</option><option label="10:00" value="string:10:00">10:00</option><option label="10:15" value="string:10:15">10:15</option><option label="10:30" value="string:10:30">10:30</option><option label="10:45" value="string:10:45">10:45</option><option label="11:00" value="string:11:00">11:00</option><option label="11:15" value="string:11:15">11:15</option><option label="11:30" value="string:11:30">11:30</option><option label="11:45" value="string:11:45">11:45</option><option label="12:00" value="string:12:00">12:00</option><option label="12:15" value="string:12:15">12:15</option><option label="12:30" value="string:12:30">12:30</option><option label="12:45" value="string:12:45">12:45</option><option label="13:00" value="string:13:00">13:00</option><option label="13:15" value="string:13:15">13:15</option><option label="13:30" value="string:13:30">13:30</option><option label="13:45" value="string:13:45">13:45</option><option label="14:00" value="string:14:00">14:00</option><option label="14:15" value="string:14:15">14:15</option><option label="14:30" value="string:14:30">14:30</option><option label="14:45" value="string:14:45">14:45</option><option label="15:00" value="string:15:00">15:00</option><option label="15:15" value="string:15:15">15:15</option><option label="15:30" value="string:15:30">15:30</option><option label="15:45" value="string:15:45">15:45</option><option label="16:00" value="string:16:00">16:00</option><option label="16:15" value="string:16:15">16:15</option><option label="16:30" value="string:16:30">16:30</option><option label="16:45" value="string:16:45">16:45</option><option label="17:00" value="string:17:00">17:00</option><option label="17:15" value="string:17:15">17:15</option><option label="17:30" value="string:17:30">17:30</option><option label="17:45" value="string:17:45">17:45</option><option label="18:00" value="string:18:00">18:00</option><option label="18:15" value="string:18:15">18:15</option><option label="18:30" value="string:18:30">18:30</option><option label="18:45" value="string:18:45">18:45</option></select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="symptom" class="col-md-4" required="">Lý do/ Triệu chứng: </label>
                                            <div class="col-md-8 col-sm-8">
                                                <textarea name="symptom" class="form-control ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required" ng-change="searchDoctorByTag(appointment.Symptom)" ng-model="appointment.Symptom" required="" aria-invalid="true"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4"></label>
                                            <div class="col-md-8">
                                                <button type="submit" class="btn btn-success">Bước tiếp theo</button>
                                                <!--<button class="btn btn-success" ng-click="transToInforOrderer()">Đặt lịch hẹn</button>-->
                                                <button class="btn btn-default" ng-click="cancelAppointment()">Trở về trang chủ</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="col-md-6" id="quickviewProfile">
                                    <!---->
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div id="infoOrderer" class="tab-pane fade">
                                <ng-form name="infoOrdererForm" class="form-horizontal ng-pristine ng-invalid ng-invalid-required ng-valid-email">
                                    <div class="form-group">
                                        <label class="col-md-2 col-sm-3 col-xs-4" for="patientName">Họ tên: <span class="red">*</span></label>
                                        <div class="col-md-6 col-sm-9 col-xs-8">
                                            <input type="text" name="patientName" class="form-control ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required" ng-model="appointment.PatientName" placeholder="Họ tên" required="" aria-invalid="true">
                                            <i class="fa fa-check text-success ng-hide" ng-show="infoOrdererForm.patientName.$dirty &amp;&amp; infoOrdererForm.patientName.$valid" aria-hidden="true"></i>
                                            <div ng-show="infoOrdererForm.patientName.$dirty &amp;&amp; infoOrdererForm.patientName.$invalid" class="text-danger ng-hide" aria-hidden="true">
                                                <i class="fa fa-times text-danger"></i>
                                                <span ng-show="infoOrdererForm.patientName.$error.required" aria-hidden="false" class="">Họ tên không được bỏ trống</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 col-sm-3 col-xs-4" for="patientDoB">Ngày sinh: </label>
                                        <div class="col-md-6 col-sm-9 col-xs-8">
                                            <div class="input-group date" data-provide="datepicker" data-date-autoclose="true" data-date-format="dd/mm/yyyy" data-date-days-of-week-highlighted="0,6" data-date-language="vi" data-date-today-highlight="true">
                                                <input type="text" class="form-control ng-pristine ng-untouched ng-valid ng-empty" name="ngaysinh" id="ngaysinh" placeholder="Chọn ngày" ng-model="appointment.PatientDoB" aria-invalid="false">
                                                <div class="input-group-addon">
                                                    <span class="glyphicon glyphicon-calendar"></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 col-sm-3 col-xs-4">Giới tính: </label>
                                        <div class="col-md-6 col-sm-9 col-xs-8">
                                            <label class="radio-inline">
                                                <input type="radio" name="genderOptRadio" ng-model="appointment.PatientGender" ng-value="1" class="ng-pristine ng-untouched ng-valid ng-empty" value="1" aria-invalid="false">Nam
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="genderOptRadio" ng-model="appointment.PatientGender" ng-value="2" class="ng-pristine ng-untouched ng-valid ng-empty" value="2" aria-invalid="false">Nữ
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 col-sm-3 col-xs-4" for="patientEmail">Email: </label>
                                        <div class="col-md-6 col-sm-9 col-xs-8">
                                            <input type="email" class="form-control ng-pristine ng-untouched ng-empty ng-valid-email ng-invalid ng-invalid-required" placeholder="Email" name="patientEmail" ng-model="appointment.PatientEmail" required="" aria-invalid="true">
                                            <i class="fa fa-check text-success ng-hide" ng-show="infoOrdererForm.patientEmail.$dirty &amp;&amp; infoOrdererForm.patientEmail.$valid" aria-hidden="true"></i>
                                            <div ng-show="infoOrdererForm.patientEmail.$dirty &amp;&amp; infoOrdererForm.patientEmail.$invalid" class="text-danger ng-hide" aria-hidden="true">
                                                <i class="fa fa-times text-danger"></i>
                                                <span ng-show="infoOrdererForm.patientEmail.$error.required" aria-hidden="false" class="">Bạn chưa nhập địa chỉ email</span>
                                                <span ng-show="infoOrdererForm.patientEmail.$error.email" aria-hidden="true" class="ng-hide">Không đúng định dạng email</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 col-sm-3 col-xs-4" for="patientPhone">Số điện thoại: </label>
                                        <div class="col-md-6 col-sm-9 col-xs-8">
                                            <input type="text" class="form-control ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required" placeholder="Số điện thoại" name="patientPhone" ng-model="appointment.PatientPhone" required="" aria-invalid="true">
                                            <i class="fa fa-check text-success ng-hide" ng-show="infoOrdererForm.patientPhone.$dirty &amp;&amp; infoOrdererForm.patientPhone.$valid" aria-hidden="true"></i>
                                            <div ng-show="infoOrdererForm.patientPhone.$dirty &amp;&amp; infoOrdererForm.patientPhone.$invalid" class="text-danger ng-hide" aria-hidden="true">
                                                <i class="fa fa-times text-danger"></i>
                                                <span ng-show="infoOrdererForm.patientPhone.$error.required" aria-hidden="false" class="">Số điện thoại không được bỏ trống</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 col-sm-3 col-xs-4"> </label>
                                        <div class="col-md-6 col-sm-9 col-xs-8">
                                            <div class="g-recaptcha recaptcha" data-sitekey="6LeDKXwUAAAAAFWZHX-p4vwbouBlN5900A6Dy2Tj"><div style="width: 304px; height: 78px;"><div><iframe src="https://www.google.com/recaptcha/api2/anchor?ar=1&amp;k=6LeDKXwUAAAAAFWZHX-p4vwbouBlN5900A6Dy2Tj&amp;co=aHR0cDovL2J2cG50Lm9yZy52bjo4MA..&amp;hl=en&amp;v=v1543818755456&amp;size=normal&amp;cb=34se7boaolvs" width="304" height="78" role="presentation" name="a-tnyudc1aqwcf" frameborder="0" scrolling="no" sandbox="allow-forms allow-popups allow-same-origin allow-scripts allow-top-navigation allow-modals allow-popups-to-escape-sandbox"></iframe></div><textarea id="g-recaptcha-response" name="g-recaptcha-response" class="g-recaptcha-response" style="width: 250px; height: 40px; border: 1px solid rgb(193, 193, 193); margin: 10px 25px; padding: 0px; resize: none; display: none;"></textarea></div></div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 col-sm-3 col-xs-4"></label>
                                        <div class="col-md-6 col-sm-9 col-xs-8">
                                            <button ng-disabled="!infoOrdererForm.$dirty || (infoOrdererForm.$dirty &amp;&amp; infoOrdererForm.$invalid)" class="btn btn-success" ng-click="registerInfo(appointment)" disabled="disabled">Đăng ký và tiếp tục</button>
                                        </div>
                                    </div>
                                </ng-form>
                            </div>
                            <!---->
                        </div>
                        <div ng-show="mailActiveId!=undefined" aria-hidden="true" class="ng-hide">
                            <div id="checkandConfirm">
                                <h4><i class="fa fa-bookmark" aria-hidden="true" style="color:#26B99A"></i> THÔNG TIN CÁ NHÂN ĐẶT HẸN</h4>
                                <p>
                                    Họ tên: <br>
                                    Địa chỉ email: <br>
                                    Ngày sinh: <br>
                                    Giới tính: <span ng-show="appointment.PatientGender == 1" aria-hidden="true" class="ng-hide">Nam</span><span ng-show="appointment.PatientGender == 2" aria-hidden="true" class="ng-hide">Nữ</span><br>
                                    Số điện thoại: <br>
                                </p>
                                <hr>
                                <h4><i class="fa fa-bookmark" aria-hidden="true" style="color: #26B99A"></i> THÔNG TIN ĐẶT HẸN KHÁM</h4>
                                <p>
                                    Bác sĩ: <br>
                                    Ngày: 18/12/2018. Giờ: <br>
                                    Lý do: <br>
                                </p>
                                <div class="form-group">
                                    <button ng-disabled="(infoOrdererForm.invalid || infoOrdererForm.$submitted)" class="btn btn-success" ng-click="makeAppointment(appointment)">Xác nhận đặt hẹn</button>
                                    <button class="btn btn-warning" ng-click="cancelAppointment()">Thoát</button>
                                </div>
                            </div>
                            <!---->
                        </div>
                        <div id="myModal" class="modal fade" tabindex="-1" role="dialog">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                        <h4 class="modal-title">Danh sách bác sĩ</h4>
                                    </div>
                                    <div class="modal-body" style="margin: auto; padding: 20px">
                                        <!----><div class="row" ng-show="doctors.length > 0" ng-repeat="doctor in doctors" aria-hidden="false" style="">
                                            <div class="col-md-4 col-sm-4 col-xs-4">
                                                <div class="profile" ng-show="doctor.Image != null" aria-hidden="false">
                                                    <div class="profile_pic">
                                                        <img data-ng-src="data:image/png;base64,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" style="width: 100%" src="data:image/png;base64,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">
                                                    </div>
                                                </div>
                                                <div class="profile ng-hide" ng-show="doctor.Image == null" aria-hidden="true">
                                                    <div class="profile_pic">
                                                        <img src="../../../../images/img.jpg" style="width: 100%">
                                                    </div>
                                                </div>
                                                <button class="btn btn-warning" data-dismiss="modal" style="width: 100%; margin-top: 5px" ng-click="makeAppointmentDoctor(doctor.Id)">Chọn bác sĩ</button>
                                            </div>

                                            <div class="col-md-8 col-sm-8 col-xs-8">
                                                <div class="row">
                                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                                        <span class="blue"><b>Nguyễn Thiện Nhân</b></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div><!----><div class="row" ng-show="doctors.length > 0" ng-repeat="doctor in doctors" aria-hidden="false">
                                            <div class="col-md-4 col-sm-4 col-xs-4">
                                                <div class="profile" ng-show="doctor.Image != null" aria-hidden="false">
                                                    <div class="profile_pic">
                                                        <img data-ng-src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQAAAAEACAYAAABccqhmAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAABC2wAAQtsBUNrbYgAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAABc7SURBVHja7Z15VJX3mcfjkphqzDSLc6bJONOmnjaTmWSm00wSE5tJ58TYSZzanp64ECMBVzR6YoyRWLVsbhi1ghoXgkajYlzqQhRFBQFBCYuAiggooFy8LO7gguI8T/JDQblw33vf/ff943OOiQnc+/ye7+e+931/ywO3b99+AFibdz8IeoR4gfgjMYGYQywkoog1xCZiB7GPSCOyieNEKeEkLgn4nw8TCcRm8f/zz5pMBBADiT7ES0QPoivqb21QBGsEvB3xFNGL8CWCia+JVBHg2wZSKuQSLl7br4nOGDcIAHge+GdEmPgTOI+oMzjkSrlFFBFbiemEj7hC6YTxhQDA/Z/uHI4xRAxRbrGwK6GeOCiuYF4lOqAHIADZAv8Q0ZP4lNhOnLNx4Nvigrg/MYL4KfoDArBr6LuIG2hbLHg5rycFRATxDtcMvQMBWP2Tvh+xjriCcCvmunhqMZZ4HD0FAVgh9B2I3kQ0cR4hVo1r4v7IW0R79BoEYLabeL3Ec3cnwqrLY8dg3DOAAIwO/qPiRl4pQmkIDcQeYhDxMHoSAtAr+DwhZzZxESE0DefEFdiv0KMQgFbBf1ZMzLmOwJmaeOI19CwEoFbwe4rHdw0Il+VE8Cp6GALw9MZeXyIZQbI8uyECCEBJ+P9EHEVwbMcuvppDj0MAroL/b8ReBMX2xBGvoOchgMbgP0ZEEjcRDulE8BwEIG/w2xOjiGqEQVpuEKEyL1OWNfyvi11xEALQuAjpDQjA/sHvLuaUo+lBS0TLtvBIluB3JKYQtWhy0Aa8nsMHArDX9loH0djAg5uEP4MArB3+wWK3WzQ08AS+YpzIV5AQgLWC35VYjQYGKsFXkN0hAGuE/2WiGE0LVKaKN3uBAMz9XH+y2HkWDQu02u6cbya3gwDMFf6nxWk2aFKgB7E8gxQCMEf4eePNGjQl0JmTdtiAxOrhn4R1+sBArhL+EIAxu+8uQgMCkxBl1X0JrRj+zuLMOTQeMBOZxD9CANqGvxtm9QETU8LHpkMA2oSfz6MvRJMBk1PBm8tAAOpP7qlCcwGLwE+lXoIA1HvMhwM1gdW4ZIU9Bswe/tFi9hUaClj1MeHbEIBn4f8IDQRssu1YfwhAWfiHYoIPsNkagqEQgHvh74/LftWb71J/v+CzA4eGlLw3Iix/SMDMnKFjwzNGfTwvjeE/87/jv+P/hv9b8R0W46Ae/IH2EQTQevjfFpdMaBgFUGCrfUfPzJ4wdXHiX5du3Lt9d2pa7vGTxWUVzgsV1TX1xG0PqeefwT+Lfyb/bP4d/Lv4d6L2HjEaAmg5/G+ImyZokta55v9heOb8JRsT96Vk5RSWnqn2IuBewb+bXwO/Fn5N/NowPm5dkfWDAJqH/yVs3eWaQcNCT34Wujxx264D6aUOZ61RgW8Lfm38Gvm18mvG2LmEH2u/DAHcPZILy3nvv6w/FzR7ZUJOPl3JmzTwbcGvnd8DvxeMaYs7DPWQWgBiem8FmuEuPsNCi5atik2i7951Vg3+vfB74ffE7w1j3Aye2t5NSgHwyimxeAKNQPiNmZ317Z6DGXYJvSv4PfJ7xZg323C0s1QC4LXTYvkkLvX9giu/3hCfbPfg38vqDbtT6L1jfccP8PL2DjIJIAqDHtQwYerifcWnHTWyhb+R4rLycx9PWbwfk76+Z5EUAuAtlGQf7AH+ISUJB7K/kzX497I3JfMw1eQMJBA0ydYC4E0UZX/W//7IGTknSs44EPzmFJwsqxw8csYxzBbUd46AnuF/TOykKu0Aj/x4XkpZhfMyAu9yHkHdyPFz07GXQNDTthIAH6Qg9lKXdmAnh0XtcVTV3ETQW8dRVX3rs9DlyZJLgM+4aG8nAUyReUA/mfrFPoRbGR9PWZwquQQm20IA9EZ6y7yqbOi4OQfLK6tvINTKOOOsujl0bHi2xAKo12O6sNbh7y7zXn4+w8PyS8rPXkSgPePkaccVqqHMswf5kNuulhQAvfCOkm/hffFoYclpBNk78gpO8lTxKxL30WqrCmCizN/hlqzcloAAq8PiFVtTJL8fMNhSAqAX/DOiVtYB8w2YmeOoqrmF8Kr2ZKBhSMDMPMl3GH7GSgKIk3iwrmfmFRQhuOqSkVvA34evS75oqKPpBUAv0kfmy7VxgZEpCKw2jAuMkP2rwBRTC4Be4OOEU+ZB2puSlY2wasOe5MwcyQXAX6u7m1kA0ZJv3VWIoGoLthoLijGlAMSmnlKv5opcvnkvQqotEcs27ceqwaDXTSUAekGdiALZN3osPu2oRkg134n4PHYfDspWa62AWgIIld3K4wIjExFQfRg7KSIVVwFBo0whAHohz+Ewj6Db2OBDP+KTMvIggCA+mOUxMwggDoMRdJ4aExN/9JsY1Li3vux9F2moAOgFvIJBCLo9JGBmJoKpL1Tzo+i9oJt8roaRAsCnP/Fp0FLc/deZidOWHEDvfc9eQwRAv7gniv8Dy1bHQgA6s2TlNgjgLn8yQgC7UPgfSDqYg9l/OrMvJSsfvXcH/jrUTjcB0C97FUW/+z2srMKJTT/03ywEJ0k3p6+eAtiNgt852ceJQBoD1f4ievAOyboIAJ/+9x/thTAaJoAL6MFm9NRDAPEoNARgEgHg2PHmbNFUAPQLXkORIQATCaAGPXjfyULPaikAfPpDAGYSQDV68D6iNBGAONcPBYYAzCSASvTg/VvSEU9pIYCFKC4EAAFYgtmqCoB+4MMEbrhAABCARc6kIB5VUwCDUFQIAAKwFJ+qKYA9KCgEAAFYilJ3pge7E/6fiscLKCoEAAFYi15qCCAYhYQAIABLstArAfDGg+JSAsWEACAA68FndHTwRgBvoYgQAARgaXp7I4AYFBACgAAsTbRHAhDHfF1DASEACMDaG9YSD3kigLEoHgQAAdiCfp4IYB8KBwFAALZgnSIB0P/Q5V25z2KHACAAO3GFM61EAO+gaBAABGArBioRQAQKBgFAAPbfLciVAApQMAgAArAVdS09DXA19x8FgwAgAAk2DW1JACNQKAgAApBjiXBLAtiEQkEAEIAt2d6qAHjhAIG91iEACMCenLt3jwAc+gEBQABy8UJrAsDafwgAArA3Y1oTwEEUCAKAAGxNTIsCoL/oRNSjQBAABGBryl0J4AUUxyMB4HRg4wTgRA96xDMtCcAHhVHO8tXf7kcYjWH56thk9KBH+LYkgOkojDLCI9ftQRCNZdaCtZCAcqJaEsBWFMZ9fANmZlMDNiCExuKoquGxOIKeVEReSwIoQmHc5ubBrGPHEUBzkJZ59ASPCfpS0cKgdncEQP/QmbiFwrhHwIT5aQieueAxQW8q4qmmAvg1CuI+MVv2pSJ05oLHBL2p/NSgRgH4oiBuc63U4axF6MwFjwl2sVb+JKBRAOEoiHsMGhZ6EoEzJzw26FG3CW4qgB0oiHv4fxieibCZEx4b9KjbfN1UADj/z03GBUamIGzmhMcGPeo2qd8LgP7QFcVwn48mL4QATAqPDXrUbZyNAuiBYkAAEICUPMICeAmFgAAgADk3B2EB9EEhIAAIQEr+yAIYiEJAABCAlExgAQSgEBAABCAlc1gAk1EICAACkJKFLIA5KAQEAAHIuS8ACyAKhYAAIAApWcMC2IxCQAAQgJRsYgEkoBAQAAQgJTtYAIdRCAgAApCSfVgIBAFAAPKSxgK4hEIoEkAywgYB2IRsFgBOA8YVAAQgJ8dZAA4UAgKAAKSkFNuBK94QJAICMCljJ0VAAAr3BGAB5KIQ7vPB6FmHETZz8v6oGTggRBmXWADYT10BA/xDyhE2c0Ljcxk9qoiLLIC9KIQibpVVOK8icObiyIlT5ehNxZxiAWxHIRQeDPI3HAxiNjbvSD6E3lRMJgtgPQqhdGvw2VkInbnwDZiZg95UzG4WQDQKoZiGLLrmRPDMwZadKenoSY+IYQEsRCGUQ584ueWVVfUIoNHHg1ff8hkeVoie9IjFOBbMC0LmfJWAEBoLjwF60WNCWQBBKITnXwWi1+7E2gCDmDZzRSJ60CvGswAmohDeMXVmdCJfiiKUel321zQEhizbj97zmiEsgDEohAoSmBG9D+HUPvibYpMODR45/Rh6ThX6sgB8UQjvGegfUoqQavqcP+O94WEn0Guq0pMF8BsUQh2yjpwoRFjV51R5RR3Vtw49pjq/ZAF0QyHUIXL5ZjwV0IBV3+w6iP7ShCcf4COC6Q/nUAzvGTZuTjoCqz5Dx4Zj30oNnmARHRoFkIqCqEJdWYWzDqFVj2NFpdW8AAu9pTrVnP1GAWA6sErExqdlILjqMX/JBmzyoQ2JTQUwCQVRhwlTFychuOrx3ogw7FilDQuaCqAfCqIal0sdzlqE13tSM44g/Nrh11QAz6Ig6vHV+l3YN1CdTT5xb0o7/rOpAB4k6lEU7BtoFvKLS6uoltfRT5rAWe90RwBCAsdRGPUesRw+VoSZgV4Q+vkqzPXXjrzG3DcVwFYURs2lwqswKchDSh3Ouv5+wZiboh2rWxLAbBRGPaiBnZgT4BlLVm5LQg9pyictCcAfhVGXiGWbEhFo5Sv+Bg0LPYX+0ZQ3WxLAqyiMJlcBeCSogDWb9hxA72hOt5YE0Jm4huKoy4KlG3EvwE1OOyuvDxwaUoa+0ZTyxsw3E4CQQDwKpPpVQCVdBVxBwNuGvzKhZzRnR2sC+AQFUp/5SzZit6A2OHnacZFkWYN+0ZwZrQngeRRIm6uAUofzMoLumuBw7O6rE39wKQAhAQeKpMFVwBcb9iLorpb8llRgxx9d4Ht8XdoSwEoUClcBejIuMAJLfg34/u9KAINQKG2Yu/ibeAS+Odt3p2agN3QjwB0BPCm2C0LB1L8KqCoqLa9C8O9s9lk7wD8EXzn1o3ubAhAS+A7F0oaxkyKwYYhgUtBSXPrrR3ZLWXclgDAUTDu2xqWkyR7+PcmZR3GlqSvBSgTwOgqmHQP8gx0nz1RckDX8ZRXO64OGhZaiF3TlRSUC4A1CLqFomu4duF9WAfx5+pfY6Ufn6b9EO7cFICSwBYXTdtOQuIT0TNnC/822xEyMve4sdZXz1gQwCoXTFl74UuI4K806gawjJ3ihz2WMve709UQAT2B1oPaM//OiZFl2+fEZji2+DYBnWP5IsQCEBL5GAbVnZUxcsv1n+0Vinb8xbGst420JAE8D9KH2jLPqhl3DH5eQno0xNgw/jwUgJJCPImpPWYXzml0FsCk26RDG2BDO80Y/3gpgPAoJAUAAlmRuW/l2RwC4GQgBQADWg09U/rnXAsDNQAgAArAkse5k210B4GYgBAABWIs+qgkANwMhAAjAUhS4mvrrjQBwMxACgACswTh3c61EALgZCAFAAOaHp1o/qroAcDMQAoAALMEiJZlWKgDcDIQAIABz8y+aCUBIACe3QgAQgDmJV5pnTwTQE4WGACAAU9JPcwFgsxAIAAIwJXlEe70E8BxxE0WHACAA0/A7T7LskQCEBKJRdAgAAjAFuzzNsTcC6E5cRfHV2Q+AgtJgVwFs252Kcya0XfTzgu4CEBL4HAPgPT7DwwrtvBtQRm5BMcZZM6K8ybC3AnicuIBB8I4RH809ZPNzAPhKEYeAqM8V4ieGCUBI4DMMhHdMDotKtPuegAP8Q8ox1qrzF2/zq4YAOhM44NEL1m9NsP1RYf4fzs7CWKsKZ66L4QIQEhiJAfEMPiasvLKq3u4CWBkTh4NA1cVfjeyqJYCOxAkMinLmLIxJkOFcgNPOyhv9/YIrMeaqkOPJpB/NBCAk8A4GRjFXC0vO1MhyMtCsBWuxjkQdequVW9UEICQQhcFxn0XRW6Q6IPREyenz/f1w6KyX7FQzs2oLoCtxCoPUNuMCI1NkPBl4e3xqlpi8gj5QDsvzGdMKQEjgDTzzbZ33Rkw/XlbhrJP1ePAFyzbhq4Bn+KmdV9UFICQwD4PVMu+PmpF3tLDEIWv4G+FDUdEPitioRVa1EsDDxDEMWjMa/jJrRaIMj/zcwVFV00BXAolYT+IWPInqccsIQEjgRaIeg/f9s/6z23enfofgt7xOYPDI6fiwaOWDg3hTq5xqJgAhgWDZd2idtWBtQqnDWYuwu4aviuZ98U1if7/gGgT+PuZpmVGtBcAThDIkHLQbgcHL9p8oOV2NgLtPSfnZK58vWg8R3CWX6GRZATTZPUia73mjP/lr6uFjhSUINETgJXwGx/Na51NzAQgJTLD7gH0wetbhpIM5RxBgiEAlxuuRTb0E0J5ItOVmHsNCi7bsTElHYDUVQa1kIoh/182z/SwhACGBbkSxne7sf7lmR1J5ZfVNhBQiUBF+b0/plUvdBCAk8Cxx3urTMcMjY3Bn33gR7LehCG5o+cjPcAEICfxWvFHLDc5nocsTZVq9BxHojq/eedRdAEICH1hpIsboiXxnv6gUoYMINGSaEVk0RABCAmGmv7M/ZlZ28qHcowgZRKAxXxqVQyMF0I5YZ9ZturfGHcCdfYhAD+J4wpx0AhAS6EQcMNGd/Yov1+5IdlRV30KQIAIdyOY9NIzMoKECEBJ4kigy+s4+780n8xp9iEB3yvR83GdaAQgJ/JI4Z8AgXJ+MO/sQgf7wYTr/aobsmUIATXYSuq7Xnf0xny44kJNfXIZgQAR6f+jwo3Cz5M40AhASGKD1HgJ+Y2ZnJ6fnHkMQgEEiGGymzJlKAEIC/6fF6kG+s79tF+7sA5ciSNJYBLyxx2iz5c10AmgyW/CyWifvRK/diTv7wEgR8MxXHzNmzZQCEBJ42Zsbg/39gi7OWbged/aB0SKoI942a85MKwAhgeeJCsV39sOiEgtLcWcfGC4Cvtvfy8wZM7UAhAR6ECXuFHzE+LmHco/jzj7QTARKrkjPEv9u9nyZXgBCAt2J460Uu3bZqtgkNCvQkqKy8guBwcv4UJObbYSfT8fqYYVsWUIAQgJ/L6ZONiv24BHT8zPzThSjQYFeHMrOL+SFYi7Cf5R42iq5sowAhAR+3GTtQMO0mSsSzjirrqMpgREHm/DuRPdcDRwinrBSpiwlACGBLoNHTt8Yl5CeiUYERrN7f0bOAL9gJ/XlHuIRq+XJcgJgqPAPE8vRgMAM5B4vXqb1/v0QQMsi8CeuogmBQVwjAqycIUsLQEjgV8RJNCPQmVPEi1bPj+UFICTwGBGLpgQ6sZ17zg7ZsYUAhATaEVMIzPkHWsFnQARyr9klN7YRQBMR9Caq0KxAZSqI/7ZbXmwnACGB7kQymhaoRALxD3bMii0F0OQrwRjiEhoYeMhlYizR3q45sa0A7rkawA1CoJRviX+yez5sL4AmIhhEVKKxQRtwj/jIkgtpBCAk8CSxGk0OXLCKeEKmTEglgCYi+B2Bs/5A00k9fWTMgpQCEBJ4hJhLYDWhvNQT84kusuZAWgE0EcE/EysxgUgqeKzXED1k73/pBdBEBM8Rf0M4bM9W4nn0PATgSgSviIkfCIu92EO8jB6HANwVQR8Cm45YnzTif9DTEICnswn7E0cQJMtxmPg9+hgCUEsGvyU2iRVhCJh57+pvIN5Az0IAWk4tno5ZhabiLBFCPI0ehQD0EkEn4n3iEAJoGCliiveD6EkIwEgZ/BfxldgjDsHUllqxIex/oPcgALOJ4MfiqmALNitVlauiplzbv0OvQQBWkEEX4l0iRqwrR5CVwfs4rBM17IKeggCsLAM+x+D3YsrxOYTbJXyi8wqiL99jQe9AAHaUwYPEW2IhUprki5FuEOliQc6bREf0CAQg49XBa8RE8T3XafPNNngu/iTiN8SP0AMQALhfCj2IIcQSIteik49uide+RLyXHhhbCAB4JoSOxM/FV4dRxBxis5juauSmp3VimjR/qs8jPiT+l/gF8RDGDgIA+giim1jF6CMOruCZiguIKPEUIlascPyOyCfKxM3IG4LzxBmigMgSW6rHERvF/IbFQjrTCF+iF/ETOx2QISv/D/94Y2Ny3YIVAAAAAElFTkSuQmCC" style="width: 100%" src="data:image/png;base64,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">
                                                    </div>
                                                </div>
                                                <div class="profile ng-hide" ng-show="doctor.Image == null" aria-hidden="true">
                                                    <div class="profile_pic">
                                                        <img src="../../../../images/img.jpg" style="width: 100%">
                                                    </div>
                                                </div>
                                                <button class="btn btn-warning" data-dismiss="modal" style="width: 100%; margin-top: 5px" ng-click="makeAppointmentDoctor(doctor.Id)">Chọn bác sĩ</button>
                                            </div>

                                            <div class="col-md-8 col-sm-8 col-xs-8">
                                                <div class="row">
                                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                                        <span class="blue"><b>Nguyễn Thanh Hiền</b></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div><!---->
                                        <div class="row ng-hide" ng-show="doctors.length == 0" aria-hidden="true">
                                            <div class="col-md-8 col-sm-8 col-xs-8">
                                                <div class="row">
                                                    Không tìm thấy kết quả nào
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal" id="btn-dismiss">Thoát</button>
                                    </div>

                                </div><!-- /.modal-content -->
                            </div><!-- /.modal-dialog -->
                        </div>
                        <div id="collapseThongTinModal" class="modal fade" tabindex="-1" role="dialog" style="display: none">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                        <h4 class="modal-title">Thông tin bác sĩ</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-md-3 ng-hide" ng-hide="true" aria-hidden="true">
                                                <div class="profile_pic">
                                                    <img src="../../../../images/picture.jpg" style="width: 100%">
                                                </div>
                                            </div>
                                            <div class="col-md-9">
                                                <div style="width: 100%">
                                                    <div style="width: 30%">
                                                        <img alt="" class="color ng-hide" ng-show="doctor.Image != null" aria-hidden="true"><br>
                                                        <br>
                                                        <span style="color: #008445;"><strong>BS. </strong></span>
                                                        <br>
                                                    </div>

                                                    <div style="width: 70%">
                                                        <table>
                                                            <tbody>
                                                                <tr>
                                                                    <td class="user-title">
                                                                        <strong>
                                                                            Chuyên khoa
                                                                        </strong>
                                                                    </td>
                                                                    <td ng-bind-html="doctor.Speciality"></td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="user-title">
                                                                        <strong>
                                                                            Chứng nhận
                                                                        </strong>
                                                                    </td>
                                                                    <td ng-bind-html="doctor.Degrees"></td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="user-title">
                                                                        <strong>
                                                                            Kinh nghiệm
                                                                        </strong>
                                                                    </td>
                                                                    <td ng-bind-html="doctor.Training"></td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="user-title">
                                                                        <strong>
                                                                            Phòng ban
                                                                        </strong>
                                                                    </td>
                                                                    <td ng-bind-html="doctor.Office"></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <table style="width: 90%; margin-top: 20px; margin-left: 20px; margin-right: 20px" class="table table-bordered table-hover">
                                                <thead>
                                                    <tr style="background-color: #c7c7c7; height: 20px">
                                                        <td>Ngày</td>
                                                        <td>Thời gian</td>
                                                        <td>Ghi chú</td>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <!---->
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

    </section>

</div>
<?php get_footer();?>
