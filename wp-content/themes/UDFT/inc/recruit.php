<?php


add_action( 'init', 'recruit_init' );

function recruit_init() {

    register_taxonomy('city_cat', array( 'resume', 'vacancy' ), array(
        'label'                 => __( 'City Taxonomy', 'recruit' ),
        'labels'                => array(
            'name'              => __( 'City Categoties', 'recruit' ),
            'singular_name'     => __( 'City Category', 'recruit' ),
            'search_items'      => __( 'Search City Category', 'recruit' ),
            'all_items'         => __( 'All City Categories', 'recruit' ),
            'parent_item'       => __( 'Parent City Category', 'recruit' ),
            'parent_item_colon' => __( 'Parent City Category', 'recruit' ),
            'edit_item'         => __( 'Edit City Category', 'recruit' ),
            'update_item'       => __( 'Update City Category', 'recruit' ),
            'add_new_item'      => __( 'Add City Category', 'recruit' ),
            'new_item_name'     => __( 'New City Category', 'recruit' ),
            'menu_name'         => __( 'City Category', 'recruit' ),
        ),
        'description'           => __( 'City Categories', 'recruit' ),
        'public'                => true,
        'show_in_nav_menus'     => true,
        'show_ui'               => true,
        'show_tagcloud'         => true,
        'hierarchical'          => true,
        //'rewrite'               => array('slug'=>'resume_cats', 'hierarchical'=>false, 'with_front'=>false, 'feed'=>false ),
        'show_admin_column'     => true,
    ) );


    register_taxonomy('resume_cat', array( 'resume', 'vacancy' ), array(
        'label'                 => __( 'Resume Taxonomy', 'recruit' ),
        'labels'                => array(
            'name'              => __( 'Resume Categoties', 'recruit' ),
            'singular_name'     => __( 'Resume Category', 'recruit' ),
            'search_items'      => __( 'Search Resume Category', 'recruit' ),
            'all_items'         => __( 'All Resume Categories', 'recruit' ),
            'parent_item'       => __( 'Parent Resume Category', 'recruit' ),
            'parent_item_colon' => __( 'Parent Resume Category', 'recruit' ),
            'edit_item'         => __( 'Edit Resume Category', 'recruit' ),
            'update_item'       => __( 'Update Resume Category', 'recruit' ),
            'add_new_item'      => __( 'Add Resume Category', 'recruit' ),
            'new_item_name'     => __( 'New Resume Category', 'recruit' ),
            'menu_name'         => __( 'Resume Category', 'recruit' ),
        ),
        'description'           => __( 'Resume Categories', 'recruit' ),
        'public'                => true,
        'show_in_nav_menus'     => true,
        'show_ui'               => true,
        'show_tagcloud'         => true,
        'hierarchical'          => true,
        'rewrite'               => array('slug'=>'resume_cats', 'hierarchical'=>false, 'with_front'=>false, 'feed'=>false ),
        'show_admin_column'     => true,
    ) );


    register_taxonomy('job_cat', array( 'resume', 'vacancy' ), array(
        'label'                 => __( 'Job Type Taxonomy', 'recruit' ),
        'labels'                => array(
            'name'              => __( 'Job Type Categoties', 'recruit' ),
            'singular_name'     => __( 'Job Type Category', 'recruit' ),
            'search_items'      => __( 'Job Type Resume Category', 'recruit' ),
            'all_items'         => __( 'All Job Type Categories', 'recruit' ),
            'parent_item'       => __( 'Parent Job Type Category', 'recruit' ),
            'parent_item_colon' => __( 'Parent Job Type Category', 'recruit' ),
            'edit_item'         => __( 'Edit Job Type Category', 'recruit' ),
            'update_item'       => __( 'Update Job Type Category', 'recruit' ),
            'add_new_item'      => __( 'Add Job Type Category', 'recruit' ),
            'new_item_name'     => __( 'New Job Type Category', 'recruit' ),
            'menu_name'         => __( 'Job Type Category', 'recruit' ),
        ),
        'description'           => __( 'Job Type Categories', 'recruit' ),
        'public'                => true,
        'show_in_nav_menus'     => true,
        'show_ui'               => true,
        'show_tagcloud'         => true,
        'hierarchical'          => true,
        'rewrite'               => array('slug'=>'job_cats', 'hierarchical'=>false, 'with_front'=>false, 'feed'=>false ),
        'show_admin_column'     => true,
    ) );




    register_taxonomy('language_cat', array( 'resume', 'vacancy' ), array(
        'label'                 => __( 'Job Languqage Taxonomy', 'recruit' ),
        'labels'                => array(
            'name'              => __( 'Language Categoties', 'recruit' ),
            'singular_name'     => __( 'Language Category', 'recruit' ),
            'search_items'      => __( 'Language Resume Category', 'recruit' ),
            'all_items'         => __( 'All Language Categories', 'recruit' ),
            'parent_item'       => __( 'Parent Language Category', 'recruit' ),
            'parent_item_colon' => __( 'Parent Language Category', 'recruit' ),
            'edit_item'         => __( 'Edit Language Category', 'recruit' ),
            'update_item'       => __( 'Update Language Category', 'recruit' ),
            'add_new_item'      => __( 'Add Language Category', 'recruit' ),
            'new_item_name'     => __( 'New Language Category', 'recruit' ),
            'menu_name'         => __( 'Language Category', 'recruit' ),
        ),
        'description'           => __( 'Language Categories', 'recruit' ),
        'public'                => true,
        'show_in_nav_menus'     => true,
        'show_ui'               => true,
        'show_tagcloud'         => true,
        'hierarchical'          => true,
        'rewrite'               => array('slug'=>'language_cats', 'hierarchical'=>false, 'with_front'=>false, 'feed'=>false ),
        'show_admin_column'     => true,
    ) );



    register_post_type('resume', array(
        'label'               => __( 'Resumes', 'recruit' ),
        'labels'              => array(
            'name'          => __( 'Resumes', 'recruit' ),
            'singular_name' => __( 'Resume', 'recruit' ),
            'menu_name'     => __( 'Resumes', 'recruit' ),
            'all_items'     => __( 'All Resumes', 'recruit' ),
            'add_new'       => __( 'Add Resume', 'recruit' ),
            'add_new_item'  => __( 'Add New Resume', 'recruit' ),
            'edit'          => __( 'Edit', 'recruit' ),
            'edit_item'     => __( 'Edit Resume', 'recruit' ),
            'new_item'      => __( 'New Resume', 'recruit' ),
        ),
        'description'         => '',
        'public'              => true,
        'publicly_queryable'  => true,
        'show_ui'             => true,
        'show_in_rest'        => false,
        'rest_base'           => '',
        'show_in_menu'        => true,
        'exclude_from_search' => false,
        'capability_type'     => array( 'resume', 'resumes' ),
        'map_meta_cap'        => true,
        'hierarchical'        => false,
        'rewrite'             => array( 'slug'=>'resumes/%resume_cat%', 'with_front'=>false, 'pages'=>true, 'feeds'=>false, 'feed'=>false ),
        'has_archive'         => 'resumes',
        'query_var'           => true,
        'supports'            => array( 'title', 'editor', 'thumbnail', 'excerpt' ),
        'taxonomies'          => array( 'resume_cat' ),
    ) );



    add_filter('post_type_link', 'resume_permalink', 1, 2);
    function resume_permalink( $permalink, $post ){

        if( strpos($permalink, '%resume_cat%') === false )
            return $permalink;

        $terms = get_the_terms( $post, 'resume_cat' );

        if( ! is_wp_error( $terms ) && !empty( $terms ) && is_object( $terms[0] ) )
            $term_slug = array_pop($terms)->slug;
        else
            $term_slug = 'no-resume_cat';

        return str_replace('%resume_cat%', $term_slug, $permalink );
    }





    register_post_type('vacancy', array(
        'label'               => __( 'Vacancies', 'recruit' ),
        'labels'              => array(
            'name'          => __( 'Vacancies', 'recruit' ),
            'singular_name' => __( 'Vacancy', 'recruit' ),
            'menu_name'     => __( 'Vacancies', 'recruit' ),
            'all_items'     => __( 'All Vacancies', 'recruit' ),
            'add_new'       => __( 'Add Vacancy', 'recruit' ),
            'add_new_item'  => __( 'Add New Vacancy', 'recruit' ),
            'edit'          => __( 'Edit', 'recruit' ),
            'edit_item'     => __( 'Edit Vacancy', 'recruit' ),
            'new_item'      => __( 'New Vacancy', 'recruit' ),
        ),
        'description'         => '',
        'public'              => true,
        'publicly_queryable'  => true,
        'show_ui'             => true,
        'show_in_rest'        => false,
        'rest_base'           => '',
        'show_in_menu'        => true,
        'exclude_from_search' => false,
        'capability_type'     => array( 'vacancy', 'vacancys' ),
        'map_meta_cap'        => true,
        'hierarchical'        => false,
        'rewrite'             => array( 'slug'=>'vacancies/%resume_cat%', 'with_front'=>false, 'pages'=>true, 'feeds'=>false, 'feed'=>false ),
        'has_archive'         => 'vacancies',
        'query_var'           => true,
        'supports'            => array( 'title', 'editor', 'thumbnail', 'excerpt' ),
        'taxonomies'          => array( 'resume_cat', 'city_cat' ),
    ) );




    register_post_type('employer', array(
        'label'               => __( 'Employers', 'recruit' ),
        'labels'              => array(
            'name'          => __( 'Employers', 'recruit' ),
            'singular_name' => __( 'Employers', 'recruit' ),
            'menu_name'     => __( 'Employers', 'recruit' ),
            'all_items'     => __( 'All Employers', 'recruit' ),
            'add_new'       => __( 'Add Employer', 'recruit' ),
            'add_new_item'  => __( 'Add New Employer', 'recruit' ),
            'edit'          => __( 'Edit', 'recruit' ),
            'edit_item'     => __( 'Edit Employer', 'recruit' ),
            'new_item'      => __( 'New Employer', 'recruit' ),
        ),
        'description'         => '',
        'public'              => true,
        'publicly_queryable'  => true,
        'show_ui'             => true,
        'show_in_rest'        => false,
        'rest_base'           => '',
        'show_in_menu'        => true,
        'exclude_from_search' => false,
        'capability_type'     => array( 'employer', 'employers' ),
        'map_meta_cap'        => true,
        'hierarchical'        => false,
        'rewrite'             => array( 'slug'=>'employers/%resume_cat%', 'with_front'=>false, 'pages'=>false, 'feeds'=>false, 'feed'=>false ),
        'has_archive'         => 'employers',
        'query_var'           => true,
        'supports'            => array( 'title', 'editor', 'thumbnail', 'excerpt' ),
        'taxonomies'          => array( 'resume_cat', 'city_cat' ),
    ) );




    add_filter('post_type_link', 'vacancy_permalink', 1, 2);
    function vacancy_permalink( $permalink, $post ){

        if( strpos($permalink, '%resume_cat%') === false )
            return $permalink;

        $terms = get_the_terms( $post, 'resume_cat' );

        if( ! is_wp_error( $terms ) && !empty( $terms ) && is_object( $terms[0] ) )
            $term_slug = array_pop($terms)->slug;
        else
            $term_slug = 'no-resume_cat';

        return str_replace('%resume_cat%', $term_slug, $permalink );
    }


    add_filter( 'pre_get_posts', 'get_needed_post_type' );

    function get_needed_post_type ( $query ) {

        $tax = get_query_var( 'taxonomy' );
        if ( !is_admin() && ( is_archive() && is_main_query() && 'nav_menu_item' !== $query->get('post_type') ) ) {
            if ( preg_match( '/vacancies/', $_SERVER['REQUEST_URI'] ) )  {
                $query->set( 'post_type', 'vacancy' );
            }
            if ( preg_match( '/resumes/', $_SERVER['REQUEST_URI'] ) ) {
                $query->set( 'post_type', 'resume' );
            }
            if ( preg_match( '/employers/', $_SERVER['REQUEST_URI'] ) ) {
                $query->set( 'post_type', 'employer' );
            }
            if ( isset( $_GET['words'] ) && strlen( $_GET['words'] ) > 0 ) {
                $query->set( 's', $_GET['words'] );
                unset( $query->query['s'] );
                $query->is_search = FALSE;
            }

            if ( isset( $_GET['country'] ) && is_array( $_GET['country'] ) && count( $_GET['country'] ) > 0 ) {
                $tax_query[] = array(
                    array(
                        'taxonomy' => 'city_cat',
                        'field'    => 'slug',
                        'terms'    => $_GET['country'],
                    ),
                );
                $query->set( 'tax_query', $tax_query );
            }

            if ( isset( $_GET['city'] ) && is_array( $_GET['city'] ) && count( $_GET['city'] ) > 0 ) {
                $tax_query[] = array(
                    array(
                        'taxonomy' => 'city_cat',
                        'field'    => 'slug',
                        'terms'    => $_GET['city'],
                    ),
                );
                $query->set( 'tax_query', $tax_query );
            }

            if ( isset( $_GET['category'] ) && is_array( $_GET['category'] ) && count( $_GET['category'] ) > 0 ) {
                $tax_query[] = array(
                    array(
                        'taxonomy' => 'resume_cat',
                        'field'    => 'slug',
                        'terms'    => $_GET['category'],
                    ),
                );
                $query->set( 'tax_query', $tax_query );
            }

            if ( isset( $_GET['job_type'] ) && is_array( $_GET['job_type'] ) && count( $_GET['job_type'] ) > 0 ) {
                $tax_query[] = array(
                    array(
                        'taxonomy' => 'job_cat',
                        'field'    => 'slug',
                        'terms'    => $_GET['job_type'],
                    ),
                );
                $query->set( 'tax_query', $tax_query );
            }

            if ( isset( $_GET['lng'] ) && is_array( $_GET['lng'] ) && count( $_GET['lng'] ) > 0 ) {
                $tax_query[] = array(
                    array(
                        'taxonomy' => 'language_cat',
                        'field'    => 'slug',
                        'terms'    => $_GET['lng'],
                    ),
                );
                $query->set( 'tax_query', $tax_query );
            }


            $meta_query = array( 'relation' => 'AND' );

            $meta_query_gender = array();
            if ( isset( $_GET['gender'] ) && is_array( $_GET['gender'] ) && count( $_GET['gender'] ) > 0 ) {
                $meta_query_gender = array(
                    array(
                        'key'     => 'gender',
                        'value'   => $_GET['gender'],
                        'compare' => 'IN'
                    ),
                );
                $meta_query[] = $meta_query_gender;
            }

            $meta_query_age = array();
            if ( isset( $_GET['age'] ) && is_array( $_GET['age'] ) && count( $_GET['age'] ) > 0 ) {
                $ages = $_GET['age'];
                $meta_query_age = array( 'relation' => 'OR' );
                foreach ( $ages as $age_strings ) {
                    $age_strings = explode( ' ', $age_strings );
                    $meta_sub_query = array( 'relation' => 'AND' );
                    foreach ( $age_strings as $age_string ) {
                        preg_match('/([^\d]+)(\d+)/', $age_string, $age);
                        $operator = $age[1];
                        $value = $age[2];
                        switch ( $operator ) {
                            case '>' :
                                $operator = '<';
                                break;
                            case '<' :
                                $operator = '>';
                                break;
                            case '>=' :
                                $operator = '<=';
                                break;
                            case '<=' :
                                $operator = '>=';
                                break;
                        }
                        $meta_sub_query[] =
                            array(
                                'key' => 'birthdate',
                                'value' => strtotime('-' . $value . ' years'),
                                'compare' => $operator,
                                'type'    => 'NUMERIC'
                            );
                    }
                    $meta_query_age[] = $meta_sub_query;
                }
                $meta_query[] = $meta_query_age;
            }

            $meta_query_salary = array();
            if ( isset( $_GET['salary'] ) && is_array( $_GET['salary'] ) && count( $_GET['salary'] ) > 0 ) {
                $salaries = $_GET['salary'];
                $meta_query_salary = array( 'relation' => 'OR' );
                foreach ( $salaries as $salary_strings ) {
                    $salary_strings = explode( ' ', $salary_strings );
                    $meta_sub_query = array( 'relation' => 'AND' );
                    foreach ( $salary_strings as $salary_string ) {
                        preg_match('/([^\d]+)(\d+)/', $salary_string, $salary);
                        $operator = $salary[1];
                        $value = $salary[2];
                        $meta_sub_query[] =
                            array(
                                'key' => 'salary',
                                'value' => $value,
                                'compare' => $operator
                            );
                    }
                    $meta_query_salary[] = $meta_sub_query;
                }
                $meta_query[] = $meta_query_salary;
            }


            $meta_query_employer = array();
            if ( isset( $_GET['emplr'] ) && is_array( $_GET['emplr'] ) && count( $_GET['emplr'] ) > 0 ) {
                $employers = $_GET['emplr'];
                $meta_query_employer =
                    array(
                        'key' => 'employer_linked_to',
                        'value' => $employers,
                        'compare' => 'IN'
                    );
                $meta_query[] = $meta_query_employer;
            }


            $date_query = array();
            if ( isset( $_GET['period'] ) ) {

                $date_query = array(
                    'column' => 'post_modified',
                    'after'     => date('Y-m-d', strtotime('-' . $_GET['period'] . ' days') ),
                    'inclusive' => true,
                );

            }
            $query->set( 'posts_per_page', 4 );
        }

        if ( ( isset( $meta_query_salary ) && count( $meta_query_salary ) ) || ( isset( $meta_query_age ) && count( $meta_query_age ) > 0 ) || ( isset( $meta_query_gender ) && count( $meta_query_gender ) > 0 ) || ( isset( $meta_query_employer ) && count( $meta_query_employer ) > 0 ) ) {
            $query->set( 'meta_query', $meta_query );
        }
        if ( isset( $date_query ) && count( $date_query ) > 0 ) {
            $query->set( 'date_query', $date_query );
        }

        return $query;

    }


    add_action ( 'add_meta_boxes', function() {
        add_meta_box( __( 'Neat Data', 'recruit' ), __( 'Meta Data', 'recruit' ), 'recruit_get_vacancy_metabox', array( 'vacancy' ), 'normal', 'high' );
        add_meta_box( __( 'Neat Data', 'recruit' ), __( 'Meta Data', 'recruit' ), 'recruit_get_employer_metabox', array( 'employer' ), 'normal', 'high' );
    });

    add_rewrite_rule( '^resumes/([^/]+)/page/([0-9]+)/?', 'index.php?post_type=resume&taxonomy=resume_cat&term=$matches[1]&paged=$matches[2]', 'top' );





    register_taxonomy('tips_cat', array( 'resume', 'tip' ), array(
        'label'                 => __( 'Tips Taxonomy', 'recruit' ),
        'labels'                => array(
            'name'              => __( 'Tips Categoties', 'recruit' ),
            'singular_name'     => __( 'Tips Category', 'recruit' ),
            'search_items'      => __( 'Tips Category', 'recruit' ),
            'all_items'         => __( 'All Tips Categories', 'recruit' ),
            'parent_item'       => __( 'Parent Tips Category', 'recruit' ),
            'parent_item_colon' => __( 'Parent Tips Category', 'recruit' ),
            'edit_item'         => __( 'Edit Tips Category', 'recruit' ),
            'update_item'       => __( 'Update Tips Category', 'recruit' ),
            'add_new_item'      => __( 'Add Tips Category', 'recruit' ),
            'new_item_name'     => __( 'New Tips Category', 'recruit' ),
            'menu_name'         => __( 'Tips Category', 'recruit' ),
        ),
        'description'           => __( 'Tips Categories', 'recruit' ),
        'public'                => true,
        'show_in_nav_menus'     => true,
        'show_ui'               => true,
        'show_tagcloud'         => true,
        'hierarchical'          => true,
        'rewrite'               => array('slug'=>'tips_cats', 'hierarchical'=>false, 'with_front'=>false, 'feed'=>false ),
        'show_admin_column'     => true,
    ) );


    register_post_type('tip', array(
        'label'               => __( 'Tips', 'recruit' ),
        'labels'              => array(
            'name'          => __( 'Tips', 'recruit' ),
            'singular_name' => __( 'Tips', 'recruit' ),
            'menu_name'     => __( 'Tips', 'recruit' ),
            'all_items'     => __( 'All Tips', 'recruit' ),
            'add_new'       => __( 'Add Tips', 'recruit' ),
            'add_new_item'  => __( 'Add New Tip', 'recruit' ),
            'edit'          => __( 'Edit', 'recruit' ),
            'edit_item'     => __( 'Edit Tip', 'recruit' ),
            'new_item'      => __( 'New Tip', 'recruit' ),
        ),
        'description'         => '',
        'public'              => true,
        'publicly_queryable'  => true,
        'show_ui'             => true,
        'show_in_rest'        => false,
        'rest_base'           => '',
        'show_in_menu'        => true,
        'exclude_from_search' => false,
        'capability_type'     => array( 'tip', 'tips' ),
        'map_meta_cap'        => true,
        'hierarchical'        => false,
        'rewrite'             => array( 'slug'=>'tips/%tips_cat%', 'with_front'=>false, 'pages'=>false, 'feeds'=>false, 'feed'=>false ),
        'has_archive'         => 'tips',
        'query_var'           => true,
        'supports'            => array( 'title', 'editor' ),
        'taxonomies'          => array( 'tips_cat' ),
    ) );




    register_post_type('review', array(
        'label'               => __( 'Reviews', 'recruit' ),
        'labels'              => array(
            'name'          => __( 'Reviews', 'recruit' ),
            'singular_name' => __( 'Reviews', 'recruit' ),
            'menu_name'     => __( 'Reviews', 'recruit' ),
            'all_items'     => __( 'All Reviews', 'recruit' ),
            'add_new'       => __( 'Add Reviews', 'recruit' ),
            'add_new_item'  => __( 'Add New Review', 'recruit' ),
            'edit'          => __( 'Edit', 'recruit' ),
            'edit_item'     => __( 'Edit Review', 'recruit' ),
            'new_item'      => __( 'New Review', 'recruit' ),
        ),
        'description'         => '',
        'public'              => true,
        'publicly_queryable'  => false,
        'show_ui'             => true,
        'show_in_rest'        => false,
        'rest_base'           => '',
        'show_in_menu'        => true,
        'exclude_from_search' => true,
        'capability_type'     => array( 'review', 'reviews' ),
        'map_meta_cap'        => true,
        'hierarchical'        => false,
        'rewrite'             => false,
        'has_archive'         => false,
        'query_var'           => true,
        'supports'            => array( 'title', 'editor', 'thumbnail', 'excerpt' )
    ) );


}



