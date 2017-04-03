# --- WireDatabaseBackup {"time":"2017-04-03 12:06:55","user":"","dbName":"threepoints","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

DROP TABLE IF EXISTS `ProcessRedirects`;
CREATE TABLE `ProcessRedirects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `counter` int(10) unsigned DEFAULT '0',
  `redirect_from` varchar(255) NOT NULL DEFAULT '',
  `redirect_to` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `redirect_from` (`redirect_from`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(255) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_address`;
CREATE TABLE `field_address` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_audio`;
CREATE TABLE `field_audio` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_audio_duration`;
CREATE TABLE `field_audio_duration` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_audio_duration` (`pages_id`, `data`) VALUES('1054', '0:00');

DROP TABLE IF EXISTS `field_authors`;
CREATE TABLE `field_authors` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_authors` (`pages_id`, `data`) VALUES('1045', 'You');

DROP TABLE IF EXISTS `field_blog_tags`;
CREATE TABLE `field_blog_tags` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_body`;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1', '<p>Something about my podcast here.</p>\n\n<p>Find us on iTunes, or get in touch <a href=\"mailto:contact@benbyford.com\">here.</a></p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1045', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam mattis eros vitae metus sodales eget suscipit purus rhoncus. Proin ultrices gravida dolor, non porttitor enim interdum vitae. Integer feugiat lacinia tincidunt. Nulla laoreet tristique tristique. Sed elementum justo a nisl elementum sit amet accumsan nisi tempor. Nulla quis eros et massa dignissim imperdiet a vitae purus.</p>\n\n<p>Donec scelerisque pulvinar sem eu lobortis. Maecenas turpis ipsum, tempus dictum pharetra eu, consectetur vitae arcu. Fusce orci mauris, semper at tempus quis, volutpat molestie tellus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed quam tortor, tincidunt sed semper lacinia, scelerisque dapibus quam. Morbi at nisi luctus lacus auctor ultrices eu eu leo.</p>\n\n<p>Praesent faucibus purus id felis tincidunt dignissim. Sed sit amet ligula mi, eget semper dui. Proin consectetur gravida massa, nec luctus purus hendrerit in. Etiam volutpat, elit non venenatis suscipit, libero neque consectetur diam, id rutrum magna odio ac ligula. Maecenas sollicitudin congue neque fermentum vestibulum. Morbi nec leo nisi. Donec at nisl odio, et porta ligula.</p>\n\n<p> </p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1052', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam mattis eros vitae metus sodales eget suscipit purus rhoncus. Proin ultrices gravida dolor, non porttitor enim interdum vitae. Integer feugiat lacinia tincidunt. Nulla laoreet tristique tristique. Sed elementum justo a nisl elementum sit amet accumsan nisi tempor. Nulla quis eros et massa dignissim imperdiet a vitae purus.</p>\n\n<p>Donec scelerisque pulvinar sem eu lobortis. Maecenas turpis ipsum, tempus dictum pharetra eu, consectetur vitae arcu. Fusce orci mauris, semper at tempus quis, volutpat molestie tellus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed quam tortor, tincidunt sed semper lacinia, scelerisque dapibus quam. Morbi at nisi luctus lacus auctor ultrices eu eu leo.</p>\n\n<p>Praesent faucibus purus id felis tincidunt dignissim. Sed sit amet ligula mi, eget semper dui. Proin consectetur gravida massa, nec luctus purus hendrerit in. Etiam volutpat, elit non venenatis suscipit, libero neque consectetur diam, id rutrum magna odio ac ligula. Maecenas sollicitudin congue neque fermentum vestibulum. Morbi nec leo nisi. Donec at nisl odio, et porta ligula.</p>\n\n<p>Sed quis arcu nisi, ac tempor augue. Praesent non elit libero, a ullamcorper lorem. Curabitur porta odio eu nunc ultricies interdum id nec risus. Donec nibh nibh, porta eget vehicula ac, aliquet eget ante. Phasellus eget lorem eu eros eleifend ultrices. Cras sit amet neque sit amet nibh fringilla cursus ut id mauris. Praesent quis nunc justo, sed suscipit lectus. Phasellus eget ultrices risus. Curabitur eu semper est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut suscipit, nisl ut imperdiet eleifend, turpis arcu placerat tortor, nec laoreet lacus neque ac tellus. Aenean ac lacus justo, quis ultricies nisi.</p>\n\n<p>Donec pulvinar, elit et hendrerit convallis, erat lectus consequat ipsum, vitae sollicitudin erat arcu sed eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;</p>\n\n<p> </p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1053', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam mattis eros vitae metus sodales eget suscipit purus rhoncus. Proin ultrices gravida dolor, non porttitor enim interdum vitae. Integer feugiat lacinia tincidunt. Nulla laoreet tristique tristique. Sed elementum justo a nisl elementum sit amet accumsan nisi tempor. Nulla quis eros et massa dignissim imperdiet a vitae purus.</p>\n\n<p>Donec scelerisque pulvinar sem eu lobortis. Maecenas turpis ipsum, tempus dictum pharetra eu, consectetur vitae arcu. Fusce orci mauris, semper at tempus quis, volutpat molestie tellus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed quam tortor, tincidunt sed semper lacinia, scelerisque dapibus quam. Morbi at nisi luctus lacus auctor ultrices eu eu leo.</p>\n\n<p>Praesent faucibus purus id felis tincidunt dignissim. Sed sit amet ligula mi, eget semper dui. Proin consectetur gravida massa, nec luctus purus hendrerit in. Etiam volutpat, elit non venenatis suscipit, libero neque consectetur diam, id rutrum magna odio ac ligula. Maecenas sollicitudin congue neque fermentum vestibulum. Morbi nec leo nisi. Donec at nisl odio, et porta ligula.</p>\n\n<p>Sed quis arcu nisi, ac tempor augue. Praesent non elit libero, a ullamcorper lorem. Curabitur porta odio eu nunc ultricies interdum id nec risus. Donec nibh nibh, porta eget vehicula ac, aliquet eget ante. Phasellus eget lorem eu eros eleifend ultrices. Cras sit amet neque sit amet nibh fringilla cursus ut id mauris. Praesent quis nunc justo, sed suscipit lectus. Phasellus eget ultrices risus. Curabitur eu semper est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut suscipit, nisl ut imperdiet eleifend, turpis arcu placerat tortor, nec laoreet lacus neque ac tellus. Aenean ac lacus justo, quis ultricies nisi.</p>\n\n<p>Donec pulvinar, elit et hendrerit convallis, erat lectus consequat ipsum, vitae sollicitudin erat arcu sed eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;</p>');

DROP TABLE IF EXISTS `field_counter`;
CREATE TABLE `field_counter` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_cropimage`;
CREATE TABLE `field_cropimage` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_facebook`;
CREATE TABLE `field_facebook` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_feed_author`;
CREATE TABLE `field_feed_author` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_feed_author` (`pages_id`, `data`) VALUES('1044', 'Ben Byford');

DROP TABLE IF EXISTS `field_feed_category`;
CREATE TABLE `field_feed_category` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_feed_category` (`pages_id`, `data`) VALUES('1044', 'Society &amp; Culture');

