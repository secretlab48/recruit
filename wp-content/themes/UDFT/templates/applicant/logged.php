<?php

    global $user;
    get_header();

    $resumes_class = ' active';
    $vacancy_class = $history_class = $subsribtion_class = '';
    if ( !isset( $_GET['selected-vacanies'] ) && !isset( $_GET['answers-history'] ) && !isset( $_GET['subscriptions'] ) ) {
        $resumes_class = '';
    }
    if ( isset( $_GET['selected-vacancies'] ) ) { $vacancy_class = ' opened'; }
    if ( isset( $_GET['answers-history'] ) ) { $history_class = ' opened'; }
    if ( isset( $_GET['subscriptions'] ) ) { $subsribtion_class = ' opened'; }

?>

    <section>

        <div class="container">

            <h1><?php the_title(); ?></h1>

            <div class="content-row">

                <div class="filter-area">
                    <div class="app-tab resumes">
                        <div class="app-tab-title">
                            <?php _e( 'My Resumes', 'recruit' ); ?>
                        </div>
                        <div class="app-tab-content<? echo $resumes_class; ?>" >
                            <?php echo implode( '', recruit_get_user_resumes( $user ) ); ?>
                        </div>
                    </div>
                    <div class="app-tab selected-vacancys <? echo $vacancy_class; ?>">
                        <div class="app-tab-title" data-action="recruit_get_saved_vacancys_page">
                            <?php _e( 'Selected Vacancies', 'recruit' ); ?>
                        </div>
                        <div class="app-tab-content opened">
                            <?php echo ''; ?>
                        </div>
                    </div>
                    <div class="app-tab answers-history <? echo $history_class; ?>">
                        <div class="app-tab-title" data-action="recruit_get_answers_history">
                            <?php _e( 'Answers History', 'recruit' ); ?>
                        </div>
                        <div class="app-tab-content" >
                            <?php echo ''; ?>
                        </div>
                    </div>
                    <div class="app-tab subscribtions <? echo $subsribtion_class; ?>">
                        <div class="app-tab-title" data-action="recruit_get_user_subscriptions">
                            <?php _e( 'Subscriptions', 'recruit' ); ?>
                        </div>
                        <div class="app-tab-content" >
                            <?php echo ''; ?>
                        </div>
                    </div>
                </div>
                <div class="content-area">
                    <div class="app-content">
                        <?php
                            if ( isset( $_GET['selected-vacancies'] ) ) {
                                echo recruit_get_saved_vacancys_page();
                            }
                            else if ( isset( $_GET['answers-history'] ) ) {
                                echo recruit_get_answers_history();
                            }
                            else if ( isset( $_GET['subscriptions'] ) ) {
                                echo recruit_get_user_subscriptions();
                            }
                            else {
                                echo recruit_render_accept_resume( );
                            }
                        ?>
                    </div>
                </div>

            </div>

        </div>

    </section>



<?php get_footer(); ?>