/*
Navicat MySQL Data Transfer

Source Server         : Haghparast
Source Server Version : 50544
Source Host           : 192.168.1.85:3306
Source Database       : b2b

Target Server Type    : MYSQL
Target Server Version : 50544
File Encoding         : 65001

Date: 2016-12-27 17:19:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for spider_aclmanager_acos
-- ----------------------------
DROP TABLE IF EXISTS `spider_aclmanager_acos`;
CREATE TABLE `spider_aclmanager_acos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=462 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for spider_aclmanager_aros
-- ----------------------------
DROP TABLE IF EXISTS `spider_aclmanager_aros`;
CREATE TABLE `spider_aclmanager_aros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for spider_aclmanager_aros_acos
-- ----------------------------
DROP TABLE IF EXISTS `spider_aclmanager_aros_acos`;
CREATE TABLE `spider_aclmanager_aros_acos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aro_id` int(11) NOT NULL,
  `aco_id` int(11) NOT NULL,
  `deny` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `aro_id` (`aro_id`,`aco_id`),
  KEY `aco_id` (`aco_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1031 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for spider_aclmanager_roles
-- ----------------------------
DROP TABLE IF EXISTS `spider_aclmanager_roles`;
CREATE TABLE `spider_aclmanager_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `spider_aclmanager_roles_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `spider_aclmanager_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of spider_aclmanager_roles
-- ----------------------------
INSERT INTO `spider_aclmanager_roles` VALUES ('1', null, 'public', 'کاربر عمومی', null, '1', '14');
INSERT INTO `spider_aclmanager_roles` VALUES ('2', '1', 'registered', 'کاربر ثبت نام شده', null, '2', '13');
INSERT INTO `spider_aclmanager_roles` VALUES ('3', '2', 'admin', 'مدیر', null, '3', '6');
INSERT INTO `spider_aclmanager_roles` VALUES ('4', '3', 'superadmin', 'مدیرکل', null, '4', '5');
INSERT INTO `spider_aclmanager_roles` VALUES ('5', '2', 'counter', 'کانتر', null, '7', '12');
INSERT INTO `spider_aclmanager_roles` VALUES ('6', '5', 'agency', 'مدیر آژانس', '', '8', '9');
INSERT INTO `spider_aclmanager_roles` VALUES ('7', '5', 'brokers', 'مدیر کارگزاری', '', '10', '11');

-- ----------------------------
-- Table structure for spider_aclmanager_users_roles
-- ----------------------------
DROP TABLE IF EXISTS `spider_aclmanager_users_roles`;
CREATE TABLE `spider_aclmanager_users_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of spider_aclmanager_users_roles
-- ----------------------------
INSERT INTO `spider_aclmanager_users_roles` VALUES ('1', '1', '4');

-- ----------------------------
-- Table structure for spider_plugins_plugins
-- ----------------------------
DROP TABLE IF EXISTS `spider_plugins_plugins`;
CREATE TABLE `spider_plugins_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme` enum('admin','front') COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_version` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'set to 1 when arrive new version, default is 0',
  `weight` tinyint(4) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL COMMENT '0=deactive\r\n1=active\r\n',
  `default` tinyint(1) DEFAULT '0' COMMENT 'is default theme (admin or front) or not',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for spider_settings_settings
-- ----------------------------
DROP TABLE IF EXISTS `spider_settings_settings`;
CREATE TABLE `spider_settings_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `weight` int(11) DEFAULT NULL,
  `editable` tinyint(2) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of spider_settings_settings
-- ----------------------------
INSERT INTO `spider_settings_settings` VALUES ('1', 'site.title', 'bazibartar', null, null, null, '1', '1', null, null, '2015-09-04 02:22:02', '2015');
INSERT INTO `spider_settings_settings` VALUES ('32', 'site.privacy', null, 'Privacy Policy', '<p>adfsafsaf</p>\r\n', null, null, null, '1', null, '2016-12-27 13:44:40', '0');

-- ----------------------------
-- Table structure for spider_users_activation_keys
-- ----------------------------
DROP TABLE IF EXISTS `spider_users_activation_keys`;
CREATE TABLE `spider_users_activation_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `activation_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `spider_users_activation_keys_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `spider_users_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of spider_users_activation_keys
-- ----------------------------

-- ----------------------------
-- Table structure for spider_users_users
-- ----------------------------
DROP TABLE IF EXISTS `spider_users_users`;
CREATE TABLE `spider_users_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ایمیل کاربر بعنوان نام کاربری',
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0' COMMENT '-1=حذف شده\r\n0=غیرفعال\r\n1=فعال ثبت نام شده',
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of spider_users_users
-- ----------------------------
INSERT INTO `spider_users_users` VALUES ('1', 'superadmin', '$2y$10$W6XN.IcW6Bdydm6vzGykbuHp0.rLxa6e7f55teGNKXVUQo8jDDqEC', 'super', 'admin', '', '09152225154', '1366/11/16', '/img/avatars/1/4b6211e0fe682b551856ed1b4f96d0ed.png', '1', '2016-12-11 12:10:36');