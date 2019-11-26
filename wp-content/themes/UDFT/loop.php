<?php if (have_posts()): while (have_posts()) : the_post(); ?>
	<!-- article -->
	<article id="post-<?php the_ID(); ?>" <?php post_class('default-archive-item col col-sm-6 col-md-3'); ?>>

		<!-- post thumbnail -->
		<?php if ( has_post_thumbnail()) : ?>
			<a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>">
				<?php the_post_thumbnail( array ( 390, 258 ) );  ?>
			</a>
		<?php endif; ?>
		<!-- /post thumbnail -->

        <span class="date"><?php echo __( 'Posted', 'recruit' ) . ' ' . get_the_time('F j, Y', $post ); ?> <?php the_time('g:i a'); ?></span>

		<!-- post title -->
		<h2>
			<a href="<?php the_permalink(); ?>" title="<?php the_excerpt(); ?>"><?php the_title(); ?></a>
		</h2>
		<!-- /post title -->

	</article>
	<!-- /article -->

<?php endwhile; ?>

<?php else: ?>

	<!-- article -->
	<article class="default-archive-item col">
		<h2><?php _e( 'Sorry, nothing to display.', 'recruit' ); ?></h2>
	</article>
	<!-- /article -->

<?php endif; ?>
