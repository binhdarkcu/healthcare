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
                                        class="fa fa-id-card-o" aria-hidden="true"></i> Khám sức khỏe tuyển dụng / khám theo bảo hiểm</a></li>
                        </ul>
                        <div class="tab-content" style="margin-bottom: 30px;" aria-hidden="false">
                            <div id="appointment" class="tab-pane fade active in" style="width: 100%">
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <form class="form-horizontal" id="formScheduleCompany" method="post">
                                        <div class="form-group">
                                            <label class="col-md-2 col-sm-3 col-xs-4">Tên công ty:*</label>
                                            <div class="col-md-6 col-sm-9 col-xs-8">
                                                <select class="form-control name_of_company" name="nameOfCompany">
                                                    <option value="">Vui lòng chọn công ty của bạn</option>
                                                    <?php if( have_rows('schedule_company', 'option') ): while( have_rows('schedule_company', 'option') ): the_row();
                                                        while( have_rows('company_list', 'option') ): the_row();?>
                                                            <option value="<?php echo get_sub_field('name_of_company') ?>"><?php echo get_sub_field('name_of_company') ?></option>
                                                        <?php endwhile;endwhile;endif; ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 col-sm-3 col-xs-4"">Số lượng cần đặt:*</label>
                                            <div class="col-md-6 col-sm-9 col-xs-8">
                                                <input type="number" name="amount"
                                                       class="form-control yourAmount" placeholder="Tối đa 30 người" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 col-sm-3 col-xs-4">Họ tên:*</label>
                                            <div class="col-md-6 col-sm-9 col-xs-8">
                                                <input type="text" name="name" class="form-control yourName" placeholder="Họ tên*" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="dateOrder" class="col-md-2 col-sm-3 col-xs-4">Ngày tháng năm sinh:* </label>
                                            <div class="col-md-6 col-sm-9 col-xs-8">
                                                <div class="input-group date" data-provide="datepicker"
                                                     data-date-autoclose="true" data-date-format="dd/mm/yyyy"
                                                     data-date-days-of-week-highlighted="0,6" data-date-language="vi"
                                                     data-date-today-highlight="true">
                                                    <input type="text"
                                                           class="form-control ng-pristine ng-untouched ng-valid ng-empty"
                                                           name="yourBirthday" id="yourBirthday" placeholder="Chọn ngày"
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
                                                           class="ng-pristine ng-untouched ng-valid ng-empty" value="Nữ">Nữ
                                                </label>
                                                <input type="hidden" id="valueGender" value="0">
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 col-sm-3 col-xs-4">Email:*</label>
                                            <div class="col-md-6 col-sm-9 col-xs-8">
                                                <input type="text" name="yourEmail" class="form-control ng-pristine ng-untouched yourEmail" placeholder="Email*" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 col-sm-3 col-xs-4">Số điện thoại:*</label>
                                            <div class="col-md-6 col-sm-9 col-xs-8">
                                                <input type="text" onkeypress="return isNumberKey(event)" name="yourPhone"
                                                       class="form-control ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required yourPhone"
                                                       placeholder="Số điện thoại">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 col-sm-3 col-xs-4">Tình trạng hôn nhân:</label>
                                            <div class="col-md-6 col-sm-9 col-xs-8">
                                                <select class="form-control marital_status">
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
                                                <div class="input-group date">
                                                    <input type="text" name="timeOrder"
                                                           class="form-control ng-pristine ng-untouched ng-valid ng-not-empty ng-valid-required"
                                                           placeholder="Chọn ngày" autocomplete="off"
                                                           aria-invalid="false" id="dateTimePicker2">
                                                    <div class="input-group-addon">
                                                        <span class="fa fa-calendar"></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <label for="timeOrder" class="col-md-1 col-sm-1 col-xs-1">Buổi:*</label>
                                            <div class="col-md-3 col-sm-3 col-xs-3">
                                                <select class="form-control ng-pristine ng-untouched ng-valid ng-not-empty ng-valid-required sessions" name="sessionOrder">
                                                    <option value="Sáng" selected>Sáng</option>
                                                    <option value="Chiều">Chiều</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 col-sm-3 col-xs-4">Mã nhân viên / phòng ban:</label>
                                            <div class="col-md-6 col-sm-9 col-xs-8">
                                                <input type="text" class="form-control ng-pristine ng-untouched yourCode" placeholder="Nhập mã" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 col-sm-3 col-xs-4">Ghi chú:</label>
                                            <div class="col-md-6 col-sm-9 col-xs-8">
                                                <textarea type="text" class="form-control ng-pristine ng-untouched yourNote" placeholder="Ghi chú"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4"></label>
                                            <div class="col-md-8">
                                                <button type="submit" class="btn btn-success" id="registerScheduleCompany">Đăng ký</button>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <small><?php echo get_field('schedule_company', 'option')['note'] ?></small>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div id="infoOrderer" class="tab-pane fade">
                                <form id="formCompany" class="form-horizontal ng-pristine ng-invalid ng-invalid-required ng-valid-email">
                                    <div class="form-group">
                                        <label class="col-md-2 col-sm-3 col-xs-4" for="patientName">Chọn công ty bảo hiểm: <span
                                                class="red">*</span></label>
                                        <div class="col-md-6 col-sm-9 col-xs-8">
                                            <select class="form-control companyName" name="companyName">
                                                <option value="">Vui lòng chọn công ty bảo hiểm</option>
                                                <?php if( have_rows('company_not_schedule', 'option') ): while( have_rows('company_not_schedule', 'option') ): the_row();
                                                    while( have_rows('list_of_company', 'option') ): the_row();?>
                                                        <option value="<?php echo get_sub_field('name_of_company') ?>"><?php echo get_sub_field('name_of_company') ?></option>
                                                    <?php endwhile;endwhile;endif; ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 col-sm-3 col-xs-4">Nhân viên bảo hiểm: <span
                                                class="red">*</span></label>
                                        <div class="col-md-6 col-sm-9 col-xs-8">
                                            <input type="text" name="insuranceAgent" class="form-control insuranceAgent ng-pristine ng-untouched" placeholder="Nhân viên bảo hiểm" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 col-sm-3 col-xs-4"></label>
                                        <div class="col-md-6 col-sm-9 col-xs-8">
                                            <button type="submit" id="registerCompany" class="btn btn-success">Đăng ký</button>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <small><?php echo get_field('company_not_schedule', 'option')['note'] ?></small>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <!---->
                        </div>
                        <h3 class="column-title">Lưu ý chung</h3>
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
