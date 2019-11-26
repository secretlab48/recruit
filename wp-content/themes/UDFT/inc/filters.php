<?php

function get_resume_filters() {

    $out = '<div class="filter-title">' . __( 'Effective filter search', 'recruit' ) . '</div>';
    $out .=
        '<form class="filter-search-form" method="GET" action="/resumes">';

    $words = isset( $_GET['words'] ) && strlen( $_GET['words'] ) > 0 ? $_GET['words'] : '';
    $out .=
        '<div class="search-words-box"><input type="text" name="words" value="' . $words . '"></div>';

    $cities = get_terms( array( 'taxonomy' => 'city_cat', 'hide_empty' => false, 'parent' => 0 ) );
    $out .= get_filter_block( __( 'Counties', 'recruit' ), 'tax', 'country', $cities );
    $categories = get_terms( array( 'taxonomy' => 'resume_cat', 'hide_empty' => false ) );
    $out .= get_filter_block( 'Categories', 'tax', 'category', $categories );

    $man = new StdClass();
    $man->slug = 'men';
    $man->name = __( 'man', 'recruit' );
    $woman = new StdClass();
    $woman->slug = 'woman';
    $woman->name = __( 'woman', 'recruit' );
    $genders = array( $man, $woman );
    $out .= get_filter_block( 'Gender', 'meta', 'gender', array( $man, $woman ) );


    $age18_30 = new StdClass();
    $age18_30->slug = '>=18 <=30';
    $age18_30->name = __( '18-30', 'recruit' );
    $age30_40 = new StdClass();
    $age30_40->slug = '>=30 <=40';
    $age30_40->name = __( '30-40', 'recruit' );
    $age40_50 = new StdClass();
    $age40_50->slug = '>=40 <=50';
    $age40_50->name = __( '40-50', 'recruit' );
    $age50plus = new StdClass();
    $age50plus->slug = '>50';
    $age50plus->name = __( '50+', 'recruit' );

    $ages = array( $age18_30, $age30_40, $age40_50, $age50plus );
    $out .= get_filter_block( 'Age', 'meta', 'age', $ages );


    $less_1000 = new StdClass();
    $less_1000->slug = '<=1000';
    $less_1000->name = __( 'less 1000', 'recruit' );
    $more_1000_less_2000 = new StdClass();
    $more_1000_less_2000->slug = '>=1000 <=2000';
    $more_1000_less_2000->name = __( 'from 1000 to 2000', 'recruit' );
    $more_2000_less_3000 = new StdClass();
    $more_2000_less_3000->slug = '>=2000 <=3000';
    $more_2000_less_3000->name = __( 'from 2000 to 3000', 'recruit' );
    $genders = array( $less_1000, $more_2000_less_3000 );
    $more_3000_less_4000 = new StdClass();
    $more_3000_less_4000->slug = '>=3000 <=4000';
    $more_3000_less_4000->name = __( 'from 3000 to 4000', 'recruit' );
    $more_4000_less_5000 = new StdClass();
    $more_4000_less_5000->slug = '>=4000 <=5000';
    $more_4000_less_5000->name = __( 'from 4000 to 5000', 'recruit' );
    $more_5000 = new StdClass();
    $more_5000->slug = '>=5000';
    $more_5000->name = __( 'over 5000', 'recruit' );
    $salaries = array( $less_1000, $more_1000_less_2000, $more_2000_less_3000, $more_3000_less_4000, $more_4000_less_5000, $more_5000 );
    $out .= get_filter_block( 'Salary', 'meta', 'salary', $salaries );


    $job_types = get_terms( array( 'taxonomy' => 'job_cat', 'hide_empty' => false, 'parent' => 0 ) );
    $out .= get_filter_block( __( 'Type of employment', 'recruit' ), 'tax', 'job_type', $job_types );

    $languages = get_terms( array( 'taxonomy' => 'language_cat', 'hide_empty' => false, 'parent' => 0 ) );
    $out .= get_nested_filter_block( 'Language', 'tax', 'lng', 'lng_degree', $languages, true );


    $out .=
             '<p><button class="site-button" type="submit">' . __( 'send', 'recruit' ) . '</button></p>
         </form>';

    return $out;

}



