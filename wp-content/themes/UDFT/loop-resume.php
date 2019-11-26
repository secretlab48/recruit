<?php if (have_posts()): while (have_posts()) : the_post(); ?>

    <!-- article -->
    <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

        <?php
            global $post;

            $out = recruit_get_archive_resume( $post );

            echo $out;

        ?>

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