function recruit_get_vacancy_metabox( $post, $meta ) {

    $out ='<div class="employer-meta">';
    $meta = get_post_meta( $post->ID, 'salary', true );
    $out .=
        '<div class="salary-box custom-box">
             <div class="box-title">' .  __( 'Salary', 'recruit' ) . '</div>
             <input name="salary" value="' . $meta . '"> 
         </div>';

    $out .=
        '<div class="employer-box custom-box">
         <div class="box-title">' .  __( 'Employer', 'recruit' ) . '</div>
         <select class="vacancy-employer-select" name="employer_linked_to">';
    $meta = get_post_meta( $post->ID, 'employer_linked_to', true );

    $employers = get_posts( array( 'post_type' => 'employer', 'posts_per_page' => -1, 'post_status' => 'publish' ) );
    $employer_options = '';
    foreach( $employers as $iemployer ) {
        $employer_options .= '<option value="' . $iemployer->ID . '" ' . selected( $meta, $iemployer->ID, false ) . '>' . $iemployer->post_title . '</option>';
    }

    $out .= $employer_options;

    $out .= '</select></div>';


    $meta = get_post_meta( $post->ID, 'email', true );
    $out .=
        '<div class="places-box custom-box">
             <div class="box-title">' .  __( 'Email', 'recruit' ) . '</div>
             <input name="email" value="' . $meta . '"> 
         </div>';


    $meta = get_post_meta( $post->ID, 'places', true );
    $out .=
        '<div class="places-box custom-box">
             <div class="box-title">' .  __( 'Places', 'recruit' ) . '</div>
             <input name="places" value="' . $meta . '"> 
         </div>';

    $meta = get_post_meta( $post->ID, 'status', true );
    $out .=
        '<div class="status-box custom-box">
             <div class="box-title">' .  __( 'Status', 'recruit' ) . '</div>
             <select class="vacancy-status-select" name="status">';

    $meta = get_post_meta( $post->ID, 'places', true );
    $meta = $meta != '' ? $meta : 0;

    $out .= '<option value="1" ' . selected( $meta, 1, false ) . '>' . __( 'active', 'recruit' ) . '</option>';
    $out .= '<option value="0" ' . selected( $meta, 0, false ) . '>' . __( 'paused', 'recruit' ) . '</option>';

    $out .= '</select></div>';



    $meta = get_post_meta( $post->ID, 'status', true );
    $out .=
        '<div class="hot-offer-box custom-box">
             <div class="box-title">' .  __( 'Hot-Offer', 'recruit' ) . '</div>
             <select class="vacancy-hot-offer-select" name="hot_offer">';

    $meta = get_post_meta( $post->ID, 'hot_offer', true );
    $meta = $meta != '' ? $meta : 0;

    $out .= '<option value="1" ' . selected( $meta, 1, false ) . '>' . __( 'hot offered', 'recruit' ) . '</option>';
    $out .= '<option value="0" ' . selected( $meta, 0, false ) . '>' . __( 'not hot offered', 'recruit' ) . '</option>';

    $out .= '</select></div>';


    $meta = get_post_meta( $post->ID, 'expirience', true );
    $out .=
        '<div class="expirience-box custom-box">
             <div class="box-title">' .  __( 'Needed Expirience', 'recruit' ) . '</div>
             <input name="expirience" value="' . $meta . '"> 
         </div>';


    $out .= '</div>';

    echo $out;

}


