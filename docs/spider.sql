/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50715
Source Host           : localhost:3306
Source Database       : spider

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2017-05-07 15:46:34
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of spider_aclmanager_acos
-- ----------------------------
INSERT INTO `spider_aclmanager_acos` VALUES ('43', 'Pages/display', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('88', 'plugin', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('89', 'Pages/display/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('90', 'plugin/Settings/Admin/Settings/index/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('91', 'plugin/Captcha/Captcha/create/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('92', 'plugin/AclManager/Admin/Permissions/index/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('93', 'plugin/AclManager/Admin/Permissions/sync/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('94', 'plugin/AclManager/Admin/Permissions/acoList/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('95', 'plugin/AclManager/Admin/Roles/index/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('96', 'plugin/AclManager/Admin/Roles/view/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('97', 'plugin/AclManager/Admin/Roles/add/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('98', 'plugin/AclManager/Admin/Roles/edit/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('99', 'plugin/AclManager/Admin/Roles/delete/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('100', 'plugin/PluginManager/Admin/Plugins/index/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('101', 'plugin/PluginManager/Admin/Plugins/view/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('102', 'plugin/PluginManager/Admin/Plugins/add/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('103', 'plugin/PluginManager/Admin/Plugins/edit/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('104', 'plugin/PluginManager/Admin/Plugins/delete/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('105', 'plugin/Users/Users/login/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('106', 'plugin/Users/Users/add/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('107', 'plugin/Users/Users/active/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('108', 'plugin/Users/Users/editPassword/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('109', 'plugin/Users/Users/checkEmail/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('110', 'plugin/Users/Users/forgetPass/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('111', 'plugin/Users/Users/logout/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('112', 'plugin/Users/Users/uploadAvatar/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('113', 'plugin/Users/Admin/Users/login/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('114', 'plugin/Users/Admin/Users/index/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('115', 'plugin/Users/Admin/Users/view/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('116', 'plugin/Users/Admin/Users/add/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('117', 'plugin/Users/Admin/Users/edit/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('118', 'plugin/Users/Admin/Users/delete/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('119', 'plugin/Users/Admin/Users/profile/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('120', 'plugin/Users/Admin/Users/unlock/', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('121', 'plugin/Bird/Admin/Dashboards/index/', null, null, null, null);

-- ----------------------------
-- Table structure for spider_aclmanager_aros
-- ----------------------------
DROP TABLE IF EXISTS `spider_aclmanager_aros`;
CREATE TABLE `spider_aclmanager_aros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of spider_aclmanager_aros
-- ----------------------------
INSERT INTO `spider_aclmanager_aros` VALUES ('1', 'roles', '4');
INSERT INTO `spider_aclmanager_aros` VALUES ('36', 'users', '4');
INSERT INTO `spider_aclmanager_aros` VALUES ('37', 'users', '1');
INSERT INTO `spider_aclmanager_aros` VALUES ('38', 'roles', '1');
INSERT INTO `spider_aclmanager_aros` VALUES ('39', 'users', '2');
INSERT INTO `spider_aclmanager_aros` VALUES ('40', 'users', '3');

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
) ENGINE=InnoDB AUTO_INCREMENT=1352 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of spider_aclmanager_aros_acos
-- ----------------------------
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('588', '1', '88', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1316', '1', '94', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1317', '1', '92', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1318', '1', '93', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1319', '1', '97', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1320', '1', '99', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1321', '1', '98', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1322', '1', '95', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1323', '1', '96', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1324', '1', '121', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1325', '1', '91', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1326', '1', '102', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1327', '1', '104', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1328', '1', '103', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1329', '1', '100', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1330', '1', '101', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1331', '1', '90', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1332', '1', '116', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1333', '1', '118', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1334', '1', '117', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1335', '1', '114', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1336', '1', '113', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1337', '1', '119', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1338', '1', '120', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1339', '1', '115', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1340', '1', '107', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1341', '1', '106', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1342', '1', '109', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1343', '1', '108', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1344', '1', '110', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1345', '1', '105', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1346', '1', '111', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1347', '1', '112', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1348', '1', '43', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1349', '1', '89', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1350', '38', '43', null);
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1351', '38', '89', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of spider_aclmanager_roles
-- ----------------------------
INSERT INTO `spider_aclmanager_roles` VALUES ('1', null, 'public', 'کاربر عمومی', null, '1', '8');
INSERT INTO `spider_aclmanager_roles` VALUES ('2', '1', 'registered', 'کاربر ثبت نام شده', null, '2', '7');
INSERT INTO `spider_aclmanager_roles` VALUES ('3', '2', 'admin', 'مدیر', null, '3', '6');
INSERT INTO `spider_aclmanager_roles` VALUES ('4', '3', 'superadmin', 'مدیرکل', null, '4', '5');

-- ----------------------------
-- Table structure for spider_aclmanager_users_roles
-- ----------------------------
DROP TABLE IF EXISTS `spider_aclmanager_users_roles`;
CREATE TABLE `spider_aclmanager_users_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of spider_plugins_plugins
-- ----------------------------
INSERT INTO `spider_plugins_plugins` VALUES ('3', 'Bird', 'admin', null, null, '2', '1', '1');
INSERT INTO `spider_plugins_plugins` VALUES ('5', 'DataTables', null, null, null, null, '1', '0');

-- ----------------------------
-- Table structure for spider_settings_settings
-- ----------------------------
DROP TABLE IF EXISTS `spider_settings_settings`;
CREATE TABLE `spider_settings_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `params` text COLLATE utf8_unicode_ci,
  `weight` int(11) DEFAULT NULL,
  `editable` tinyint(2) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of spider_settings_settings
-- ----------------------------
INSERT INTO `spider_settings_settings` VALUES ('1', 'site.title', 'Spider', 'Site Title', 'the title of site', 'text', null, '2', '1', '1', null, '2017-05-07 15:14:57', '2015');
INSERT INTO `spider_settings_settings` VALUES ('32', 'site.privacy', '<p>Write your privacy and policy here .....</p>\r\n', 'Privacy Policy', null, 'textarea', '{\"ckeditor\":true}', '1', '1', '1', null, '2017-05-07 15:14:57', '0');
INSERT INTO `spider_settings_settings` VALUES ('36', 'site.status', 'online', 'Site Status', null, 'radio', '{\"options\":[{\"text\":\"Offline\",\"value\":\"offline\",\"class\":\"control-warning\"},{\"text\":\"Online\",\"value\":\"online\",\"class\":\"control-info\"}],\"label\":false,\"div\":false}', '3', '1', '1', null, '2017-05-07 15:14:57', '0');

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
  `status` tinyint(4) DEFAULT '0' COMMENT '-1=حذف شده\r\n0=غیرفعال\r\n1=فعال',
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of spider_users_users
-- ----------------------------
INSERT INTO `spider_users_users` VALUES ('1', 'superadmin', '$2y$10$cqC39uic1CvRduur1HM5LepCUEZPFTvaEm/A3iFvO/5.pyUuqmIQy', 'Mohammad Saleh', 'Sayari', '', '09152225154', '1366/11/16', '', '1', '2017-05-07 14:04:51');
