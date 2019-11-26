<?php if (have_posts()): while (have_posts()) : the_post(); ?>

    <!-- article -->
    <article id="post-<?php the_ID(); ?>" <?php post_class( 'col col-sm-12 col-md-6' ); ?>>

        <?php

            echo recruit_get_arcvive_vacancy();

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
