function custom_validate( form, rules = null ) {

    var methods = {

        'checkPhone' : function (el) {

            var val = $(el).val().replace(/-|\(|\)|\+|\s/g, '');
            if (val.length > 10)
                return true;
            else
                return false;

        }

    }

    var args = {
            'f-name': [
                {'regexp': /.{1,50}/, 'error': 'Das Feld "Vorname" muss ausgefullt sein'},
                {'regexp': /^\w{1}/i, 'error': 'Das Feld "Vorname" muss ein Wort enthalten'}
            ],
            's-name': [
                {'regexp': /.{1,50}/, 'error': 'Das Feld "Nachname" muss ausgefullt sein'},
                {'regexp': /^\w{1}/i, 'error': 'Das Feld "Nachname" muss ein Wort enthalten'}
            ],
            'phone': [
                {'regexp': /.{1,50}/, 'error': 'Das Feld "Telefon" muss ausgefullt sein'},
                {
                    'regexp': /^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/im,
                    'error': 'Das Feld "Telefon" muss eine gultige Telefonnummer sein, zum Beispiel - +0729777555'
                }
            ],
            'adress': [
                {'regexp': /.{1,500}/, 'error': 'Das Feld "Adresse" muss ausgefullt sein'},
            ],
            'email': [
                {'regexp': /.{1,50}/, 'error': 'Das Feld "Email" muss ausgefullt sein'},
                {
                    'regexp': /^.\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/im,
                    'error': 'Das Feld "Email" muss eine gultige Postanschrift enthalten, z. B. test@gmail.'
                }
            ],
        },
        result, errors = [];

    if ( rules )
        args = rules;


    $(form).find('input, select, textarea').each(function (i, el) {

        Object.keys(args).map(function (key, index) {
            var mode = 'any-case';
            var r;
            if ( $(el).attr('name') != undefined ) {
                r = key.match($(el).attr('name'));
                //console.log(r);
            }
            if ( ( key == $(el).attr('name') ) ) {
                var check = args[key], result;
                $.each(check, function (i, method) {
                    if (method['mode']) {
                        mode = method['mode'];
                    }
                    if ( mode == 'any-case' || ( mode == 'if-filled'  && $(el).val().length > 0) ) {
                        if (method['function']) {
                            if (!method['function'](el)) {
                                $(el).parents('.v-input-box').addClass('has-error');
                                $(el).parents('.v-input-box').find('.error-message').html(method['error']);
                                errors.push(method['error']);
                                return false
                            }
                        }
                        else if (method['regexp']) {
                            if (!$(el).val().match(method['regexp'])) {
                                $(el).parents('.v-input-box').addClass('has-error');
                                $(el).parents('.v-input-box').find('.error-message').html(method['error']);
                                errors.push(method['error']);
                                return false;
                            }
                        }
                    }
                });
            }
        });

    });

    if (errors.length == 0) return true;
    else return errors;

}




function check_select ( el ) {
    var selected_options = $(el).find('option:selected'), empty_values = 0, filled_values = 0;

    $(selected_options).each( function( i, el ) {
        if ( el.attributes && el.attributes.value && el.attributes.value.nodeValue ) {
            if (el.attributes.value.nodeValue == '') {
                empty_values += 0;
            } else {
                filled_values += 1;
            }
        }
        else {
            return false;
        }
    });
    //console.log( selected_options.length + '->' + empty_values + '->' + filled_values);

    if ( ( selected_options.length == empty_values ) || ( empty_values == 0 && filled_values == 0 ) )
        return false;
    else
        return true;

}


function getCookie( name ) {
    var matches = document.cookie.match(new RegExp(
        "(?:^|; )" + name.replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g, '\\$1') + "=([^;]*)"
    ));
    return matches ? decodeURIComponent(matches[1]) : false;
}


function setCookie(name, value, options) {
    options = options || {};

    var expires = options.expires;

    if (typeof expires == "number" && expires) {
        var d = new Date();
        d.setTime(d.getTime() + expires * 1000);
        expires = options.expires = d;
    }
    if (expires && expires.toUTCString) {
        options.expires = expires.toUTCString();
    }

    value = encodeURIComponent(value);

    var updatedCookie = name + "=" + value;

    for (var propName in options) {
        updatedCookie += "; " + propName;
        var propValue = options[propName];
        if (propValue !== true) {
            updatedCookie += "=" + propValue;
        }
    }

    document.cookie = updatedCookie;
}


function deleteCookie( name, domain = null ) {
    if ( !domain ) domain = '/';
    setCookie(name, "", {
        expires: -1, path : domain
    })
}