add_action( 'save_post_vacancy', 'recruit_vacancy_handler' );

function recruit_vacancy_handler( $post_id ) {

    if ( ! isset( $_POST['employer_linked_to'] ) )
        return;

    update_post_meta( $post_id, 'employer_linked_to', sanitize_text_field( $_POST['employer_linked_to'] ) );
    update_post_meta( $post_id, 'salary', sanitize_text_field( $_POST['salary'] ) );
    update_post_meta( $post_id, 'email', $_POST['email'] );
    update_post_meta( $post_id, 'places', sanitize_text_field( $_POST['places'] ) );
    update_post_meta( $post_id, 'status', sanitize_text_field( $_POST['status'] ) );
    update_post_meta( $post_id, 'hot_offer', sanitize_text_field( $_POST['hot_offer'] ) );
    update_post_meta( $post_id, 'expirience', sanitize_text_field( $_POST['expirience'] ) );

}




function recruit_get_employer_metabox( $post, $meta ) {

    $out ='<div class="employer-meta">';
    $meta = get_post_meta( $post->ID, 'activities', true );

    $out .=
        '<div class="activities-box custom-box">
             <div class="box-title">' .  __( 'Activities', 'recruit' ) . '</div>
             <input class="translatable wp-editor-area" name="activities" value="' . $meta . '"> 
         </div>';



    $out .= '</div>';

    echo $out;

}


add_action( 'save_post_employer', 'recruit_employer_handler' );

function recruit_employer_handler( $post_id ) {

    if ( isset( $_POST['activities'] ) ) {
        update_post_meta($post_id, 'activities', sanitize_text_field($_POST['activities']));
    }


}









function recruit_get_user_resumes( $user ) {

    if ( !$user ) {
        return '';
    }
    $out = array();

    $resumes = new WP_Query( array( 'post_type' => 'resume', 'posts_per_page' => -1, 'author' => $user->ID, 'meta_query' => array( array( 'key' => 'saved', 'compare' => 'NOT EXISTS' ) ) ) );

    foreach ( $resumes->posts as $i => $resume ) {

        $out[] = recruit_get_resume_line( $resume );

    }
    array_unshift( $out, recruit_get_resume_line( ) );

    return $out;

}



