<?php

global $post, $wpdb;

get_header();


if ( is_user_logged_in() ) {
    $user = wp_get_current_user();
    $link_class = '';
}
else {
    $user = false;
    $link_class = ' log-in-here';
}

$meta = get_post_meta( $post->ID );
$fname = isset( $meta['fname'] ) && is_array( $meta['fname'] ) && strlen( $meta['fname'][0] ) ? __( $meta['fname'][0] ) : '';
$sname = isset( $meta['sname'] ) && is_array( $meta['sname'] ) && strlen( $meta['sname'][0] ) ? __( $meta['sname'][0] ) : '';
$gender = isset( $meta['gender'] ) ? is_array( $meta['gender'] ) ? $meta['gender'][0] : $meta['gender'] : '';
$country = wp_get_post_terms( $post->ID, 'city_cat', array( 'fields' => 'all' ) );
$country = isset( $country[0] ) && is_object( $country[0] ) ? $country[0]->name : '';
$age = isset( $meta['birthdate'] ) && is_array( $meta['birthdate'] ) && $meta['birthdate'][0] > 0 ? $meta['birthdate'][0] : time();
$now = new DateTime();
$bd = new DateTime( );
$bd->setTimestamp( $age );
$interval = $now->diff( $bd );
$age = $interval->format('%y' );
$salary = isset( $meta['salary'] ) && is_array ( $meta['salary'] ) && $meta['salary'][0] > 0 ? $meta['salary'][0] : 0;
$expirience = isset( $meta['expirience'] ) && is_array( $meta['expirience'] ) && $meta['expirience'][0] > 0 ? $meta['expirience'][0] : '';
$lastjobs = get_post_meta( $post->ID, 'lastjobs', true );
$updated = $post->post_modified;
$img = get_the_post_thumbnail_url( $post->ID, array( 260, 285 ) );
if ( !$img ) {
    $img_id = recruit_get_image_id( 'no-man.jpg' );
    $img = wp_get_attachment_image_url( $img_id, 'resume-single' );
}
$salary = isset( $meta['salary'] ) ? is_array( $meta['salary'] ) ? $meta['salary'][0] : $meta['salary'] : _x( 'Not specified', 'recruit', 'single-resume' );

$category_cats = wp_get_post_terms( $post->ID, 'resume_cat', array( 'fields' => 'ids' ) );

$job_cats = wp_get_post_terms( $post->ID, 'job_cat', array( 'fields' => 'ids' ) );
if ( count( $job_cats ) > 0 ) {
    foreach ( $job_cats as $job_cat ) {
        $job_cat = get_term( $job_cat, 'job_cat' );
        $job_types[] = $job_cat->name;
    }
}
else{
    $job_types = array( _x( 'No Employment Types Specified', 'recruit', 'single-resume' ) );
}

$langs_html = ''; $langs = array();
$lang_cats = wp_get_post_terms( $post->ID, 'language_cat', array( 'fields' => 'ids' ) );
if ( count( $lang_cats ) > 0 ) {
    $lc = array();
    foreach ( $lang_cats as $lang_cat ) {
        $lang_cat = get_term( $lang_cat, 'language_cat' );
        if ( $lang_cat->parent != 0 ) {
            $lc[$lang_cat->parent] = $lang_cat->term_id;
        }
    }
    foreach( $lc as $p => $c ) {
        $parent = get_term( $p, 'language_cat' );
        $child = get_term( $c, 'language_cat' );
        $langs_html .= '<div class="lang-line">' . $parent->name . ' - ' . $child->name . '</div>';
        $langs[] = '<span class="lang-line">' . $parent->name . ' - ' . $child->name . '</span>';
    }
}
else {
    $langs = array( _x( 'No Languages Data', 'recruit', 'single-resume' ) );
}


$content = apply_filters( 'the_content', get_post_field( 'post_content', $post->ID ) );
$content_html =
    '<div class="r-section content">
         <div class="r-section-title">' . _x( 'Key information', 'recruit', 'single-resume' ) . '</div>
         <div class="r-section-content">' . $content . '</div>
     </div>';
$lastjobs = get_post_meta( $post->ID, 'lastjobs', true );
$lj_sections = '';
if ( is_array( $lastjobs ) && count ( $lastjobs ) > 0 ) {
    foreach ( $lastjobs as $lj ) {
        if ( $lj['current_here'] == 1 ) {
            $now = new DateTime();
            $bd = new DateTime( );
            $bd->setTimestamp( $lj['start_date'] );
            $interval = $now->diff( $bd );
            $years = $interval->format('%y' ) . ' ' . _nx( 'year', 'years', $interval->format('%y' ), 'single-resume', 'recruit' );
            $months = $interval->format('%m' ) . ' ' . _nx( 'month', 'months', $interval->format('%m' ), 'single-resume', 'recruit' );
            $end_date = _x( 'Present', 'recruit', 'single-resume' ) . ' (' . $years . ' ' . $months . ')';
        }
        else {
            $end_date = date( 'M Y', $lj['end_date'] );
        }
        $content = isset( $lj['content'] ) ? $lj['content'] : '';
        $lj_sections .=
            '<div class="lj-section">
                 <div class="lj-title">' . $lj['status'] . '</div>
                 <div class="lj-expirience">' . date( 'M Y', $lj['start_date'] ) . ' - ' . $end_date . '</div>
                 <div class="lj-company">' . $lj['company_name'] . '</div>
                 <div class="lj-branch">' . $lj['company_branch'] . '</div>
                 <div class="lj-content">' . $content . '</div>
             </div>';
    }
}
else {
    $lj_sections = _x( 'It is young specialist', 'recruit', 'single-resume' );
}
$last_jobs_html =
    '<div class="r-section lastjobs">
         <div class="r-section-title">' . _x( 'Ecpirience', 'recruit', 'single-resume' ) . '</div>
         <div class="r-section-content">' . $lj_sections . '</div>
     </div>';
