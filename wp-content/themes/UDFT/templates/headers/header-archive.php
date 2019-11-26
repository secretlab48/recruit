<?php
    $sign_in_class = ' not-logged-in';
    $a_class = ' log-in-here';
    $sign_in_caption = __( 'sign in', 'recruit' );
    if ( is_user_logged_in() ) {
        $sign_in_class = ' logged-in';
        $a_class = '';
        $sign_in_caption = __( 'sign out', 'rexruit' );
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
    <div class="logo-container">
        <div class="logo-box container">
            <div class="row">
                <div class="logo"><a href="<?php echo site_url(); ?>"><img src="<?php echo get_stylesheet_directory_uri(); ?>/img/logo.jpg"></a></div>
                <div class="hot-offers-box">
                    <div class="hot-offers">
                        <?php echo recruit_get_hot_offer(); ?>
                    </div>
                </div>
                <div class="button-box">
                    <a class="response-button applicant-acoount<?php echo $a_class; ?>" href="<?php echo site_url(); ?>/applicant-account/?selected-vacancies">send resume</a>
                </div>
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
    <div class="title-box">
        <h1><?php echo __( 'More than 1000 resumes of more than 800 job seekers', 'recruit' ); ?></h1>
    </div>


</header>