function get_vacancy_filters() {

    global $wpdb;

    $out = '<div class="filter-title">' . __( 'Effective filter search', 'recruit' ) . '</div>';

    $out .=
        '<form class="filter-search-form" method="GET" action="/vacancies">';

    $cities = get_terms( array( 'taxonomy' => 'city_cat', 'hide_empty' => false, 'parent' => 0 ) );
    $out .= get_nested_filter_block( __( 'Counties', 'recruit' ), 'tax', 'country', 'city', $cities, true );
    $categories = get_terms( array( 'taxonomy' => 'resume_cat', 'hide_empty' => false ) );
    $out .= get_filter_block( 'Categories', 'tax', 'category', $categories );

    $employers_posts = $wpdb->get_results( "SELECT * FROM {$wpdb->posts} WHERE post_type = 'employer' AND post_status = 'publish' ORDER BY post_date DESC" );
    $employers = array();
    foreach( $employers_posts as $employer_post ) {
        $employer = new StdClass();
        $employer->ID = $employer->slug = $employer_post->ID;
        $employer->name = get_the_title( $employer_post );
        $employers[] = $employer;
    }
    //$out .= get_filter_select_block( 'Company', 'meta', 'emplr', $employers );
    $out .= get_filter_block( 'Company', 'meta', 'emplr', $employers );

    $job_types = get_terms( array( 'taxonomy' => 'job_cat', 'hide_empty' => false, 'parent' => 0 ) );
    $out .= get_filter_block( __( 'Type of employment', 'recruit' ), 'tax', 'job_type', $job_types );

    $less_1000 = new StdClass();
    $less_1000->slug = '<=1000';
    $less_1000->name = __( 'less 1000', 'recruit' );
    $more_1000_less_2000 = new StdClass();
    $more_1000_less_2000->slug = '>=1000 <=2000';
    $more_1000_less_2000->name = __( 'from 1000 to 2000', 'recruit' );
    $more_2000_less_3000 = new StdClass();
    $more_2000_less_3000->slug = '>=2000 <=3000';
    $more_2000_less_3000->name = __( 'from 2000 to 3000', 'recruit' );
    $genders = array( $less_1000, $more_2000_less_3000 );
    $more_3000_less_4000 = new StdClass();
    $more_3000_less_4000->slug = '>=3000 <=4000';
    $more_3000_less_4000->name = __( 'from 3000 to 4000', 'recruit' );
    $more_4000_less_5000 = new StdClass();
    $more_4000_less_5000->slug = '>=3000 <=4000';
    $more_4000_less_5000->name = __( 'from 3000 to 4000', 'recruit' );
    $more_5000 = new StdClass();
    $more_5000->slug = '>=4000';
    $more_5000->name = __( 'over 4000', 'recruit' );
    $salaries = array( $less_1000, $more_1000_less_2000, $more_2000_less_3000, $more_3000_less_4000, $more_4000_less_5000, $more_5000 );
    $out .= get_filter_block( 'Salary', 'meta', 'salary', $salaries );

    $out .=
        '<p><button class="site-button" type="submit">' .  __( 'send', 'recruit' ) . '</button></p>
         </form>';


    return $out;

}

function get_filter_block( $title, $type, $key, $terms ) {

    $active = '';
    $out =
        '<div class="filter-box __active__" data-filter-type="' . $type . '" data-filter-key="' . $key . '">
             <div class="filter-box-title">' . $title . '</div>
             <div class="filter-items-box">';
    foreach ( $terms as $term ) {
        $checked = isset( $_REQUEST[$key] ) && in_array( $term->slug, $_REQUEST[$key] ) ? ' checked' : '';
        if ( $active == '' ) {
            $active = $checked == '' ? '' : ' active opened';
        }
        //<input type="checkbox" name="' . $key . '[]"' . $checked . ' value="' .  $term->slug . '">
        $out .= '<div class="filter-item" data-filter-item-value="' . $term->slug . '">
                     
                     <div class="v-checkbox">
                         <input name="' . $key . '[]" type="checkbox"' . $checked. ' value="' . $term->slug . '">
                         <span class="marker"></span>
                         <span class="filter-item-title">' . $term->name . '</span>                        
                     </div>
                     
                 </div>';
    }
    $out .= '</div></div>';
    $out = str_replace( '__active__', $active, $out );

    return $out;

}