function recruit_get_resume_line( $resume = null ) {

    if ( !$resume ) {
        $resume = new stdClass();
        $resume->ID = 0;
        $resume->post_title = 'Create Resume';
        $class = 'new-template';
    }
    else {
        $class = '';
    }
    $out = '<div class="app-tab-resume-link-box ' . $class . '" data-resume-id="' . $resume->ID . '"><div class="resume-name">' . $resume->post_title . '</div></div>';

    return $out;

}



function recruit_get_last_job( $lj, $i, $front_end_mode = true ) {

    $dates = '';
    if ( $front_end_mode ) {
        $dates =
                    '<div class="last-job-dates">
                        <div class="v-input-box">
                            <div class="v-input-title">' . _x( 'beginning of work', 'recruit', 'app-form' ) . '</div>
                            <input class="v-input last-job-date start-date" data-min-view="months" data-view="months" type="text" name="lastjobs[' . $i . '][start_date]" value="' . date( 'm.Y', $lj['start_date'] ) . '">
                        </div>
                        <div class="v-input-box">
                            <div class="v-input-title">' . _x( 'end of work', 'recruit', 'app-form' ) . '</div>
                            <input class="v-input last-job-date end-date" data-min-view="months" data-view="months" type="text" name="lastjobs[' . $i . '][end_date]" value="' . date( 'm.Y', $lj['end_date'] ) . '">
                        </div>
                        <div class="v-input-box current-here">
                            <div class="v-input-title">' . _x( 'now i work in this company', 'recruit', 'app-form' ) . '</div>
                            <div class="checkbox-box">
                                <div class="v-checkbox"><input name="lastjobs[' . $i . '][current_here]" type="checkbox" ' . checked( 1, ( isset( $lj['current_here'] ) ? $lj['current_here'] : 0 ), false ) . '><span class="marker"></span><span class="name">' . _x( 'Now I work in this company', 'recruit', 'app-form' ) . '</span></div>
                            </div>                        
                        </div>
                    </div>';
    }

    $out =
        '<div class="lj-box">' .
                    $dates .
                    '<div class="v-input-box">
                        <div class="v-input-title">' . _x( 'name of company', 'recruit', 'app-form' ) . '</div>
                        <input class="v-input lj-company-name i18n-multilingual" type="text" name="lastjobs[' . $i . '][company_name]" value="' . ( isset( $lj['company_name'] ) ? $lj['company_name'] : '' ) . '">
                    </div>
                    <div class="v-input-box">
                        <div class="v-input-title">' . _x( 'company branch', 'recruit', 'app-form' ) . '</div>
                        <input class="v-input lj-company-branch i18n-multilingual" type="text" name="lastjobs[' . $i . '][company_branch]" value="' . ( isset( $lj['company_branch'] ) ? $lj['company_branch'] : '' ) . '">
                    </div>
                    <div class="v-input-box">
                        <div class="v-input-title">' . _x( 'status', 'recruit', 'app-form' ) . '</div>
                        <input class="v-input lj-status i18n-multilingual" type="text" name="lastjobs[' . $i . '][status]" value="' . ( isset( $lj['status'] ) ? $lj['status'] : '' ) . '">
                    </div>
                    <div class="v-input-box">
                        <div class="v-input-title">' . _x( 'Content', 'recruit', 'app-form' ) . '</div>
                        <textarea class="v-textarea lj-content i18n-multilingual" type="text" name="lastjobs[' . $i . '][content]" placeholder="' . _x( 'Every sentece with new line please', 'recruit', 'app-form' ) . '">' . ( isset( $lj['content'] ) ? $lj['content'] : '' ) . '</textarea>
                    </div>
                    <div class="lj-controls">
                         <a href="#" class="lj-control remove-last-job">' . _x( 'remove last job', 'recruit', 'app-form' ) . '</a>
                     </div>
                 </div>';

    return $out;

}



