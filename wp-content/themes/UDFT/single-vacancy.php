<?php

    get_header();

    global $user, $post, $wpdb;

    if ( is_user_logged_in() ) {
        //$user = wp_get_current_user();
        $link_class = '';
    }
    else {
        //$user = false;
        $link_class = ' log-in-here';
    }

    $meta = get_post_meta( $post->ID );
    $salary = isset( $meta['salary'] ) ? is_array( $meta['salary'] ) ? $meta['salary'][0] : $meta['salary'] : _x( 'Not specified', 'recruit', 'single-vacancy' );

    $category_cats = wp_get_post_terms( $post->ID, 'resume_cat', array( 'fields' => 'ids' ) );

    $job_cats = wp_get_post_terms( $post->ID, 'job_cat', array( 'fields' => 'ids' ) );
    if ( count( $job_cats ) > 0 ) {
        foreach ( $job_cats as $job_cat ) {
            $job_cat = get_term( $job_cat, 'job_cat' );
            $job_types[] = $job_cat->name;
        }
    }
    else{
        $job_types = array( _x( 'No Employment Types Specified', 'recruit', 'single-vacancy' ) );
    }

    $lang_cats = wp_get_post_terms( $post->ID, 'language_cat', array( 'fields' => 'ids' ) );
    if ( count( $lang_cats ) > 0 ) {
        foreach ( $lang_cats as $lang_cat ) {
            $lang_cat = get_term( $lang_cat, 'language_cat' );
            $langs[] = $lang_cat->name;
        }
    }
    else {
        $langs = array( _x( 'No Needed Languages Specified', 'recruit', 'single-vacancy' ) );
    }

    $expirience = isset( $meta['expirience'] ) ? is_array( $meta['expirience'] ) ? $meta['expirience'][0] : $meta['expirience'] : '';
    $activities = isset( $meta['activities'] ) ? is_array( $meta['activities'] ) ? $meta['activities'][0] : $meta['activities'] : '';

    $img = get_the_post_thumbnail_url( $post->ID, array( 370, 250 ) );
    if ( !$img ) {
        $img_id = recruit_get_image_id( 'no-man.jpg' );
        $img = wp_get_attachment_image_url( $img_id, 'vacancy-archive' );
    }

    $employer_id = $meta['employer_linked_to'][0];
    $e_meta = get_post_meta( $employer_id );
    $e_activities = isset( $e_meta['activities'] ) ? is_array( $e_meta['activities'] ) ? $e_meta['activities'][0] : $e_meta['activities'] : '';
    $e_offers = $wpdb->get_results("SELECT * FROM " . $wpdb->prefix . "postmeta WHERE meta_value = " . $employer_id . " AND meta_key = 'employer_linked_to'", ARRAY_A );

    $similialars_query = new WP_Query( array( 'post_type' => 'vacancy', 'tax_query' => array( array( 'taxonomy' => 'resume_cat', 'field' => 'id', 'terms' => $category_cats ) ), 'posts_per_page' => 3, 'post__not_in' => array( $post->ID ) ) );
    $similiars = '';
    if ( count( $similialars_query->posts ) > 0 ) {
        $similiars .=
        '<div class="section-header">
            <h2>' . _x( 'Similiar vacancies', 'recruit', 'single-vacancy' ) . '</h2>
        </div>';
        $similiars .= '<div class="v-similiars row">';
        foreach ( $similialars_query->posts as $sv ) {
            $similiars .= '<div class="similiar-vacancy col col-md-4">' . recruit_get_arcvive_vacancy( $sv ) . '</div>';
        }
        $similiars .= '</div>';
        if ( count ($similialars_query->posts ) > 3 ) {
            $similiars .= '<a class="archive-more-link" href="' . get_post_type_archive_link( 'vacancy' ) . '">' . _x( 'View full list', 'recruit', 'home' ) . '</a>';
        }
    }

    $a = 1;



?>

<main role="main" data-user-id="<?php echo $user->ID; ?>">
        <!-- section -->
        <section>

            <?php if (have_posts()): while (have_posts()) : the_post(); ?>

                <!-- article -->
                <article id="post-<?php the_ID(); ?>" <?php post_class('object-content'); ?> data-object-id="<?php echo $post->ID ;?>">

                    <div class="container">

                        <?php
                            echo
                            '<div class="single-vacancy row">
                                <div class="vacancy-head left col">
                                    <div class="sv-title-box">
                                        <h1 class="archive-title sv-title">' . get_the_title( $post->ID ) . '</h1>
                                        <div class="sv-salary">' . _x( 'From ', 'recruit', 'single-vacancy' ) . $salary . ' EUR</div>
                                    </div>
                                    <div class="v-date">' . get_the_date( 'd M Y', $vacancy ) . '</div>
                                    <ul class="v-info">
                                        <li>' . implode( ', ', $job_types ) . '</li>
                                        <li>' . implode( ', ', $langs ) . '</li>
                                        <li>' . _x( 'Expirience from ', 'recruit', 'single-vacancy' ) . $expirience . ' ' . _nx( 'year', 'years', $expirience, 'single-vacancy', 'recruit' ) . '</li>
                                    </ul>
                                    <div class="v-employer">
                                        <div class="v-employer-title">' . get_the_title( $employer_id ) . '</div>
                                        <ul class="v-employer-info">
                                            <li>' . $e_activities . '</li>
                                            <li>' . _x( 'Job offers ', 'recruit', 'single-vacancy' ) . count( $e_offers ) . '</li>
                                        </ul>
                                    </div>
    
                                    <a class="response-button applicant-acoount' . $link_class . '" href="' . site_url() . '/applicant-account/?selected-vacancies">' . _x( 'send resume', 'recruit', 'single-vacancy' ) . '</a>       
                                </div>
                                <div class="vacancy-head right col">
                                    <div class="v-img-box"><img src="' . $img . '"></div>
                                </div>
                            </div>   
                            
                            <div class="divider"></div>

                            <div class="v-content-row row">    
                                <div class="v-content col">' .
                                    apply_filters( 'the_content', get_post_field( 'post_content', $post->ID ) ) .
                                '</div>
                            </div>
                            <div class="divider"></div>' .
                            $similiars .
                            '<div class="single-bottomed-banner">' . get_site_banner() . '</div>';
                        ?>
                    </div>
                </article>
                <!-- /article -->

            <?php endwhile; ?>

            <?php else: ?>

                <!-- article -->
                <article>

                    <h1><?php _e( 'Sorry, nothing to display.', 'recruit' ); ?></h1>

                </article>
                <!-- /article -->

            <?php endif; ?>

        </section>
        <!-- /section -->

</main>

<?php get_footer(); ?>
