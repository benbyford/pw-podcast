<?php

// basic-page.php template file

// Primary content is the page's body copy

$out .= '<div class="cf">';

$podimg = $page->podcast_image->size(300,300);

$out .= '<div class="thumb"><img src="' . $podimg->url . '"></div>';
$out .= '<div class="summary">' . $page->summary . '</div>';
$out .= '<div class="audio"><audio controls src="' . $page->child->mp3->url . '"></audio></div>';
$out .= '<div class="info"><b>Date:</b> '. $page->pubDate .' | <b>Audio duration:</b> '. $page->child->audio_duration.' | <b>Podcast authors:</b> '. $page->authors .' | <b><a href="'. $page->child->url .'">Downloads</a></b>: '. $page->child->counter . '</div>';
$out .= '</div>';

$nextPodcast = '';
if(count($page->next)){
    $nextPodcast = '<div class="nextPodcast"><b>Previous podcast: </b><a href="'.$page->next->url.'">'. $page->next->title .'</a></div>';
}

$comments = '<div id="disqus_thread"></div>
<script>
var disqus_config = function () {
this.page.url = "'. $page->httpUrl .'";
this.page.identifier = "'. $page->id .'";
};
(function() {
var d = document, s = d.createElement("script");
s.src = "//machine-ethics.disqus.com/embed.js";
s.setAttribute("data-timestamp", +new Date());
(d.head || d.body).appendChild(s);})();
</script>';

$content =  $out . $page->body . $nextPodcast . '<br>' . $comments;
