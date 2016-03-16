<?php

$feed = $pages->get("/podcast/");
$items = $feed->children();

$feedStart ='<?xml version="1.0" encoding="utf-8" ?>
        <rss xmlns:itunes="http://www.itunes.com/dtds/podcast-1.0.dtd" version="2.0">
            <channel>
                <title>'. $feed->headline .'</title>
                <link>'. $homepage->httpUrl .'</link>
                <language>'. $page->feed_lang .'</language>
                <copyright>'. $page->feed_copyright .'</copyright>

                <itunes:author>'. $feed->feed_author .'</itunes:author>
                <itunes:subtitle>'. $feed->feed_subtitle .'</itunes:subtitle>
                <itunes:summary>'. $feed->summary .'</itunes:summary>
                <description>'. $feed->summary .'</description>

                <itunes:owner>
                    <itunes:name>'.$page->itunes_name.'</itunes:name>
                    <itunes:email>'.$page->itunes_email.'</itunes:email>
                </itunes:owner>

                <itunes:image href="'. $feed->itunes_img_main->httpUrl .'" />

                <itunes:category text="'. $feed->feed_category .'">
                    <itunes:category text="'. $feed->feed_subcategory .'" />
                </itunes:category>
                <itunes:explicit>No</itunes:explicit>';

$feedItems = '';
foreach ($items as $item) {
    $feedItems .='<item>
                    <title>'. $item->title .'</title>
                    <link>'. $item->audio->httpUrl .'</link>

                    <itunes:author>'. $item->authors .'</itunes:author>
                    <itunes:subtitle>'. $item->subtitle .'</itunes:subtitle>
                    <itunes:summary><![CDATA['. $item->summary .']]></itunes:summary>
                    <pubDate>'. $item->pubDate .'</pubDate>

                    <itunes:image href="'.$item->podcast_image->httpUrl .'" />

                    <enclosure url="'. $item->audio->httpUrl .'" length="'. $item->audio->filesize .'" type="audio/mp3" />
                    <itunes:duration>'. $item->audio_duration .'</itunes:duration>
                </item>';
}

$feedEnd = '</channel></rss>';

echo $feedStart . $feedItems . $feedEnd;
?>
