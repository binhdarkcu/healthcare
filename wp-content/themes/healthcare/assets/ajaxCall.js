jQuery(document).ready(function(){
    var date = new Date();
    date.setDate(date.getDate()+1);
    $('#dateTimePicker input, #dateTimePicker2').datepicker({
        format: 'dd/mm/yyyy',
        startDate: date,
        todayHighlight: false,
        autoclose: true,
        language: 'vi',
        daysOfWeekHighlighted: '0.6'
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
    /* change value radio */
    $('.radio-inline').click(function () {
        var val = $(this).find('input[type="radio"]').attr('value')
        gender = $('#valueGender').attr('value', val);
    })
    /* checking validation and send data to server in đặt hẹn*/
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
                url: my_ajax_insert_db.ajax_url,
                success:  function (res) {
                    console.log(res)
                },
                fail: function (err) {
                    console.log(err)
                }
            });
            alert('Đăng ký thành công');
            return false
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
    /* checking validation and next step in đặt hẹn */
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
    var nameOfCompany,
        yourName,
        yourBirthday,
        yourEmail,
        yourPhone,
        marital_status,
        dayOrder,
        sessions,
        yourCode,
        yourGender,
        yourNote,
        yourAmount,
        companyName,
        insuranceAgent,
        totalAmount = [];
    $('#registerScheduleCompany').click(function () {
        nameOfCompany = $('.name_of_company').val();
        yourName = $('.yourName').val();
        yourBirthday = $('#yourBirthday').datepicker().val();
        yourEmail = $('.yourEmail').val();
        yourGender = $('#valueGender').val();
        yourPhone = $('.yourPhone').val();
        marital_status = $('.marital_status').val();
        dayOrder = $('#dateTimePicker2').datepicker().val();
        sessions = $('.sessions').val();
        yourCode = $('.yourCode').val();
        yourNote = $('.yourNote').val();
        yourAmount = $('.yourAmount').val();
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
                sessionOrder: 'required'
            },
            messages: {
                amount: {
                    required: 'Vui lòng điền số lượng',
                    max: 'Số lượng cần ít hơn 30 người'
                },
                genderOptRadio: 'Vui lòng chọn giới tính'
            },
            highlight: function (element) {
                $(element).addClass('has-error');
            },
            unhighlight: function (element) {
                $(element).removeClass('has-error');
            },
            errorPlacement: function(error, element) {
                var attrName = element.attr('name');
                if( attrName == 'amount') {
                    error.insertAfter(element);
                } else if (element.is(":radio") ) {
                    error.appendTo( element.parents('.form-group .col-xs-8') );
                }
            },
            submitHandler: function () {
                $.ajax({
                    type: 'GET',
                    url: my_ajax_insert_db.ajax_url,
                    data: {
                        action: 'action_check_time_order',
                        company_name: nameOfCompany,
                        day: dayOrder,
                        sessions: sessions
                    },
                    success: function (res) {
                        res.map(function (e) {
                            return totalAmount.push(parseInt(e.amount))
                        });
                        totalAmount.push(parseInt(yourAmount));
                        if(totalAmount.reduce(reducer) > 30) {
                            alert(`Đã vượt qua số lượng cho phép, vui lòng chọn ngày khác. Số lượng hiện tại là: ${totalAmount.reduce(reducer)}`);
                            $('#dateTimePicker2').val('');
                            $('#dateTimePicker2').datepicker('show');
                            totalAmount = []
                        } else {
                            $.ajax({
                                type: 'POST',
                                url: my_ajax_insert_db.ajax_url,
                                data: {
                                    action:'action_insert_db_schedule_company',
                                    company_name: nameOfCompany,
                                    amount: yourAmount,
                                    name: yourName,
                                    birthday: yourBirthday,
                                    gender: yourGender,
                                    email: yourEmail,
                                    phone: yourPhone,
                                    marital_status: marital_status,
                                    day: dayOrder,
                                    sessions: sessions,
                                    employee_code: yourCode,
                                    note: yourNote
                                },
                                success: function (res) {
                                    console.log(res)
                                }
                            })
                            alert('Đăng ký thành công')
                            $('#formScheduleCompany').get(0).reset();
                        }
                    }
                })
            }
        });
    });
    
    /* checking validation and send data form 2 */
    $('#registerCompany').click(function () {
        companyName = $('.companyName').val();
        insuranceAgent = $('.insuranceAgent').val();
        $('#formCompany').validate({
            rules: {
                companyName: 'required',
                insuranceAgent: 'required'
            },
            highlight: function (element) {
                $(element).addClass('has-error');
            },
            unhighlight: function (element) {
                $(element).removeClass('has-error');
            },
            errorPlacement: function(error, element) {},
            submitHandler: function () {
                $.ajax({
                    type: 'POST',
                    url: my_ajax_insert_db.ajax_url,
                    data: {
                        action: 'action_insert_db_company',
                        companyName: companyName,
                        insuranceAgent: insuranceAgent
                    },
                    success: function (res) {
                        console.log(res)
                    }
                })
            }
        })
    })
});
