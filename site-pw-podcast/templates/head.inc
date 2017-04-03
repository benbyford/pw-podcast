<?php

/*
* Profile: PW-podcast
* Author: Ben Byford
* Website: http://www.benbyford.com
*/

?>


<!DOCTYPE html>
<html lang="<?php echo _x('en', 'HTML language code'); ?>">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title><?php echo $homepage->headline .' - '. $title ?></title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, user-scalable=1" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black"> <!--// i.e. black -->

    <meta name="robots" content="index, follow">

    <meta name="keywords" content="echo $homepage->keywords;">
    <meta name="description" content="<?php echo $summary; ?>" />
    <meta name="generator" content="<?php echo $homepage->title; ?>">

    <!-- // open graph // -->
    <meta property="og:site_name" content="<?php echo $homepage->title; ?>">
    <meta property="og:type" content="podcast">

    <meta property="og:image" content="<?php if(count($page->images)){ echo $page->images->getRandom()->url; }else{ echo $homepage->header_image->url; } ?>"> <!--multiple og:image permitted-->
    <meta property="og:title" content="<?php echo $title; ?>"> <!--title-->
    <meta property="og:description" content="<?php echo $summary; ?>"> <!--summary-->

    <!-- // twitter:cards - can be used in conjunction with og meta tags // -->
    <meta name="twitter:card" content="player">

    <meta name="twitter:site" content="@<?php echo $homepage->twitter; ?>">
    <meta name="twitter:creator" content="@<?php echo $homepage->twitter; ?>">
    <meta property="fb:admins" content="<?php echo $homepage->facebook; ?>">

    <!-- // rss // -->
    <link rel="alternate" type="application/rss+xml" title="Example (RSS 2.0)" href="<?php echo $pages->get('/')->url; ?>itunes-rss-feed/">

    <!-- // fonts -->
    <link href='https://fonts.googleapis.com/css?family=PT+Sans:400,400italic,700|Montserrat:400,700' rel='stylesheet' type='text/css'>

    <!-- // minified styles -->
    <link rel="stylesheet" href="<?php echo AIOM::CSS(array('styles/font-awesome.css','styles/main.less')); ?>">
</head>
<body class="<?php if($sidebar) echo "has-sidebar "; ?>">
