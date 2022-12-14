<!doctype html>
<html <?php language_attributes(); ?> class="no-js">
	<head>
		<meta charset="<?php bloginfo('charset'); ?>">
		<title><?php wp_title(''); ?><?php if(wp_title('', false)) { echo ' :'; } ?> <?php bloginfo('name'); ?></title>

        <link href="<?php echo get_template_directory_uri(); ?>/img/icons/favicon.ico" rel="shortcut icon">
        <link href="<?php echo get_template_directory_uri(); ?>/img/icons/touch.png" rel="apple-touch-icon-precomposed">

		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="<?php bloginfo('description'); ?>">

		<?php

            wp_head();

        ?>

	</head>
	<body <?php body_class(); ?>>

        <?php

            global $user;
            global $self_data;

            $self_data = array( 'locale' => qtranxf_getLanguage() );

            $user = wp_get_current_user();
            if ( !$user ) {
                $user = new stdClass();
                $user->ID = 0;
            }
            if ( $user->roles ) {
                if (in_array('administrator', $user->roles)) {
                    $user_id = isset($_GET['user_id']) ? $_GET['user_id'] : 0;
                    if ( $user_id != 0 ) {
                        $user = get_user_by('id', $user_id );
                    } else {
                        $user = get_user_by('id', 2 );
                    }
                } else {
                    $user = wp_get_current_user();
                }
            }

        ?>

		<div class="site-wrapper">

            <? do_action( 'wistra_header' ); ?>

            <div class="preloader"></div>

            <?php
                if ( is_front_page() ) {
                    get_template_part( 'templates/headers/header-main' );
                }
                else{
                    get_template_part( 'templates/headers/header-archive' );
                }
            ?>
