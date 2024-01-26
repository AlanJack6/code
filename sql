CREATE TABLE `inquiries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int(11) DEFAULT NULL,
  `reference_no` varchar(11) DEFAULT NULL,
  `consultant` text,
  `received` varchar(24) DEFAULT NULL,
  `due` varchar(24) DEFAULT NULL,
  `completed_on` varchar(24) DEFAULT NULL,
  `timeu` varchar(11) DEFAULT NULL,
  `status` varchar(24) DEFAULT NULL,
  `createtime` int(24) DEFAULT NULL,
  `updatetime` int(24) DEFAULT NULL,
  `question_title` text,
  `question_text` text,
  `comments_title` text,
  `comments_text` text,
  `actions_title` text,
  `actions_text` text,
  `files_title` text,
  `files_text` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


CREATE TABLE users(
    users_id int(11) AUTO_INCREMENT PRIMARY KEY not null,
    users_uid TINYTEXT not null,
    users_pwd LONGTEXT not null,
    users_email TINYTEXT not null,
    users_name TINYTEXT not null,
    users_number TINYTEXT not null,
    users_tel TINYTEXT not null
);




ALTER TABLE `inquiries` ADD `submit_show_actions_text` TEXT  NULL  DEFAULT NULL  AFTER `files_text`




CREATE TABLE `action_sub_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `inquiries_id` int(11) DEFAULT NULL,
  `title` text,
  `text` text,
  `createtime` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
