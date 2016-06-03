/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 100113
Source Host           : localhost:3306
Source Database       : digibus_new

Target Server Type    : MYSQL
Target Server Version : 100113
File Encoding         : 65001

Date: 2016-06-04 00:24:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for aclmanager_acos
-- ----------------------------
DROP TABLE IF EXISTS `aclmanager_acos`;
CREATE TABLE `aclmanager_acos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aclmanager_acos
-- ----------------------------
INSERT INTO `aclmanager_acos` VALUES ('28', 'plugin', 'پلاگین', null, null, null);
INSERT INTO `aclmanager_acos` VALUES ('29', 'plugin/b2b', 'پلاگین b2b', null, null, null);
INSERT INTO `aclmanager_acos` VALUES ('31', 'plugin/b2b/tours', null, null, null, null);
INSERT INTO `aclmanager_acos` VALUES ('33', 'plugin/b2b/tours/edit', 'ویرایش تور', null, null, null);
INSERT INTO `aclmanager_acos` VALUES ('34', 'plugin/b2b/tours/view', 'مشاهده تور', null, null, null);
INSERT INTO `aclmanager_acos` VALUES ('36', 'plugin/users', null, null, null, null);
INSERT INTO `aclmanager_acos` VALUES ('38', 'plugin/users/users', null, null, null, null);
INSERT INTO `aclmanager_acos` VALUES ('40', 'plugin/users/users/login', 'ورود به سیستم', null, null, null);

-- ----------------------------
-- Table structure for aclmanager_aros
-- ----------------------------
DROP TABLE IF EXISTS `aclmanager_aros`;
CREATE TABLE `aclmanager_aros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aclmanager_aros
-- ----------------------------
INSERT INTO `aclmanager_aros` VALUES ('8', 'roles', '2');
INSERT INTO `aclmanager_aros` VALUES ('9', 'roles', '1');
INSERT INTO `aclmanager_aros` VALUES ('10', 'roles', '3');

-- ----------------------------
-- Table structure for aclmanager_aros_acos
-- ----------------------------
DROP TABLE IF EXISTS `aclmanager_aros_acos`;
CREATE TABLE `aclmanager_aros_acos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aro_id` int(11) NOT NULL,
  `aco_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `aro_id` (`aro_id`,`aco_id`),
  KEY `aco_id` (`aco_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aclmanager_aros_acos
-- ----------------------------
INSERT INTO `aclmanager_aros_acos` VALUES ('12', '9', '33');
INSERT INTO `aclmanager_aros_acos` VALUES ('9', '9', '34');
INSERT INTO `aclmanager_aros_acos` VALUES ('10', '10', '40');

-- ----------------------------
-- Table structure for plugins
-- ----------------------------
DROP TABLE IF EXISTS `plugins`;
CREATE TABLE `plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme` enum('admin','front') COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_version` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'set to 1 when arrive new version, default is 0',
  `weight` tinyint(4) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL COMMENT '0=deactive\r\n1=active\r\n',
  `default` tinyint(1) DEFAULT '0' COMMENT 'is default theme (admin or front) or not',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of plugins
-- ----------------------------
INSERT INTO `plugins` VALUES ('3', 'Briowebapp', 'admin', null, null, '2', '1', '1');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `weight` int(11) DEFAULT NULL,
  `editable` tinyint(2) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('1', 'site.title', 'bazibartar', null, null, null, '1', '1', null, null, '2015-09-03 22:22:02', '2015-09-03 22:22:02');
INSERT INTO `settings` VALUES ('2', 'plugins', 'BootstrapUI,Metronic,Search,Users,Messages,Bazibartar', null, null, null, null, null, null, null, '2015-09-03 21:16:28', '2015-09-03 21:16:28');

-- ----------------------------
-- Table structure for users_activation_keys
-- ----------------------------
DROP TABLE IF EXISTS `users_activation_keys`;
CREATE TABLE `users_activation_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `activation_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `users_activation_keys_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users_activation_keys
-- ----------------------------

-- ----------------------------
-- Table structure for users_roles
-- ----------------------------
DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE `users_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `users_roles_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `users_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users_roles
-- ----------------------------
INSERT INTO `users_roles` VALUES ('1', '2', 'superadmin', 'مدیریت کل', 'توضیحات', '5', '6');
INSERT INTO `users_roles` VALUES ('2', '3', 'registered', 'کاربران ثبت نام شده', 'کاربران ثبت نام شده', '2', '7');
INSERT INTO `users_roles` VALUES ('3', null, 'public', 'کاربران عمومی', '', '1', '8');
INSERT INTO `users_roles` VALUES ('4', '2', 'admin', 'مدیر', '', '3', '4');

-- ----------------------------
-- Table structure for users_users
-- ----------------------------
DROP TABLE IF EXISTS `users_users`;
CREATE TABLE `users_users` (
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users_users
-- ----------------------------
INSERT INTO `users_users` VALUES ('1', 'admin', '$2y$10$QTZ43cY04mY9YTxEl23QFOkRt9FLFgHO6fCS5FjlLeHv.t/Jt1BgW', 'محمدصالح', 'سیاری', 'ms', '09152225154', '1366/11/16', '/img/avatars/1/0035211c5f5806b7c65234edeacdfc49.jpg', '2', '2016-01-14 11:17:06');

-- ----------------------------
-- Table structure for users_users_roles
-- ----------------------------
DROP TABLE IF EXISTS `users_users_roles`;
CREATE TABLE `users_users_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users_users_roles
-- ----------------------------