function getData() {

    var data = getCookie( 'wistra-info' );
    if ( !data ) {
        data = JSON.stringify( { 'vacancies' : [], 'resumes' : [] } );
    }
    data = JSON.parse( data );

    return data;

}



function insertVacancyToCart( e ) {

    var data = getData(), objectID = $(e.target).parents('.object-content').attr('data-object-id');

    if ( -1 == $.inArray( objectID, data.vacancies ) ) {
        data.vacancies.push( objectID );
        $('.wi-tab-content.vacancys').append('<div class="object-item resume-item" data-resume-id="' + objectID + '"><div class="wi-item-content">' + $(e.target).parents('.object-content').find('.archive-title').text() + '</div><div class="wi-remove"></div></div>');
        if ( !$('.wistra-info-box').hasClass('has-content') )    {
            $('.wistra-info-box').addClass('has-content')
        }
        if ( !$('.wistra-info-box').hasClass('has-vacancys') )    {
            $('.wistra-info-box').addClass('has-vacancys')
        }

        data = JSON.stringify( data );
        setCookie( 'wistra-info', data, { 'expires' : 60*5, 'path' : '/' } )

        animateVacancyChoice( e );

    }
    console.log(data);

}



function send_resume_to_selected_vacancy( $_vacancy_id, e ) {

    $.ajax({
        'method': 'POST',
        'url': ajaxdata.url,
        'data': { 'action': 'recruit_get_resume_to_send', 'user_id' : $(e.target).parents('main').attr('data-user-id'), 'vacancy_id' : $_vacancy_id },
        'success': function (answer) {
            var result = JSON.parse(answer);
            $('body').removeClass('loading');
            $('.modal-content .fm-text').html( result.content );
            $('.modal-content .fm-btn').addClass('send-resume-to-vacancy').text('send resume');
            $('body').addClass('has-modal');
        },
        'error': function () {
            $('body').removeClass('loading');
        }
    });

}

/*$(window).on( 'scroll', function( e ) {
   console.log($(window).scrollTop());
});*/

function animateVacancyChoice( e ) {

    var img = $(e.target).parents('.object-content').find('img');
    var img_offset = $(img).offset();
    var h = $('body').hasClass('post-type-archive') ? img_offset.top : img_offset.top;
    console.log(h);

    $(img).clone().addClass('cloned-img').appendTo( '.site-wrapper' );
    $('.cloned-img').css( { position : 'absolute', width : $(img).width() + 'px', height : $(img).height() + 'px', left : img_offset.left + 'px', top : h + 'px' } );
    $('.cloned-img').animate( { top : $('.wi-button').offset().top + 'px', left : $('.wi-button').offset().left + 'px', width : 0 + 'px', height : 0 + 'px' }, { duration : 1000 , complete : function() { $('.cloned-img').remove(); } } )

}