function get_nested_filter_block( $title, $type, $key, $sub_key, $terms, $get_sub_terms = true ) {

    $active = '';
    $out =
        '<div class="filter-box __active__" data-filter-type="' . $type . '" data-filter-key="' . $key . '">
             <div class="filter-box-title">' . $title . '</div>
             <div class="filter-items-box">';
    foreach ( $terms as $term ) {
        $tax = $term->taxonomy;
        $checked = isset( $_REQUEST[$key] ) && in_array( $term->slug, $_REQUEST[$key] ) ? ' checked' : '';
        if ( $active == '' ) {
            $active = $checked == '' ? '' : ' active opened';
        }

        $sub_active = $sub_checked = '';
        $sub_terms = get_terms( array( 'taxonomy' => $tax, 'hide_empty' => false, 'parent' => $term->term_id ) );
        $sub_items = '<div class="filter-items-box sub-items">';
        foreach ( $sub_terms as $sub_term ) {
            $sub_checked = isset( $_REQUEST[$sub_key] ) && in_array( $sub_term->slug, $_REQUEST[$sub_key] ) ? ' checked' : '';
            if ( $sub_active == '' ) {
                $sub_active = $sub_checked == '' ? '' : ' active opened';
                if ( $active == '' && $sub_active != '' ) {
                    $active = ' active';
                }
            }
            $sub_items .=
                '<div class="filter-item" data-filter-item-value="' . $sub_term->slug . '">
                     <div class="v-checkbox">
                         <input name="' . $sub_key . '[]" type="checkbox"' . $sub_checked. ' value="' . $sub_term->slug . '">
                         <span class="marker"></span>
                         <span class="filter-item-title">' . $sub_term->name . '</span>                        
                     </div>
                 </div>';
        }
        $sub_items .= '</div>';

        $out .= '<div class="filter-item sub-box __sub_active__" data-filter-item-value="' . $term->slug . '">
                     <div class="sub-filter-item">
                         <div class="v-checkbox">
                             <input name="' . $key . '[]" type="checkbox"' . $checked. ' value="' . $term->slug . '">
                             <span class="marker"></span>
                             <span class="filter-item-title">' . $term->name . '</span>                        
                         </div>
                     </div>' .
                     $sub_items .
                 '</div>';
        $out = str_replace( '__sub_active__', $sub_active, $out );
    }
    $out .= '</div></div>';
    $out = str_replace( '__active__', $active, $out );

    return $out;

}




function get_filter_select_block(  $title, $type, $key, $terms ) {

    //$checked = isset( $_REQUEST[$key] ) && in_array( $term->slug, $_REQUEST[$key] ) ? ' checked' : '';.

    $options = '';
    foreach( $terms as $term ) {
        $selected = isset( $_REQUEST[$key] ) && in_array( $term->slug, $_REQUEST[$key] ) ? ' selected' : '';
        $options .= '<option value="' . $term->slug . '" ' . $selected . '>' . $term->name . '</option>';
    }

    $out =
        '<div class="filter-select-block">
             <div class="filter-select-title">' . $title . '</div>
             <div class="filter-select-box">
                 <select class="filter-select selected2" name="' . $key . '[]" multiple>' .
                     $options .
                 '</select>
             </div>
        </div>';

    return $out;

}




function get_resume_filters_results () {

    global $wp_query, $post;

    $city = isset( $_POST['data']['city'] ) && strlen( $_POST['data']['city'] ) > 0 ? explode(',', $_POST['data']['city'] ) : '';
    $category = isset( $_POST['data']['category'] ) && strlen( $_POST['data']['category'] ) > 0 ? explode(',', $_POST['data']['category'] ) : '';
    $gender = isset( $_POST['gender'] ) ? $_POST['gender'] : '';

    //$city = 'berlin';
    //$gender = 'man';
    //$category = 'service';

    if ( $city != '' ) {
        $city_query =
            array(
                'taxonomy' => 'city_cat',
                'field'    => 'slug',
                'terms'    => $city,
                'operator' => 'IN'
            );
    }
    else { $city_query = ''; }

    if ( $category != '' ) {
        $category_query =
            array(
                'taxonomy' => 'resume_cat',
                'field'    => 'slug',
                'terms'    => $category,
                'operator' => 'IN'
            );
    }
    else { $category_query = ''; }

    $tax_query = array(
        'relation' => 'AND',
           array( $category_query, $city_query )
        );


    if( $gender != '' ) {
        $gender_query =
            array(
                'key'   => 'gender',
                'value' => $gender
            );
    }
    else { $gender_query = array(); }

    $meta_query = array(
        'relation' => 'AND',
        $gender_query
    );

    $resumes = new WP_Query(
        array(
            'post_type'      => 'resume',
            'post_status'    => 'pudlish',
            'tax_query'      => $tax_query,
            'meta_query'     => $meta_query,
            'posts_per_page' => -1
        )
    );

    $content = '';
    $wp_query->posts = $resumes->posts;
    foreach ( $resumes->posts as $resume ) {
        $post = $resume;
        $content .= UDFT::get_template_part('/templates/resume/resume-archive-loop');
    }
    $pagination = '';


    echo json_encode( array( 'content' => $content, 'pagination' => $pagination ) );
    $a = 1;
    wp_die();

}

