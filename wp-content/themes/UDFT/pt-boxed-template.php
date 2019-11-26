<?php
/**
 * Template Name: Boxed Template
 * The template for display Boxed Manner
 *
 */
get_header();

?>

<main role="main">

    <div class="container">

        <section>

            <h1><?php the_title(); ?></h1>

            <?php if (have_posts()): while (have_posts()) : the_post(); ?>

                <!-- article -->
                <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

                    <?php the_content(); ?>

                    <?php comments_template( '', true ); ?>

                    <br class="clear">

                    <?php edit_post_link(); ?>

                </article>
                <!-- /article -->

            <?php endwhile; ?>

            <?php else: ?>

                <!-- article -->
                <article>

                    <h2><?php _e( 'Sorry, nothing to display.', 'recruit' ); ?></h2>

                </article>
                <!-- /article -->

            <?php endif; ?>

        </section>

    </div>

</main>


<?php

get_footer();

?>
