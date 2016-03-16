<?php

// basic-page.php template file

// Primary content is the page's body copy

$out .= '<div class="cf">';

if(count($page->podcast_image)){
    $podimg = $page->podcast_image->size(300,300);
}

$out .= '<div class="thumb"><img src="' . $podimg->url . '"></div>';
$out .= '<div class="summary">' . $page->summary . '</div>';
$out .= '<div class="audio"><audio controls src="' . $page->audio->url . '"></audio></div>';
$out .= '<div class="info">'. $page->pubDate .' | Audio duration: '. $page->audio_duration.' | Podcast authors: '. $page->authors .'</div>';
$out .= '</div>';

$content =  $out . $page->body;
