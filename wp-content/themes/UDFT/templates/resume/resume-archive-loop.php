<?php

$out =
    '<article id="post-' . $post->ID . '" ' . implode( ' ', get_post_class( null, $post->ID ) ) . '>';

        if ( has_post_thumbnail( $post->ID ) ) {
            $out .=
            '<a href="' . get_permalink( $post->ID ) . '" title="' . get_the_title( $post->ID ) . '">' .
                get_the_post_thumbnail( $post->ID, array(120,120) ) .
            '</a>';
        }

    $out .=
        '<h2><a href="' . get_the_permalink( $post->ID ) . '" title="' . get_the_title( $post->ID ) . '">' . get_the_title( $post->ID ) . '</a></h2>

        <span class="date">' . get_the_time('F j, Y', $post->ID ) . ' ' . get_the_time('g:i a', $post->ID ) . '</span>
        <span class="author">' . __( 'Published by', 'recruit' ) . ' ' . get_the_author_posts_link( $post->ID ) . '</span>' .

        get_the_excerpt( $post->ID ) .

        '<a class="post-edit-link" href="' . get_edit_post_link( $post->ID ) . '">' . __( 'Edit This', 'recruit' ) . '</a>' .

    '</article>';

echo $out;

