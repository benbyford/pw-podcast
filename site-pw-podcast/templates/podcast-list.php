<?php

// get all podcasts
$out = '';

$out .= '<div class="podcast">';

// get podcast children casts
$casts = $page->children;
foreach ($casts as $cast) {
	$out .= '<div class="cast cf">';

	if(count($cast->podcast_image)){
		$podimg = $cast->podcast_image->size(300,300);
	}

	$out .= '<div class="thumb"><img src="' . $podimg->url . '"></div>';
	$out .= '<h2><a href="'. $cast->url .'">' . $cast->title . '</a></h2>';
	$out .= '<div class="summary">' . $cast->summary . '</div>';
	$out .= '<div class="audio"><audio controls src="' . $cast->audio->url . '"></audio></div>';
	$out .= '</div>';
}
$out .= '</div>';


$content = $page->body . $out;
