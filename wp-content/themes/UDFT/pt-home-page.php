<?php
/**
 * Template Name: Home Template
 * The template for display Home Page
 *
 */
get_header();

?>

<section class="home-section s1-box">
    <div class="container">
        <div class="s1 row">
            <div class="s1-left col col-md-6 col-sm-12">
                <h2><?php echo _x( 'About us', 'recruit', 'home' );?></h2>
                <div class="s-text">
                    <p><?php echo _x( 'Since 2011, the company Wistra Job&Karriee has helped to find work in the best EU IT projects for 2285 job seekers. We bring together the best minds around the world in order you give the life to really cool ideas and change the planet for the better with the help of code.', 'recruit', 'home' );?></p>
                    <p><?php echo _x( 'We help not only with careers, but also with official employment and the right to work in Germany. Our experience in this field guarantees you a Blue Card and other necessary documents for legal residence in the EU.', 'home' );?></p>
                    <p class="blued"><?php echo _x( 'From you - your knowledge and abilities.', 'recruit', 'home' );?></p>
                    <p class="blued"><?php echo _x( 'from us - concern for your better future!', 'recruit', 'home' );?></p>
                </div>
            </div>
            <div class="s1-right col col-md-6 col-sm-12">
                <!--<div class="s1-bg"></div>-->
                <div class="s1-img"></div>
            </div>
        </div>
    </div>
</section>





<section class="home-section s3-box">
    <div class="section-header">
        <h2 class="large"><?php echo _x( 'Top offers', 'recruit', 'home' );?></h2>
        <div><?php echo _x( 'The most requested vacancies from employers', 'recruit', 'home' );?></div>
    </div>
    <div class="container">
        <div class="s3 row">
            <?php

            $vacancies = get_posts( array( 'post_type' => 'vacancy', 'numberposts' => 6 ) );
            foreach( $vacancies as $vacancy ) {
                echo recruit_get_arcvive_vacancy( $vacancy );
            }

            ?>
        </div>
        <a class="archive-more-link" href="<?php echo get_post_type_archive_link( 'vacancy' );?>"><?php echo _x( 'View full list', 'recruit', 'home' );?></a>
    </div>
</section>


<?php
   echo '<div class="tb-box"><div class="tb-bg"><div class="container">';
   echo get_texted_banner( array( 'text' => 'The Right Job Opportunity For Your IT-Career Every Single One Of Our Jobs Has Some Kind Of Flexibility Option -  Such As Telecommuting, A Part-Time', 'link' => '#' ) );
   echo '</div></div></div>'
?>



<section class="home-section s2-box">
    <div class="section-header">
        <h2 class="blog-heading"><?php echo _x( 'blogs&news', 'recruit', 'home' );?></h2>
    </div>
    <div class="container p0">
        <div class="posts-carousel row">
            <?php echo recruit_get_posts_carousel(); ?>
        </div>
    </div>
</section>





<section class="home-section s4-box">
    <div class="section-header">
        <h2><?php echo _x( 'Partner companies ', 'recruit', 'home' );?></h2>
        <div><?php echo _x( 'The largest companies in Germany are waiting for you. Build your dream career', 'recruit', 'home' );?></div>
    </div>
    <div class="container">
        <div class="s4 row">
            <?php

            $employers = get_posts( array( 'post_type' => 'employer', 'numberposts' => 20 ) );
            foreach( $employers as $employer ) {
                echo recruit_get_arcvive_employer( $employer );
            }

            ?>
        </div>
        <a class="archive-more-link" href="<?php echo get_post_type_archive_link( 'employer' );?>"><?php echo _x( 'View full list', 'recruit', 'home' );?></a>
    </div>
</section>





