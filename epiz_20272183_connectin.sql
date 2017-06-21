USE siddhipa_connectin;
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


CREATE TABLE IF NOT EXISTS `account` (
  `id` varchar(16) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` varchar(12) DEFAULT 'employee',
  `active` varchar(12) DEFAULT 'active',
  `created_dt` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(100) NOT NULL,
  `parent` int(11) DEFAULT '-1',
  PRIMARY KEY (`cat_id`);

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_timestamp` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT NULL,
  `text` varchar(3000) DEFAULT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
);
CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
); 
CREATE TABLE IF NOT EXISTS `connections` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL,
  `conn_id` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `edu_details` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `degree` varchar(50) DEFAULT NULL,
  `completion_dt` datetime DEFAULT NULL,
  `start_dt` datetime NOT NULL,
  `usr_prof_id` int(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `employment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comp_name` varchar(60) DEFAULT NULL,
  `start_dt` datetime NOT NULL,
  `end_dt` datetime DEFAULT NULL,
  `achievement_title` varchar(360) DEFAULT NULL,
  `achievement_desc` varchar(360) DEFAULT NULL,
  `prof_id` int(255) DEFAULT NULL,
  `type` varchar(12) DEFAULT 'Permanent',
  PRIMARY KEY (`id`)
);
CREATE TABLE IF NOT EXISTS `feeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `feed_type` varchar(20) DEFAULT 'user',
  `user_id` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `created_timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(11) DEFAULT 'post',
  `post_id` int(11) DEFAULT NULL,
  `comment_id` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
); 
CREATE TABLE IF NOT EXISTS `post` (
  `visibility` varchar(12) DEFAULT 'public',
  `tags` varchar(300) DEFAULT NULL,
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `feed_id` int(11) DEFAULT NULL,
  `updated_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `text` varchar(3000) DEFAULT NULL,
  `owner_id` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id` (`user_id`),
  KEY `fk_category_id` (`category_id`),
  KEY `fk_feed_id` (`feed_id`)
);

CREATE TABLE IF NOT EXISTS `profile` (
  `id` varchar(16) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_prof_dt_id` int(11) DEFAULT NULL,
  `usr_edu_dt_id` int(11) DEFAULT NULL,
  `prfimg` varchar(16) DEFAULT NULL,
  `cover_img` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
);


CREATE TABLE IF NOT EXISTS `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) DEFAULT NULL,
  `image_urls` varchar(360) DEFAULT NULL,
  `start_dt` datetime DEFAULT NULL,
  `func` varchar(4000) DEFAULT NULL,
  `team_size` int(11) DEFAULT NULL,
  `emp_id` int(255) DEFAULT NULL,
  `end_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(150) NOT NULL,
  `lastName` varchar(150) NOT NULL,
  `email` varchar(320) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `birthdate` date NOT NULL,
  `user_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
);

CREATE TABLE IF NOT EXISTS `user_prof_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `current_company` varchar(60) DEFAULT NULL,
  `total_exp` int(11) DEFAULT '0',
  `addr` varchar(100) DEFAULT NULL,
  `prof_img` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
CREATE TABLE IF NOT EXISTS `usr_auth` (
  `id` int(11) NOT NULL,
  `last_logged_in` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `password` varchar(355) DEFAULT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `user_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `category`(`cat_id`, `cat_name`, `parent`) VALUES (1,'feeds',-1);
INSERT INTO `category`(`cat_id`, `cat_name`, `parent`) VALUES (2,'recent',-1);
INSERT INTO `category`(`cat_id`, `cat_name`, `parent`) VALUES (3,'news',-1);
INSERT INTO `category`(`cat_id`, `cat_name`, `parent`) VALUES (4,'group',-1);
INSERT INTO `category`(`cat_id`, `cat_name`, `parent`) VALUES (5,'page',-1);


