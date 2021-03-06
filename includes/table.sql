SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

DROP TABLE IF EXISTS `hashtags`;
CREATE TABLE IF NOT EXISTS `hashtags` (
  `text` varchar(255) NOT NULL,
  `tweet_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`text`,`tweet_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `links`;
CREATE TABLE IF NOT EXISTS `links` (
  `url` varchar(140) NOT NULL,
  `tweet_id` bigint(20) unsigned NOT NULL,
  `display_url` varchar(140) NOT NULL,
  PRIMARY KEY (`url`,`tweet_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `mentions`;
CREATE TABLE IF NOT EXISTS `mentions` (
  `screen_name` varchar(255) NOT NULL,
  `tweet_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`screen_name`,`tweet_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `tokens`;
CREATE TABLE IF NOT EXISTS `tokens` (
  `token` varchar(140) NOT NULL,
  `tweet_id` bigint(20) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `tweets`;
CREATE TABLE IF NOT EXISTS `tweets` (
  `id` bigint(20) unsigned NOT NULL,
  `text` varchar(150) NOT NULL,
  `screen_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `geo` text,
  `in_reply_to_screen_name` varchar(255) NOT NULL,
  `source` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `name` varchar(255) NOT NULL,
  `profile_image_url` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `screen_name` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`screen_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `vietas`;
CREATE TABLE IF NOT EXISTS `vietas` (
  `nosaukums` varchar(255) NOT NULL,
  `lng` float NOT NULL,
  `lat` float NOT NULL,
  `valsts` varchar(255) DEFAULT NULL,
  KEY `nosaukums` (`nosaukums`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