function recruit_render_accept_resume( $resume = null ) {

    $lang = qtranxf_getLanguage();

    if ( isset( $_POST['user_id'] ) ) {
        $user = get_user_by('id', $_POST['user_id'] );
    }
    else if ( isset( $_GET['user_id'] ) ) {
        $user = get_user_by('id', $_GET['user_id'] );
    }
    else {
        $user = wp_get_current_user();
    }
    $user_data = $user->get_userdata( $user->ID );

    if ( !$resume ) {
        $resume = new stdClass();
        $resume->ID = 0;
    }

    $meta = get_post_meta( $resume->ID );

    $fname = isset( $meta['fname'] ) ? is_array( $meta['fname'] ) ? __( $meta['fname'][0] ) : $meta['fname'] : '';
    $sname = isset( $meta['sname'] ) ? is_array( $meta['sname'] ) ? __( $meta['sname'][0] ) : $meta['sname'] : '';
    $email = isset( $meta['email'] ) ? is_array( $meta['email'] ) ? $meta['email'][0] : $meta['email'] : '';
    $phone = isset( $meta['phone'] ) ? is_array( $meta['phone'] ) ? $meta['phone'][0] : $meta['phone'] : '';
    $education = isset( $meta['education'] ) ? is_array( $meta['education'] ) ? $meta['education'][0] : $meta['education'] : '';
    $add_info = isset( $meta['add_info'] ) ? is_array( $meta['add_info'] ) ? $meta['add_info'][0] : $meta['add_info'] : '';
    $salary = isset( $meta['salary'] ) ? is_array( $meta['salary'] ) ? $meta['salary'][0] : $meta['salary'] : '';
    $gender = isset( $meta['gender'] ) ? is_array( $meta['gender'] ) ? $meta['gender'][0] : $meta['gender'] : '';
    $birthdate = isset( $meta['birthdate'] ) ? is_array( $meta['birthdate'] ) ? $meta['birthdate'][0] : $meta['birthdate'] : time();
    $birthdate = $birthdate == '' || intval( $birthdate ) < 100 ? time() : $birthdate;
    $country = isset( $meta['country'] ) ? is_array( $meta['country'] ) ? $meta['country'][0] : $meta['country'] : '';
    $title = isset( $resume->post_title ) ? get_the_title( $resume ) : '';
    $expirience = isset( $meta['expirience'] ) ? is_array( $meta['expirience'] ) ? $meta['expirience'][0] : $meta['expirience'] : '';
    $content = isset( $resume->post_content ) ? apply_filters( 'the_content', get_post_field('post_content', $resume->ID ) ) : '';
    $terms = wp_get_post_terms( $resume->ID, 'resume_cat', array( 'fields' => 'ids' ) );
    if ( count( $terms ) > 0 ) $categories = $terms; else $categories = array();
    /*$terms = wp_get_post_terms( $resume->ID, 'job_cat', array( 'fields' => 'ids' ) );
    if ( count( $terms ) > 0 ) $job = $terms; else $job = '';
    $terms = wp_get_post_terms( $resume->ID, 'language_cat', array( 'fields' => 'ids' ) );*/
    if ( count( $terms ) > 0 ) $language = $terms; else $language = '';
    $terms = wp_get_post_terms( $resume->ID, 'city_cat', array( 'fields' => 'ids' ) );
    if ( count( $terms ) > 0 ) $city = $terms[0]; else $city = '';
    $img = ( get_post_thumbnail_id( $resume->ID ) > 0 ) ? get_post_thumbnail_id( $resume->ID ) : '';
    $style = '';
    if ( $img != '' ) {
        $style = ' style="background-image:url(' . wp_get_attachment_url( $img ) . ');"';
    }
    else {
        $style = ' style="background-image:url(' . get_stylesheet_directory_uri() . '/img/blanc-user.jpg);"';
    }
    $img_html =
        '<div class="imgs-control">
             <div class="img_control">
                 <input name="img" value="' . $img . '">
                 <div class="img_prv" ' . $style . '</div>
                 <button class="img_change" value="change image">Change Image</button>
             </div>
         </div>';

    $category_options = '';
    $cats = get_terms( array( 'taxonomy' => 'resume_cat', 'hide_empty' => false ) );
    //$cats = wp_get_post_terms( $resume->ID, 'resume_cat', 'ids' );
    foreach( $cats as $icategory ) {
        if ( in_array( $icategory->term_id, $categories ) ) { $selected = ' selected'; } else { $selected = ''; }
        $category_options .= '<option value="' . $icategory->slug . '" ' . $selected . '>' . $icategory->name . '</option>';
    }

    $job_options = '';
    $jobs = get_terms( array( 'taxonomy' => 'job_cat', 'hide_empty' => false ) );
    $job_cats = wp_get_post_terms( $resume->ID, 'job_cat', array( 'fields' => 'ids' ) );
    foreach( $jobs as $ijob ) {
        if ( in_array( $ijob->term_id, $job_cats ) ) { $selected = ' selected'; } else { $selected = ''; }
        $job_options .= '<option value="' . $ijob->slug . '" ' . $selected . '>' . $ijob->name . '</option>';
    }

    $language_options = '';
    $languages = get_terms( array( 'taxonomy' => 'language_cat', 'hide_empty' => false, 'parent' => 0 ) );
    $language_cats = wp_get_post_terms( $resume->ID, 'language_cat', array( 'fields' => 'ids' ) );
    foreach( $languages as $ilanguage ) {
        if ( in_array( $ilanguage->term_id, $language_cats ) ) { $selected = ' selected'; } else { $selected = ''; }
        $language_options .= '<option data-level="1" value="' . $ilanguage->slug . '" ' . $selected . '>' . $ilanguage->name . '</option>';
        $langskills = get_terms( array( 'taxonomy' => 'language_cat', 'hide_empty' => false, 'parent' => $ilanguage->term_id, 'orderby' => 'id', ) );
        foreach( $langskills as $langskill ) {
            if ( in_array( $langskill->term_id, $language_cats ) ) { $selected = ' selected'; } else { $selected = ''; }
            $language_options .= '<option data-level="2" value="' . $langskill->slug . '" ' . $selected . '>' . $langskill->name . '</option>';
        }
    }


    $country_options = '';
    $countries = get_terms( array( 'taxonomy' => 'city_cat', 'hide_empty' => false, 'parent' => 0 ) );
    $country_cats = wp_get_post_terms( $resume->ID, 'city_cat', array( 'fields' => 'ids' ) );
    foreach( $countries as $icountry ) {
        if ( in_array( $icountry->term_id, $country_cats ) ) { $selected = ' selected'; } else { $selected = ''; }
        $country_options .= '<option value="' . $icountry->slug . '" ' . $selected . '>' . $icountry->name . '</option>';
    }


    $city_options = '';
    $cities = get_terms( array( 'taxonomy' => 'city_cat', 'hide_empty' => false ) );
    foreach( $cities as $icity ) {
        $city_options .= '<option value="' . $icity->term_id . '" ' . selected( $city, $icity->term_id, false ) . '>' . $icity->name . '</option>';
    }



    $lastjobs = get_post_meta( $resume->ID, 'lastjobs', true );
    if ( $lastjobs == '' ) {
        $lastjobs = array( 0 => array( 'company_name' => '', 'company_branch' => '', 'status' => '', 'start_date' => time(), 'end_date' => time(), 'current_here' => 0 ) );
    }
    $lj_html = '<div class="lj-block"><a href="#" class="lj-control add-last-job">' . _x( 'add last job', 'recruit', 'app-form' ) . '</a>';
    foreach( $lastjobs as $i => $lj ) {
        $lj = $lastjobs[$i];
        $a = date( 'F, Y', $lj['start_date'] );
        $lj_inst = recruit_get_last_job( $lj, $i, true );
        $lj_html .= $lj_inst;
        if ( $i == 0 ) {
            $raw = preg_replace( '/class=.lj-box./', 'class="lj-box-raw"', $lj_inst );
        }
    }
    $lj_html .= '</div>';


    $out =
        '<form class="resume-form" action="" data-resume-id="' . $resume->ID . '">
            <div class="v-input-box required">
                <div class="v-input-title">' . _x( 'title', 'recruit', 'app-form' ) . '</div>
                <input class="v-input" type="text" name="title" value="' . $title . '">
                <div class="error-message"></div>
            </div>
            <div class="ar-row">
                <div class="ar-col img-box">' .
                    $img_html .
                '</div></div>
                <div class="ar-col account-data">
                    <div class="v-input-box required">
                        <div class="v-input-title">' . _x( 'e-mail', 'recruit', 'app-form' ) . '</div>
                        <input class="v-input" type="text" name="email" value="' . $email . '">
                        <div class="error-message"></div>
                    </div>
                    <div class="v-input-box required">
                        <div class="v-input-title">' . _x( 'phone', 'recruit', 'app-form' ) . '</div>
                        <input class="v-input" type="text" name="phone" value="' . $phone . '">
                        <div class="error-message"></div>
                    </div>    
                    <div class="v-input-box">
                        <div class="v-input-title">' . _x( 'birthdate', 'recruit', 'app-form' ) . '</div>
                        <input class="v-input birthdate" readonly="readonly" type="text" name="birthdate" value="' . date( 'd.m.Y', $birthdate ) . '">
                        <div class="error-message"></div>
                    </div>                                      
                </div>
            </div>
            <div class="ar-row">
                <div class="ar-col personal-data">
                    <div class="v-input-box required">
                        <div class="v-input-title">' . _x( 'name', 'recruit', 'app-form' ) . '</div>
                        <input class="v-input" type="text" name="fname" value="' . $fname . '">
                        <div class="error-message"></div>
                    </div>  
                    <div class="v-input-box required">
                        <div class="v-input-title">' . _x( 'second name', 'recruit', 'app-form' ) . '</div>
                        <input class="v-input" type="text" name="sname" value="' . $sname . '">
                        <div class="error-message"></div>
                    </div>  
                    <div class="v-input-box">
                        <div class="v-input-title">' . _x( 'gender', 'recruit', 'app-form' ) . '</div>
                        <div class="radio-box">
                            <div class="v-radio"><input name="gender" type="radio" value="men" ' . checked( 'men', $gender, false ) . '><span class="marker"></span><span class="name">' . _x( 'man', 'recruit', 'app-form' ) . '</span></div>
                            <div class="v-radio"><input name="gender" type="radio" value="woman" ' . checked( 'woman', $gender, false ) . '><span class="marker"></span><span class="name">' . _x( 'woman', 'recruit', 'app-form' ) . '</span></div>
                        </div>
                    </div> 
                    <div class="v-input-box required">
                        <div class="v-input-title">' . _x( 'country', 'recruit', 'app-form' ) . '</div>
                        <select class="v-select" name="country">' .
                            $country_options .
                        '</select>
                        <div class="error-message"></div>
                    </div>                   
                </div>
                <div class="ar-col vacancy-info">
                    <div class="v-input-box required">
                        <div class="v-input-title">' . _x( 'job category', 'recruit', 'app-form' ) . '</div>
                        <select class="v-select" name="category[]" multiple>' .
                            $category_options .
                        '</select> 
                        <div class="error-message"></div>
                    </div>  
                    <div class="v-input-box required">
                        <div class="v-input-title">' . _x( 'expirience', 'recruit', 'app-form' ) . '</div>
                        <input class="v-input" type="text" name="expirience" value="' . $expirience . '">
                        <div class="error-message"></div>
                    </div>   
                    <div class="v-input-box required">
                        <div class="v-input-title">' . _x( 'expected salary', 'recruit', 'app-form' ) . '</div>
                        <input class="v-input" type="text" name="salary" value="' . $salary . '">
                        <div class="error-message"></div>
                    </div>
                    <div class="v-input-box required">
                        <div class="v-input-title">' . _x( 'type of employment', 'recruit', 'app-form' ) . '</div>
                        <select class="v-select" name="job_type[]" multiple>' .
                            $job_options .
                        '</select> 
                        <div class="error-message"></div>
                    </div>                                  
                </div>
            </div>
            <div class="app-content-field-box">
                <div class="v-input-box required">
                    <div class="v-input-title">' . _x( 'professional skills', 'recruit', 'app-form' ) . '</div>
                    <textarea class="v-textarea" name="content" placeholder="' . _x( 'new sentece with new line please', 'recruit', 'app-form' ) . '">' . $content . '</textarea>
                    <div class="error-message"></div>
                </div>
            </div>
            <div class="app-content-field-box">
                <div class="v-input-box">
                    <div class="v-input-title">' . _x( 'Education', 'recruit', 'app-form' ) . '</div>
                    <textarea class="v-textarea" name="education" placeholder="' . _x( 'new sentece with new line please', 'recruit', 'app-form' ) . '">' . $education . '</textarea>
                    <div class="error-message"></div>
                </div>
            </div>
            <div class="app-content-field-box">
                <div class="v-input-box">
                    <div class="v-input-title">' . _x( 'Additional Information', 'recruit', 'app-form' ) . '</div>
                    <textarea class="v-textarea" name="add_info" placeholder="' . _x( 'new sentece with new line please', 'recruit', 'app-form' ) . '">' . $add_info . '</textarea>
                    <div class="error-message"></div>
                </div>
            </div>
            <div class="ar-row">
                <div class="ar-col lang-data">
                    <div class="v-input-box lang-box">
                        <div class="v-input-title">' . _x( 'Languages', 'recruit', 'app-form' ) . '</div>
                        <select class="v-lang-select" name="language[]" multiple>' .
                            $language_options .
                        '</select>   
                        <div class="error-message"></div>                      
                    </div>
                </div> 
            </div>' .
            $lj_html .
            '<input type="hidden" name="user_id" value="' . $user->ID . '">
            <div class="form-controls">
                <button class="response-button" type="submit">' . _x( 'save resume', 'recruit', 'app-form' ) . '</button>
                <a class="remove-resume" href="#">' . _x( 'remove resume', 'recruit', 'app-form' ) . '</a>
            </div>    
        </form>';

    $out .= $raw;

    return $out;

}