INSERT INTO `comments`(`user_id`, `text`, `post_id`) VALUES (1,'thats awesome', 1);
INSERT INTO `comments`(`user_id`, `text`, `post_id`) VALUES (2,'true said', 1);
INSERT INTO `comments`(`user_id`, `text`, `post_id`) VALUES (3,'wowwwww :)', 1);
INSERT INTO `comments`(`user_id`, `text`, `post_id`) VALUES (4,'thats amazing', 1);
INSERT INTO `comments`(`user_id`, `text`, `post_id`) VALUES (5,'going to paisea', 1);

INSERT INTO `connections`( `user_id`, `conn_id`) VALUES (1, 2);

INSERT INTO `edu_details`(`degree`, `completion_dt`, `start_dt`, `usr_prof_id`) VALUES ('B.Tech', '2017-07-20 00:00:00', '2014-07-20 00:00:00', 1);
INSERT INTO `edu_details`(`degree`, `completion_dt`, `start_dt`, `usr_prof_id`) VALUES ('H.S.C', '2012-07-20 00:00:00', '2014-07-20 00:00:00', 1);

INSERT INTO `employment`(`comp_name`, `start_dt`, `achievement_title`, `achievement_desc`, `prof_id`, `type`) VALUES ('General electric', '2016-09-16 00:00:00','Star performer', 'Won an award fo delivering results in an uncertain world. Shown dedicatio n toward achieveing customer satisfaction and best deliverables', 1, 'Permanent');

INSERT INTO `feeds`(`feed_type`, `user_id`) VALUES ('user', 1);
INSERT INTO `feeds`(`feed_type`, `user_id`) VALUES ('user', 2);

INSERT INTO `likes`(`user_id`, `type`, `post_id`) VALUES (1, 'post', 1);
INSERT INTO `likes`(`user_id`, `type`, `post_id`) VALUES (2, 'post', 1);
INSERT INTO `likes`(`user_id`, `type`, `post_id`) VALUES (3, 'post', 1);
INSERT INTO `likes`(`user_id`, `type`, `post_id`) VALUES (4, 'post', 1);
INSERT INTO `likes`(`user_id`, `type`, `comment_id`) VALUES (5, 'post', 1);
INSERT INTO `likes`(`user_id`, `type`, `comment_id`) VALUES (6, 'post', 1);

INSERT INTO `post`(`visibility`, `tags`,`user_id`, `category_id`, `feed_id`, `text`, `owner_id`) VALUES ('friends', 'trending,news,weekend',1,1,1,' Happiness, sorrow, victory,defeat, day-night are the two sides of the me coin. Similarly life is full of moments of joy, pleasure, success and comfort punctuated by misery, defeat, failures and problems. There is no human being on Earth, strong, powerful, wise or rich, who has not experienced, struggle, suffering or failure', 1);

INSERT INTO `post`(`visibility`, `tags`,`user_id`, `category_id`, `feed_id`, `text`, `owner_id`) VALUES ('friends', 'trending,news,weekend',1,1,1,'its all a myth to be happy without expereincing pain! everyone wants a rainbow and rains! can we really get away with all the stress and trouble ?', 2);

INSERT INTO `post`(`visibility`, `tags`,`user_id`, `category_id`, `feed_id`, `text`, `owner_id`) VALUES ('friends', 'trending,news,weekend',1,1,1,'I am moving to seattle! a better place ! a new life hurayyyyyy! cheers to a new journey of mine! wish me luck :) :) ', 3);

INSERT INTO `profile`(`user_id`, `user_prof_dt_id`, `usr_edu_dt_id`, `prfimg`, `cover_img`) VALUES (1, 1, 1, 'data/images/profile/user_1.jpg', 'data/images/profile/user_1_cover.jpg');
INSERT INTO `profile`(`user_id`, `user_prof_dt_id`, `usr_edu_dt_id`, `prfimg`, `cover_img`) VALUES (2, 1, 1, 'data/images/profile/user_2.jpg', 'data/images/profile/user_2_cover.jpg');
INSERT INTO `profile`(`user_id`, `user_prof_dt_id`, `usr_edu_dt_id`, `prfimg`, `cover_img`) VALUES (3, 1, 1, 'data/images/profile/user_3.jpg', 'data/images/profile/user_3_cover.jpg');