jQuery(document).ready( function( $ ) {


    $(document).on( 'click', '.wi-button', function( e ) {

        $('.wistra-info-box').toggleClass('active');

    });





    $(document).on( 'click', '.archive-vacancy-content .vacancy-response', function( e ) {

        e.preventDefault();

        insertVacancyToCart( e );

    });


function removeElFromSelection( e ) {

    var data = getData(), objectID = $(e.target).parents('.object-item').attr('data-object-id');

    if ( $.inArray( objectID, data.vacancys ) ) {
        data.vacancies.splice( $.inArray( objectID, data.vacancys ), 1 );
        $(e.target).parents('.object-item').remove();
        if ( data.vacancies.length == 0 ) {
            $('.wistra-info-box').removeClass('has-vacancys');
        }
        if ( data.resumes.length == 0 ) {
            $('.wistra-info-box').removeClass('has-resumes');
        }
        if ( !$('.wistra-info-box').hasClass('has-vacancys') && !$('.wistra-info-box').hasClass('has-resumes') ) {
            $('.wistra-info-box').removeClass('has-content');
        }
    }

    data = JSON.stringify( data );
    setCookie( 'wistra-info', data, { 'expires' : 60*5, 'path' : '/' } )

}



    $(document).on( 'click', '.wi-remove', function( e ) {

        removeElFromSelection( e );

    });



    $(document).on( 'click', '.img_change', function(e) {

        e.preventDefault();
        var image = wp.media({
            title: 'Upload Image',
            library : {
                //type : 'select'
            },
            multiple: false
        }).open()
            .on('select', function(e1){
                var viewport = jQuery(e.target).parents('.img_control').find('.img_prv'), url;
                var uploaded_image = image.state().get('selection').first();
                var image_id = uploaded_image.toJSON().id;

                jQuery(e.target).parents('.img_control').find('input').attr( 'value', image_id );
                jQuery(viewport).css( { 'background-image' : 'url(' + uploaded_image.changed.url + ')' } );

            });

    });

    jQuery('.img_remove').click(function(e) {

        e.preventDefault();
        jQuery(e.target).parents('.img_control').find('input').val('');
        jQuery(e.target).parents('.img_control').find('.img_prv').css( { 'background-image' : 'none' } );
        if ( jQuery('.img_control').length > 1 )
            jQuery(e.target).parents('.img_control').detach();

        return false;

    });

    jQuery('.add_img_control').click(function(e) {

        e.preventDefault();
        var el = jQuery(e.target).parents('.imgs_control').find('.img_control')[0];
        el  = jQuery(el).clone(true);
        jQuery(el).appendTo('.imgs_control');
        jQuery(el).find('input').val('');
        jQuery(el).find('.img_prv').css( { 'background-image' : 'none' } );

        return false;

    });





    $('.filter-box-title').on( 'click', function( e ) {
        e.stopPropagation();
        $(e.target).parents('.filter-box').toggleClass('opened').find('> .filter-items-box').slideToggle() ;
    });

    $('.filter-item.sub-box .sub-filter-item .filter-item-title').on( 'click', function( e ) {
        e.stopPropagation();
        $(e.target).parents('.filter-item.sub-box').toggleClass('opened').find('> .filter-items-box').slideToggle();
    });



    $('.date-select').on( 'change', function( e ) {
        location.assign($(this).val());
    });



    //Perform AJAX login on form submit
    $('form#login').on('submit', function(e){
        e.preventDefault();
        $('form#login p.status').show().text(ajaxdata.loadingmessage);
        $.ajax({
            type: 'POST',
            dataType: 'json',
            url: ajaxdata.url,
            data: {
                'action': 'ajaxlogin', //calls wp_ajax_nopriv_ajaxlogin
                'username': $('form#login #username').val(),
                'password': $('form#login #password').val(),
                'remember_user': $('form#login #remember_user').val(),
                'security': $('form#login #security').val() },
            success: function(data){
                $('form#login p.status').text(data.message);
                if (data.loggedin == true){
                    document.location.href = ajaxdata.redirecturl;
                }
            }
        });
    });

    /*$(document).on( 'click', 'button.site-button', function( e ) {
        console.log(e.target);
    });*/

    // Perform AJAX login/register on form submit
    $('form#register').on('submit', function (e) {
        $('form#register p.status').show().text(ajaxdata.loadingmessage);
        if ($(this).attr('id') == 'register') {
            action = 'ajaxregister';
            username = $('#signonname').val();
            password = $('#signonpassword').val();
            email = $('#email').val();
            //role = $('#role').val();
            security = $('#registersecurity').val();
        }
        ctrl = $(this);
        $.ajax({
            type: 'POST',
            dataType: 'json',
            url: ajaxdata.url,
            data: {
                'action': action,
                'username': username,
                'password': password,
                'email': email,
                //'role': role,
                'security': security
            },
            success: function (data) {
                $('p.status', ctrl).text(data.message);
                if (data.loggedin == true) {
                    document.location.href = ajaxdata.redirecturl;
                }
            }
        });
        e.preventDefault();
    });

    // Perform AJAX forget password on form submit
    $('form#forgot_password').on('submit', function(e){
        $('p.status', this).show().text(ajaxdata.loadingmessage);
        ctrl = $(this);
        $.ajax({
            type: 'POST',
            dataType: 'json',
            url: ajaxdata.url,
            data: {
                'action': 'ajaxforgotpassword',
                'user_login': $('#user_login').val(),
                'security': $('#passforgotsecurity').val(),
            },
            success: function(data){
                $('p.status',ctrl).text(data.message);
            }
        });
        e.preventDefault();
        return false;
    });


    $('.sign-in-link.not-logged-in').on( 'click', function( e ) {
        e.preventDefault();
        $('.login-form-box form').toggleClass('active');
    });

    $(document).on( 'click', '.wistra-info a.not-logged-in', function( e ) {
        e.preventDefault();
        $('.wi-info').addClass('activated');
        $('a.sign-in-link.not-logged-in').trigger('click');
        $('html, body').animate( { 'scrollTop' : 0 }, 700 );
        setTimeout( function() {
            $('.wi-info').removeClass('activated');
        }, 7000 );
        return false;
    });



    $(document).on( 'click', 'a.log-in-here', function( e ) {
        e.preventDefault();

        $('a.sign-in-link.not-logged-in').trigger('click');
        $('html, body').animate( { 'scrollTop' : 0 }, 700 );

    });


    $('.login-form-box form .reg').on('click', function(e){
        e.preventDefault();
        $('.modal-login').show();
        $('.modal-login > div').hide();
        $('.modal-login_reg').fadeIn();
    });

    $('.login-form-box form > a').on('click', function(e){
        if($('#login').length){
            e.preventDefault();
        }
    });
    $('.login-form-box form .lost').on('click', function(e){
        e.preventDefault();
        $('.modal-login').show();
        $('.modal-login > div').hide();
        $('.modal-login_res').fadeIn();
    });

    $('.modal-login_reg .lrm-login_exit, .modal-login_res .lrm-login_exit').on('click',function(e){
        e.preventDefault();
        $('.modal-login').fadeOut();
    });

    $('.modal-login_reg_login').on('click',function(e){
        e.preventDefault();
        $('.modal-login').fadeOut();
        $('.lrm-login').mouseover();
    });


    $('.login-form-box form .lrm-login_exit').on('click', function(e){
        e.preventDefault();
        $('.sign-in-link').trigger('click');
    });






    $('.reviews-box').slick({
        speed: 400,
        infinite: true,
        slidesToShow: 2,
        slidesToScroll: 2,
        arrows: true,
        dots : true
        //centerMode: true,
        //variableWidth: true,
        /*beforeChange : function( event, slick, currentSlide, nextSlide ) {
            console.log(nextSlide);
        }*/
    });


    /*$('.reviews-box').on('beforeChange', function( event, slick, currentSlide, nextSlide){
        $('.review-content').slideUp( 400 );
        $('.review-content').each( function( i, el ) {
            if ( i == nextSlide ) {
                $(el).slideDown( 400 );
            }
        } );
        $()
    });*/
    //$('.review-content').slideUp( 400 );
    $($('.review-content')[0]).slideDown( 400 );





    $('.posts-carousel').slick({
        speed: 400,
        infinite: true,
        slidesToShow: 4,
        slidesToScroll: 1,
        arrows: true,
        //variableWidth: true,
    });



    $(document).on( 'click', '.tip-title-box', function( e ) {
        //$('.tip-box').removeClass('active');
        $(e.target).parents('.tip-box').toggleClass('active');
        $(e.target).parents('.tip-box').find('.tip-content').slideToggle();
    });







    $(document).on( 'submit', '.site-form', function( e ) {

        e.preventDefault();

        var rules = {

            'name': [
                {
                    'mode' : 'any-case', 'regexp': /.{1,50}/, 'error': custom_jsL10n.name_error
                }
            ],
            'email': [
                { 'mode' : 'any-case', 'regexp': /.{1,50}/, 'error': custom_jsL10n.email_error }
            ],
            'phone' : [
                { 'mode' : 'any-case', 'regexp': /.{1,50}/, 'error': custom_jsL10n.phone_error }
            ],
            'message' : [
                { 'mode' : 'any-case', 'regexp': /.{1,50}/, 'error': custom_jsL10n.message_error }
            ]
        }

        var errors = custom_validate( $(e.target), rules );

        if ( !Array.isArray( errors ) && errors ) {

            $('body').addClass('loading');

            var formData = new FormData();
            var form = $(e.target);
            var params = $(form).serializeArray();
            $.each(params, function (i, val) {
                formData.append(val.name, val.value);
            });
            /*$( form ).find("input[type='file']").each(
                function (i, tag) {
                    $.each($(tag)[0].files, function (i, file) {
                        formData.append(tag.name, file);
                    });
                });*/
            formData.append('action', 'recruit_handle_site_form');
            formData.append('user_id', $(form).parents('main').attr('data-user-id'));


            $.ajax({
                'method': 'POST',
                'url': ajaxdata.url,
                'data': formData,
                'processData': false,
                'contentType': false,
                'success': function (answer) {
                    var result = JSON.parse(answer);
                    console.log(result);
                    $('.form-messages .fm-title').text(result.result);
                    $('.form-messages .fm-text').html(result.content);
                    $('body').addClass('has-modal');
                    $('body').removeClass('loading');
                },
                'error': function () {
                    $('body').removeClass('loading');
                }
            });

        }
        else {
            /*formMessage = '';
            $('.form-messages .fm-title').text('Form has errors');
            $.each(errors, function (i, message) {
                if ( message != undefined )
                    formMessage += '<p>' + message + '</p>';
            });
            $('.form-messages .fm-text').html(formMessage);
            $('body').addClass('has-modal');*/
        }

    });


    $(document).on( 'click', '.modal-content .fm-btn', function( e ) {
        //clearPopup();
        $('body').removeClass('has-modal').removeClass('loading');
    });


});