DROP TABLE IF EXISTS `field_feed_copyright`;
CREATE TABLE `field_feed_copyright` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_feed_copyright` (`pages_id`, `data`) VALUES('1046', 'Copyright Ben Byford');

DROP TABLE IF EXISTS `field_feed_lang`;
CREATE TABLE `field_feed_lang` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_feed_lang` (`pages_id`, `data`) VALUES('1046', 'en-uk');

DROP TABLE IF EXISTS `field_feed_subcategory`;
CREATE TABLE `field_feed_subcategory` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_feed_subcategory` (`pages_id`, `data`) VALUES('1044', 'Philosophy');

DROP TABLE IF EXISTS `field_feed_subtitle`;
CREATE TABLE `field_feed_subtitle` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_feed_subtitle` (`pages_id`, `data`) VALUES('1044', 'Artificial Intelligence, technolgy, autonomy, ethics and morals');

DROP TABLE IF EXISTS `field_googlemap`;
CREATE TABLE `field_googlemap` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL DEFAULT '',
  `lat` float(10,6) NOT NULL DEFAULT '0.000000',
  `lng` float(10,6) NOT NULL DEFAULT '0.000000',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `zoom` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `latlng` (`lat`,`lng`),
  KEY `zoom` (`zoom`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_header_image`;
CREATE TABLE `field_header_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_header_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1', 'headphones.jpg', '0', '', '2016-03-16 16:00:02', '2016-03-16 16:00:02');

DROP TABLE IF EXISTS `field_headline`;
CREATE TABLE `field_headline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1', 'Your new podcast');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1044', 'Machine Ethics podcast');

DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_itunes`;
CREATE TABLE `field_itunes` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_itunes_email`;
CREATE TABLE `field_itunes_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_itunes_email` (`pages_id`, `data`) VALUES('1046', 'benjaminbyford@gmail.com');

DROP TABLE IF EXISTS `field_itunes_img_main`;
CREATE TABLE `field_itunes_img_main` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_itunes_img_main` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1044', 'main_img-1.jpg', '0', '', '2016-03-14 14:53:16', '2016-03-14 14:53:16');

DROP TABLE IF EXISTS `field_itunes_name`;
CREATE TABLE `field_itunes_name` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_itunes_name` (`pages_id`, `data`) VALUES('1046', 'Benjamin Byford');

DROP TABLE IF EXISTS `field_keywords`;
CREATE TABLE `field_keywords` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_mp3`;
CREATE TABLE `field_mp3` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_phoneno`;
CREATE TABLE `field_phoneno` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_podcast_image`;
CREATE TABLE `field_podcast_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_podcast_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1045', 'download.jpg', '0', '', '2016-03-16 16:12:14', '2016-03-16 16:12:14');

DROP TABLE IF EXISTS `field_posts_limit`;
CREATE TABLE `field_posts_limit` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_posts_limit` (`pages_id`, `data`) VALUES('1024', '20');
INSERT INTO `field_posts_limit` (`pages_id`, `data`) VALUES('1023', '10');

DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1007', '150');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1015', '168');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1018', '173');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1019', '175');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1020', '176');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1021', '177');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1032', '192');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1033', '194');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1041', '198');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1042', '201');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1049', '206');

DROP TABLE IF EXISTS `field_pubdate`;
CREATE TABLE `field_pubdate` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_pubdate` (`pages_id`, `data`) VALUES('1045', '2016-03-08 00:00:00');
INSERT INTO `field_pubdate` (`pages_id`, `data`) VALUES('1052', '2016-03-16 00:00:00');
INSERT INTO `field_pubdate` (`pages_id`, `data`) VALUES('1053', '2017-04-03 00:00:00');

DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_sidebar`;
CREATE TABLE `field_sidebar` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_sitemap_ignore`;
CREATE TABLE `field_sitemap_ignore` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_subtitle`;
CREATE TABLE `field_subtitle` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_subtitle` (`pages_id`, `data`) VALUES('1045', 'A cool new podcast');

DROP TABLE IF EXISTS `field_summary`;
CREATE TABLE `field_summary` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1005', 'View this template\'s source for a demonstration of how to create a basic site map. ');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1044', 'This podcast brings together thinkers and creators of future technologies to discuss their impact. Interviews with Scientists, Technologists, Medical professionals, thinkers, writers and philosophers on the subject of AI and autonomy.');

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`) VALUES('11', 'Templates');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('16', 'Fields');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('22', 'Setup');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('3', 'Pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('6', 'Add Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('8', 'Tree');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('9', 'Save Sort');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('10', 'Edit');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('21', 'Modules');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('29', 'Users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('30', 'Roles');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('2', 'Admin');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('7', 'Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('27', '404 Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('302', 'Insert Link');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('23', 'Login');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('304', 'Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('301', 'Empty Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('300', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('303', 'Insert Image');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('28', 'Access');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('31', 'Permissions');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('32', 'Edit pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('34', 'Delete pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('35', 'Move pages (change parent)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('36', 'View pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('50', 'Sort child pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('51', 'Change templates on pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('52', 'Administer users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('53', 'User can update profile/password');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('54', 'Lock or unlock a page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1', 'Home');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1000', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1005', 'Site Map');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1006', 'Use Page Lister');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1007', 'Find');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1022', 'Repeaters');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1024', 'Blog tags');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1023', 'Blog');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1015', 'Recent');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1016', 'Can see recently edited pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1018', 'Image crop');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1019', 'Redirects');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1020', 'Delete Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1021', 'Files');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1029', 'Blog rss feed');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1030', 'Clone a page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1031', 'Clone a tree of pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1033', 'Batcher');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1034', 'View Batcher Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1041', 'Logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1042', 'Sessions');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1044', 'Episodes');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1045', '1. first broadcast');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1046', 'Itunes rss feed');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1049', 'Logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1050', 'Can view system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1051', 'Can manage system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1052', 'Test blog post');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1053', 'Second article');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1054', 'your-mp3-filename');

