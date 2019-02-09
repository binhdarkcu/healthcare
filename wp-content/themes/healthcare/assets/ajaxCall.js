jQuery(document).ready(function(){
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
        birthday,
        response;
    $('#selectDoctor').select2();
    $('.radio-inline').click(function () {
        var val = $(this).find('input[type="radio"]').attr('value')
        gender = $('#valueGender').attr('value', val);
    })
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
                    gender: gender.val()
                },
                url: my_ajax_insert_db.ajax_url
            });
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
        dateAppointment = $('#dateAppointment').datepicker().val();
        symptom = $('#symptom').val();
        timeAppointment = $('#timeAppointment').val();
        if (selectDoctor !== 0 && dateAppointment !== '' && symptom !== '') {
            if (symptom) {
                $('#symptom').removeClass(clsName)
            }
            if (selectDoctor !== 0) {
                $('.select2-selection--single').removeClass(clsName)
            }
            if (dateAppointment) {
                $('#dateAppointment').removeClass(clsName)
            }
            $.ajax({
                type: 'GET',
                data: {
                    action: 'action_check_time_booked',
                    id_doctor: selectDoctor,
                    day_booked: dateAppointment.toString()
                },
                url: my_ajax_insert_db.ajax_url,
                success: function (response) {
                    if(response.length > 0) {
                        var timeChecked = response.filter(function (e) {
                            return e.time == timeAppointment
                        });
                        if(timeChecked.length > 0) {
                            $('#timeAppointment').addClass(clsName);
                            $('#duplicateTime').removeClass('hidden');
                        } else {
                            switchTab.tab('show');
                            $('#duplicateTime').addClass('hidden');
                            switchTab.removeClass('disableTab');
                            $('#timeAppointment').removeClass(clsName);
                        }
                    } else {
                        $('#timeAppointment').removeClass(clsName);
                        $('#duplicateTime').addClass('hidden');
                        switchTab.tab('show');
                        switchTab.removeClass('disableTab');
                    }
                }
            })
        } else {
            if (!symptom) {
                $('#symptom').addClass(clsName)
            }
            if (selectDoctor == 0) {
                $('.select2-selection--single').addClass(clsName)
            }
            if (!dateAppointment) {
                $('#dateAppointment').addClass(clsName)
            }
        }
        return false
    });
});
