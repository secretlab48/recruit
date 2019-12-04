<?php
$sign_in_class = ' not-logged-in';
$a_class = ' log-in-here';
$sign_in_caption = __( 'sign in', 'recruit' );
if ( is_user_logged_in() ) {
    $sign_in_class = ' logged-in';
    $a_class = '';
    $sign_in_caption = __( 'sign out', 'recruit' );
}
?>

<header class="header archive-header" role="banner">

    <div class="high-box">
        <div class="high-box-container container p0">
            <!--<div class="high-menu-box">
                <nav class="nav" role="navigation">
                    <?php /*wp_nav_menu( array( 'menu' => 'high-menu', 'container_class' => 'high-menu' ) );*/ ?>
                </nav>
            </div>-->
            <div class="top-caption"><?php echo __( 'Official employment in Germany. Guaranteed Blue Card', 'recruit' ); ?></div>
            <div class="sign-container">
                <a class="top-phone fa fa-phone" href="tel:0891221212">089 - 122 12 12</a>
                <div class="sign-box">
                    <a class="sign-in-link<?php echo $sign_in_class; ?>" href="<?php  echo wp_logout_url( site_url() ); ?>"><?php echo $sign_in_caption; ?></a>
                    <div class="sign-form-box">
                        <?php echo get_ajax_login_form(); ?>
                    </div>
                </div>
                <?php echo qtranxf_generateLanguageSelectCode( array( 'type' => 'custom', 'format' => '%c', 'id' => 'lang-menu' ) ); ?>
            </div>
        </div>
    </div>
    <div class="logo-container front-page">
        <div class="logo-box container">
            <div class="row">
                <div class="logo"><a href="<?php echo site_url(); ?>"><img src="<?php echo get_stylesheet_directory_uri(); ?>/img/logo.jpg"></a></div>
                <div class="hot-offers-box">
                    <div class="hot-offers">
                        <?php echo recruit_get_hot_offer(); ?>
                    </div>
                </div>
                <!--<div class="button-box">
                    <a class="response-button applicant-acoount<?php echo $a_class; ?>" href="<?php echo site_url(); ?>/applicant-account/?selected-vacancies">send resume</a>
                </div>-->
            </div>
        </div>
    </div>
    <div class="top-menu-container">
        <div class="top-menu-box container p0">
            <nav class="nav" role="navigation">
                <?php wp_nav_menu( array( 'menu' => 'top-menu', 'container_class' => 'top-menu' ) ); ?>
            </nav>
            <div class="top-social-box">
                <span><?php echo __( 'Seek advice on', 'recruit' ); ?></span>
                <a class="social fa fa-facebook" href="#"></a>
                <a class="social fa fa-linkedin" href="#"></a>
            </div>
        </div>
    </div>
    <div class="top-img-box">
        <div class="top-content-box container">
            <div class="top-content-text">
                <div class="top-first-caption">IT Job&Karriere</div>
                <div class="top-second-caption">
                    <span>you choose </span><img src="<?php echo get_stylesheet_directory_uri(); ?>/img/flag-de.jpg"><span> we help</span>
                </div>
            </div>
            <div class="top-content-pictures">
                <div class="top-picture-box left">
                    <div class="tpp-box"><img src="<?php echo get_stylesheet_directory_uri(); ?>/img/tp1.jpg"></div>
                    <div class="tp-title">I'm looking for work</div>
                    <a class="response-button applicant-account <?php echo $a_class; ?>" href="<?php echo site_url(); ?>/applicant-account/?selected-vacancies">send resume</a>
                </div>
                <div class="top-picture-box right">
                    <div class="tpp-box"><img src="<?php echo get_stylesheet_directory_uri(); ?>/img/tp2.jpg"></div>
                    <div class="tp-title">I'm a Business needing help</div>
                    <a class="response-button contact-us" href="<?php echo site_url(); ?>/contact">contact us</a>
                </div>
            </div>
        </div>
    </div>
    <div class="main-title-box">
        <div class="main-title container">
            <div class="main-title-caption">
                <img src="<?php echo get_stylesheet_directory_uri(); ?>/img/flags.png">
                <ul class="services">
                    <li><?php echo __( 'LOOKING FOR LEGAL WORK ABROAD?', 'recruit' ) ?></li>
                    <li><?php echo __( 'Official employment in Germany', 'recruit' ) ?></li>
                    <li><?php echo __( 'Only verified employers', 'recruit' ) ?></li>
                    <li><?php echo __( 'Only verified employers', 'recruit' ) ?></li>
                </ul>
            </div>
            <!--<a class="response-button vacancy-response ar-bottom-right large" href="<?php /*echo get_post_type_archive_link( 'vacancy' );*/ ?>"><?php /*echo __( 'see all offers', 'recruit' );*/ ?></a>-->
        </div>
    </div>
</header>