function recruit_save_resume() {

    $lang = qtranxf_getLanguage();

    $resume_id = $_POST['resume_id'];
    $user_id = $_POST['user_id'];
    $remove_label = false;
    if ( $resume_id == 0 ) {
        $empty_resume = new WP_Query( array( 'post_type' => 'resume', 'posts_per_page' => -1, 'author' => $user_id, 'meta_query' => array( array( 'key' => 'saved', 'value' => 0, 'compare' => '=' ) ) ) );
        $resume_id = $empty_resume->posts[0];
        $resume_id = $resume_id->ID;
        $remove_label = true;
    }


    if ( isset( $_POST['title'] ) ) {
        $saved_title = get_post_field( 'post_title', $resume_id, 'raw' );
        $title = recruit_insert_localized_value( $saved_title, $_POST['title'], $lang );
    }


    if ( isset( $_POST['content'] ) ) {
        $saved_content = get_post_field( 'post_content', $resume_id, 'raw' );
        $content = recruit_insert_localized_value( $saved_content, $_POST['content'], $lang );
    }

    //remove_filter( 'get_post_metadata', 'qtranxf_filter_postmeta', 5, 4 );

    if ( isset( $_POST['fname'] ) ) {
        $saved_fname = get_post_meta( $resume_id, 'fname', true );
        $fname = recruit_insert_localized_value( $saved_fname, $_POST['fname'], $lang );
        update_post_meta( $resume_id, 'fname', $fname );
    }

    if ( isset( $_POST['sname'] ) ) {
        $saved_sname = get_post_meta( $resume_id, 'sname', true );
        $sname = recruit_insert_localized_value( $saved_sname, $_POST['sname'], $lang );
        update_post_meta( $resume_id, 'sname', $sname );
    }


    if ( isset( $_POST['salary'] ) ) {
        $sname = $_POST['salary'];
        update_post_meta( $resume_id, 'salary', $sname );
    }

    if ( isset( $_POST['email'] ) ) {
        $email = $_POST['email'];
        update_post_meta( $resume_id, 'email', $email );
    }

    if ( isset( $_POST['phone'] ) ) {
        $phone = $_POST['phone'];
        update_post_meta( $resume_id, 'phone', $phone );
    }

    if ( isset( $_POST['birthdate'] ) ) {
        $birthdate = strtotime( $_POST['birthdate'] );
        update_post_meta( $resume_id, 'birthdate', $birthdate );
    }


    if ( isset( $_POST['expirience'] ) ) {
        $expirience = $_POST['expirience'];
        update_post_meta( $resume_id, 'expirience', $expirience );
    }


    if ( isset( $_POST['country'] ) ) {
        $country = $_POST['country'];
        if ( strlen( $country ) > 0 ) {
            wp_set_object_terms( $resume_id, $country, 'city_cat', false );
        }
    }
    else {
        wp_delete_object_term_relationships($resume_id, 'city_cat');
    }



    if ( isset( $_POST['img'] ) ) {
        $img = $_POST['img'];
        set_post_thumbnail( $resume_id, $img );
    }


    if ( isset( $_POST['category'] ) ) {
        $category = $_POST['category'];
        $a = wp_set_object_terms( $resume_id, $category, 'resume_cat', false );
    }


    if ( isset( $_POST['job_type'] ) ) {
        $jobs = $_POST['job_type'];
        if ( is_array( $jobs ) ) {
            wp_set_object_terms( $resume_id, $jobs, 'job_cat', false );
        }
    }
    else {
        wp_delete_object_term_relationships( $resume_id, 'job_cat' );
    }


    if ( isset( $_POST['language'] ) ) {
        $languages = $_POST['language'];
        if ( is_array( $languages ) ) {
            $l_data = array();
            foreach( $languages as $language ) {
                $current = get_term_by( 'slug', $language, 'language_cat' );
                if ( $current->parent != 0 ) {
                    $parent = get_term_by( 'id', $current->parent, 'language_cat' );
                    if ( !in_array( $parent->slug, $languages ) ) {
                        $l_data[] = $parent->slug;
                        $l_data[] = $language;
                    }
                    else {
                        $l_data[] = $language;
                    }
                }
                else {
                    $childs = get_terms( array( 'taxonomy' => 'language_cat', 'orderby' => 'id', 'child_of' => $current->term_id, 'hide_empty' => false ) );
                    $has_child_term = false;
                    foreach( $childs as $child ) {
                        if ( in_array( $child->slug, $languages ) ) { $has_child_term = true; }
                    }
                    if ( !$has_child_term ) {
                        $l_data[] = $language;
                        $l_data[] = $childs[0]->slug;
                    }
                    else {
                        $l_data[] = $language;
                    }
                }
            }
            $a = 1;
            wp_set_object_terms( $resume_id, $l_data, 'language_cat', false );
        }
    }
    else {
        wp_delete_object_term_relationships( $resume_id, 'language_cat' );
    }


    if ( isset( $_POST['gender'] ) ) {
        $gender = $_POST['gender'];
        update_post_meta( $resume_id, 'gender', $gender );
    }

    $resume = get_post( $resume_id );

    $saved_lastjobs = get_post_meta( $resume_id, 'lastjobs', true );
    if ( isset( $_POST['lastjobs'] ) ) {
        $lastjobs = $_POST['lastjobs'];
        $values = array();
        foreach( $lastjobs as $i => $lastjob ) {
            $lastjob['start_date'] = strtotime( '01.' . $lastjob['start_date'] );
            $lastjob['end_date'] = strtotime( '01.' . $lastjob['end_date'] );
            $lastjob['current_here'] = ( isset( $lastjob['current_here'] ) && $lastjob['current_here'] == 'on' ) ? 1 : 0;
            $company_name = isset( $saved_lastjobs[$i]['company_name'] ) ? $saved_lastjobs[$i]['company_name'] : '';
            $lastjob['company_name'] = recruit_insert_localized_value( $company_name, $lastjob['company_name'], $lang );
            $company_branch = isset( $saved_lastjobs[$i]['company_branch'] ) ? $saved_lastjobs[$i]['company_branch'] : '';
            $lastjob['company_branch'] = recruit_insert_localized_value( $company_branch, $lastjob['company_branch'], $lang );
            $status = isset( $saved_lastjobs[$i]['status'] ) ? $saved_lastjobs[$i]['status'] : '';
            $lastjob['status'] = recruit_insert_localized_value( $status, $lastjob['status'], $lang );
            $last_content = isset( $saved_lastjobs[$i]['content'] ) ? $saved_lastjobs[$i]['content'] : '';
            $lastjob['content'] = recruit_insert_localized_value( $last_content, $lastjob['content'], $lang );
            $values[] = $lastjob;
        }
        update_post_meta( $resume_id, 'lastjobs', $values );
    }


    if ( isset( $_POST['education'] ) ) {
        $saved_education = get_post_meta( $resume_id, 'education', true );
        $education = recruit_insert_localized_value( $saved_education, $_POST['education'], $lang );
        update_post_meta( $resume_id, 'education', $education );
    }


    if ( isset( $_POST['add_info'] ) ) {
        $saved_add_info = get_post_meta( $resume_id, 'add_info', true );
        $add_info = recruit_insert_localized_value( $saved_add_info, $_POST['add_info'], $lang );
        update_post_meta( $resume_id, 'add_info', $add_info );
    }

    //add_filter( 'get_post_metadata', 'qtranxf_filter_postmeta', 5, 4 );

    if ( $remove_label ) {
        delete_post_meta( $resume_id, 'saved' );
        $new_line = recruit_get_resume_line( $resume );
    }
    else {
        $new_line = 0;
    }

    wp_update_post( array( 'ID' => $resume_id, 'post_title' => $title, 'post_content' => $content ) );

    recruit_update_user_info( $user_id, $resume_id );

    echo json_encode( array( 'result' => 1, 'content' => recruit_render_accept_resume( $resume ), 'new_line' => $new_line ) );
    wp_die();

}




function recruit_resume_metabox() {

    global $post;

    $lang = qtranxf_getLanguage();

    $user = wp_get_current_user();
    $user_data = $user->get_userdata( $user->ID );

    $resume = $post;

    $meta = get_post_meta( $resume->ID );

    $fname = isset( $meta['fname'] ) ? is_array( $meta['fname'] ) ? $meta['fname'][0] : $meta['fname'] : '';
    $sname = isset( $meta['sname'] ) ? is_array( $meta['sname'] ) ? $meta['sname'][0] : $meta['sname'] : '';

    $education = isset( $meta['education'] ) ? is_array( $meta['education'] ) ? $meta['education'][0] : $meta['education'] : '';
    $add_info = isset( $meta['add_info'] ) ? is_array( $meta['add_info'] ) ? $meta['add_info'][0] : $meta['add_info'] : '';

    $lastjobs = get_post_meta( $resume->ID, 'lastjobs', true );
    if ( $lastjobs == '' ) {
        $lastjobs = array( 0 => array( 'company_name' => '', 'company_branch' => '', 'status' => '', 'start_date' => time(), 'end_date' => time(), 'current_here' => 0 ) );
    }
    $lj_html = '<div class="lj-block"><a href="#" class="lj-control add-last-job">' . _x( 'add last job', 'recruit', 'app-form' ) . '</a>';
    foreach( $lastjobs as $i => $lj ) {
        $lj = $lastjobs[$i];
        $lj_inst = recruit_get_last_job( $lj, $i, false );
        $lj_html .= $lj_inst;
        if ( $i == 0 ) {
            $raw = preg_replace( '/class=.lj-box./', 'class="lj-box-raw"', $lj_inst );
        }
    }
    $lj_html .= '</div>';


    $out =
        '<div class="resume-metabox">
             <div class="ad-input-box">
                 <div class="ad-input-title">First Name</div>
                 <input class="ad-input translatable i18n-multilingual" name="fname" value="' . $fname . '">
             </div>
             <div class="ad-input-box">
                 <div class="ad-input-title">Last Name</div>
                 <input class="ad-input i18n-multilingual" name="sname" value="' . $sname . '">
             </div>
             <div class="ad-input-box">
                 <div class="ad-input-title">Education</div>
                 <textarea class="ad-input i18n-multilingual" name="education">' . $education . '</textarea>
             </div>
             <div class="ad-input-box">
                 <div class="ad-input-title">Additional Info</div>
                 <textarea class="ad-input i18n-multilingual" name="add_info">' . $add_info . '</textarea>
             </div>' .
             $lj_html .
         '</div>';

    echo $out;

}



add_action( 'save_post_resume', 'recruit_admin_save_resume' );