INSERT INTO `project`(`title`, `image_urls`, `start_dt`, `func`, `team_size`, `emp_id`, `end_dt`) VALUES ('Operations Optimization', '', '2016-09-16 00:00:00', ' Reasearched and implemented various microservices from scratch on a cloud based project which would seggrgate and provide assets data from timeseries datasources. Implemented various algorithms in order to formulate optimal solution', 5, 20, NULL);

INSERT INTO `project`(`title`, `image_urls`, `start_dt`, `func`, `team_size`, `emp_id`, `end_dt`) VALUES ('Operations Optimization', '', '2016-09-16 00:00:00', ' Reasearched and implemented various microservices from scratch on a cloud based project which would seggrgate and provide assets data from timeseries datasources. Implemented various algorithms in order to formulate optimal solution', 5, 20, NULL);

INSERT INTO `user`(`firstName`, `lastName`, `email`, `gender`, `birthdate`, `user_name`) VALUES ('siddhi', 'parkar', 'siddhiparkar15@gmail.com', 'f', '1992-01-15', 'siddhi_parkar');

INSERT INTO `user`(`firstName`, `lastName`, `email`, `gender`, `birthdate`, `user_name`) VALUES ('gaurang', 'raote', 'gaurang.raote@gmail.com', 'f', '1992-01-15', 'g_raote');
INSERT INTO `user`(`firstName`, `lastName`, `email`, `gender`, `birthdate`, `user_name`) VALUES ('rajul', 'talegaonker', 'rajul.talgaonkar@gmail.com', 'f', '1992-01-15', 'rajul_tal');
INSERT INTO `user`(`firstName`, `lastName`, `email`, `gender`, `birthdate`, `user_name`) VALUES ('swapnil', 'whatkar', 'swap_whatra@gmail.com', 'f', '1992-01-15', 'swapnil_w');
INSERT INTO `user`(`firstName`, `lastName`, `email`, `gender`, `birthdate`, `user_name`) VALUES ('nimisha', 'jain', 'nimisha.jain@gmail.com', 'f', '1992-01-15', 'nimish_jain');


INSERT INTO `user_prof_details`( `user_id`, `current_company`, `total_exp`, `addr`, `prof_img`) VALUES (1, 'GE', 3,'dadar madhavwadi 102/A middle bungalow, 1st floor, room no 11', 1);

INSERT INTO `usr_auth`(`id`,`password`, `user_id`, `user_name`) VALUES (1, 'tXFqyKae5bg6DwE0k1nDTA==', 1, 'siddhi_parkar');
INSERT INTO `usr_auth`(`id`, `password`, `user_id`, `user_name`) VALUES (2, 'tXFqyKae5bg6DwE0k1nDTA==', 2, 'g_raote');
INSERT INTO `usr_auth`(`id`, `password`, `user_id`, `user_name`) VALUES (3, 'tXFqyKae5bg6DwE0k1nDTA==', 3, 'rajul_tal');
INSERT INTO `usr_auth`(`id`, `password`, `user_id`, `user_name`) VALUES (4, 'tXFqyKae5bg6DwE0k1nDTA==', 4, 'swapnil_w');
INSERT INTO `usr_auth`( `id`,`password`, `user_id`, `user_name`) VALUES (5, 'tXFqyKae5bg6DwE0k1nDTA==', 5, 'nimish_jain');

INSERT INTO `image_db`(`url`, `alt`, `type`,`user_id`) VALUES ('data/images/profile.user_1.jpg', '','user', 1);
INSERT INTO `image_db`(`url`, `alt`, `type`,`user_id`) VALUES ('data/images/profile.user_2.jpg', '','user', 2);
INSERT INTO `image_db`(`url`, `alt`, `type`,`user_id`) VALUES ('data/images/profile.user_3.jpg', '','user', 3);
INSERT INTO `image_db`(`url`, `alt`, `type`,`user_id`) VALUES ('data/images/profile.user_4.jpg', '','user', 4);