<section class="home-section reviews-carousel s5-box">
    <div class="section-header">
        <h2><?php echo _x( 'Real reviews', 'recruit', 'home' );?></h2>
    </div>
    <div class="container">
        <div class="s5">
            <?php

            $reviews = get_posts( array( 'post_type' => 'review', 'numberposts' => -1 ) );
            $out = '<div class="reviews-container"><div class="reviews-box">';
            foreach( $reviews as $review ) {
                $img = get_the_post_thumbnail_url( $review->ID, 'review-archive' );
                $c = apply_filters('the_content', get_post_field('post_content', $review->ID ) );
                $content = '<div class="review-content"><div class="rc-info"><div class="rc-title">' . get_the_title( $review ) . '</div>' . $c . '</div></div>';
                $out .= '<div class="archive-review"><div class="img-box"><img src="' . $img . '"></div>' . $content . '</div>';
            }
            $out .= '</div></div>';

            echo $out;

            ?>
        </div>
    </div>
</section>



<section class="home-section s6-box">
    <div class="section-header">
        <h2><?php echo _x( 'How we are working', 'recruit', 'home' );?></h2>
    </div>
    <div class="container">
        <div class="s6 row">
            <div class="s6 col col-sm-6 col-md-3 col-sm-12">
                <img src="<?php echo get_stylesheet_directory_uri(); ?>/img/d1.jpg">
                <div class="s6-content"><?php echo _x( 'The first thing you need to do is leave a request on our website and upload your resume. We will help you with its translation into English and German.', 'recruit', 'home' );?></div>
            </div>
            <div class="s6 col col-sm-6 col-md-3 col-sm-12">
                <img src="<?php echo get_stylesheet_directory_uri(); ?>/img/d2.jpg">
                <div class="s6-content"><?php echo _x( 'Soon our employee will contact you and offer several vacancies that agree with your profile and qualifications. Be prepared for the fact that we will invite you for an interview (upon request from the employer)', 'recruit', 'home' );?></div>
            </div>
            <div class="s6 col col-sm-6 col-md-3 col-sm-12">
                <img src="<?php echo get_stylesheet_directory_uri(); ?>/img/d3.jpg">
                <div class="s6-content"><?php echo _x( 'The next step is the signing of an agreement, where our company guarantees that your employment will be legal, undertakes to help with the necessary documents and get a Blue Card.', 'recruit', 'home' ); ?></div>
            </div>
            <div class="s6 col col-sm-6 col-md-3 col-sm-12">
                <img src="<?php echo get_stylesheet_directory_uri(); ?>/img/d4.jpg">
                <div class="s6-content"><?php echo _x( 'Upload CV', 'recruit', 'home' );?></div>
            </div>
        </div>
    </div>
</section>


<?php echo '<div class="banner-bottomed">' . get_site_banner( 'ban_adv_02.png', site_url() . '/vacancies/it/programmer-wordpress/' ) . '</div>'; ?>


<section class="home-section form-section s7-box">
    <div class="container">
        <div class="s6 row">
            <div class="q-box col col-md-4">
                <div class="b-title"><?php echo _x( 'Have questions?', 'recruit', 'home' );?></div>
                <div class="b-subtitle"><?php echo _x( 'We will be happy to answer them', 'recruit', 'home' );?></div>
                <div class="email-box fa fa-envelope"><a href="mailto:info@wistra.de">info@wistra.de</a></div>
            </div>
            <div class="form-box col col-md-8">
                <div class="b-title"><?php echo _x( 'Fill the form, please.', 'recruit', 'home' );?></div>
                <form class="site-form main-form" action="" method="POST">
                    <div class="form-content">
                        <div class="inputs-box">
                            <div class="v-input-box"><input type="text" name="name" placeholder="<?php echo _x( 'Name *', 'recruit', 'main-form' );?>"><div class="error-message"></div></div>
                            <div class="v-input-box"><input type="text" name="email" placeholder="<?php echo _x( 'Email *', 'recruit', 'main-form' );?>"><div class="error-message"></div></div>
                            <div class="v-input-box"><input type="text" name="phone" placeholder="<?php echo _x( 'Phone *', 'recruit', 'main-form' );?>"><div class="error-message"></div></div>
                        </div>
                        <div class="v-input-box"><textarea name="message" placeholder="<?php echo _x( 'Message *', 'recruit', 'main-form' );?>"></textarea><div class="error-message"></div></div>
                    </div>
                    <button class="response-button" type="submit"><?php echo _x( 'Send', 'recruit', 'main-form' );?></button>
                </form>
            </div>
        </div>
    </div>
</section>


<?php

get_footer();

?>
