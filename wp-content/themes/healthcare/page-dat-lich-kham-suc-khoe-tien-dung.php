<?php get_header() ?>
<?php
$queried_object = get_queried_object();
?>
<div ng-init="loadData()">
    <section>
        <div class="container container-bd" id="container" style="padding-top: 50px">

            <div class="conten col-md-12 col-sm-12 col-xs-12" style="margin-top:30px;">
                    <div class="container container-bd">
                        <ul class="nav nav-tabs tabMain" aria-hidden="false">
                            <li class="active"><a showtab="" data-toggle="tab" href="#appointment" aria-expanded="true"><i
                                        class="fa fa-calendar" aria-hidden="true"></i> Khám sức khỏe định kỳ công ty</a></li>
                            <li class=""><a showtab="" data-toggle="tab" href="#infoOrderer" aria-expanded="false"><i
                                        class="fa fa-id-card-o" aria-hidden="true"></i> Khám tuyển dụng - bảo hiểm</a></li>
                            <!--<li class=""><a ng-show="mailActiveId!=undefined" showtab="" data-toggle="tab" href="#checkandConfirm"><i class="fa fa-calendar-check-o" aria-hidden="true"></i> Kiểm tra và xác nhận</a></li>-->
                        </ul>
                        <div class="tab-content" style="margin-bottom: 30px;" aria-hidden="false">
                            <div id="appointment" class="tab-pane fade active in" style="width: 100%">
                                <div class="col-md-12 col-sm-12 col-xs-12" style="padding-left: 0px; padding-right: 0px">
                                    <form class="form-horizontal ng-pristine ng-invalid ng-invalid-required">
                                        <div class="form-group">
                                            <label class="col-md-2 col-sm-3 col-xs-4" for="patientName">Tên công ty:*</label>
                                            <div class="col-md-6 col-sm-9 col-xs-8">
                                                <select class="form-control" id="">
                                                    <option value="">Vui lòng chọn công ty bảo hiểm</option>
                                                    <option value="Công ty AIA">Công ty AIA</option>
                                                    <option value="Công ty Prudential">Công ty Prudential</option>
                                                </select>
                                            </div>
                                            <div class="col-md-3" id="amount_ordered" style="opacity: 0">
                                                <label for="">Số lượng đã đặt</label>
                                                <input type="text" disabled="disabled" value="10" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 col-sm-3 col-xs-4" for="patientName">Họ tên:*</label>
                                            <div class="col-md-6 col-sm-9 col-xs-8">
                                                <input type="text" class="form-control ng-pristine ng-untouched" placeholder="Họ tên*" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="dateOrder" class="col-md-2 col-sm-3 col-xs-4"
                                                   style="padding-right:0;">Ngày tháng năm sinh:* </label>
                                            <div class="col-md-6 col-sm-9 col-xs-8">
                                                <div class="input-group date" data-provide="datepicker"
                                                     data-date-autoclose="true" data-date-format="dd/mm/yyyy"
                                                     data-date-days-of-week-highlighted="0,6" data-date-language="vi"
                                                     data-date-today-highlight="true">
                                                    <input type="text"
                                                           class="form-control ng-pristine ng-untouched ng-valid ng-empty"
                                                           name="ngaysinh" id="ngaysinh" placeholder="Chọn ngày"
                                                           ng-model="appointment.PatientDoB" aria-invalid="false">
                                                    <div class="input-group-addon">
                                                        <span class="fa fa-calendar"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 col-sm-3 col-xs-4">Giới tính:* </label>
                                            <div class="col-md-6 col-sm-9 col-xs-8">
                                                <label class="radio-inline">
                                                    <input type="radio" name="genderOptRadio" id="male"
                                                           class="ng-pristine ng-untouched ng-valid ng-empty" value="Nam"
                                                           aria-invalid="false">Nam
                                                </label>
                                                <label class="radio-inline">
                                                    <input type="radio" name="genderOptRadio" id="female"
                                                           class="ng-pristine ng-untouched ng-valid ng-empty" value="Nữ"
                                                           aria-invalid="false">Nữ
                                                </label>
                                                <input type="hidden" id="valueGender" value="0">
                                                <div class="error-message text-danger" style="display: none">Vui lòng chọn
                                                    giới tính
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 col-sm-3 col-xs-4" for="patientName">Email:*</label>
                                            <div class="col-md-6 col-sm-9 col-xs-8">
                                                <input type="text" class="form-control ng-pristine ng-untouched" placeholder="Email*" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 col-sm-3 col-xs-4" for="patientName">Số điện thoại:*</label>
                                            <div class="col-md-6 col-sm-9 col-xs-8">
                                                <input type="text" onkeypress="return isNumberKey(event)"
                                                       class="form-control ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required"
                                                       placeholder="Số điện thoại" name="patientPhone">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 col-sm-3 col-xs-4" for="patientName">Tình trạng hôn nhân:</label>
                                            <div class="col-md-6 col-sm-9 col-xs-8">
                                                <select class="form-control" id="">
                                                    <option value="" selected hidden>Vui lòng chọn tình trạng hôn nhân</option>
                                                    <option value="single">Độc thân</option>
                                                    <option value="married">Đã kết hôn</option>
                                                    <option value="divorced">Ly hôn</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="dateOrder" class="col-md-2 col-sm-3 col-xs-4" style="padding-right:0;">Thời gian đặt hẹn:* </label>
                                            <div class="col-md-2 col-sm-3 col-xs-4">
                                                <div id="dateTimePicker" class="input-group date">
                                                    <input type="text"
                                                           class="form-control ng-pristine ng-untouched ng-valid ng-not-empty ng-valid-required"
                                                           placeholder="Chọn ngày" autocomplete="off"
                                                           aria-invalid="false">
                                                    <div class="input-group-addon">
                                                        <span class="fa fa-calendar"></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <label for="timeOrder" class="col-md-1 col-sm-1 col-xs-1">Buổi:*</label>
                                            <div class="col-md-3 col-sm-3 col-xs-3">
                                                <select name="timeOrder" class="form-control ng-pristine ng-untouched ng-valid ng-not-empty ng-valid-required">
                                                    <option value="Sáng">Sáng (7h30 - 11h30)</option>
                                                    <option value="Chiều">Chiều (13h00 - 17h00)</option>
                                                    <option value="Tối">Tối (18h00 - 19h30)</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 col-sm-3 col-xs-4" for="patientName">Mã nhân viên / phòng ban:</label>
                                            <div class="col-md-6 col-sm-9 col-xs-8">
                                                <input type="text" class="form-control ng-pristine ng-untouched" placeholder="Nhập mã" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 col-sm-3 col-xs-4" for="patientName">Ghi chú:</label>
                                            <div class="col-md-6 col-sm-9 col-xs-8">
                                                <textarea type="text" class="form-control ng-pristine ng-untouched" placeholder="Ghi chú"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4"></label>
                                            <div class="col-md-8">
                                                <button type="submit" class="btn btn-success" id="nextStep">Đăng ký</button>
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
                                <form name="infoOrdererForm"
                                         class="form-horizontal ng-pristine ng-invalid ng-invalid-required ng-valid-email">
                                    <div class="form-group">
                                        <label class="col-md-2 col-sm-3 col-xs-4" for="patientName">Chọn công ty bảo hiểm: <span
                                                class="red">*</span></label>
                                        <div class="col-md-6 col-sm-9 col-xs-8">
                                            <select class="form-control" id="">
                                                <option value="">Vui lòng chọn công ty bảo hiểm</option>
                                                <option value="Công ty AIA">Công ty AIA</option>
                                                <option value="Công ty Prudential">Công ty Prudential</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 col-sm-3 col-xs-4" for="patientName">Nhân viên bảo hiểm: <span
                                                class="red">*</span></label>
                                        <div class="col-md-6 col-sm-9 col-xs-8">
                                            <input type="text" class="form-control ng-pristine ng-untouched" placeholder="Nhân viên bảo hiểm" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 col-sm-3 col-xs-4"></label>
                                        <div class="col-md-6 col-sm-9 col-xs-8">
                                            <a href="<?php echo get_permalink($queried_object->ID) ?>" id="registerUser" class="btn btn-success preventClick">Đăng ký</a>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <!---->
                        </div>
                        <h3 class="column-title">Lưu ý của công ty, lưu ý chung</h3>
                        <div style="padding-bottom: 30px;">
                            <?php
                            if ( have_posts() ) {
                                while ( have_posts() ) {
                                    the_post();
                                    the_content();
                                } // end while
                            } // end if
                            ?>
                        </div>
                    </div>
            </div>
            <script>
                function isNumberKey(evt){
                    var charCode = (evt.which) ? evt.which : event.keyCode
                    if (charCode > 31 && (charCode < 48 || charCode > 57))
                        return false;
                    return true;
                }
            </script>
    </section>

</div>
<?php get_footer(); ?>
