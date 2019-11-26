<?php

function recruit_get_archive_resume( $p = null ) {

    global $post;

    $locale = qtranxf_getLanguage();

    if ( !$p ) $p = $post;
    else if ( is_string( $p ) || is_int( $p ) ) $p = get_post( $p );


    $meta = get_post_meta( $p->ID );
    $name = isset( $meta['fname'] ) && is_array( $meta['fname'] ) && strlen( $meta['fname'][0] ) ? $meta['fname'][0] : '';
    $country = wp_get_post_terms( $p->ID, 'city_cat', array( 'fields' => 'all' ) );
    $country = isset( $country[0] ) && is_object( $country[0] ) ? $country[0]->name : '';
    $age = isset( $meta['birthdate'] ) && is_array( $meta['birthdate'] ) && $meta['birthdate'][0] > 0 ? $meta['birthdate'][0] : time();
    $now = new DateTime();
    $bd = new DateTime( );
    $bd->setTimestamp( $age );
    $interval = $now->diff( $bd );
    $age = $interval->format('%y' );
    $salary = isset( $meta['salary'] ) && is_array ( $meta['salary'] ) && $meta['salary'][0] > 0 ? $meta['salary'][0] : 0;
    $expirience = isset( $meta['expirience'] ) && is_array( $meta['expirience'] ) && $meta['expirience'][0] > 0 ? $meta['expirience'][0] : '';
    $lastjobs = get_post_meta( $p->ID, 'lastjobs', true );
    if ( is_array( $lastjobs ) ) {
        $lastjob = $lastjobs[0];
    }
    else {
        $lastjob = array( 'company_name' => '', 'company_branch' => '', 'status' => '', 'start_date' => time(), 'end_date' => time(), 'current_here' => 0 );
    }
    $updated = $p->post_modified;
    $img = get_the_post_thumbnail_url( $p->ID, array( 150, 150 ) );
    if ( !$img ) {
        $img_id = recruit_get_image_id( 'no-man.jpg' );
        $img = wp_get_attachment_image_url( $img_id, 'resume-archive' );
    }
    $user_info = get_user_meta( $p->post_author, 'user_info', true );
    $diff = isset( $user_info['last_seen'] ) ? recruit_get_diff_in_days( $user_info['last_seen'] ) : 1;
    if ( $diff == 1 ) { $online = _x( 'Was online today', 'recruit', 'resume-archive' ); }
    else { $online = _x( 'Was online ', 'recruit', 'resume-archive' ) . ' ' . $diff . ' ' . _nx( 'day', 'days', (int)$diff, 'resume-archive', 'recruit' ); }

    $out = '';

    $out =
        '<a class="archive-resume-box" href="' . get_permalink( $p->ID ) . '">
                     <div class="archive-resume-content">
                         <div class="ar-img"><img src="' . $img . '"></div>
                         <div class="ar-content">
                             <h2 class="archive-title">' . get_the_title( $p ) . '</h2>
                             <div class="ar-main-info">
                                 <div class="ar-main-info-item">' . $name . '</div>
                                 <div class="ar-main-info-item">' . $country . '</div>
                                 <div class="ar-main-info-item">' . $age . ' ' . _nx( 'year', 'years', $age, 'recruit' ) . '</div>
                                 <div class="ar-main-info-item">' . $salary . ' ' . __( 'EUR', 'recruit' ) . '</div>
                             </div>
                             <div class="ar-line">
                                <div class="ar-line-title">' . __( 'expirience:', 'recruit' ) . '</div>
                                <div class="ar-line-content">' . $expirience . ' ' . _nx( 'year', 'years', (int)$expirience, 'resume-archive', 'recruit' ) . '</div>
                             </div>
                             <div class="ar-line">
                                <div class="ar-line-title">' . __( 'last job:', 'recruit' ) . '</div>
                                <div class="ar-line-content">' . $lastjob['status'] . ', ' . date( 'F, Y', $lastjob['end_date'] ) . '</div>
                             </div>
                             <div class="ar-last-line">
                                <div class="ar-line-title">' . __( 'updated', 'recruit' ) . ' ' . $updated . '</div>
                                <div class="ar-line-content">' . $online . '</div>
                             </div>
                         </div>
                     </div>
                 </a>';

    return $out;

}