DROP TABLE IF EXISTS `field_twitter`;
CREATE TABLE `field_twitter` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('1', 'home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('88', 'sitemap');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('83', 'basic-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('80', 'search');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('98', 'list-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('99', 'blog-list');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('100', 'blog-tag-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('101', 'blog-post-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('102', 'blog-tags-list');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('103', 'blog-rss-feed');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('104', '404');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('105', 'itunes-rss-feed');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('106', 'podcast');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('107', 'podcast-list');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('108', 'mp3');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('80', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '44', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('88', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('88', '79', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '76', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '82', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '106', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '76', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '82', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '44', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '76', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '111', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '82', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '76', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '105', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '76', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '44', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '82', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '112', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '82', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '44', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '76', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '111', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '82', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '76', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '82', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '44', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '122', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '123', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '104', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '113', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '76', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '82', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '129', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '44', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '130', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '103', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '115', '1', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '116', '2', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '119', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '120', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '125', '1', '{\"columnWidth\":50,\"maxlength\":2048}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '126', '2', '{\"columnWidth\":50,\"maxlength\":2048}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '79', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '76', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '105', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '127', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '121', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '118', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '117', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '128', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '132', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '131', '3', NULL);

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitle', 'title', '13', 'Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255,\"langBlankInherit\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('108', 'FieldtypeCropImage', 'cropImage', '0', 'Image', '{\"description\":\"Images with cropping tool\",\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":0,\"inputfieldClass\":\"InputfieldCropImage\",\"descriptionRows\":1,\"defaultGrid\":0,\"thumbSetting\":\"thumbnail,100,100\",\"tags\":\"images\",\"icon\":\"picture-o\",\"fileSchema\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('82', 'FieldtypeTextarea', 'sidebar', '0', 'Sidebar', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":5,\"contentType\":1,\"toolbar\":\"Format, Bold, Italic, -, RemoveFormat\\r\\nNumberedList, BulletedList, -, Blockquote\\r\\nPWLink, Unlink, Anchor\\r\\nPWImage, Table, HorizontalRule, SpecialChar\\r\\nPasteText, PasteFromWord\\r\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"toggles\":[2,4,8],\"collapsed\":2,\"langBlankInherit\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('44', 'FieldtypeImage', 'images', '0', 'Images', '{\"extensions\":\"gif jpg jpeg png\",\"adminThumbs\":1,\"inputfieldClass\":\"InputfieldImage\",\"maxFiles\":0,\"descriptionRows\":1,\"fileSchema\":2,\"outputFormat\":1,\"defaultValuePage\":0,\"defaultGrid\":0,\"icon\":\"camera\",\"textformatters\":[\"TextformatterEntities\"],\"tags\":\"images\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('79', 'FieldtypeTextarea', 'summary', '1', 'Summary', '{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"collapsed\":2,\"rows\":3,\"contentType\":0,\"langBlankInherit\":0,\"columnWidth\":50}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('76', 'FieldtypeTextarea', 'body', '0', 'Body', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":10,\"contentType\":1,\"toolbar\":\"Format, Bold, Italic, -, RemoveFormat\\r\\nNumberedList, BulletedList, -, Blockquote\\r\\nPWLink, Unlink, Anchor\\r\\nPWImage, Table, HorizontalRule, SpecialChar\\r\\nPasteText, PasteFromWord\\r\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"toggles\":[2,4,8],\"langBlankInherit\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('110', 'FieldtypeText', 'phoneNo', '0', 'Phone Number', '{\"size\":0,\"maxlength\":20,\"stripTags\":1,\"pattern\":\"^\\\\s*\\\\(?(020[7,8]{1}\\\\)?[ ]?[1-9]{1}[0-9{2}[ ]?[0-9]{4})|(0[1-8]{1}[0-9]{3}\\\\)?[ ]?[1-9]{1}[0-9]{2}[ ]?[0-9]{3})\\\\s*$\",\"tags\":\"contact\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('78', 'FieldtypeText', 'headline', '0', 'Headline', '{\"description\":\"Use this instead of the field above if more text is needed for the page than for the navigation. \",\"collapsed\":2,\"columnWidth\":50,\"size\":0,\"maxlength\":2048}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('109', 'FieldtypeTextarea', 'address', '0', 'Address', '{\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"rows\":5,\"tags\":\"contact\",\"icon\":\"map-marker\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('106', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('107', 'FieldtypeMapMarker', 'googlemap', '0', 'Google Map', '{\"schemaVersion\":1,\"defaultAddr\":\"Castaway Cay\",\"defaultLat\":\"26.0936823\",\"defaultLng\":\"-77.5332796\",\"defaultType\":\"HYBRID\",\"height\":300,\"defaultZoom\":12,\"tags\":\"google\",\"icon\":\"map-marker\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('103', 'FieldtypeText', 'twitter', '0', 'Twitter Profile', '{\"description\":\"e.g. @yourTwitterName\",\"columnWidth\":50,\"size\":0,\"maxlength\":2048,\"icon\":\"twitter\",\"tags\":\"social\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('104', 'FieldtypeText', 'facebook', '0', 'Facebook Profile', '{\"description\":\"URL to your facebook page\",\"columnWidth\":50,\"size\":0,\"maxlength\":2048,\"icon\":\"facebook\",\"tags\":\"social\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('105', 'FieldtypeDatetime', 'pubDate', '0', 'Published Date', '{\"dateOutputFormat\":\"l, j F Y\",\"size\":25,\"datepicker\":0,\"dateInputFormat\":\"Y-m-d\",\"defaultToday\":1,\"collapsed\":1,\"columnWidth\":50,\"icon\":\"clock-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('111', 'FieldtypeInteger', 'posts_limit', '0', 'Post limit', '{\"description\":\"No. of posts per page of list\",\"columnWidth\":50,\"inputType\":\"text\",\"required\":1,\"min\":0,\"max\":100}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('112', 'FieldtypePage', 'blog_tags', '0', 'Tags', '{\"derefAsPage\":0,\"parent_id\":1024,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldPageListSelectMultiple\",\"addable\":1,\"template_id\":46,\"size\":10,\"columnWidth\":50}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('113', 'FieldtypeText', 'keywords', '0', 'Keywords for site', '{\"size\":0,\"maxlength\":2048,\"stripTags\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('114', 'FieldtypeCheckbox', 'sitemap_ignore', '0', 'Hide page from XML sitemap', '{\"description\":\"Hide this page and its children from the XML sitemap\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('115', 'FieldtypeText', 'feed_lang', '0', 'Feed lang', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"size\":0,\"maxlength\":2048,\"stripTags\":1,\"placeholder\":\"en-us\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('116', 'FieldtypeText', 'feed_copyright', '0', 'Feed copyright notice', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"size\":0,\"maxlength\":2048}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('117', 'FieldtypeText', 'feed_author', '0', 'Feed Author', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('118', 'FieldtypeText', 'feed_subtitle', '0', 'Feed Subtitle', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"size\":0,\"maxlength\":2048}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('119', 'FieldtypeText', 'itunes_name', '0', 'Itunes name', '{\"description\":\"Your itunes account name\",\"collapsed\":0,\"size\":0,\"maxlength\":2048}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('120', 'FieldtypeEmail', 'itunes_email', '0', 'Itunes email address', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('121', 'FieldtypeImage', 'itunes_img_main', '0', 'Itunes main image', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":2,\"defaultValuePage\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"defaultGrid\":0,\"maxReject\":0,\"fileSchema\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('122', 'FieldtypeText', 'feed_category', '0', 'Feed Category', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('123', 'FieldtypeText', 'feed_subcategory', '0', 'feed_subcategory', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('124', 'FieldtypeFile', 'audio', '0', 'MP3 audio file', '{\"fileSchema\":2,\"extensions\":\"mp3 m4a\",\"maxFiles\":1,\"outputFormat\":2,\"defaultValuePage\":0,\"inputfieldClass\":\"InputfieldFile\",\"collapsed\":0,\"descriptionRows\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('125', 'FieldtypeText', 'authors', '0', 'Podcast Authors', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('126', 'FieldtypeText', 'subtitle', '0', 'Podcast Subtitle', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('127', 'FieldtypeImage', 'podcast_image', '0', 'Podcast Image', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":2,\"defaultValuePage\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"defaultGrid\":0,\"maxReject\":0,\"fileSchema\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('128', 'FieldtypeText', 'audio_duration', '0', 'Audio Duration', '{\"description\":\"i.e. 7:34\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('129', 'FieldtypeImage', 'header_image', '0', 'Default Header Image', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":2,\"defaultValuePage\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"defaultGrid\":0,\"maxReject\":0,\"fileSchema\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('130', 'FieldtypeURL', 'itunes', '0', 'Itunes URL', '{\"noRelative\":0,\"allowIDN\":0,\"allowQuotes\":0,\"addRoot\":0,\"collapsed\":0,\"size\":0,\"maxlength\":1024,\"textformatters\":[\"TextformatterEntities\"]}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('131', 'FieldtypeInteger', 'counter', '0', 'File access counter', '{\"inputType\":\"text\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('132', 'FieldtypeFile', 'mp3', '0', '', '{\"extensions\":\"pdf doc docx xls xlsx gif jpg jpeg png mp3 wav mp4\",\"maxFiles\":1,\"outputFormat\":2,\"inputfieldClass\":\"InputfieldFile\",\"descriptionRows\":1,\"fileSchema\":2}');

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=208 DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('2', 'FieldtypeNumber', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '3', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('33', 'InputfieldWrapper', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('46', 'ProcessPage', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '32', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\",\"InputfieldPageAutocomplete\"]}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '33', '{\"showFields\":[]}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"pass\",\"email\",\"language\",\"admin_theme\"]}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":15,\"coreVersion\":\"3.0.42\"}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '10', '{\"colors\":\"classic\"}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldSelector', '42', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'ProcessPageLister', '32', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('151', 'JqueryMagnific', '1', '', '2014-07-21 07:21:45');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('152', 'PagePathHistory', '3', '', '2014-07-25 09:36:57');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'InputfieldCKEditor', '0', '', '2014-07-25 10:26:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('156', 'MarkupHTMLPurifier', '0', '', '2014-07-25 10:26:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('185', 'FieldtypeRepeater', '3', '{\"repeatersRootPageID\":1022}', '2015-01-05 23:03:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('186', 'InputfieldRepeater', '0', '', '2015-01-05 23:03:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('187', 'AdminThemeReno', '10', '{\"colors\":\"blue\",\"avatar_field\":null,\"home\":\"fa-home\",\"signout\":\"fa-power-off\",\"page\":\"fa-file-text\",\"manage-files\":\"fa-file-text-o\",\"setup\":\"fa-wrench\",\"module\":\"fa-briefcase\",\"access\":\"fa-unlock\"}', '2015-01-05 23:07:57');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('188', 'FieldtypeMapMarker', '1', '', '2015-01-05 23:08:24');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('189', 'InputfieldMapMarker', '0', '', '2015-01-05 23:08:24');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('168', 'ProcessRecentPages', '1', '', '2014-10-23 18:09:45');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('169', 'AllInOneMinify', '3', '', '2014-12-30 21:24:39');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('190', 'TextformatterMarkdownExtra', '1', '', '2015-01-07 14:35:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('172', 'FieldtypeCropImage', '1', '', '2014-12-30 21:27:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('173', 'ProcessCropImage', '33', '', '2014-12-30 21:27:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('174', 'InputfieldCropImage', '0', '', '2014-12-30 21:27:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('175', 'ProcessRedirects', '3', '', '2014-12-30 21:28:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('176', 'ProcessPageDelete', '10', '', '2014-12-30 21:28:41');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('177', 'ManageFiles', '1', '', '2014-12-30 21:30:04');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('178', 'AdminSaveActions', '3', '', '2014-12-30 21:30:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('179', 'TemplateNotes', '11', '', '2014-12-30 21:31:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('180', 'Process404Search', '3', '{\"searchPage\":1000}', '2014-12-30 21:36:42');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('181', 'FieldtypeCache', '1', '', '2014-12-30 21:38:26');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('182', 'JqueryFancybox', '1', '', '2014-12-30 21:39:56');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('183', 'MarkupRSS', '0', '{\"title\":\"News RSS Feed\",\"url\":\"\",\"description\":\"\",\"xsl\":\"\",\"css\":\"\",\"copyright\":\"\",\"ttl\":60,\"itemTitleField\":\"title\",\"itemDescriptionField\":\"summary\",\"itemDescriptionLength\":1024,\"itemDateField\":\"created\"}', '2014-12-30 21:40:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('184', 'ProcessForgotPassword', '1', '', '2014-12-30 21:42:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('191', 'MarkupCache', '3', '', '2015-04-16 14:20:33');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('192', 'ProcessPageClone', '11', '', '2015-04-16 14:20:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('193', 'MarkupGoogleMap', '0', '', '2015-04-16 14:22:14');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('194', 'ProcessBatcher', '0', '', '2015-04-16 14:22:44');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('195', 'MarkupSitemapXML', '3', '', '2015-04-16 14:24:33');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('196', 'PageTreeAddNewChildsReverse', '3', '{\"sort_reverse\":\"blog-list\"}', '2015-04-16 14:25:42');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('199', 'InputfieldIcon', '0', '', '2015-06-19 10:19:27');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('200', 'SessionHandlerDB', '3', '', '2015-06-19 10:21:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('201', 'ProcessSessionDB', '1', '', '2015-06-19 10:21:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('203', 'InputfieldPageAutocomplete', '0', '', '2016-03-08 13:53:59');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('206', 'ProcessLogger', '1', '', '2016-03-16 11:46:36');

DROP TABLE IF EXISTS `page_path_history`;
CREATE TABLE `page_path_history` (
  `path` varchar(255) NOT NULL,
  `pages_id` int(10) unsigned NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`path`),
  KEY `pages_id` (`pages_id`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=1056 DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1', '0', '1', 'en', '9', '2016-03-16 12:00:02', '41', '0000-00-00 00:00:00', '2', '0000-00-00 00:00:00', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('2', '1', '2', 'admin', '1035', '2017-04-03 05:42:15', '40', '0000-00-00 00:00:00', '2', '0000-00-00 00:00:00', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('3', '2', '2', 'page', '21', '2014-12-30 21:30:04', '41', '0000-00-00 00:00:00', '2', '0000-00-00 00:00:00', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('6', '3', '2', 'add', '21', '2016-03-08 07:42:39', '40', '0000-00-00 00:00:00', '2', '0000-00-00 00:00:00', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('7', '1', '2', 'trash', '1039', '2011-08-14 22:04:52', '41', '2010-02-07 05:29:39', '2', '2010-02-07 05:29:39', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('8', '3', '2', 'list', '1045', '2016-03-08 07:42:43', '40', '0000-00-00 00:00:00', '2', '0000-00-00 00:00:00', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('9', '3', '2', 'sort', '1047', '2011-03-29 21:37:06', '41', '0000-00-00 00:00:00', '2', '0000-00-00 00:00:00', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('10', '3', '2', 'edit', '1045', '2016-03-08 07:42:43', '40', '0000-00-00 00:00:00', '2', '0000-00-00 00:00:00', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('11', '22', '2', 'template', '21', '2011-03-29 21:37:06', '41', '2010-02-01 11:04:54', '2', '2010-02-01 11:04:54', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('16', '22', '2', 'field', '21', '2011-03-29 21:37:06', '41', '2010-02-01 12:44:07', '2', '2010-02-01 12:44:07', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('21', '2', '2', 'module', '21', '2011-03-29 21:37:06', '41', '2010-02-02 10:02:24', '2', '2010-02-02 10:02:24', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('22', '2', '2', 'setup', '21', '2011-03-29 21:37:06', '41', '2010-02-09 12:16:59', '2', '2010-02-09 12:16:59', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('23', '2', '2', 'login', '1035', '2011-05-03 23:38:10', '41', '2010-02-17 09:59:39', '2', '2010-02-17 09:59:39', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('27', '1', '50', 'http404', '1035', '2015-04-16 14:17:21', '41', '2010-06-03 06:53:03', '3', '2010-06-03 06:53:03', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('28', '2', '2', 'access', '13', '2011-05-03 23:38:10', '41', '2011-03-19 19:14:20', '2', '2011-03-19 19:14:20', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('29', '28', '2', 'users', '29', '2011-04-05 00:39:08', '41', '2011-03-19 19:15:29', '2', '2011-03-19 19:15:29', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('30', '28', '2', 'roles', '29', '2011-04-05 00:38:39', '41', '2011-03-19 19:15:45', '2', '2011-03-19 19:15:45', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('31', '28', '2', 'permissions', '29', '2011-04-05 00:53:52', '41', '2011-03-19 19:16:00', '2', '2011-03-19 19:16:00', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('32', '31', '5', 'page-edit', '25', '2015-04-16 14:20:55', '41', '2011-03-19 19:17:03', '2', '2011-03-19 19:17:03', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('34', '31', '5', 'page-delete', '25', '2015-04-16 14:20:55', '41', '2011-03-19 19:17:23', '2', '2011-03-19 19:17:23', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('35', '31', '5', 'page-move', '25', '2015-04-16 14:20:55', '41', '2011-03-19 19:17:41', '2', '2011-03-19 19:17:41', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('36', '31', '5', 'page-view', '25', '2015-04-16 14:20:55', '41', '2011-03-19 19:17:57', '2', '2011-03-19 19:17:57', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('37', '30', '4', 'guest', '25', '2011-04-05 01:37:19', '41', '2011-03-19 19:18:41', '2', '2011-03-19 19:18:41', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('38', '30', '4', 'superuser', '25', '2011-08-17 14:34:39', '41', '2011-03-19 19:18:55', '2', '2011-03-19 19:18:55', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('41', '29', '3', 'admin', '1', '2017-04-03 05:42:15', '40', '2011-03-19 19:41:26', '2', '2011-03-19 19:41:26', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('40', '29', '3', 'guest', '25', '2014-09-02 05:45:46', '41', '2011-03-20 17:31:59', '2', '2011-03-20 17:31:59', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('50', '31', '5', 'page-sort', '25', '2015-04-16 14:20:55', '41', '2011-03-26 22:04:50', '41', '2011-03-26 22:04:50', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('51', '31', '5', 'page-template', '25', '2015-04-16 14:20:55', '41', '2011-03-26 22:25:31', '41', '2011-03-26 22:25:31', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('52', '31', '5', 'user-admin', '25', '2015-04-16 14:20:55', '41', '2011-03-30 00:06:47', '41', '2011-03-30 00:06:47', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('53', '31', '5', 'profile-edit', '1', '2015-04-16 14:20:55', '41', '2011-04-26 00:02:22', '41', '2011-04-26 00:02:22', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('54', '31', '5', 'page-lock', '1', '2015-04-16 14:20:55', '41', '2011-08-15 17:45:48', '41', '2011-08-15 17:45:48', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('300', '3', '2', 'search', '1045', '2011-03-29 21:37:06', '41', '2010-08-04 05:23:59', '2', '2010-08-04 05:23:59', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('301', '3', '2', 'trash', '1047', '2011-03-29 21:37:06', '41', '2010-09-28 05:39:30', '2', '2010-09-28 05:39:30', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('302', '3', '2', 'link', '1041', '2011-03-29 21:37:06', '41', '2010-10-01 05:03:56', '2', '2010-10-01 05:03:56', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('303', '3', '2', 'image', '1041', '2011-03-29 21:37:06', '41', '2010-10-13 03:56:48', '2', '2010-10-13 03:56:48', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('304', '2', '2', 'profile', '1025', '2011-05-03 23:38:10', '41', '2011-04-25 23:57:18', '41', '2011-04-25 23:57:18', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1000', '1', '26', 'search', '1025', '2014-09-02 11:06:44', '41', '2010-09-06 05:05:28', '2', '2010-09-06 05:05:28', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1005', '1', '34', 'site-map', '1025', '2015-04-16 14:23:37', '41', '2010-11-30 21:16:49', '2', '2010-11-30 21:16:49', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1006', '31', '5', 'page-lister', '1', '2015-04-16 14:20:55', '41', '2014-07-20 09:00:38', '40', '2014-07-20 09:00:38', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1007', '3', '2', 'lister', '1', '2014-07-20 09:00:38', '40', '2014-07-20 09:00:38', '40', '2014-07-20 09:00:38', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1022', '2', '2', 'repeaters', '1036', '2015-01-05 23:03:11', '41', '2015-01-05 23:03:11', '41', '2015-01-05 23:03:11', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1023', '1', '45', 'blog', '1', '2017-04-03 05:44:33', '41', '2015-01-05 23:18:22', '41', '2017-04-03 05:44:33', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1024', '1', '48', 'blog-tags', '1025', '2015-01-05 23:44:03', '41', '2015-01-05 23:42:51', '41', '2015-01-05 23:42:51', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1015', '3', '2', 'recent-pages', '1', '2014-10-23 18:09:45', '40', '2014-10-23 18:09:45', '40', '2014-10-23 18:09:45', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1016', '31', '5', 'page-edit-recent', '1', '2015-04-16 14:20:55', '41', '2014-10-23 18:09:45', '40', '2014-10-23 18:09:45', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1018', '3', '2', 'image-crop', '1', '2014-12-30 21:27:44', '41', '2014-12-30 21:27:44', '41', '2014-12-30 21:27:44', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1019', '22', '2', 'redirects', '1', '2014-12-30 21:28:11', '41', '2014-12-30 21:28:11', '41', '2014-12-30 21:28:11', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1020', '3', '2', 'delete', '1024', '2014-12-30 21:28:41', '41', '2014-12-30 21:28:41', '41', '2014-12-30 21:28:41', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1021', '2', '2', 'manage-files', '1', '2014-12-30 21:30:04', '41', '2014-12-30 21:30:04', '41', '2014-12-30 21:30:04', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1028', '30', '4', 'editor', '1', '2015-01-07 14:56:39', '41', '2015-01-07 14:56:10', '41', '2015-01-07 14:56:10', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1029', '1', '49', 'blog-rss-feed', '1025', '2015-01-07 15:21:00', '41', '2015-01-07 15:20:51', '41', '2015-01-07 15:20:51', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1030', '31', '5', 'page-clone', '1', '2015-04-16 14:20:55', '41', '2015-04-16 14:20:55', '41', '2015-04-16 14:20:55', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1031', '31', '5', 'page-clone-tree', '1', '2015-04-16 14:20:55', '41', '2015-04-16 14:20:55', '41', '2015-04-16 14:20:55', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1032', '3', '2', 'clone', '1025', '2015-04-16 14:20:55', '41', '2015-04-16 14:20:55', '41', '2015-04-16 14:20:55', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1033', '22', '2', 'batcher', '1', '2015-04-16 14:22:44', '41', '2015-04-16 14:22:44', '41', '2015-04-16 14:22:44', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1034', '31', '5', 'batcher', '1', '2015-04-16 14:22:44', '41', '2015-04-16 14:22:44', '41', '2015-04-16 14:22:44', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1041', '22', '2', 'logs', '1', '2015-06-19 10:19:27', '40', '2015-06-19 10:19:27', '40', '2015-06-19 10:19:27', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1042', '2', '2', 'sessions-db', '1', '2015-06-19 10:21:51', '40', '2015-06-19 10:21:51', '40', '2015-06-19 10:21:51', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1044', '1', '53', 'podcast', '1', '2016-03-14 10:53:16', '41', '2016-03-08 07:51:48', '41', '2016-03-08 07:58:08', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1045', '1044', '52', 'first-broadcast', '1', '2016-03-16 12:12:14', '41', '2016-03-08 07:52:03', '41', '2016-03-08 07:59:36', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1046', '1', '51', 'itunes-rss-feed', '1025', '2016-03-08 11:50:14', '41', '2016-03-08 07:57:32', '41', '2016-03-08 07:57:34', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1049', '22', '2', 'logs-1', '1', '2016-03-16 11:46:36', '41', '2016-03-16 11:46:36', '41', '2016-03-16 11:46:36', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1050', '31', '5', 'logs-view', '1', '2016-03-16 11:46:36', '41', '2016-03-16 11:46:36', '41', '2016-03-16 11:46:36', '14');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1051', '31', '5', 'logs-edit', '1', '2016-03-16 11:46:36', '41', '2016-03-16 11:46:36', '41', '2016-03-16 11:46:36', '15');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1052', '1023', '47', 'test-blog-post', '1', '2017-04-03 05:44:29', '41', '2016-03-16 11:47:40', '41', '2016-03-16 11:47:46', '999999999');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1053', '1023', '47', 'second-article', '1', '2017-04-03 05:45:13', '41', '2017-04-03 05:45:08', '41', '2017-04-03 05:45:13', '999999998');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1054', '1045', '54', 'your-mp3-filename', '1', '2017-04-03 07:02:50', '41', '2017-04-03 07:02:40', '41', '2017-04-03 07:02:50', '0');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1006', '2', '2014-07-20 09:00:38');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1024', '1', '2015-01-05 23:42:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1023', '1', '2015-01-05 23:18:22');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1016', '2', '2014-10-23 18:09:45');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1028', '2', '2015-01-07 14:56:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1029', '1', '2015-01-07 15:20:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('27', '1', '2015-04-16 14:17:21');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1030', '2', '2015-04-16 14:20:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1031', '2', '2015-04-16 14:20:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1034', '2', '2015-04-16 14:22:44');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1044', '1', '2016-03-08 07:51:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1046', '1', '2016-03-08 07:57:32');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1050', '2', '2016-03-16 11:46:36');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1051', '2', '2016-03-16 11:46:36');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1052', '1', '2017-04-03 05:44:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1053', '1', '2017-04-03 05:45:08');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1054', '1', '2017-04-03 07:02:40');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('2', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1005', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1044', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1045', '1044');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `process_forgot_password`;