function recruit_admin_save_resume( $resume_id ) {

    if ( isset( $_POST['fname'] ) ) {
        $fname = $_POST['fname'];
        update_post_meta( $resume_id, 'fname', $fname );
    }

    if ( isset( $_POST['sname'] ) ) {
        $sname = $_POST['sname'];
        update_post_meta( $resume_id, 'sname', $sname );
    }

    if ( isset( $_POST['education'] ) ) {
        $education = $_POST['education'];
        update_post_meta( $resume_id, 'education', $education );
    }


    if ( isset( $_POST['add_info'] ) ) {
        $add_info = $_POST['add_info'];
        update_post_meta( $resume_id, 'add_info', $add_info );
    }

    $saved_lastjobs = get_post_meta( $resume_id, 'lastjobs', true );

    if ( isset( $_POST['lastjobs'] ) ) {
        $lastjobs = $_POST['lastjobs'];
        $values = array();
        foreach( $lastjobs as $i => $lastjob ) {
            $lastjob['start_date'] = ( isset( $saved_lastjobs[$i] ) && isset( $saved_lastjobs[$i]['start_date'] ) ) ? $saved_lastjobs[$i]['start_date'] : strtotime("first day of this month");
            $lastjob['end_date'] = ( isset( $saved_lastjobs[$i] ) && isset( $saved_lastjobs[$i]['end_date'] ) ) ? $saved_lastjobs[$i]['end_date'] : strtotime("first day of this month");
            $lastjob['current_here'] = ( isset( $saved_lastjobs[$i] ) && isset ( $saved_lastjobs[$i]['current_here'] ) && ( $saved_lastjobs[$i]['current_here'] == 'on' ) ) ? 1 : 0;
            $values[] = $lastjob;
        }
        update_post_meta( $resume_id, 'lastjobs', $values );
    }

}



function recruit_insert_localized_value( $old_val, $new_val, $lang ) {

    /*if ( strlen( $old_val ) == 0 ) {
        if ( strlen( $new_val ) > 0 ) {
            $out = '[:' . $lang . ']' . $new_val;
        }
        else {
            $out = '';
        }
    }
    else {
        if ( preg_match( '/\[\:' . $lang . '\]/', $old_val ) ) {
            $out = preg_replace( '/\[\:' . $lang . '\].+((\[\:\])|(\[\:.{2,3}\])|($))/', '[:' . $lang . ']' . $new_val . "$2", $old_val );
        }
        else {
            if ( $old_val != $new_val ) {
                $out = $old_val . '[:' . $lang . ']' . $new_val . '[:]';
            }
            else {
                $out = '[:' . $lang . ']' . $new_val . '[:]';
            }
        }
    }*/

    return $new_val;

}



function recruit_remove_resume() {

    $resume_id = $_POST['resume_id'];
    $user_id = $_POST['user_id'];

    $result = false;
    $result = wp_delete_post( $resume_id, true );

    recruit_update_user_info( $user_id, $resume_id, 'remove_resume' );

    if ( is_object( $result ) || 1 == 1 ) {
        echo json_encode( array( 'result' => 1, 'resume_id' => $resume_id ) );
    }
    else {
        echo json_encode( array( 'result' => 0, 'resume_id' => $resume_id ) );
    }
    wp_die();

}



function get_user_resume() {

    $resume_id = (int)$_POST['resume_id'];
    $user_id = $_POST['user_id'];
    $user_data = get_userdata( $user_id );

    if ( $resume_id == 0 ) {
        $empty_resume = new WP_Query( array( 'post_type' => 'resume', 'posts_per_page' => -1, 'author' => $user_id, 'meta_query' => array( array( 'key' => 'saved', 'value' => 0, 'compare' => '=' ) ) ) );
        $a = is_array( $empty_resume->posts );
        $count = is_array( $empty_resume->posts ) ? count( $empty_resume->posts ) : 0;
        if ( $count == 0 ) {
            $resume_id = wp_insert_post( array(
                'post_title'             => 'Your new resume',
                'post_content'           => 'Your new resume content',
                'post_status'            => 'publish',
                'post_author'            => $user_id,
                'post_type'              => 'resume',
                'meta_input'             => array(
                    'email'   => $user_data->user_email,
                    'user_id' => $user_id,
                    'saved'   => 0
                ) )
            );
        }
        else {
            $resume_id = $empty_resume->posts[0];
            $resume_id = $resume_id->ID;
        }
    }

    $resume = get_post( $resume_id );

    echo json_encode( array( 'result' => 1, 'content' => recruit_render_accept_resume( $resume ) ) );

    wp_die();



}




function get_date_select() {

    $request = urldecode( $_SERVER['REQUEST_URI'] );
    if ( preg_match( '/(resumes|vacancies)\/$/', $request ) ) {
        $pre_link = $request . '?words=';
    }
    else {
        $pre_link = preg_replace( array ( '/(&|\?)period=[0-9]+/', '/page\/[0-9]+\//' ), '', $request );
    }

    $delimeter = strpos( '?', $pre_link ) ? '&' : '?';

    $selected = array( !strpos( $request, 'period' ) ? 'selected' : '', strpos( $request, '&period=1' ) ? 'selected' : '', strpos( $request, '&period=7' ) ? 'selected' : '', strpos( $request, '&period=30' ) ? 'selected' : '' );
    $out =
        '<select class="date-select" name="date">
             <option value="' . site_url() . $pre_link . '" ' . $selected[0] . '>all</option>
             <option value="' . site_url() . $pre_link . $delimeter . 'period=1' . '" ' . $selected[1] . '>1 day</option>
             <option value="' . site_url() . $pre_link . $delimeter . 'period=7' . '" ' . $selected[2] . '>7 days</option>
             <option value="' . site_url() . $pre_link . $delimeter . 'period=30' .  '" ' . $selected[3] . '>1 month</option>
         </select>';

    return $out;

}




function recruit_get_diff_in_days( $date ) {

    $diff = time() - $date;
    $diff = $diff / 60 / 60 / 24;

    if ( $diff < 1 ) return 1;
    else return round( $diff );

}




function recruit_get_saved_vacancys_page() {

    global $user;

    $info = isset( $_COOKIE['wistra-info'] ) ? $_COOKIE['wistra-info'] : '';
    $info = json_decode( stripslashes ( $info ), true );

    $user_id = isset( $_POST['user_id'] ) ? $_POST['user_id'] : $user->ID;
    if ( $user_id == 0 ) {
        echo json_encode( array( 'result' => 0, 'content' => 'unauthorized attempt!' ) );
        wp_die();
    }

    $vacancies = isset( $info['vacancies'] ) && is_array( $info['vacancies'] ) ? $info['vacancies'] : array();

    $out = '<div class="selected-vacancys">';

    if ( count( $vacancies ) == 0 ) {
        $out .= _x( 'You have not selected vacancies yet', 'recruit', 'app-vacancy' );
    }
    else {
        foreach( $vacancies as $vacancy ) {

            $out .=
                '<div class="vacancy-box" data-vacancy-id="' . $vacancy . '">  
                    <div class="send-resume-box">
                        <div class="vb-button send-resume">' . _x( 'send resume', 'recruit', 'send-resume-form' ) . '</div>
                        <div class="vb-button remove-from-selection">' . _x( 'remove from selection', 'recruit', 'send-resume-form' ) . '</div>
                    </div>';

            $out .= recruit_get_arcvive_vacancy( $vacancy );
            $out .= '</div>';
        }
    }

    $out .= '</div>';

    if( wp_doing_ajax() ) {
        echo json_encode(array('result' => 1, 'content' => $out));
        wp_die();
    }
    else return $out;

}





function recruit_get_resume_to_send() {

    global $wpdb;

    $user_id = $_POST['user_id'];
    $vacancy_id = $_POST['vacancy_id'];

    $user_info = get_user_meta( $user_id, 'user_info', true );
    $linked_resumes = $user_info == '' ? array() : $user_info['linked_resumes'];

    $out = '';
    foreach( $linked_resumes as $resume_id ) {
        $resume = get_post( $resume_id );
        $meta = get_post_meta( $resume_id );
        $fname = isset( $meta['fname'] ) ? is_array( $meta['fname'] ) ? $meta['fname'][0] : $meta['fname'] : '';
        $sname = isset( $meta['sname'] ) ? is_array( $meta['sname'] ) ? $meta['sname'][0] : $meta['sname'] : '';
        $email = isset( $meta['email'] ) ? is_array( $meta['email'] ) ? $meta['email'][0] : $meta['email'] : '';
        $phone = isset( $meta['phone'] ) ? is_array( $meta['phone'] ) ? $meta['phone'][0] : $meta['phone'] : '';
        $salary = isset( $meta['salary'] ) ? is_array( $meta['salary'] ) ? $meta['salary'][0] : $meta['salary'] : '';
        $img = get_the_post_thumbnail_url( $resume_id, array( 90, 100 ) );
        if ( !$img ) {
            $img_id = recruit_get_image_id( 'no-man.jpg' );
            $img = wp_get_attachment_image_url( $img_id, 'resume-archive' );
        }
        $sended = $wpdb->get_results( "SELECT * FROM " . $wpdb->prefix . "wistra WHERE resume_id=" . $resume_id . " AND vacancy_id=" . $vacancy_id, ARRAY_A  );
        $sended_html = ''; $sended_array = array();
        if ( count( $sended ) > 0 ) {
            $sended_html = '<div class="sended-times">' . _x( 'You have send this resume to this vacancy at : ', 'recruit', 'send-resume-form' );
            foreach( $sended as $s_data ) {
                $sended_array[] = '<span>' . $s_data['date'] . '</span>';
            }
            $sended_html .= implode( ', ', $sended_array );
            $sended_html .= '</div>';
        }
        $out .=
            '<div class="linked-resume-box" data-vacancy-id="' . $vacancy_id . '" data-resume-id="' . $resume_id . '" data-user-id="' . $user_id . '">
                 <div class="selection-checkbox"><input type="checkbox" name="selected_resume"></div>
                 <div class="linked-resume">
                     <div class="lr-img-box"><img src="' . $img . '"></div>
                     <div class="lr-content">
                         <a class="lr-title" href="' . site_url() . '/applicant_account/?resume_id=' . $resume_id . '">' . get_the_title( $resume_id ) . '</a>
                         <div class="lr-info">
                             <div class="lr-name">' . $fname . ' ' . $sname . '</div>
                             <div class="lr-email">' . $email . '</div>
                             <div class="lr-phone">' . $phone . '</div>
                         </div>' .
                         $sended_html .
                     '</div>
                 </div>
             </div>';
        //$out .= recruit_get_archive_resume( $resume_id );
    }

    echo json_encode( array( 'result' => 1, 'content' => $out ) );
    wp_die();

}




