<?php
    get_header();
    global $user;
?>

    <main role="main" class="archive-template vacancies" data-user-id="<?php echo $user->ID; ?>">
        <!-- section -->
        <section>

            <div class="container">

                <div class="content-row">
                    <div class="filter-area">
                        <?php echo get_vacancy_filters(); ?>
                    </div>
                    <div class="content-area">
                        <div class="date-select-box"><?php echo get_date_select(); ?></div>
                        <div class="row">
                            <?php get_template_part('loop-vacancy'); ?>
                        </div>
                    </div>

                </div>

                <?php get_template_part('pagination'); ?>

            </div>

        </section>
        <!-- /section -->
    </main>

<?php get_footer(); ?>