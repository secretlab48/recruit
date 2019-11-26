<?php get_header(); ?>

	<main role="main">
		<!-- section -->
		<section>

            <div class="default-archive container">
                <h1><?php _e( 'Archives', 'recruit' ); ?></h1>

                <div class="row">
                    <?php get_template_part('loop'); ?>
                </div>

                <?php get_template_part('pagination'); ?>
            </div>

		</section>
		<!-- /section -->
	</main>

<?php get_footer(); ?>