function recruit_get_arcvive_vacancy( $p = null ) {

    global $post;

    $locale = qtranxf_getLanguage();

    if ( !$p ) $p = $post;
    else if ( is_string( $p ) || is_int( $p ) ) $p = get_post( $p );

    $out = '';

    $meta = get_post_meta( $p->ID );

    $places = isset( $meta['places'] ) && is_array( $meta['places'] ) && strlen( $meta['places'][0] ) ? $meta['places'][0] : '';
    $salary = isset( $meta['salary'] ) && is_array ( $meta['salary'] ) && $meta['salary'][0] > 0 ? $meta['salary'][0] : 0;
    $status = isset( $meta['status'] ) && is_array( $meta['status'] ) && strlen( $meta['status'][0] ) ? $meta['status'][0] : '';
    $img = get_the_post_thumbnail_url( $p->ID, array( 370, 250 ) );
    if ( !$img ) {
        $img_id = recruit_get_image_id( 'no-man.jpg' );
        $img = wp_get_attachment_image_url( $img_id, 'vacancy-archive' );
    }
    if ( $status == 1 ) {
        $status = __( 'actual', 'recruit' );
        $status_class = ' active';
    }
    else {
        $status = __( 'busy', 'recruit' );
        $status_class = '';
    }

    $excerpt = qtranxf_use( $locale, get_the_excerpt( $p ), $show_available = false );

    $out =
        '<div class="archive-vacancy-content object-content" data-object-id="' . $p->ID . '">
                 <div class="ar-img"><a href="' . get_permalink( $p->ID ) . '"><img src="' . $img . '"></a></div>
                 <h2 class="archive-title"><a class="archive-vacancy-link" href="' . get_permalink( $p->ID ) . '">' . get_the_title( $p ) . '</a></h2>
                 <div class="ar-content">
                     <div class="ar-line">
                        <div class="ar-line-title">' . __( 'Seats left', 'recruit' ) . '</div>
                        <div class="ar-line-content">' . $places . '</div>
                     </div>
                     <div class="ar-line">
                        <div class="ar-line-title">' . __( 'Salary: from ', 'recruit' ) . '</div>
                        <div class="ar-line-content">' . $salary . '</div>
                     </div>
                     <div class="ar-excerpt">' .
                         $excerpt .
                     '</div>
                     <div class="ar-bottom">
                         <div class="ar-bottom-left">
                             <div class="status' . $status_class . '">' . $status . '</div>
                             <a class="ar-vacancy-link" href="' . get_permalink( $p ) . '">' . __( 'View more', 'recruit' ) . '</a>
                         </div>
                         <a class="response-button vacancy-response ar-bottom-right" href="#">' . __( 'reserve', 'recruit' ) . '</a>
                     </div>
                 </div>
             </div>';

    return $out;

}



function recruit_get_arcvive_employer( $p = null ) {

    global $post;

    if ( !$p ) $p = $post;
    else if ( is_string( $p ) || is_int( $p ) ) $p = get_post( $p );
    $img = get_the_post_thumbnail_url( $p->ID, 'full' );

    $out =
        '<a class="archive-employer" href="' . get_permalink( $p ) . '"><img src="' . $img . '"></a>';

    return $out;

}


add_shortcode( 'get_tips', 'recruit_get_tips' );

function recruit_get_tips( $category = null ) {

    if ( $category ) {
        $category = $category['category'];
    }
    else { $category = 'general'; }

    $tax_query = array(
        'relation' => 'OR',
        array(
            'taxonomy' => 'tips_cat',
            'field'     => 'slug',
            'terms'     => $category
        )
    );

    $tips = new WP_Query( array( 'post_type' => 'tip', 'post_per_page' => -1, 'tax_query' => $tax_query ) );
    $out = '';
    if ( count( $tips->posts ) > 0 ) {
        $out = '<div class="tips-box">';
        foreach( $tips->posts as $tip ) {
            $out .=
                '<div class="tip-box">
                     <div class="tip-title-box">
                         <div class="tip-title">' . get_the_title( $tip ) . '</div>
                         <div class="tip-state"></div>
                     </div>
                     <div class="tip-content">' . get_post_field('post_content', $tip->ID ) . '</div>
                 </div>';
        }
        $out .= '</tip>';
    }
    return $out;

}




function recruit_get_posts_carousel() {

    global $post;

    $out = '';

    $posts = get_posts( array( 'numberposts' => 5 ) );
    foreach ( $posts as $p ) {

        $img = get_the_post_thumbnail( $p->ID, array ( 390, 258 ) );

        $out .=
            '<article id="post-' . $p->ID . '" class="default-archive-item col">' .
                $img .
                '<span class="date">' .  __( 'Posted', 'recruit' ) . ' ' . get_the_time('F j, Y', $p ) . '</span>
                <h3>
                    <a href="' . get_permalink( $p ) . '" title="' . get_the_title( $p ) .'">' . get_the_excerpt( $p ) . '</a>
                </h3>
	        </article>';
    }

    return $out;

}



function recruit_handle_site_form() {

    $name = isset( $_POST['name'] ) ? $_POST['name'] : '';
    $phone = isset( $_POST['phone'] ) ? $_POST['phone'] : '';
    $email = isset( $_POST['email'] ) ? $_POST['email'] : '';
    $message = isset( $_POST['message'] ) ? $_POST['message'] : '';

    $body = 'name - ' . $name . '<br>phone - ' . $phone . '<br>email - ' . $email . '<br>' . $message;

    $user = get_user_by( 'id', 1 );

    wp_mail( $user->data->user_email, site_url() . ' - Site Form emael', $body );

    echo json_encode( array( 'result' => __( 'Your question is sended!', 'recruit' ), 'content' => '' ) );
    wp_die();

}