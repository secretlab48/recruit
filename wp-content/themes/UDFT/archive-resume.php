<?php get_header(); ?>

    <main role="main" class="archive-template resumes">
        <!-- section -->
        <section>

            <div class="container">

                <div class="content-row">
                    <div class="filter-area">
                        <?php echo get_resume_filters(); ?>
                    </div>
                    <div class="content-area">
                        <div class="date-select-box"><?php echo get_date_select(); ?></div>
                        <?php get_template_part('loop-resume'); ?>
                    </div>

                </div>

                <?php get_template_part('pagination'); ?>

            </div>

        </section>
        <!-- /section -->
    </main>

<?php get_footer(); ?>