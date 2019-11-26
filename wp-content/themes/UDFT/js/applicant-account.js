jQuery(document).ready( function( $ ) {

    /* Resume Section */

    $(document).on( 'click', '.app-tab-title', function( e ) {

        $('.app-tab-content.active').slideToggle( { 'complete' : function() { $(this).removeClass('active'); } } );
        if ( !$(e.target).parent().find('.app-tab-content').hasClass('active') ) {
            $('.app-tab').removeClass('opened');
            $(e.target).parent().find('.app-tab-content').slideToggle({
                'complete': function () {
                    $(this).addClass('active');
                    $(this).parent().addClass('opened');
                }
            });
        }

        if ( $(e.target).attr( 'data-action' ) != undefined ) {

            console.log(decodeURI($(e.target).text()).replace( ' ' , '' ));
            window.history.pushState("nothing", "Title", "/applicant-account/" );

            $('body').addClass('loading');
            $('.app-tab').removeClass('opened');

            $.ajax({
                'method': 'POST',
                'url': ajaxdata.url,
                'data': { 'action': $(e.target).attr( 'data-action' ), 'user_id' : $(e.target).parents('main').attr('data-user-id') },
                'success': function (answer) {
                    var result = JSON.parse(answer);
                    $('.app-content').empty().append( result.content );
                    $(this).parent().addClass('opened');
                    $('body').removeClass('loading');
                },
                'error': function () {
                    $('body').removeClass('loading');
                }
            });

        }

    });




    $(document).on( 'click', '.app-tab-resume-link-box .resume-name', function( e ) {

        e.stopPropagation();
        $('body').addClass('loading');

        $.ajax({
            'method': 'POST',
            'url': ajaxdata.url,
            'data': { 'action': 'get_user_resume', 'resume_id': $(e.target).parent().attr('data-resume-id'), 'user_id' : $(e.target).parents('main').attr('data-user-id') },
            'success': function (answer) {
                var result = JSON.parse(answer);
                $('.app-content').empty().append( result.content );
                $('.resume-form').attr( 'data-resume-id', $(e.target).parent().attr('data-resume-id') );
                $('body').removeClass('loading');
            },
            'error': function () {
                $('body').removeClass('loading');
            }
        });


    } );



    $(document).on( 'submit', '.resume-form', function( e ) {

        e.preventDefault();

        var rules = {

            'title': [
                {
                    'mode' : 'any-case', 'regexp': /.{1,50}/, 'error': applicant_jsL10n.title_error
                }
            ],
            'email': [
                { 'mode' : 'any-case', 'regexp': /.{1,50}/, 'error': applicant_jsL10n.email_error }
            ],
            'phone' : [
                { 'mode' : 'any-case', 'regexp': /.{1,50}/, 'error': applicant_jsL10n.phone_error }
            ],
            'fname' : [
                { 'mode' : 'any-case', 'regexp': /.{1,50}/, 'error': applicant_jsL10n.fname_error }
            ],
            'sname' : [
                { 'mode' : 'any-case', 'regexp': /.{1,50}/, 'error': applicant_jsL10n.sname_error }
            ],
            'expirience' : [
                { 'mode' : 'any-case', 'regexp': /[0-9]{1,2}/, 'error': applicant_jsL10n.expirience_error }
            ],
            'salary' : [
                { 'mode' : 'any-case', 'regexp': /[0-9]{3,6}/, 'error': applicant_jsL10n.salary_error }
            ],
            'content' : [
                { 'mode' : 'any-case', 'regexp': /.{10,250}/, 'error': applicant_jsL10n.salary_error }
            ],
            'category[]' : [
                {
                    'function': check_select,
                    'error': applicant_jsL10n.job_error
                }
            ],
            'country[]' : [
                {
                    'function': check_select,
                    'error': applicant_jsL10n.country_error
                }
            ],
            'job_type[]' : [
                {
                    'function': check_select,
                    'error': applicant_jsL10n.job_type_error
                }
            ],
            '/lastjobs....com/': [
                { 'mode' : 'any-case', 'regexp': /.{1,50}/, 'error': 'Field COMPANY is required'}
            ],
        }

        var errors = custom_validate( $(e.target), rules );
        console.log(errors);

        if ( !Array.isArray( errors ) && errors ) {

            $('body').addClass('loading');

            var formData = new FormData();
            var form = $(e.target);
            //console.log(formData);
            var params = $(form).serializeArray();
            $.each(params, function (i, val) {
                formData.append(val.name, val.value);
                //console.log(val.name + '->' + val.value);
            });
            /*$( form ).find("input[type='file']").each(
                function (i, tag) {
                    $.each($(tag)[0].files, function (i, file) {
                        formData.append(tag.name, file);
                    });
                });*/
            formData.append('action', 'save_user_resume');
            formData.append('user_id', $(form).parents('main').attr('data-user-id'));
            formData.append('resume_id', $(form).attr('data-resume-id'));


            $.ajax({
                'method': 'POST',
                'url': ajaxdata.url,
                'data': formData,
                'processData': false,
                'contentType': false,
                'success': function (answer) {
                    var result = JSON.parse(answer);
                    $('.app-content').empty().append(result.content);
                    if (result.new_line != 0) {
                        $('.new-template').after(result.new_line);
                    }
                    $('body').removeClass('loading');
                },
                'error': function () {
                    $('body').removeClass('loading');
                }
            });

        }
        else {
            $('html, body').animate({
                scrollTop: $('.v-input-box.has-error:first').offset().top
            }, 800);
        }

    });


    $(document).on( 'focus', '.v-input, .select2.select2-container, .v-textarea, .v-input-box input, .v-input-box textarea', function( e ) {
        $(e.target).parents('.v-input-box').removeClass('has-error');
    });



    $(document).on( 'click', '.remove-resume', function( e ) {

        e.preventDefault();
        e.stopPropagation();
        $('body').addClass('loading');

        $.ajax({
            'method': 'POST',
            'url': ajaxdata.url,
            'data': {
                'action' : 'recruit_remove_resume',
                'resume_id' : $(e.target).parents('form').attr('data-resume-id'),
                'user_id' : $(e.target).parents('main').attr('data-user-id' )
            },
            'success': function (answer) {
                var result = JSON.parse(answer), zero;
                if ( result.result == 1 ) {
                    $('.app-tab.resumes .app-tab-resume-link-box').each(function (i, el) {
                        if ($(el).attr('data-resume-id') == result.resume_id) {
                            $(el).remove();
                        }
                    });
                    $('.app-content').empty().append( 'resume is deleted' );
                }
                $('body').removeClass('loading');
            },
            'error': function () {
                $('body').removeClass('loading');
            }
        });

    });





    $(document).ajaxComplete(function() {
        $('.v-input.birthdate').datepicker( {
            dateFormat: 'MM dd, yy',
            onSelect: function( fd, d, picker ) {
                var date = d.getDate();
                var month = d.getMonth();
                var year = d.getFullYear();
                if (!d) return;
                picker.$el.val( pad(date) + "." + pad(month+1) + "." + pad(year) );
            }
        } );
        $('.lj-box .v-input.last-job-date').datepicker( {
            dateFormat: 'M, yyyy',
            onSelect: function( fd, d, picker ) {
                var date = d.getDate();
                var month = d.getMonth();
                var year = d.getFullYear();
                if (!d) return;
                picker.$el.val( pad(month+1) + "." + pad(year) );
            }
        } );
        //$.datepicker.setDefaults($.datepicker.regional['en']);
        refreshSelects();
    });


    function reindex_lj ( el, i, empty = false ) {

        $(el).find('.lj-company-name').attr( 'name', 'lastjobs[' + i + '][company_name]' );
        $(el).find('.lj-company-branch').attr( 'name', 'lastjobs[' + i + '][company_branch]' );
        $(el).find('.lj-status').attr( 'name', 'lastjobs[' + i + '][status]' );
        $(el).find('.lj-content').attr( 'name', 'lastjobs[' + i + '][content]' );
        $(el).find('.start-date').attr( 'name', 'lastjobs[' + i + '][start_date]' );
        $(el).find('.end-date').attr( 'name', 'lastjobs[' + i + '][end_date]' );

        if ( empty ) {
            var date = new Date();
            $(el).find('input').val( '' );
            $(el).find('input.start-date').val( pad( date.getMonth() + 1 ) + '.' + date.getFullYear() ).addClass('cloned');
            $(el).find('input.end-date').val( pad( date.getMonth() + 1 ) + '.' + date.getFullYear() ).addClass('cloned');
        }

    }


    $(document).on( 'click', '.add-last-job', function( e ) {
        e.preventDefault();
        var lj = $('.lj-box-raw');
        var s = $('.lj-box').length;
        lj = $(lj).clone( false );
        $('.lj-block').append(lj);
        reindex_lj ( lj, s, true );

        $(lj).find('.v-input.last-job-date.cloned').datepicker( {
            dateFormat: 'M, yyyy',
            onSelect: function( fd, d, picker ) {
                var date = d.getDate();
                var month = d.getMonth();
                var year = d.getFullYear();
                if (!d) return;
                picker.$el.val( pad(month+1) + "." + pad(year) );
            }
        } );
        $(lj).removeClass('lj-box-raw').addClass('lj-box');

    });


    $(document).on( 'click', '.remove-last-job', function( e ) {
        e.preventDefault();
        $(e.target).parents('.lj-box').remove();
        $('.lj-box').each( function( i, el ) {
            reindex_lj ( el, i );
        });
    });


    function pad(n) {
        return n<10 ? '0'+n : n;
    }



    $('.v-input.birthdate').datepicker( {
        dateFormat: 'MM dd, yy',
        onSelect: function( fd, d, picker ) {
            var date = d.getDate();
            var month = d.getMonth();
            var year = d.getFullYear();
            if (!d) return;
            picker.$el.val( pad(date) + "." + pad(month+1) + "." + pad(year) );
        }
    } );
    $('.lj-box .v-input.last-job-date').datepicker( {
        dateFormat: 'M, yyyy',
        onSelect: function( fd, d, picker ) {
            var date = d.getDate();
            var month = d.getMonth();
            var year = d.getFullYear();
            if (!d) return;
            picker.$el.val( pad(month+1) + "." + pad(year) );

        }
    } );


    function refreshSelects() {

        $('.v-select').select2();

        $('.v-lang-select').select2({
            width: '600px',
            formatSelection: function (item) {
                return item.text
            },
            templateResult: function( node ) {
                var $result = $('<span style="padding-left:' + ( 20 * ( $(node.element).attr('data-level') - 1 ) ) + 'px;">' + node.text + '</span>');
                return $result;
            },
        });

        $('.v-lang-select').on( 'select2:selecting', function( e ) {
            var data = e.params.args.data,
                el = data.element,
                prev = $(el).prev(),
                next = $(el).next(),
                hasSelected = false;

            if ( $(el).attr('data-level') == 2 ) {
                while ($(prev).attr('data-level') == 2) {
                    $(prev).prop("selected", false);
                    prev = $(prev).prev();
                }

                while ($(next).attr('data-level') == 2) {
                    $(next).prop("selected", false);
                    next = $(next).prev();
                }
            }

            return true;

        } );



        /*$('.v-lang-select').on( 'select2:select', function( e ) {
            var el = $(e.target).find('option:selected'),
                prev = $(el).prev(),
                next = $(el).next(),
                hasSelected = false;

            if ( $(el).attr('data-level') == 2 ) {
                while ($(prev).attr('data-level') == 2) {
                    $(prev).prop("selected", false);
                    prev = $(prev).prev();
                }

                while ($(next).attr('data-level') == 2) {
                    console.log($(next).length);
                    $(next).prop("selected", false);
                    next = $(next).prev();
                }
            }


        } );*/

    }

    refreshSelects();





    /* Vacancy Section */

    function clearPopup() {

        $('.modal-content .fm-text').html( '' );
        $('.modal-content .fm-btn').removeClass().addClass('fm-btn site-button').text('ok');

    }


    $(document).on( 'change', '.linked-resume-box input[name="selected_resume"]', function( e ) {

        $('input[name="selected_resume').each( function( i, el ) {
            $(el).prop( 'checked', false );
        });
        $(e.target).prop( 'checked', true );
    } );


    $(document).on( 'click', '.vb-button.send-resume', function( e ) {

        e.stopPropagation();
        $('body').addClass('loading');
        var $_vacancy_id = $(e.target).parents('.vacancy-box').attr('data-vacancy-id');

        send_resume_to_selected_vacancy( $_vacancy_id, e );


    });


    //$(document).on( 'click', '.post-type-archive-vacancy .vacancy-response', function( e ) {
    $(document).on( 'click', '.single-vacancy .response-button:not(".log-in-here")', function( e ) {

        e.stopPropagation();
        e.preventDefault();
        $('body').addClass('loading');
        var $_vacancy_id = $(e.target).parents('.object-content').attr('data-object-id');
        console.log( $_vacancy_id );

        send_resume_to_selected_vacancy( $_vacancy_id, e );

        return false;


    });



    $(document).on( 'click', '.vb-button.remove-from-selection', function( e ) {

        var vacancy = $(e.target).parents('.vacancy-box').attr('data-vacancy-id');

        $('.wistra-info .object-item.vacancy-item').each( function( i, el ) {
            if ( $(el).attr('data-vacancy-id') == vacancy ) {
                $(el).find('.wi-remove').trigger('click');
                $(e.target).parents('.vacancy-box').remove();
                return false;
            }
        });

    } );


    $(document).on( 'click', '.fm-btn.send-resume-to-vacancy', function( e ) {

        e.stopPropagation();
        $('body').addClass('loading');

        var resume_id = 0, vacancy_id = 0;

        $('.linked-resume-box').each( function( i, el ) {
            if ( $(el).find('input[name="selected_resume"]').attr('checked') ) {
                resume_id = $(el).attr('data-resume-id');
                vacancy_id = $(el).attr('data-vacancy-id');
            }
        } );

        console.log(resume_id + ' ' + vacancy_id);

        if ( resume_id != 0 ) {
            $.ajax({
                'method': 'POST',
                'url': ajaxdata.url,
                'data': {
                    'action': 'recruit_send_resume_to_vacancy',
                    'user_id': $(e.target).parents('main').attr('data-user-id'),
                    'vacancy_id': vacancy_id,
                    'resume_id': resume_id
                },
                'success': function (answer) {
                    var result = JSON.parse(answer);
                    $('body').removeClass('loading');
                    $('.modal-content .fm-text').html(result.content);
                    $('.modal-content .fm-btn').removeClass('send-resume-to-vacancy').addClass('close-modal').text('ok');
                    $('body').addClass('has-modal');
                },
                'error': function () {
                    $('body').removeClass('loading');
                }
            });
        }


    });



    $(document).on( 'click', '.modal-close, .close-modal', function( e ) {

        clearPopup();
        $('body').removeClass('has-modal');

    });



    $(document).on( 'click', '.single-vacancy .response-button', function( e ) {

        //insertVacancyToCart( e );

    });








    $(document).on( 'submit', '.subscription-form', function( e ) {

        e.preventDefault();
        $('body').addClass('loading');

        var formData = new FormData();
        var form = $(e.target);
        console.log(formData);
        var params = $( form ).serializeArray();
        $.each(params, function (i, val) {
            formData.append(val.name, val.value);
        });

        formData.append('action', 'recruit_save_user_subscription' );
        formData.append('user_id', $(form).parents('main').attr('data-user-id') );


        $.ajax({
            'method': 'POST',
            'url': ajaxdata.url,
            'data': formData,
            'processData': false,
            'contentType': false,
            'success': function (answer) {
                var result = JSON.parse(answer);
                $('body').removeClass('loading');
                $('.modal-content .fm-text').html( result.content );
                $('.modal-content .fm-btn').addClass('close-modal').text('ok');
                $('body').addClass('has-modal');
            },
            'error': function () {
                $('body').removeClass('loading');
            }
        });

    });


    $()


});