function recruit_send_resume_to_vacancy() {

    global $wpdb;

    $user_id = $_POST['user_id'];
    $resume_id = $_POST['resume_id'];
    $vacancy_id = $_POST['vacancy_id'];

    $email_to = get_post_meta( $vacancy_id, 'email', true );
    if ( $email_to == '' ) {
        echo json_encode( array( 'result' => 0, 'content' => _x( 'technical error emailing', 'recruit', 'send-resume-form' ) ) );
        wp_die();
    }

    $result = recruit_send_email_to_vacancy( $vacancy_id, $resume_id, $user_id );
    if ( $result ) {
        $a = $wpdb->insert( $wpdb->prefix . 'wistra', array(
            'user_id' => $user_id,
            'vacancy_id' => $vacancy_id,
            'resume_id' => $resume_id,
            'date' => date( 'Y-m-d H:i:s', time() )
        ));
    }

    echo json_encode( array( 'result' => $result, 'content' => $result ? _x( 'Answer is sended succesfully', 'recruit', 'send-resume-form' ) : _x( 'We encountered with email troubles', 'recruit', 'send-resume-form' ) ) );
    wp_die();

}


function recruit_get_answers_history() {

    global $wpdb, $user;

    $user_id = isset( $_POST['user_id'] ) ? $_POST['user_id'] : $user->ID;
    $sended_lines = $wpdb->get_results( "SELECT * FROM " . $wpdb->prefix . "wistra WHERE user_id=" . $user_id . ' ORDER BY vacancy_id, date DESC', ARRAY_A  );

    $out = '<div class="sended-resumes-box">';
    foreach( $sended_lines as $info ) {
        $v_countrys = wp_get_post_terms( $info['vacancy_id'], 'city_cat', array( 'fields' => 'all' ) );
        $v_country = $v_city = _x( 'Not specified', 'recruit', 'vacancy-response' );
        foreach( $v_countrys as $iv_country ) {
            if ( $iv_country->parent == 0 ) {
                $v_country = $iv_country->name;
            }
            else {
                $vcity = $iv_country->name;
            }
        }
        $v_meta = get_post_meta( $info['vacancy_id'] );
        $salary = isset( $v_meta['salary'] ) && is_array ( $v_meta['salary'] ) && $v_meta['salary'][0] > 0 ? $v_meta['salary'][0] : 0;
        $out .=
            '<div class="sended-info-box">
                 <div class="si-date">' . $info['date'] . '</div>
                 <div class="si-resume"><a href="' . get_permalink( $info['resume_id'] ) . '">' . get_the_title( $info['resume_id'] ) . '</a></div>
                 <div class="si-vacancy">
                     <a class="vacancy-info" href="' . get_permalink( $info['vacancy_id'] ) . '">' .
                         '<div class="si-v-title">' . get_the_title( $info['vacancy_id'] ) . '</div>
                          <div class="si-v-info">
                              <div class="vacancy-info-country">' . $v_country . '</div>
                              <div class="vacancy-info-city">' . $v_city . '</div>
                              <div class="vacancy-info-salary">' . $salary . '</div>
                          </div>
                     </a>
                 </div>
             </div>';
    }
    $out .= '</div>';

    if( wp_doing_ajax() ) {
        echo json_encode(array('result' => 0, 'content' => $out));
        wp_die();
    }
    else return $out;

}



function recruit_get_user_subscriptions() {

    global $wpdb, $user;

    $user_id = isset( $_POST['user_id'] ) ? $_POST['user_id'] : $user->ID;
    $info = get_user_meta( $user_id, 'user_info', true );
    $subscription = isset( $info['subscription'] ) ? $info['subscription'] : array( 'resume_cats' => array(), 'job_cats' => array(), 'salary' => 0 );


    $category_options = '';
    $cats = get_terms( array( 'taxonomy' => 'resume_cat', 'hide_empty' => false ) );
    $categories = isset( $subscription['resume_cats'] ) ? $subscription['resume_cats'] : array();
    foreach( $cats as $icategory ) {
        if ( in_array( $icategory->term_id, $categories ) ) { $selected = ' selected'; } else { $selected = ''; }
        $category_options .= '<option value="' . $icategory->term_id . '" ' . $selected . '>' . $icategory->name . '</option>';
    }

    $job_options = '';
    $jobs = get_terms( array( 'taxonomy' => 'job_cat', 'hide_empty' => false ) );
    $job_cats = isset( $subscription['job_cats'] ) ? $subscription['job_cats'] : array();
    foreach( $jobs as $ijob ) {
        if ( in_array( $ijob->term_id, $job_cats ) ) { $selected = ' selected'; } else { $selected = ''; }
        $job_options .= '<option value="' . $ijob->term_id . '" ' . $selected . '>' . $ijob->name . '</option>';
    }

    $salary = $subscription['salary'];


    $out =
        '<form class="subscription-form" method="POST">
            <div class="v-input-box">
                <div class="v-input-title">' . _x( 'desired vacancy', 'recruit', 'app-form' ) . '</div>
                    <select class="v-select" name="category[]" multiple>' .
                        $category_options .
                    '</select> 
                </div>
            </div>
            <div class="v-input-box">
                <div class="v-input-title">' . _x( 'type of employment', 'recruit', 'app-form' ) . '</div>
                     <select class="v-select" name="job_type[]" multiple>' .
                         $job_options .
                     '</select> 
                </div>
            </div>
            <div class="v-input-box">
                <div class="v-input-title">' . _x( 'exspected salary', 'recruit', 'app-form' ) . '</div>
                <input class="v-input" type="text" name="salary" value="' . $salary . '">
            </div>            
            <button class="response-button" type="submit">' . _x( 'save subscribtion settings', 'recruit', 'app-form' ) . '</button>
        </form>';


    if( wp_doing_ajax() ) {
        echo json_encode(array('result' => 0, 'content' => $out));
        wp_die();
    }
    else return $out;

}


function recruit_save_user_subscription() {

    $user_id = $_POST['user_id'];

    $info = get_user_meta( $user_id, 'user_info', true );
    $subscription = isset( $info['subscription'] ) ? $info['subscription'] : array( 'resume_cats' => array(), 'job_cats' => array(), 'salary' => 0 );

    $subscription['resume_cats'] = isset( $_POST['category'] ) ? $_POST['category'] : array();
    $subscription['job_cats'] = isset( $_POST['job_type'] ) ? $_POST['job_type'] : array();
    $subscription['salary'] = $_POST['salary'];
    $info['subscription'] = $subscription;

    $sql_result = update_user_meta( $user_id, 'user_info', $info );

    recruit_do_applicants_subscription();

    echo json_encode( array('result' => 1, 'content' => _x( 'settings saved', 'recruit', 'app-form' ) ) );
    wp_die();

}



function recruit_do_applicants_subscription() {

    $users = get_users( array( 'role' => 'applicant' ));

    foreach( $users as $user ) {

        $info = get_user_meta( $user->ID, 'user_info', true );
        if ( isset( $info['subscription'] ) ) {
            $data = $info['subscription'];
            $last_sended = isset( $data['last_sended'] ) ? $data['last_sended'] : time();
            if ( ( time() - $last_sended ) > 60*60*24*7 || 1 == 1 ) {
                $tax_query = $meta_query = array( 'relation' => 'AND' );
                $resume_query = $jobs_query = array();
                if ( isset( $data['resume_cats'] ) && is_array( $data['resume_cats'] ) && count( $data['resume_cats'] ) > 0 ) {
                    $resume_query = array( 'taxonomy' => 'resume_cat', 'field' => 'id', 'terms' => $data['resume_cats'] );
                    $tax_query[] = $resume_query;
                }
                if ( isset( $data['job_cats'] ) && is_array( $data['job_cats'] ) && count( $data['job_cats'] ) > 0 ) {
                    $jobs_query = array( 'taxonomy' => 'job_cat', 'field' => 'id', 'terms' => $data['job_cats'] );
                    $tax_query[] = $jobs_query;
                }
                if ( isset( $data['salary'] ) ) {
                    $meta_query[] = array( 'key' => 'salary', 'compare' => '>=', 'value' => $data['salary'] );
                }
                $query = new WP_Query( array( 'post_type' => 'vacancy', 'posts_per_page' => -1, 'tax_query' => $tax_query, 'meta_query' => $meta_query, 'date_query' => array( 'column' => 'post_modified', 'year' => date('Y'), 'w' => date('W') ) ) );
                if ( count( $query->posts ) > 0 ) {
                    $result = recruit_subscription_to_applicant( $user, $query->posts );
                    if ( $result ) {
                        $data['last_sended'] = time();
                        $info['subscription'] = $data;
                        //update_user_meta( $user->ID, 'user_info', $info );
                    }
                }
            }
        }

    }

}