jQuery(document).ready(function(){
    var date = new Date();
    date.setDate(date.getDate()+1);
    $('#dateTimePicker input').datepicker({
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
    $('.radio-inline').click(function () {
        var val = $(this).find('input[type="radio"]').attr('value')
        gender = $('#valueGender').attr('value', val);
    })
    $('#registerUser').click(function () {
        console.log(examination);
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
    $('#nextStep').click(function () {
        selectDoctor = $('#selectDoctor').val();
        dateAppointment = $('#dateTimePicker input').datepicker().val();
        symptom = $('#symptom').val();
        timeAppointment = $('#timeAppointment').val();
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
});