$education = isset( $meta['education'] ) && is_array( $meta['education'] ) && strlen( $meta['education'][0] ) ? $meta['education'][0] : '';
$education_html =
    '<div class="r-section education">
         <div class="r-section-title">' . _x( 'Education', 'recruit', 'single-resume' ) . '</div>
         <div class="r-section-content">' . $education . '</div>
     </div>';
$languages_html =
    '<div class="r-section languages">
         <div class="r-section-title">' . _x( 'Knowledge of languages', 'recruit', 'single-resume' ) . '</div>
         <div class="r-section-content">' . $langs_html . '</div>
     </div>';
$add_info = isset( $meta['add_info'] ) && is_array( $meta['add_info'] ) && strlen( $meta['add_info'][0] ) ? $meta['add_info'][0] : '';
$add_info_html =
    '<div class="r-section add_info">
         <div class="r-section-title">' . _x( 'Additional Information', 'recruit', 'single-resume' ) . '</div>
         <div class="r-section-content">' . $add_info . '</div>
     </div>';




$similialars_query = new WP_Query( array( 'post_type' => 'resume', 'tax_query' => array( array( 'taxonomy' => 'resume_cat', 'field' => 'id', 'terms' => $category_cats ) ), 'posts_per_page' => 5, 'post__not_in' => array( $post->ID ) ) );
$similiars = '';
if ( count( $similialars_query->posts ) > 0 ) {
    $similiars .=
        '<div class="section-header">
            <h2>' . _x( 'Similiar resumes', 'recruit', 'single-resume' ) . '</h2>
        </div>';
    $similiars .= '<div class="r-similiars">';
    foreach ( $similialars_query->posts as $i => $sr ) {
        if ( $i == 3 ) {
            $similiars .= '<div class="archive-resume-box banner-box">' . get_site_banner() . '</div>';
        }
        $similiars .= recruit_get_archive_resume( $sr );
    }
    $similiars .= '</div>';
    if ( count ($similialars_query->posts ) >= 3 ) {
        $similiars .= '<a class="archive-more-link" href="' . get_post_type_archive_link( 'vacancy' ) . '">' . _x( 'View full list', 'recruit', 'home' ) . '</a>';
    }
}

$a = 1;



?>

<main role="main">
    <!-- section -->
    <section>

        <?php if (have_posts()): while (have_posts()) : the_post(); ?>

            <!-- article -->
            <article id="post-<?php the_ID(); ?>" <?php post_class('object-content'); ?> data-object-id="<?php echo $post->ID ;?>">

                <div class="container">

                    <?php
                    $gender = isset( $gender ) && $gender != '' ? $gender : _x( 'no gender info', 'recruit', 'single-resume' );
                    $expirience = isset( $exspirience ) && $expirience != '' ? _x( 'Expirience ', 'recruit', 'single-resume' ) . $expirience . ' ' . _nx( 'year', 'years', $expirience, 'single-resume', 'recruit' ) : _x( 'It is young specialist', 'recruit', 'single-resume' );
                    $age = $age > 0 ? $age . ' ' .  _nx( 'year', 'years', $age, 'single-resume', 'recruit' ) : _x( 'No age data', 'recruit', 'single-resume' );
                    echo
                        '<div class="single-resume row">
                                <div class="resume-head left col">
                                    <div class="sr-title-box">
                                        <h1 class="archive-title sr-title">' . get_the_title( $post->ID ) . '</h1>
                                        <div class="sr-salary">' . _x( 'From ', 'recruit', 'single-resume' ) . $salary . ' EUR</div>
                                    </div>
                                    <div class="r-date">' .  _x( 'Updated ', 'recruit', 'single-resume' ) . date( 'd M Y', strtotime( $updated ) ) . '</div>
                                    <div class="r-name">' . $fname . ' ' . $sname . '</div>
                                    <ul class="r-info">
                                        <li>' . $expirience . '</li> 
                                        <li>' . $gender . '</li>
                                        <li>' . $age . '</li>
                                        <li>' . implode( ', ', $job_types ) . '</li>
                                        <li>' . implode( ', ', $langs ) . '</li>                                        
                                    </ul>     
                                </div>
                                <div class="resume-head right col">
                                    <div class="v-img-box"><img src="' . $img . '"></div>
                                </div>
                            </div>   
                            
                            <div class="divider"></div>

                            <div class="r-content-row row">    
                                <div class="r-content col">' .
                                    $content_html .
                                    $last_jobs_html .
                                    $education_html .
                                    $languages_html .
                                    $add_info_html .
                                '</div>
                            </div>
                            <div class="divider"></div>' .
                        $similiars;
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
