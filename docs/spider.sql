/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : spider

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-06-04 20:12:29
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of spider_aclmanager_acos
-- ----------------------------
INSERT INTO `spider_aclmanager_acos` VALUES ('43', 'Pages/display', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('44', 'plugin/Calculator/Cals/index', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('45', 'plugin/Settings/Admin/Settings/index', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('46', 'plugin/Settings/Admin/Settings/view', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('47', 'plugin/Settings/Admin/Settings/add', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('48', 'plugin/Settings/Admin/Settings/edit', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('49', 'plugin/Settings/Admin/Settings/delete', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('50', 'plugin/AclManager/Admin/Permissions/index', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('51', 'plugin/AclManager/Admin/Permissions/view', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('52', 'plugin/AclManager/Admin/Permissions/add', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('53', 'plugin/AclManager/Admin/Permissions/edit', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('54', 'plugin/AclManager/Admin/Permissions/delete', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('55', 'plugin/PluginManager/Admin/Plugins/index', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('56', 'plugin/PluginManager/Admin/Plugins/view', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('57', 'plugin/PluginManager/Admin/Plugins/add', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('58', 'plugin/PluginManager/Admin/Plugins/edit', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('59', 'plugin/PluginManager/Admin/Plugins/delete', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('60', 'plugin/Users/Users/add', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('61', 'plugin/Users/Users/active', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('62', 'plugin/Users/Users/editPassword', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('63', 'plugin/Users/Users/checkEmail', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('64', 'plugin/Users/Users/forgetPass', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('65', 'plugin/Users/Users/logout', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('66', 'plugin/Users/Users/uploadAvatar', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('67', 'plugin/Users/Admin/Capabilities/index', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('68', 'plugin/Users/Admin/Capabilities/view', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('69', 'plugin/Users/Admin/Capabilities/add', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('70', 'plugin/Users/Admin/Capabilities/edit', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('71', 'plugin/Users/Admin/Capabilities/delete', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('72', 'plugin/Users/Admin/Roles/index', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('73', 'plugin/Users/Admin/Roles/view', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('74', 'plugin/Users/Admin/Roles/add', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('75', 'plugin/Users/Admin/Roles/edit', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('76', 'plugin/Users/Admin/Roles/delete', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('77', 'plugin/Users/Admin/Users/login', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('78', 'plugin/Users/Admin/Users/index', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('79', 'plugin/Users/Admin/Users/view', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('80', 'plugin/Users/Admin/Users/add', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('81', 'plugin/Users/Admin/Users/edit', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('82', 'plugin/Users/Admin/Users/delete', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('84', 'plugin/AclManager/Admin/Permissions/sync', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('85', 'plugin/AclManager/Admin/Permissions/acoList', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('86', 'plugin/Users/Users/login', null, null, null, null);
INSERT INTO `spider_aclmanager_acos` VALUES ('88', 'plugin', null, null, null, null);

-- ----------------------------
-- Table structure for spider_aclmanager_aros
-- ----------------------------
DROP TABLE IF EXISTS `spider_aclmanager_aros`;
CREATE TABLE `spider_aclmanager_aros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of spider_aclmanager_aros
-- ----------------------------
INSERT INTO `spider_aclmanager_aros` VALUES ('26', 'roles', '2');
INSERT INTO `spider_aclmanager_aros` VALUES ('28', 'users', '1');
INSERT INTO `spider_aclmanager_aros` VALUES ('29', 'roles', '4');
INSERT INTO `spider_aclmanager_aros` VALUES ('30', 'roles', '1');
INSERT INTO `spider_aclmanager_aros` VALUES ('31', 'roles', '3');
INSERT INTO `spider_aclmanager_aros` VALUES ('32', 'users', '2');
INSERT INTO `spider_aclmanager_aros` VALUES ('33', 'users', '36');
INSERT INTO `spider_aclmanager_aros` VALUES ('34', 'users', '6');
INSERT INTO `spider_aclmanager_aros` VALUES ('35', 'users', '3');

-- ----------------------------
-- Table structure for spider_aclmanager_aros_acos
-- ----------------------------
DROP TABLE IF EXISTS `spider_aclmanager_aros_acos`;
CREATE TABLE `spider_aclmanager_aros_acos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aro_id` int(11) NOT NULL,
  `aco_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `aro_id` (`aro_id`,`aco_id`),
  KEY `aco_id` (`aco_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1316 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of spider_aclmanager_aros_acos
-- ----------------------------
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('551', '28', '44');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('501', '28', '45');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('502', '28', '46');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('503', '28', '47');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('504', '28', '48');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('505', '28', '49');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('552', '28', '50');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('553', '28', '51');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('554', '28', '52');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('555', '28', '53');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('556', '28', '54');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('557', '28', '55');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('558', '28', '56');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('559', '28', '57');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('560', '28', '58');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('561', '28', '59');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('562', '28', '60');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('563', '28', '61');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('564', '28', '62');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('565', '28', '63');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('566', '28', '64');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('567', '28', '65');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('568', '28', '66');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('569', '28', '67');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('570', '28', '68');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('571', '28', '69');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('572', '28', '70');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('573', '28', '71');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('574', '28', '72');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('575', '28', '73');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('576', '28', '74');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('577', '28', '75');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('578', '28', '76');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('579', '28', '77');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('580', '28', '78');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('581', '28', '79');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('582', '28', '80');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('583', '28', '81');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('584', '28', '82');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('585', '28', '84');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('586', '28', '85');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('587', '28', '86');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('588', '28', '88');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('515', '30', '44');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('525', '30', '45');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('526', '30', '46');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('522', '30', '47');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('524', '30', '48');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('523', '30', '49');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('512', '30', '50');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('514', '30', '51');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('509', '30', '52');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('511', '30', '53');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('510', '30', '54');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('519', '30', '55');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('520', '30', '56');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('516', '30', '57');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('518', '30', '58');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('517', '30', '59');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('544', '30', '60');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('543', '30', '61');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('546', '30', '62');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('545', '30', '63');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('547', '30', '64');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('549', '30', '65');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('550', '30', '66');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('530', '30', '67');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('531', '30', '68');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('527', '30', '69');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('529', '30', '70');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('528', '30', '71');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('535', '30', '72');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('536', '30', '73');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('532', '30', '74');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('534', '30', '75');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('533', '30', '76');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('541', '30', '77');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('540', '30', '78');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('542', '30', '79');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('537', '30', '80');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('539', '30', '81');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('538', '30', '82');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('513', '30', '84');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('508', '30', '85');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('548', '30', '86');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('507', '30', '88');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('499', '31', '45');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('500', '31', '46');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('496', '31', '47');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('498', '31', '48');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('497', '31', '49');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('597', '32', '45');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('598', '32', '46');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('594', '32', '47');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('596', '32', '48');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('595', '32', '49');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1314', '33', '45');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1315', '33', '46');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1311', '33', '47');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1313', '33', '48');
INSERT INTO `spider_aclmanager_aros_acos` VALUES ('1312', '33', '49');

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
INSERT INTO `spider_aclmanager_roles` VALUES ('1', '2', 'superadmin', 'مدیریت کل', 'توضیحات', '5', '6');
INSERT INTO `spider_aclmanager_roles` VALUES ('2', '3', 'registered', 'کاربران ثبت نام شده', 'کاربران ثبت نام شده', '2', '11');
INSERT INTO `spider_aclmanager_roles` VALUES ('3', null, 'public', 'کاربران عمومی', '', '1', '12');
INSERT INTO `spider_aclmanager_roles` VALUES ('4', '2', 'admin', 'مدیر', '', '3', '4');
INSERT INTO `spider_aclmanager_roles` VALUES ('5', '2', 'counter', 'کانتر', null, '7', '10');
INSERT INTO `spider_aclmanager_roles` VALUES ('6', '5', 'agency', 'آژانس', null, '8', '9');

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
INSERT INTO `spider_aclmanager_users_roles` VALUES ('1', '1', '1');
INSERT INTO `spider_aclmanager_users_roles` VALUES ('6', '28', '2');
INSERT INTO `spider_aclmanager_users_roles` VALUES ('7', '33', '2');
INSERT INTO `spider_aclmanager_users_roles` VALUES ('46', '36', '1');
INSERT INTO `spider_aclmanager_users_roles` VALUES ('49', '36', '6');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of spider_plugins_plugins
-- ----------------------------
INSERT INTO `spider_plugins_plugins` VALUES ('3', 'Briowebapp', 'admin', null, null, '2', '1', '1');
INSERT INTO `spider_plugins_plugins` VALUES ('4', 'Calculator', null, null, null, null, '1', '0');

-- ----------------------------
-- Table structure for spider_settings_settings
-- ----------------------------
DROP TABLE IF EXISTS `spider_settings_settings`;
CREATE TABLE `spider_settings_settings` (
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
-- Records of spider_settings_settings
-- ----------------------------
INSERT INTO `spider_settings_settings` VALUES ('1', 'site.title', 'bazibartar', null, null, null, '1', '1', null, null, '2015-09-03 22:22:02', '2015-09-03 22:22:02');
INSERT INTO `spider_settings_settings` VALUES ('2', 'plugins', 'BootstrapUI,Metronic,Search,Users,Messages,Bazibartar', null, null, null, null, null, null, null, '2015-09-03 21:16:28', '2015-09-03 21:16:28');

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
INSERT INTO `spider_users_users` VALUES ('1', 'admin', '$2y$10$QTZ43cY04mY9YTxEl23QFOkRt9FLFgHO6fCS5FjlLeHv.t/Jt1BgW', 'mohammadsaleh', 'sayari', 'Spider admin', '09151206735', '1366/11/16', '/img/avatars/1/0035211c5f5806b7c65234edeacdfc49.jpg', '1', '2016-06-04 11:33:45');
INSERT INTO `spider_users_users` VALUES ('2', 'test', '$2y$10$QTZ43cY04mY9YTxEl23QFOkRt9FLFgHO6fCS5FjlLeHv.t/Jt1BgW', 'm', 's', null, null, null, null, '1', '2016-06-04 13:25:28');
INSERT INTO `spider_users_users` VALUES ('22', 'ali_s@gmail.com', '$2y$10$Vhd1xu4sRK91NOk8cE6w/eSdv1g07yZrGzW0EVF9ylo.JT/wtztOm', null, null, null, null, null, null, '0', '2016-06-04 15:52:29');
INSERT INTO `spider_users_users` VALUES ('23', 'ali_secad95a6-7a20-48b7-9301-d5edae2329ed@gmail.com', '$2y$10$qgJE8nnmt.14i6oHNmQV0esQTowDw31fQ3vrECVTxtP2eX8uC3ISS', null, null, null, null, null, null, '0', '2016-06-04 15:53:27');
INSERT INTO `spider_users_users` VALUES ('24', 'ali_s18d6b483-1933-40a2-aec1-c94f31de56e7@gmail.com', '$2y$10$TSuW1o43CBvR8n6FiSdPYOiwfwEj11mEwXd1PjEW3yLlQAy5bY066', null, null, null, null, null, null, '0', '2016-06-04 15:53:34');
INSERT INTO `spider_users_users` VALUES ('25', 'ali_sae1461d1-cf34-4ba7-978a-abd37a213c9f@gmail.com', '$2y$10$Gh3tYL4s759IeSSGLVcmvOnDVsmcpk3SZgfMqhyuZVaK/d29cGk3q', null, null, null, null, null, null, '0', '2016-06-04 15:53:45');
INSERT INTO `spider_users_users` VALUES ('26', 'ali_sfa3149c0-99e1-4efa-81ac-2c86f184e9e9@gmail.com', '$2y$10$.FhXFy8Zm5mY/nXRctFKRu6jcpCx8IDhxDkktdkkI8Lrg3s.zN.m.', null, null, null, null, null, null, '0', '2016-06-04 16:25:18');
INSERT INTO `spider_users_users` VALUES ('27', '2c86f184e9e9@gmail.com', '$2y$10$w6lDRjRfpZHBGC1uvUMw8OkPve68guRKPui1xuQFrNMp6FqhEqtqO', null, null, null, null, null, null, '0', '2016-06-04 16:25:58');
INSERT INTO `spider_users_users` VALUES ('28', 'ali_sea96a84b-40a8-4a96-8cc2-d03de4e7f36f@gmail.com', '$2y$10$FSZBl/lrar5xrD1sOh5IBe2SVU612Uu9LID4l2tiU5V814rAZ/qM.', null, null, null, null, null, null, '0', '2016-06-04 17:41:13');
INSERT INTO `spider_users_users` VALUES ('33', 'ali_sc0450f77-5ecb-4c45-851a-2fa71ecd5731@gmail.com', '$2y$10$1xmgNF14pPEpuzHKtj9G/e/Rh2vJCnOTd9vs05BvKHNnrZ/ldfPr6', null, null, null, null, null, null, '0', '2016-06-04 18:07:52');
INSERT INTO `spider_users_users` VALUES ('34', 'ali_scb5a8d60-62fd-4fb8-9f51-ccbf435cdbe9@gmail.com', '$2y$10$HCLGxgDgz45mHDWd9wIG9eJhILZYGAsWeIkCXt7eQzJQYRUXibjXa', null, null, null, null, null, null, '0', '2016-06-04 18:16:00');
INSERT INTO `spider_users_users` VALUES ('35', 'ali_s1563a57b-5c66-4f91-a778-94bee71a9b84@gmail.com', '$2y$10$A2yLqQbfLPtEEsprAAhsA.TqnlJd0q7a0.KRQocXxBNPwupBMp73W', null, null, null, null, null, null, '0', '2016-06-04 18:22:11');
INSERT INTO `spider_users_users` VALUES ('36', 'ali_s21a9f89d-deda-41ff-b68e-33bbc0a8f389@gmail.com', '$2y$10$23gZCTqFpNixq6KRGDEsSuhgnmGCeA36LuaDqqv4VdATGA5mM.jDm', null, null, null, null, null, null, '0', '2016-06-04 19:11:12');
