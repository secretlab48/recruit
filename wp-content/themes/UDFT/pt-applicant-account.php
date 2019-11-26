<?php
/**
 * Template Name: Applicant Account Template
 * The template for display Applicant Account Page
 *
 */

get_header();

global $user;

/*$user = wp_get_current_user();
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
}*/

?>


<main role="main" data-user-id="<?php echo $user->ID ?>">

    <section>

            <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

                <?php

                if ( !method_exists( $user,'exists' ) ) {
                    echo "4444444444444444";
                }
                else if( $user->exists() && is_user_logged_in() ) {
                    $roles = ( array ) $user->roles;
                    if ( in_array( 'applicant', $roles ) || in_array( 'administrator', $roles ) ) {
                        get_template_part( '/templates/applicant/logged' );
                    }
                    else {
                        echo "22222222222";
                    }
                }
                else {
                    echo "333333333333";
                }

                ?>

            </article>

    </section>

</main>

<?php get_footer(); ?>
