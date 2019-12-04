<?php
/*
 *  Author: CA
 *  Custom functions, support, custom post types and more.
 */

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);


/*------------------------------------*\
	Functions
\*------------------------------------*/

require_once( 'inc/recruit.php' );
require_once( 'inc/filters.php' );
require_once( 'inc/billing.php' );
require_once( 'inc/ajax-login.php' );
require_once( 'inc/functions.php' );
require_once( 'inc/emails.php' );

add_action( 'init', 'UDFT::init' );
add_action( 'after_setup_theme', 'UDFT::theme_setup' );

add_action( 'admin_init', function() {

    add_action ( 'add_meta_boxes', function() {
        add_meta_box( __( 'Translatable Data', 'recruit' ), __( 'Translatable  Data', 'recruit' ), 'recruit_resume_metabox', array( 'resume' ), 'normal', 'high' );
    });

});

//remove_filter('the_content', 'wpautop');

class UDFT
{

    static function init()
    {

        if (function_exists('add_theme_support')) {

            add_theme_support('menus');
            add_theme_support('widgets');

            add_theme_support('post-thumbnails');
            add_image_size('large', 760, 450, true);
            add_image_size('vacancy-archive', 370, 250, true);
            add_image_size('post-archive', 390, 258, true);
            add_image_size('resume-archive', 90, 100, true);
            add_image_size('resume-single', 260, 285, true);
            add_image_size('employer-thumb', 140, 54, true);
            add_image_size('review-archive', 215, 315, true);

            load_theme_textdomain('recruit', get_template_directory() . '/languages');
        }


        add_filter('widget_text', 'do_shortcode');

        wp_enqueue_style('bootstrap-template_css', get_template_directory_uri() . '/css/grid.css');
        if ( !is_admin() ) {
            wp_enqueue_style('main_custom_css', get_template_directory_uri() . '/css/custom.css');
        }
        wp_enqueue_style('fontawesome_css', get_template_directory_uri() . '/css/font-awesome.css');
        wp_enqueue_style('select2_css', get_template_directory_uri() . '/css/select2.css');
        wp_enqueue_style('slick_css', get_template_directory_uri() . '/inc/slick/slick.css');
        wp_enqueue_style('slick__theme_css', get_template_directory_uri() . '/inc/slick/slick-theme.css');
        wp_enqueue_style('air-datepicker_css', get_template_directory_uri() . '/css/datepicker.css');
        wp_register_style('jquery-ui', 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css');
        wp_enqueue_style( 'jquery-ui' );

        wp_enqueue_script('jquery-ui-core');
        //wp_enqueue_script( 'jquery-ui-datepicker' );
        wp_register_script('slick_js', get_template_directory_uri() . '/inc/slick/slick.js', array('jquery'), false, true);
        wp_enqueue_script('slick_js');
        wp_register_script('select2_js', get_template_directory_uri() . '/js/select2.full.js', array('jquery'), false, true);
        wp_enqueue_script('select2_js');
        wp_register_script('air-datepicker_js', get_template_directory_uri() . '/js/datepicker.js', array('jquery'), false, true);
        wp_enqueue_script('air-datepicker_js');
        wp_register_script('custom_js', get_template_directory_uri() . '/js/custom.js', array('jquery'), false, true);
        wp_enqueue_script('custom_js');
        wp_localize_script( 'custom_js', 'custom_jsL10n', array(
        ) );
        if ( !is_admin() ) {
            wp_register_script('applicant_js', get_template_directory_uri() . '/js/applicant-account.js', array('jquery'), false, true);
            wp_enqueue_script('applicant_js');
            wp_localize_script('applicant_js', 'applicant_jsL10n', array(
                'title_error' => __('Field TITLE is required', 'recruit'),
                'email_error' => __('Field EMAIL is required', 'recruit'),
                'phone_error' => __('Field PHONE is required', 'recruit'),
                'fname_error' => __('Field FIRST NAME is required', 'recruit'),
                'sname_error' => __('Field LAST NAME is required', 'recruit'),
                'expirience_error' => __('Field EXPIRIENCE is required and must contain 1-2 digits', 'recruit'),
                'salary_error' => __('Field Salary is required and must contain 3-6 digits', 'recruit'),
                'content_error' => __('Field PROFFESIONAL SKILLS is required and must contain 20-250 symbols', 'recruit'),
                'job_error' => __('JOB CATEGORY must be choosen', 'recruit'),
                'country_error' => __('COUNTRY must be choosen', 'recruit'),
                'job_type_error' => __('JOB TYPE must be choosen', 'recruit')
            ));
            wp_localize_script('custom_js', 'custom_jsL10n', array(
                'name_error' => __('Field Name is required', 'recruit'),
                'email_error' => __('Field EMAIL is required and must be valid email address', 'recruit'),
                'phone_error' => __('Field PHONE is required and must be valid phone number', 'recruit'),
                'message_error' => __('Field Message is required', 'recruit'),
            ));
        }


        register_nav_menus(array(
            'header-location' => 'Top Memu',
            'footer-location' => 'Footer Menu'
        ));

        add_filter('body_class', 'udft::custom_class_names');

        add_action('wp_enqueue_scripts', array('UDFT', 'add_ajax_data'), 99);

        add_action( 'wp_ajax_get_user_resume', 'get_user_resume' );
        add_action( 'wp_ajax_nopriv_get_user_resume', 'get_user_resume' );

        add_action( 'wp_ajax_save_user_resume', 'recruit_save_resume' );
        add_action( 'wp_ajax_nopriv_save_user_resume', 'recruit_save_resume' );

        add_action( 'wp_ajax_recruit_remove_resume', 'recruit_remove_resume' );
        add_action( 'wp_ajax_nopriv_recruit_remove_resume', 'recruit_remove_resume' );

        add_action( 'wp_ajax_recruit_get_saved_vacancys_page', 'recruit_get_saved_vacancys_page' );
        add_action( 'wp_ajax_nopriv_recruit_get_saved_vacancys_page', 'recruit_get_saved_vacancys_page' );

        add_action( 'wp_ajax_recruit_get_resume_to_send', 'recruit_get_resume_to_send' );
        add_action( 'wp_ajax_nopriv_recruit_get_resume_to_send', 'recruit_get_resume_to_send' );

        add_action( 'wp_ajax_recruit_send_resume_to_vacancy', 'recruit_send_resume_to_vacancy' );
        add_action( 'wp_ajax_nopriv_recruit_send_resume_to_vacancy', 'recruit_send_resume_to_vacancy' );

        add_action( 'wp_ajax_recruit_get_answers_history', 'recruit_get_answers_history' );
        add_action( 'wp_ajax_nopriv_recruit_get_answers_history', 'recruit_get_answers_history' );

        add_action( 'wp_ajax_recruit_get_user_subscriptions', 'recruit_get_user_subscriptions' );
        add_action( 'wp_ajax_nopriv_recruit_get_user_subscriptions', 'recruit_get_user_subscriptions' );

        add_action( 'wp_ajax_recruit_save_user_subscription', 'recruit_save_user_subscription' );
        add_action( 'wp_ajax_nopriv_recruit_save_user_subscription', 'recruit_save_user_subscription' );

        add_action( 'wp_ajax_recruit_handle_site_form', 'recruit_handle_site_form' );
        add_action( 'wp_ajax_nopriv_recruit_handle_site_form', 'recruit_handle_site_form' );


        // Enable the user with no privileges to run ajax_login() in AJAX
        add_action( 'wp_ajax_nopriv_ajaxlogin', 'ajax_login' );
        add_action( 'wp_ajax_ajaxlogin', 'ajax_login' );
        add_action( 'wp_ajax_nopriv_ajaxregister', 'ajax_register' );
        add_action( 'wp_ajax_ajaxregister', 'ajax_register' );
        add_action( 'wp_ajax_nopriv_ajaxforgotpassword', 'ajax_forgotPassword' );
        add_action( 'wp_ajax_ajaxforgotpassword', 'ajax_forgotPassword' );




    }


    static function theme_setup() {

        load_theme_textdomain( 'recruit', get_template_directory() . '/languages' );

    }


    static function add_ajax_data()
    {

        wp_enqueue_media();
        wp_localize_script('jquery', 'ajaxdata',
            array(
                'url' => admin_url('admin-ajax.php'),
                'redirecturl' => home_url(),
                'loadingmessage' => _x( 'Sending, please wait ...', 'recruit', 'reg-form' )
            )
        );
    }


    static function custom_class_names($classes)
    {

        global $post;

        if (is_page()) {
            $classes[] = 'customized-page';
            if ($post && is_int($post->ID)) {
                $classes[] = 'page-' . strtolower(preg_replace(array('/\s/', '/,|\.|\"|\'/'), array(
                        '-',
                        ''
                    ), custom_sanitize_title($post->post_title)));
            }
        }

        if ($post && $post->post_type && $post->post_type == 'post') {
            $classes[] = 'customized-post';
        }

        return $classes;

    }

    static function get_template_part($template, $part_name = null, $mode = 'return')
    {

        global $post;

        if ($mode == 'return') {
            ob_start();
            get_template_part($template, $part_name);
            $out = ob_get_contents();
            ob_end_clean();

            return $out;
        } else {
            get_template_part($template);
        }

    }

}


/* CUSTOM */


function custom_sanitize_title($title) {
    global $wpdb;

    $iso9_table = array(
        'А' => 'A', 'Б' => 'B', 'В' => 'V', 'Г' => 'G', 'Ѓ' => 'G',
        'Ґ' => 'G', 'Д' => 'D', 'Е' => 'E', 'Ё' => 'YO', 'Є' => 'YE',
        'Ж' => 'ZH', 'З' => 'Z', 'Ѕ' => 'Z', 'И' => 'I', 'Й' => 'J',
        'Ј' => 'J', 'І' => 'I', 'Ї' => 'YI', 'К' => 'K', 'Ќ' => 'K',
        'Л' => 'L', 'Љ' => 'L', 'М' => 'M', 'Н' => 'N', 'Њ' => 'N',
        'О' => 'O', 'П' => 'P', 'Р' => 'R', 'С' => 'S', 'Т' => 'T',
        'У' => 'U', 'Ў' => 'U', 'Ф' => 'F', 'Х' => 'H', 'Ц' => 'TS',
        'Ч' => 'CH', 'Џ' => 'DH', 'Ш' => 'SH', 'Щ' => 'SHH', 'Ъ' => '',
        'Ы' => 'Y', 'Ь' => '', 'Э' => 'E', 'Ю' => 'YU', 'Я' => 'YA',
        'а' => 'a', 'б' => 'b', 'в' => 'v', 'г' => 'g', 'ѓ' => 'g',
        'ґ' => 'g', 'д' => 'd', 'е' => 'e', 'ё' => 'yo', 'є' => 'ye',
        'ж' => 'zh', 'з' => 'z', 'ѕ' => 'z', 'и' => 'i', 'й' => 'j',
        'ј' => 'j', 'і' => 'i', 'ї' => 'yi', 'к' => 'k', 'ќ' => 'k',
        'л' => 'l', 'љ' => 'l', 'м' => 'm', 'н' => 'n', 'њ' => 'n',
        'о' => 'o', 'п' => 'p', 'р' => 'r', 'с' => 's', 'т' => 't',
        'у' => 'u', 'ў' => 'u', 'ф' => 'f', 'х' => 'h', 'ц' => 'ts',
        'ч' => 'ch', 'џ' => 'dh', 'ш' => 'sh', 'щ' => 'shh', 'ъ' => '',
        'ы' => 'y', 'ь' => '', 'э' => 'e', 'ю' => 'yu', 'я' => 'ya'
    );
    $geo2lat = array(
        'ა' => 'a', 'ბ' => 'b', 'გ' => 'g', 'დ' => 'd', 'ე' => 'e', 'ვ' => 'v',
        'ზ' => 'z', 'თ' => 'th', 'ი' => 'i', 'კ' => 'k', 'ლ' => 'l', 'მ' => 'm',
        'ნ' => 'n', 'ო' => 'o', 'პ' => 'p','ჟ' => 'zh','რ' => 'r','ს' => 's',
        'ტ' => 't','უ' => 'u','ფ' => 'ph','ქ' => 'q','ღ' => 'gh','ყ' => 'qh',
        'შ' => 'sh','ჩ' => 'ch','ც' => 'ts','ძ' => 'dz','წ' => 'ts','ჭ' => 'tch',
        'ხ' => 'kh','ჯ' => 'j','ჰ' => 'h'
    );
    $iso9_table = array_merge($iso9_table, $geo2lat);

    $locale = get_locale();
    switch ( $locale ) {
        case 'bg_BG':
            $iso9_table['Щ'] = 'SHT';
            $iso9_table['щ'] = 'sht';
            $iso9_table['Ъ'] = 'A';
            $iso9_table['ъ'] = 'a';
            break;
        case 'uk':
        case 'uk_ua':
        case 'uk_UA':
            $iso9_table['И'] = 'Y';
            $iso9_table['и'] = 'y';
            break;
    }

    $is_term = false;
    $backtrace = debug_backtrace();
    foreach ( $backtrace as $backtrace_entry ) {
        if ( $backtrace_entry['function'] == 'wp_insert_term' ) {
            $is_term = true;
            break;
        }
    }

    $term = $is_term ? $wpdb->get_var("SELECT slug FROM {$wpdb->terms} WHERE name = '$title'") : '';
    if ( empty($term) ) {
        $title = strtr($title, apply_filters('ctl_table', $iso9_table));
        if (function_exists('iconv')){
            $title = iconv('UTF-8', 'UTF-8//TRANSLIT//IGNORE', $title);
        }
        $title = preg_replace("/[^A-Za-z0-9'_\-\.]/", '-', $title);
        $title = preg_replace('/\-+/', '-', $title);
        $title = preg_replace('/^-+/', '', $title);
        $title = preg_replace('/-+$/', '', $title);
    } else {
        $title = $term;
    }

    return $title;
}


add_filter('upload_mimes', 'kmwp_mime_types');

function kmwp_mime_types( $mimes ) {

    $mimes['svg'] = 'image/svg+xml';
    return $mimes;

}


function block_wpadmin() {
    $file = basename($_SERVER['PHP_SELF']);
    if ( is_admin() && ( $file == 'plugins.php' || $file == 'themes.php' || $file == 'plugin-install.php' || $file == 'plugin-editor.php' || $file == 'theme-editor.php')){
        wp_redirect( admin_url() );
        exit();
    }
}

//add_action('init', 'block_wpadmin');



add_action('phpmailer_init','send_smtp_email');
function send_smtp_email( $phpmailer )
{
    $phpmailer->SMTPDebug = 0;
    $phpmailer->isSMTP();
    $phpmailer->Host = "smtp.gmail.com";
    $phpmailer->SMTPAuth = true;
    $phpmailer->Port = "465";
    $phpmailer->Username = "zhekas361@gmail.com";
    $phpmailer->Password = "ab124578";
    $phpmailer->SMTPSecure = "ssl";
    $phpmailer->CharSet = 'UTF-8';

    $phpmailer->isHTML( true );

    $phpmailer->smtpConnect(
        array(
            "ssl" => array(
                "verify_peer" => false,
                "verify_peer_name" => false,
                "allow_self_signed" => true
            )
        )
    );


    //$phpmailer->setFrom( 'anfrage@hausnotruf.de', 'Service', true );
    //$phpmailer->addReplyTo( 'anfrage@hausnotruf.de', 'Information1' );
    //$phpmailer->Sender = 'anfrage@hausnotruf.de';

    //$phpmailer->Subject = 'New Lead1';


}




function recruit_post_exists( $id ) {
    return is_string( get_post_status( $id ) );
}

add_action( 'wistra_header', 'recruit_get_cookie_window' );

function recruit_get_cookie_window() {

    if ( is_user_logged_in() ) {
        $user = wp_get_current_user();
        $link_class = '';
    }
    else {
        $user = false;
        $link_class = ' not-logged-in';
    }

    $info = isset( $_COOKIE['wistra-info'] ) ? $_COOKIE['wistra-info'] : '';
    $info = json_decode( stripslashes ( $info ), true );
    $vacancy_items = $resume_items = array();
    $vacancies = $resumes = '';
    $has_content = $has_vacancies = $has_resumes = '';
    if ( $info ) {
        $vacancy_items = $info['vacancies'];
        $resume_items = $info['resumes'];
        foreach ( $vacancy_items as $vacancy_id ) {
            $vacancy = get_post( $vacancy_id );
            if ( is_object( $vacancy ) ) {
                $vacancies .= '<div class="object-item vacancy-item" data-vacancy-id="' . $vacancy_id . '"><div class="wi-item-content">' . get_the_title( $vacancy ) . '</div><div class="wi-remove"></div></div>';
                $has_vacancies = ' has-vacancys';
            }
        }
        foreach ( $resume_items as $resume_id ) {
            $resume = get_post( $resume_id );
            if ( is_object( $resume ) ) {
                $resumes .= '<div class="object-item resume-item" data-resume-id="' . $resume_id . '"><div class="wi-item-content">' . $resume->post_title . '</div><div class="wi-remove"></div></div>';
                $has_resumes = ' has-resumes';
            }
        }
    }
    if ( $has_vacancies != '' || $has_resumes != '' ) {
        $has_content = ' has-content';
    }

    $account_url = get_page_by_title( 'applicant account' );
    $account_url = get_permalink( $account_url );

    $out =
        '<div class="wistra-info-box' . $has_content . $has_vacancies . $has_resumes . '">
             <div class="wi-button">' . _x( 'pocket', 'recruit', 'info-box' ) . '</div>
             <div class="wistra-info">
                 <div class="wi-tab-controls">
                     <div class="wi-tab-control vacancys" data-type="vacancy">' . _x( 'vacancies', 'recruit', 'info-box' ) . '</div>
                     <div class="wi-tab-control resumes" data-type="re`sume">' . _x( 'resumes', 'recruit', 'info-box' ) . '</div>
                 </div>
                 <div class="wi-tab-contents">
                     <div class="wi-tab-content vacancys" data-type="vacancy">' .
                         $vacancies .
                     '</div>
                     <div class="wi-tab-content resumes" data-type="resume">' .
                         $resumes .
                     '</div>
                 </div>
                 <a class="response-button applicant-acoount' . $link_class . '" href="' . $account_url . '?selected-vacancies">' . _x( 'send resume', 'recruit', 'info-box' ) . '</a>
                 <div class="wi-info">' . _x( 'You must be logged in to be able to send your resume to employer', 'recruit', 'info-box' ) . '</div>
             </div>
         </div>';

    echo $out;

}




add_action( 'wp_footer', 'recruit_get_modals' );

function recruit_get_modals ()
{

    global $post;

    $out =
        '<div class="modal-box">
            <div class="modal-content-box">
                <div class="modal-content">
                    <div class="form-messages">
                        <div class="modal-close"></div>
                        <div class="fm-content">
                            <!--<div class="fm-icon"></div>-->
                            <div class="fm-title"></div>
                            <div class="fm-text"></div>
                            <div class="fm-dialog"></div>
                            <a class="fm-btn site-button">ok</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>';

    echo $out;

}




function recruit_get_hot_offer() {

    global $self_data, $wpdb;

    $hot_offered = $wpdb->get_results("SELECT SQL_CALC_FOUND_ROWS  wp_posts.ID FROM wp_posts  INNER JOIN wp_postmeta ON ( wp_posts.ID = wp_postmeta.post_id ) WHERE 1=1  AND ( 
  ( wp_postmeta.meta_key = 'hot_offer' AND wp_postmeta.meta_value = '1' )
) AND wp_posts.post_type = 'vacancy' AND (wp_posts.post_status = 'publish') GROUP BY wp_posts.ID ORDER BY wp_posts.post_date DESC LIMIT 0, 4");
    $hot_offered = isset( $hot_offered[0] ) ? get_post( $hot_offered[0]->ID ) : null;
    $date = strtotime( $hot_offered->post_modified );
    $date = date( 'd/m/Y', $date );
    $out =
        '<div class="hot-offers-contents">
             <div class="hot-offer-caption">' . __( 'hot offer', 'recruit' ) . '</div>
             <a class="hot-offers-content" href="' . get_permalink( $hot_offered->ID ) . '">' . $date . '. ' . qtranxf_use( $self_data['locale'], get_the_excerpt( $hot_offered->ID ) ) . '</a>
         </div>';

    return $out;

}


function recruit_get_image_id( $file_url ) {
    $file_path = ltrim(str_replace(wp_upload_dir()['baseurl'], '', $file_url), '/');

    global $wpdb;
    $statement = $wpdb->prepare("SELECT `ID` FROM `wp_posts` AS posts JOIN `wp_postmeta` AS meta on meta.`post_id`=posts.`ID` WHERE posts.`guid`='%s' OR (meta.`meta_key`='_wp_attached_file' AND meta.`meta_value` LIKE '%%%s');",
        $file_url,
        $file_path);

    $attachment = $wpdb->get_col($statement);

    if (count($attachment) < 1) {
        return false;
    }

    return $attachment[0];
}



function get_site_banner( $img = 'ban_adv_01.png', $target = null ) {

    $target = $target ? $target : site_url() . '/get_blue_card';

    $out =
        '<section class="banner-section">
            <div class="container p0"><a class="banner-link" href="' . $target . '"><img src="' . get_stylesheet_directory_uri() . '/img/' . $img . '"></a></div>
        </section>';

    return $out;

}


function get_texted_banner( $args ) {

    $out =
        '<div class="tb-content">
            <div class="tb-text">' . $args['text'] . '</div>
            <div class="tba-box"><a class="btn-2" href="' . $args['link'] . '"><span class="tba-text">' . __( 'Join Us', 'recruit' ) . '</span><span class="tba-plus"></span></a></div>
        </div>';

    return $out;

}



?>
