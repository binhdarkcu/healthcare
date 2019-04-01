jQuery(document).ready(function(){
    var date = new Date();
    date.setDate(date.getDate()+1);
    $('#dateTimePicker input, #dateTimePicker2').datepicker({
        format: 'dd/mm/yyyy',
        startDate: date,
        todayHighlight: false,
        autoclose: true,
        language: 'vi',
    })
    var clsName = 'has-error';
    var selectDoctor, dateAppointment,
        timeAppointment,
        symptom,
        switchTab = $('.tabMain li:eq(1) a'),
        male,
        female,
        name,
        email,
        gender,
        phone,
        examination,
        birthday,
        response;
    $('#selectDoctor').select2();
    function toDate(dateStr) {
        var parts = dateStr.split("/")
        return new Date(parts[2], parts[1] - 1, parts[0])
    }

    /* 
    * change value radio 
    */
    $('.radio-inline').click(function () {
        var val = $(this).find('input[type="radio"]').attr('value');
        gender = $(this).parents().find('input[type="hidden"]').attr('value', val);
    });

    /* 
    * checking validation and send data to server in đặt hẹn
    */
    $('#registerUser').click(function () {
        response = grecaptcha.getResponse();
        male = $('#male').is(':checked');
        female = $('#female').is(':checked');
        name = $('input[name="patientName"]');
        email = $('input[name="patientEmail"]');
        phone = $('input[name="patientPhone"]');
        birthday = $('input[name="ngaysinh"]').datepicker().val();
        if (name !== '' && phone !== '' && birthday !== '' && response !== '' && male || female) {
            $.ajax({
                type:'POST',
                data:{
                    action:'action_insert_db',
                    id_doctor: selectDoctor,
                    day_booked: dateAppointment,
                    time_booked: timeAppointment,
                    symptom: symptom,
                    full_name: name.val(),
                    email: email.val(),
                    phone: phone.val(),
                    birthday: birthday,
                    gender: gender.val(),
                    examination: examination,
                    client_code: $('#client_code').val()
                },
                url: my_ajax_insert_db.ajax_url
            });
            alert('Đăng ký thành công');
            return true
        } else {
            if (name.val() == '') {
                name.addClass(clsName);
            }
            if (email.val() == '') {
                email.addClass(clsName)
            }
            if (phone.val() == '') {
                phone.addClass(clsName)
            }
            if (!male && !female) {
                $('.error-message').css({'display': 'block'})
            }
            if (!birthday) {
                $('input[name="ngaysinh"]').addClass(clsName)
            }
            if (response == '') {
                $('.msg-captcha').css({'display': 'block'})
            }
            return false;
        }
    });

    /* 
    * checking validation and next step in đặt hẹn 
    */
    $('#nextStep').click(function () {
        selectDoctor = $('#selectDoctor').val();
        dateAppointment = $('#dateTimePicker input').datepicker().val();
        symptom = $('#symptom').val();
        timeAppointment = $('select[name="timeOrder"]').val();
        examination = $('#examination').val();
        if (selectDoctor !== 0 && dateAppointment !== '' && symptom !== '') {
            if (symptom) {
                $('#symptom').removeClass(clsName)
            }
            if (selectDoctor !== 0) {
                $('.select2-selection--single').removeClass(clsName)
            }
            if (dateAppointment) {
                $('#dateTimePicker input').removeClass(clsName)
            }
            if(examination) {
                $('#examination').removeClass(clsName)
            }
            $.ajax({
                type: 'GET',
                data: {
                    action: 'action_check_time_booked',
                    id_doctor: selectDoctor,
                    day_booked: dateAppointment,
                    time: timeAppointment
                },
                url: my_ajax_insert_db.ajax_url,
                success: function (response) {
                    if(response.length > 0) {
                        $('#timeAppointment').addClass(clsName);
                        $('#duplicateTime').removeClass('hidden');
                    } else {
                        $('#timeAppointment').removeClass(clsName);
                        $('#duplicateTime').addClass('hidden');
                        switchTab.tab('show');
                        switchTab.removeClass('disableTab');
                    }
                }
            })
        } else {
            if(examination == '') {
                $('#examination').addClass(clsName)
            }
            if (!symptom) {
                $('#symptom').addClass(clsName)
            }
            if (selectDoctor == 0) {
                $('.select2-selection--single').addClass(clsName)
            }
            if (dateAppointment == '') {
                $('#dateTimePicker input').addClass(clsName)
            }
            
        }
        return false
    });
    
    /* =======================================================================================*/
    /* checking validation and send data to server in đặt hẹn công ty */
    const reducer = (accumulator, currentValue) => accumulator + currentValue;
    var countError = 0;
    $('#registerScheduleCompany').click(function () {
        $('#formScheduleCompany').validate({
            rules: {
                nameOfCompany: "required",
                amount: {
                    required: true,
                    max: 30
                },
                name: "required",
                yourBirthday: 'required',
                genderOptRadio: 'required',
                yourEmail: {
                    required: true,
                    email: true
                },
                yourPhone: 'required',
                timeOrder: 'required',
                sessionOrder: 'required',
                companyCode: 'required'
            },
            messages: {
                genderOptRadio: 'Vui lòng chọn giới tính'
            },
            highlight: function (element) {
                $(element).addClass('has-error');
            },
            unhighlight: function (element) {
                $(element).removeClass('has-error');
            },
            errorPlacement: function(error, element) {
                if (element.is(":radio") ) {
                    error.appendTo( element.parents('.form-group .col-xs-8') );
                }
            },
            submitHandler: function () {
                $.ajax({
                    type: 'GET',
                    url: my_ajax_insert_db.ajax_url,
                    data: {
                        action: 'action_handle_check_code',
                        company_name: $('select[name="nameOfCompany"]').val(),
                        companyCode: $('input[name="companyCode"]').val()
                    },
                    success: function(res) {
                        if(res.length == 0) {
                            countError++;
                            $('input[name="companyCode"]').val('');
                            $('input[name="companyCode"]').addClass('has-error')
                            if(countError == 5) {
                                alert('Vui lòng liên hệ phòng khám để nhận mã công ty');
                                countError = 0;
                                $('#registerScheduleCompany').addClass('disableButton').removeAttr('id')
                                $('input[name="companyCode"]').removeClass('has-error')
                                $('input[name="companyCode"]').prop('disabled', true);
                            }
                        } else {
                            $.ajax({
                                type: 'GET',
                                url: my_ajax_insert_db.ajax_url,
                                data: {
                                    action: 'action_check_number',
                                    company_name: $('select[name="nameOfCompany"]').val(),
                                    date: $('input[name="timeOrder"]').datepicker().val(),
                                    session: $('select[name="sessionOrder"]').val()
                                },
                                success: function(res) {
                                    var calc_numbers = [];
                                    res.length > 0 ? res.map(function (e) {
                                        return calc_numbers.push(parseInt(e.amount))
                                    }) : calc_numbers = [0];
                                    if(res.length == 0 || calc_numbers.reduce(reducer) + parseInt($('.yourAmount').val()) <= 30) {
                                        $.ajax({
                                            type: 'POST',
                                            url: my_ajax_insert_db.ajax_url,
                                            data: {
                                                action: 'action_insert_db_schedule_company',
                                                company_name: $('select[name="nameOfCompany"]').val(),
                                                amount: $('.yourAmount').val(),
                                                name: $('.yourName').val(),
                                                birthday: $('#yourBirthday').datepicker().val(),
                                                gender: $('#valueGender').val(),
                                                email: $('.yourEmail').val(),
                                                phone: $('.yourPhone').val(),
                                                marital_status: $('.marital_status').val(),
                                                day: $('input[name="timeOrder"]').datepicker().val(),
                                                sessions: $('select[name="sessionOrder"]').val(),
                                                employee_code: $('.yourCode').val(),
                                                note: $('.yourNote').val()
                                            }
                                        })
                                        alert('Đăng ký thành công')
                                        location.reload();
                                    } else {
                                        $('#textError').attr('style', '');
                                        $('#textError').find('label').addClass('error')
                                        $('#total').text(calc_numbers.reduce(reducer))
                                        $('#countNumber').text(parseInt(30 - calc_numbers.reduce(reducer)))
                                    }
                                }
                            })
                        }
                    }
                })
            }
        });
    });

    //return date wwith format: 1/1/2011
    function pad(num) {
        return num.replace(/(^|\/)0+/g, '$1')
    }

    //convert string to array
    function convertString(val) {
        return val.split(",");
    }

    /*
    * render calender and session when select company
    */
    $('select[name="nameOfCompany"]').change(function() {
        $('input[name="timeOrder"]').datepicker("destroy");
        var onlyThisDates = [];
        $.ajax({
            type: 'GET',
            url: my_ajax_insert_db.ajax_url,
            data: {
                action: 'action_handle_check_date',
                companyName: $(this).val()
            },
            success: function(res) {
                res.map(function(e) {
                    return onlyThisDates.push(pad(e.date))
                })
                $('input[name="timeOrder"]').datepicker({
                    format: 'd/m/yyyy',
                    beforeShowDay: function(date) {
                        var dt_ddmmyyyy = date.getDate() + '/' + (date.getMonth() + 1) + '/' + date.getFullYear();
                        return (onlyThisDates.indexOf(dt_ddmmyyyy) != -1);
                    },
                    autoclose: 1
                }).on('changeDate', function(e) {
                    $.ajax({
                        type: 'GET',
                        url: my_ajax_insert_db.ajax_url,
                        data: {
                            action: 'action_handle_check_session',
                            companyName: $('.name_of_company').val(),
                            day: moment(e.date).format('DD/MM/YYYY')
                        },
                        success: function(res) {
                            $('select[name="sessionOrder"]').empty();
                            convertString(res[0].sessions).map(function(e) {
                                $('select[name="sessionOrder"]').append($('<option>', {
                                    value: e,
                                    text: e
                                }))
                            })
                        }
                    })
                })
            }
        })
    })

    /* 
    * checking validation and send data form 2 
    */
    $('#registerCompany').click(function () {
        $('#formCompany').validate({
            rules: {
                companyName: 'required',
                insuranceAgent: 'required',
                amountCompany: 'required',
                nameCompany: 'required',
                birthdayCompany: 'required',
                genderCompany: 'required',
                emailCompany: {
                    required: true,
                    email: true
                },
                phoneCompany: 'required',
                dateCompany: 'required'
            },
            messages: {
                genderCompany: 'Vui lòng chọn giới tính'
            },
            highlight: function (element) {
                $(element).addClass('has-error');
            },
            unhighlight: function (element) {
                $(element).removeClass('has-error');
            },
            errorPlacement: function(error, element) {
                if (element.is(":radio") ) {
                    error.appendTo( element.parents('.form-group .col-xs-8') );
                }
            },
            submitHandler: function () {
                $.ajax({
                    type: 'GET',
                    url: my_ajax_insert_db.ajax_url,
                    data: {
                        action: 'action_check_total_number',
                        companyName: $('.companyName').val(),
                        date: $('input[name="dateCompany"]').datepicker().val()
                    },
                    success: function (res) {
                        var total_current = [],
                        total_register = parseInt(res.list_company[0].total_members),
                        amount_current = parseInt($('input[name="amountCompany"]').val());
                        res.company.length > 0 ? res.company.map(function (e) {
                            return total_current.push(parseInt(e.amount))
                        }) : total_current = [];
                        if(total_current.length > 0) {
                            if((total_current.reduce(reducer) + amount_current) > total_register) {
                                $('#text_error').attr('style', '');
                                $('#current_amount').text(total_current.reduce(reducer) + '/' + total_register);
                                $('input[name="amountCompany"]').addClass('has-error');
                                total_current = []
                            }
                        } else {
                            $('#text_error').css('display', 'none');
                            $('input[name="amountCompany"]').removeClass('has-error');
                            $.ajax({
                                type: 'POST',
                                url: my_ajax_insert_db.ajax_url,
                                data: {
                                    action: 'action_insert_db_compant_not_schedule',
                                    company_name: $('.companyName').val(),
                                    amount: amount_current,
                                    name: $('input[name="nameCompany"]').val(),
                                    birthday: $('input[name="birthdayCompany"]').val(),
                                    gender: $('#valueGender01').attr('value'),
                                    email: $('input[name="emailCompany"]').val(),
                                    phone: $('input[name="phoneCompany"]').val(),
                                    statusYourself: $('.statusYourself').val(),
                                    date: $('input[name="dateCompany"]').datepicker().val(),
                                    session: $('select[name="sessionCompany"]').val(),
                                    codeCompany: $('input.codeCompany').val(),
                                    noteCompany: $('textarea.noteCompany').val()
                                },
                                success: function() {
                                    alert('Đăng ký thành công')
                                    location.reload();
                                }
                            })
                        }
                    }
                })
            }
        })
    });
});