CREATE TABLE `process_forgot_password` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `token` char(32) NOT NULL,
  `ts` int(10) unsigned NOT NULL,
  `ip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `ts` (`ts`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;


DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` char(32) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  `ua` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pages_id` (`pages_id`),
  KEY `user_id` (`user_id`),
  KEY `ts` (`ts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sessions` (`id`, `user_id`, `pages_id`, `data`, `ts`, `ip`, `ua`) VALUES('590fc1b52ae49e297558b1002145dfb3', '41', '1', 'Session|a:16:{s:16:\"SessionHandlerDB\";a:1:{s:2:\"ts\";i:1491217572;}s:15:\"ProcessPageView\";a:1:{s:18:\"loginRequestPageID\";i:2;}s:12:\"ProcessLogin\";a:1:{s:17:\"beforeLoginChecks\";i:1;}s:5:\"_user\";a:4:{s:2:\"id\";i:41;s:2:\"ts\";i:1491217572;s:9:\"challenge\";s:32:\"OdktJhQKSCwlF7HG.H8TndiErpY9MaSc\";s:11:\"fingerprint\";s:32:\"ea7a4198d62097a9c3aa11d7aa58afd4\";}s:5:\"hidpi\";b:1;s:5:\"touch\";b:0;s:11:\"SessionCSRF\";a:2:{s:4:\"name\";s:26:\"TOKEN1181504634X1491212644\";s:26:\"TOKEN1181504634X1491212644\";s:32:\"KGQV897APIWjwvuouG8gcvaK2m3CGFpS\";}s:14:\"ProcessPageAdd\";a:2:{s:3:\"nav\";a:6:{s:3:\"url\";s:16:\"/admin/page/add/\";s:5:\"label\";s:5:\"Pages\";s:4:\"icon\";s:11:\"plus-circle\";s:3:\"add\";N;s:4:\"list\";a:1:{i:0;a:5:{s:3:\"url\";s:30:\"?parent_id=1045&template_id=54\";s:5:\"label\";s:3:\"mp3\";s:4:\"icon\";s:11:\"plus-circle\";s:9:\"parent_id\";i:1045;s:11:\"template_id\";i:54;}}s:8:\"modified\";i:1491217396;}s:10:\"numAddable\";i:1;}s:17:\"AdminThemeDefault\";a:1:{s:6:\"topnav\";s:6951:\"<li><a href=\'/admin/page/\' id=\'topnav-page-3\' data-from=\'topnav-page-2\' class=\'page-3- pw-dropdown-toggle\'>Pages</a><ul class=\'pw-dropdown-menu topnav\' data-my=\'left top\' data-at=\'left bottom\'><li><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'topnav-page-3\' data-json=\'/admin/page/add/navJSON/\' href=\'/admin/page/add/\'><i class=\'fa fa-fw fa-plus-circle\'></i>&nbsp;Add New</a><ul></ul></li><li><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'topnav-page-3\' data-json=\'/admin/page/lister/navJSON/\' href=\'/admin/page/lister/\'><i class=\'fa fa-fw fa-search\'></i>&nbsp;Find</a><ul></ul></li><li><a class=\'pw-has-items\' data-from=\'topnav-page-3\' href=\'/admin/page/recent-pages/\'><i class=\'fa fa-fw fa-clock-o\'></i>&nbsp;Recent</a><ul><li><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'topnav-page-1015\' data-json=\'/admin/page/recent-pages/navJSON/?edited=1\' href=\'/admin/page/recent-pages/?edited=1\'><i class=\'fa fa-fw fa-users\'></i>&nbsp;Edited</a><ul></ul></li><li><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'topnav-page-1015\' data-json=\'/admin/page/recent-pages/navJSON/?added=1&me=1\' href=\'/admin/page/recent-pages/?added=1\'><i class=\'fa fa-fw fa-users\'></i>&nbsp;Created</a><ul></ul></li><li><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'topnav-page-1015\' data-json=\'/admin/page/recent-pages/navJSON/?edited=1&me=1\' href=\'/admin/page/recent-pages/?edited=1&me=1\'><i class=\'fa fa-fw fa-user\'></i>&nbsp;Edited by me</a><ul></ul></li><li><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'topnav-page-1015\' data-json=\'/admin/page/recent-pages/navJSON/?added=1&me=1\' href=\'/admin/page/recent-pages/?added=1&me=1\'><i class=\'fa fa-fw fa-user\'></i>&nbsp;Created by me</a><ul></ul></li><li><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'topnav-page-1015\' data-json=\'/admin/page/recent-pages/anotherNavJSON/\' href=\'/admin/page/recent-pages/another/\'><i class=\'fa fa-fw fa-plus-circle\'></i>&nbsp;Add another</a><ul></ul></li></ul></li><li><a class=\'page-id-1018-\' href=\'/admin/page/image-crop/\'><i class=\'fa fa-fw fa-file-o ui-priority-secondary\'></i>&nbsp;Image crop</a></li></ul></li><li><a class=\'page-id-1021-\' href=\'/admin/manage-files/\'>Files</a></li><li><a href=\'/admin/setup/\' id=\'topnav-page-22\' data-from=\'topnav-page-2\' class=\'page-22- pw-dropdown-toggle\'>Setup</a><ul class=\'pw-dropdown-menu topnav\' data-my=\'left-1 top\' data-at=\'left bottom\'><li><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'topnav-page-22\' data-json=\'/admin/setup/template/navJSON/\' href=\'/admin/setup/template/\'><i class=\'fa fa-fw fa-cubes\'></i>&nbsp;Templates</a><ul></ul></li><li><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'topnav-page-22\' data-json=\'/admin/setup/field/navJSON/\' href=\'/admin/setup/field/\'><i class=\'fa fa-fw fa-cube\'></i>&nbsp;Fields</a><ul></ul></li><li><a class=\'page-id-1033-\' href=\'/admin/setup/batcher/\'><i class=\'fa fa-fw fa-file-o ui-priority-secondary\'></i>&nbsp;Batcher</a></li><li><a class=\'page-id-1019-\' href=\'/admin/setup/redirects/\'><i class=\'fa fa-fw fa-file-o ui-priority-secondary\'></i>&nbsp;Redirects</a></li><li><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'topnav-page-22\' data-json=\'/admin/setup/logs-1/navJSON/\' href=\'/admin/setup/logs-1/\'><i class=\'fa fa-fw fa-tree\'></i>&nbsp;Logs</a><ul></ul></li><li><a class=\'page-id-1055-\' href=\'/admin/setup/export-site-profile/\'><i class=\'fa fa-fw fa-truck\'></i>&nbsp;Export Site Profile</a></li></ul></li><li><a href=\'/admin/module/\' id=\'topnav-page-21\' data-from=\'topnav-page-2\' class=\'page-21- pw-dropdown-toggle\'>Modules</a><ul class=\'pw-dropdown-menu topnav\' data-my=\'left top\' data-at=\'left bottom\'><li><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'topnav-page-21\' data-json=\'/admin/module/navJSON/?site=1\' href=\'/admin/module/?site#tab_site_modules\'><i class=\'fa fa-fw fa-plug\'></i>&nbsp;Site</a><ul></ul></li><li><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'topnav-page-21\' data-json=\'/admin/module/navJSON/?core=1\' href=\'/admin/module/?core#tab_core_modules\'><i class=\'fa fa-fw fa-plug\'></i>&nbsp;Core</a><ul></ul></li><li><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'topnav-page-21\' data-json=\'/admin/module/navJSON/?configurable=1\' href=\'/admin/module/?configurable#tab_configurable_modules\'><i class=\'fa fa-fw fa-gear\'></i>&nbsp;Configure</a><ul></ul></li><li><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'topnav-page-21\' data-json=\'/admin/module/navJSON/?install=1\' href=\'/admin/module/?install#tab_install_modules\'><i class=\'fa fa-fw fa-sign-in\'></i>&nbsp;Install</a><ul></ul></li><li><a href=\'/admin/module/?reset=1\'><i class=\'fa fa-fw fa-refresh\'></i>&nbsp;Refresh</a></li></ul></li><li><a href=\'/admin/access/\' id=\'topnav-page-28\' data-from=\'topnav-page-2\' class=\'page-28- pw-dropdown-toggle\'>Access</a><ul class=\'pw-dropdown-menu topnav\' data-my=\'left top\' data-at=\'left bottom\'><li><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'topnav-page-28\' data-json=\'/admin/access/users/navJSON/\' href=\'/admin/access/users/\'><i class=\'fa fa-fw fa-group\'></i>&nbsp;Users</a><ul></ul></li><li><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'topnav-page-28\' data-json=\'/admin/access/roles/navJSON/\' href=\'/admin/access/roles/\'><i class=\'fa fa-fw fa-gears\'></i>&nbsp;Roles</a><ul></ul></li><li><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'topnav-page-28\' data-json=\'/admin/access/permissions/navJSON/\' href=\'/admin/access/permissions/\'><i class=\'fa fa-fw fa-gear\'></i>&nbsp;Permissions</a><ul></ul></li></ul></li><li><a class=\'page-id-1042-\' href=\'/admin/sessions-db/\'>Sessions</a></li><li><a target=\'_blank\' id=\'tools-toggle\' class=\'pw-dropdown-toggle\' href=\'/\'><i class=\'fa fa-wrench\'></i></a><ul class=\'pw-dropdown-menu topnav\' data-my=\'left top\' data-at=\'left bottom\'><li><a href=\'/\'><i class=\'fa fa-fw fa-eye\'></i> View Site</a></li><li><a href=\'/admin/profile/\'><i class=\'fa fa-fw fa-user\'></i> Profile <small>admin</small></a></li><li><a href=\'/admin/login/logout/\'><i class=\'fa fa-fw fa-power-off\'></i> Logout</a></li></ul></li><li class=\'collapse-topnav-menu\'><a href=\'/admin/\' class=\'pw-dropdown-toggle\'><i class=\'fa fa-lg fa-bars\'></i></a><ul id=\'topnav-mobile\' class=\'pw-dropdown-menu topnav\' data-my=\'left top\' data-at=\'left bottom\'><li><a href=\'/admin/page/\'><i class=\'fa fa-fw fa-sitemap\'></i>&nbsp;Pages</a></li><li><a href=\'/admin/manage-files/\'>Files</a></li><li><a href=\'/admin/setup/\'><i class=\'fa fa-fw fa-gears\'></i>&nbsp;Setup</a></li><li><a href=\'/admin/module/\'><i class=\'fa fa-fw fa-plug\'></i>&nbsp;Modules</a></li><li><a href=\'/admin/access/\'><i class=\'fa fa-fw fa-key\'></i>&nbsp;Access</a></li><li><a href=\'/admin/sessions-db/\'><i class=\'fa fa-fw fa-dashboard\'></i>&nbsp;Sessions</a></li><li><a href=\'/\'><i class=\'fa fa-fw fa-eye\'></i> View Site</a></li><li><a href=\'/admin/profile/\'><i class=\'fa fa-fw fa-user\'></i> Profile <small>admin</small></a></li><li><a href=\'/admin/login/logout/\'><i class=\'fa fa-fw fa-power-off\'></i> Logout</a></li></ul></li>\";}s:18:\"ModulesUninstalled\";a:30:{i:0;s:20:\"CommentFilterAkismet\";i:1;s:17:\"FieldtypeComments\";i:2;s:22:\"FieldtypeNotifications\";i:3;s:16:\"FieldtypeOptions\";i:4;s:18:\"FieldtypePageTable\";i:5;s:26:\"FieldtypePageTitleLanguage\";i:6;s:17:\"FieldtypeSelector\";i:7;s:21:\"FieldtypeTextLanguage\";i:8;s:25:\"FieldtypeTextareaLanguage\";i:9;s:16:\"FileCompilerTags\";i:10;s:23:\"ImageSizerEngineIMagick\";i:11;s:23:\"InputfieldCommentsAdmin\";i:12;s:19:\"InputfieldPageTable\";i:13;s:15:\"LanguageSupport\";i:14;s:21:\"LanguageSupportFields\";i:15;s:24:\"LanguageSupportPageNames\";i:16;s:12:\"LanguageTabs\";i:17;s:8:\"LazyCron\";i:18;s:16:\"MarkupPageFields\";i:19;s:13:\"PageFrontEdit\";i:20;s:9:\"PagePaths\";i:21;s:22:\"ProcessCommentsManager\";i:22;s:15:\"ProcessLanguage\";i:23;s:25:\"ProcessLanguageTranslator\";i:24;s:19:\"SystemNotifications\";i:25;s:22:\"TextformatterNewlineBR\";i:26;s:22:\"TextformatterNewlineUL\";i:27;s:22:\"TextformatterPstripper\";i:28;s:24:\"TextformatterSmartypants\";i:29;s:22:\"TextformatterStripTags\";}s:15:\"ProcessPageList\";a:3:{s:9:\"blog_tags\";s:5:\"title\";s:9:\"parent_id\";s:5:\"title\";s:16:\"cacheExpirePages\";s:5:\"title\";}s:27:\"ProcessFieldListTemplatesID\";i:0;s:25:\"ProcessFieldListFieldtype\";s:0:\"\";s:26:\"ProcessFieldListShowSystem\";i:0;s:15:\"FieldImportData\";a:2:{s:7:\"counter\";a:5:{s:4:\"type\";s:16:\"FieldtypeInteger\";s:4:\"name\";s:7:\"counter\";s:5:\"label\";s:19:\"File access counter\";s:9:\"inputType\";s:4:\"text\";s:11:\"columnWidth\";i:100;}s:3:\"mp3\";a:9:{s:4:\"type\";s:13:\"FieldtypeFile\";s:4:\"name\";s:3:\"mp3\";s:10:\"extensions\";s:50:\"pdf doc docx xls xlsx gif jpg jpeg png mp3 wav mp4\";s:8:\"maxFiles\";i:1;s:12:\"outputFormat\";i:2;s:15:\"inputfieldClass\";s:14:\"InputfieldFile\";s:15:\"descriptionRows\";i:1;s:10:\"fileSchema\";i:2;s:11:\"columnWidth\";i:100;}}s:20:\"FieldImportSkipNames\";a:0:{}}', '2017-04-03 07:06:12', '0', '');
INSERT INTO `sessions` (`id`, `user_id`, `pages_id`, `data`, `ts`, `ip`, `ua`) VALUES('9d3d8311e49a205c3c621a7f5c3f4363', '40', '27', 'Session|a:1:{s:16:\"SessionHandlerDB\";a:1:{s:2:\"ts\";i:1491212534;}}', '2017-04-03 05:42:15', '0', '');
INSERT INTO `sessions` (`id`, `user_id`, `pages_id`, `data`, `ts`, `ip`, `ua`) VALUES('c4741772bbbd362fd562f721b57406d2', '40', '1', 'Session|a:1:{s:16:\"SessionHandlerDB\";a:1:{s:2:\"ts\";i:1491212632;}}', '2017-04-03 05:43:52', '0', '');

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1491212436,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"compile\":3,\"label\":\"Home\",\"modified\":1491212436,\"ns\":\"\\\\\",\"roles\":[37,1028]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('29', 'basic-page', '83', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"label\":\"Basic Page\",\"modified\":1491212436,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('26', 'search', '80', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"allowPageNum\":1,\"slashUrls\":1,\"compile\":3,\"label\":\"Search\",\"modified\":1491212436,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('34', 'sitemap', '88', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"redirectLogin\":23,\"slashUrls\":1,\"compile\":3,\"label\":\"Site Map\",\"modified\":1491212436,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('47', 'blog-post-page', '101', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1491212436,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('44', 'list-page', '98', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1491212436,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('45', 'blog-list', '99', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1491212436,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('46', 'blog-tag-page', '100', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1491212436,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('48', 'blog-tags-list', '102', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1491212436,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('49', 'blog-rss-feed', '103', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1491212436,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('50', '404', '104', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1491212436,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('51', 'itunes-rss-feed', '105', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1491212436,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('52', 'podcast', '106', '0', '0', '{\"childTemplates\":[54],\"slashUrls\":1,\"compile\":3,\"modified\":1491217394,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('53', 'podcast-list', '107', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1491212436,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('54', 'mp3', '108', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[52],\"slashUrls\":1,\"compile\":3,\"modified\":1491217234,\"ns\":\"\\\\\"}');

UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

# --- /WireDatabaseBackup {"numTables":49,"numCreateTables":56,"numInserts":525,"numSeconds":0}