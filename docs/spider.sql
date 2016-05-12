/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : spider

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-05-12 17:35:40
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
-- Table structure for cities
-- ----------------------------
DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'نام شهر',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=341 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cities
-- ----------------------------
INSERT INTO `cities` VALUES ('1', 'آبادان');
INSERT INTO `cities` VALUES ('2', 'آباده');
INSERT INTO `cities` VALUES ('3', 'آبدانان');
INSERT INTO `cities` VALUES ('4', 'آبیک');
INSERT INTO `cities` VALUES ('5', 'آذرشهر');
INSERT INTO `cities` VALUES ('6', 'آران و بیدگل');
INSERT INTO `cities` VALUES ('7', 'آزادشهر');
INSERT INTO `cities` VALUES ('8', 'آزادشهر');
INSERT INTO `cities` VALUES ('9', 'آستارا');
INSERT INTO `cities` VALUES ('10', 'آستانه اشرفیه');
INSERT INTO `cities` VALUES ('11', 'آشتيان');
INSERT INTO `cities` VALUES ('12', 'آق‌قلا');
INSERT INTO `cities` VALUES ('13', 'آمل');
INSERT INTO `cities` VALUES ('14', 'ابرکوه');
INSERT INTO `cities` VALUES ('15', 'ابهر');
INSERT INTO `cities` VALUES ('16', 'ابوموسي');
INSERT INTO `cities` VALUES ('17', 'اراک');
INSERT INTO `cities` VALUES ('18', 'اردبیل');
INSERT INTO `cities` VALUES ('19', 'اردستان');
INSERT INTO `cities` VALUES ('20', 'اردل');
INSERT INTO `cities` VALUES ('21', 'اردکان');
INSERT INTO `cities` VALUES ('22', 'ارسنجان');
INSERT INTO `cities` VALUES ('23', 'ارومیه');
INSERT INTO `cities` VALUES ('24', 'ازنا');
INSERT INTO `cities` VALUES ('25', 'استهبان');
INSERT INTO `cities` VALUES ('26', 'اسدآباد');
INSERT INTO `cities` VALUES ('27', 'اسفراین');
INSERT INTO `cities` VALUES ('28', 'اسلام‌آباد غرب');
INSERT INTO `cities` VALUES ('29', 'اسلام‌شهر');
INSERT INTO `cities` VALUES ('30', 'اسکو');
INSERT INTO `cities` VALUES ('31', 'اشنویه');
INSERT INTO `cities` VALUES ('32', 'اصفهان');
INSERT INTO `cities` VALUES ('33', 'اقلید');
INSERT INTO `cities` VALUES ('34', 'البرز');
INSERT INTO `cities` VALUES ('35', 'اليگودرز');
INSERT INTO `cities` VALUES ('36', 'امیدیه');
INSERT INTO `cities` VALUES ('37', 'اندیمشک');
INSERT INTO `cities` VALUES ('38', 'اهر');
INSERT INTO `cities` VALUES ('39', 'اهواز');
INSERT INTO `cities` VALUES ('40', 'اَملَش');
INSERT INTO `cities` VALUES ('41', 'ایجرود');
INSERT INTO `cities` VALUES ('42', 'ایذه');
INSERT INTO `cities` VALUES ('43', 'ایرانشهر');
INSERT INTO `cities` VALUES ('44', 'ایلام');
INSERT INTO `cities` VALUES ('45', 'ایوان');
INSERT INTO `cities` VALUES ('46', 'بابل');
INSERT INTO `cities` VALUES ('47', 'بابلسر');
INSERT INTO `cities` VALUES ('48', 'باغ‌ملک');
INSERT INTO `cities` VALUES ('49', 'بافت');
INSERT INTO `cities` VALUES ('50', 'بافق');
INSERT INTO `cities` VALUES ('51', 'بانه');
INSERT INTO `cities` VALUES ('52', 'بجنورد');
INSERT INTO `cities` VALUES ('53', 'برخوار و میمه');
INSERT INTO `cities` VALUES ('54', 'بردسکن');
INSERT INTO `cities` VALUES ('55', 'بردسیر');
INSERT INTO `cities` VALUES ('56', 'بروجرد');
INSERT INTO `cities` VALUES ('57', 'بروجن');
INSERT INTO `cities` VALUES ('58', 'بستان‌آباد');
INSERT INTO `cities` VALUES ('59', 'بستک');
INSERT INTO `cities` VALUES ('60', 'بم');
INSERT INTO `cities` VALUES ('61', 'بناب');
INSERT INTO `cities` VALUES ('62', 'بندر انزلی');
INSERT INTO `cities` VALUES ('63', 'بندر عباس');
INSERT INTO `cities` VALUES ('64', 'بندر لنگه');
INSERT INTO `cities` VALUES ('65', 'بندر ماهشهر');
INSERT INTO `cities` VALUES ('66', 'بندر گز');
INSERT INTO `cities` VALUES ('67', 'بهار');
INSERT INTO `cities` VALUES ('68', 'بهبهان');
INSERT INTO `cities` VALUES ('69', 'بهشهر');
INSERT INTO `cities` VALUES ('70', 'بهمئی');
INSERT INTO `cities` VALUES ('71', 'بوئین‌زهرا');
INSERT INTO `cities` VALUES ('72', 'بوانات');
INSERT INTO `cities` VALUES ('73', 'بوشهر');
INSERT INTO `cities` VALUES ('74', 'بوکان');
INSERT INTO `cities` VALUES ('75', 'بویراحمد');
INSERT INTO `cities` VALUES ('76', 'بیجار');
INSERT INTO `cities` VALUES ('77', 'بیرجند');
INSERT INTO `cities` VALUES ('78', 'بیله‌سوار');
INSERT INTO `cities` VALUES ('79', 'تاکستان');
INSERT INTO `cities` VALUES ('80', 'تایباد');
INSERT INTO `cities` VALUES ('81', 'تبریز');
INSERT INTO `cities` VALUES ('82', 'تربت جام');
INSERT INTO `cities` VALUES ('83', 'تربت حیدریه');
INSERT INTO `cities` VALUES ('84', 'ترکمن');
INSERT INTO `cities` VALUES ('85', 'تفت');
INSERT INTO `cities` VALUES ('86', 'تفرش');
INSERT INTO `cities` VALUES ('87', 'تنکابن');
INSERT INTO `cities` VALUES ('88', 'تنگستان');
INSERT INTO `cities` VALUES ('89', 'تهران');
INSERT INTO `cities` VALUES ('90', 'تويسرکان');
INSERT INTO `cities` VALUES ('91', 'تکاب');
INSERT INTO `cities` VALUES ('92', 'تیران و کرون');
INSERT INTO `cities` VALUES ('93', 'ثلاث باباجانی');
INSERT INTO `cities` VALUES ('94', 'جاجرم');
INSERT INTO `cities` VALUES ('95', 'جاسک');
INSERT INTO `cities` VALUES ('96', 'جلفا');
INSERT INTO `cities` VALUES ('97', 'جم');
INSERT INTO `cities` VALUES ('98', 'جهرم');
INSERT INTO `cities` VALUES ('99', 'جوانرود');
INSERT INTO `cities` VALUES ('100', 'جويبار');
INSERT INTO `cities` VALUES ('101', 'جیرفت');
INSERT INTO `cities` VALUES ('102', 'حاجي‌آباد');
INSERT INTO `cities` VALUES ('103', 'خاتم');
INSERT INTO `cities` VALUES ('104', 'خاش');
INSERT INTO `cities` VALUES ('105', 'خدابنده');
INSERT INTO `cities` VALUES ('106', 'خرمدره');
INSERT INTO `cities` VALUES ('107', 'خرمشهر');
INSERT INTO `cities` VALUES ('108', 'خرم‌آباد');
INSERT INTO `cities` VALUES ('109', 'خرم‌بید');
INSERT INTO `cities` VALUES ('110', 'خلخال');
INSERT INTO `cities` VALUES ('111', 'خلیل‌آباد');
INSERT INTO `cities` VALUES ('112', 'خمير');
INSERT INTO `cities` VALUES ('113', 'خمين');
INSERT INTO `cities` VALUES ('114', 'خمینی‌شهر');
INSERT INTO `cities` VALUES ('115', 'خنج');
INSERT INTO `cities` VALUES ('116', 'خواف');
INSERT INTO `cities` VALUES ('117', 'خوانسار');
INSERT INTO `cities` VALUES ('118', 'خوی');
INSERT INTO `cities` VALUES ('119', 'داراب');
INSERT INTO `cities` VALUES ('120', 'دالاهو');
INSERT INTO `cities` VALUES ('121', 'دامغان');
INSERT INTO `cities` VALUES ('122', 'درمیان');
INSERT INTO `cities` VALUES ('123', 'دره‌شهر');
INSERT INTO `cities` VALUES ('124', 'درگز');
INSERT INTO `cities` VALUES ('125', 'دزفول');
INSERT INTO `cities` VALUES ('126', 'دشت آزادگان');
INSERT INTO `cities` VALUES ('127', 'دشتستان');
INSERT INTO `cities` VALUES ('128', 'دشتی');
INSERT INTO `cities` VALUES ('129', 'دلفان');
INSERT INTO `cities` VALUES ('130', 'دليجان');
INSERT INTO `cities` VALUES ('131', 'دلگان');
INSERT INTO `cities` VALUES ('132', 'دماوند');
INSERT INTO `cities` VALUES ('133', 'دنا');
INSERT INTO `cities` VALUES ('134', 'دهلران');
INSERT INTO `cities` VALUES ('135', 'دورود');
INSERT INTO `cities` VALUES ('136', 'دیر');
INSERT INTO `cities` VALUES ('137', 'دیلم');
INSERT INTO `cities` VALUES ('138', 'دیواندره');
INSERT INTO `cities` VALUES ('139', 'رامسر');
INSERT INTO `cities` VALUES ('140', 'رامشیر');
INSERT INTO `cities` VALUES ('141', 'رامهرمز');
INSERT INTO `cities` VALUES ('142', 'رامیان');
INSERT INTO `cities` VALUES ('143', 'راور');
INSERT INTO `cities` VALUES ('144', 'رباط‌کریم');
INSERT INTO `cities` VALUES ('145', 'رزن');
INSERT INTO `cities` VALUES ('146', 'رشت');
INSERT INTO `cities` VALUES ('147', 'رشتخوار');
INSERT INTO `cities` VALUES ('148', 'رضوانشهر');
INSERT INTO `cities` VALUES ('149', 'رفسنجان');
INSERT INTO `cities` VALUES ('150', 'روانسر');
INSERT INTO `cities` VALUES ('151', 'رودان');
INSERT INTO `cities` VALUES ('152', 'رودبار');
INSERT INTO `cities` VALUES ('153', 'رودبار جنوب');
INSERT INTO `cities` VALUES ('154', 'رودسر');
INSERT INTO `cities` VALUES ('155', 'ری');
INSERT INTO `cities` VALUES ('156', 'زابل');
INSERT INTO `cities` VALUES ('157', 'زاهدان');
INSERT INTO `cities` VALUES ('158', 'زرند');
INSERT INTO `cities` VALUES ('159', 'زرنديه');
INSERT INTO `cities` VALUES ('160', 'زرین‌دشت');
INSERT INTO `cities` VALUES ('161', 'زنجان');
INSERT INTO `cities` VALUES ('162', 'زهک');
INSERT INTO `cities` VALUES ('163', 'ساري');
INSERT INTO `cities` VALUES ('164', 'ساوجبلاغ');
INSERT INTO `cities` VALUES ('165', 'ساوه');
INSERT INTO `cities` VALUES ('166', 'سبزوار');
INSERT INTO `cities` VALUES ('167', 'سراب');
INSERT INTO `cities` VALUES ('168', 'سراوان');
INSERT INTO `cities` VALUES ('169', 'سرایان');
INSERT INTO `cities` VALUES ('170', 'سرباز');
INSERT INTO `cities` VALUES ('171', 'سربیشه');
INSERT INTO `cities` VALUES ('172', 'سرخس');
INSERT INTO `cities` VALUES ('173', 'سردشت');
INSERT INTO `cities` VALUES ('174', 'سروآباد');
INSERT INTO `cities` VALUES ('175', 'سرپل ذهاب');
INSERT INTO `cities` VALUES ('176', 'سقز');
INSERT INTO `cities` VALUES ('177', 'سلسله');
INSERT INTO `cities` VALUES ('178', 'سلماس');
INSERT INTO `cities` VALUES ('179', 'سمنان');
INSERT INTO `cities` VALUES ('180', 'سمیرم');
INSERT INTO `cities` VALUES ('181', 'سمیرم سفلی');
INSERT INTO `cities` VALUES ('182', 'سنقر');
INSERT INTO `cities` VALUES ('183', 'سنندج');
INSERT INTO `cities` VALUES ('184', 'سوادکوه');
INSERT INTO `cities` VALUES ('185', 'سپیدان');
INSERT INTO `cities` VALUES ('186', 'سیاهکل');
INSERT INTO `cities` VALUES ('187', 'سیرجان');
INSERT INTO `cities` VALUES ('188', 'شادگان');
INSERT INTO `cities` VALUES ('189', 'شازند');
INSERT INTO `cities` VALUES ('190', 'شاهرود');
INSERT INTO `cities` VALUES ('191', 'شاهین‌دژ');
INSERT INTO `cities` VALUES ('192', 'شبستر');
INSERT INTO `cities` VALUES ('193', 'شمیرانات');
INSERT INTO `cities` VALUES ('194', 'شهر بابک');
INSERT INTO `cities` VALUES ('195', 'شهرضا');
INSERT INTO `cities` VALUES ('196', 'شهرکرد');
INSERT INTO `cities` VALUES ('197', 'شهریار');
INSERT INTO `cities` VALUES ('198', 'شوش');
INSERT INTO `cities` VALUES ('199', 'شوشتر');
INSERT INTO `cities` VALUES ('200', 'شَفت');
INSERT INTO `cities` VALUES ('201', 'شیراز');
INSERT INTO `cities` VALUES ('202', 'شیروان');
INSERT INTO `cities` VALUES ('203', 'شیروان و چرداول');
INSERT INTO `cities` VALUES ('204', 'صحنه');
INSERT INTO `cities` VALUES ('205', 'صدوق');
INSERT INTO `cities` VALUES ('206', 'صومعه‌سرا');
INSERT INTO `cities` VALUES ('207', 'طارم');
INSERT INTO `cities` VALUES ('208', 'طبس');
INSERT INTO `cities` VALUES ('209', 'طوالش');
INSERT INTO `cities` VALUES ('210', 'عجب‌شیر');
INSERT INTO `cities` VALUES ('211', 'علی‌آباد');
INSERT INTO `cities` VALUES ('212', 'عنبرآباد');
INSERT INTO `cities` VALUES ('213', 'فارسان');
INSERT INTO `cities` VALUES ('214', 'فاروج');
INSERT INTO `cities` VALUES ('215', 'فراشبند');
INSERT INTO `cities` VALUES ('216', 'فردوس');
INSERT INTO `cities` VALUES ('217', 'فریدن');
INSERT INTO `cities` VALUES ('218', 'فریدون‌شهر');
INSERT INTO `cities` VALUES ('219', 'فریمان');
INSERT INTO `cities` VALUES ('220', 'فسا');
INSERT INTO `cities` VALUES ('221', 'فلاورجان');
INSERT INTO `cities` VALUES ('222', 'فومَن');
INSERT INTO `cities` VALUES ('223', 'فیروزآباد');
INSERT INTO `cities` VALUES ('224', 'فیروزکوه');
INSERT INTO `cities` VALUES ('225', 'قائم‌شهر');
INSERT INTO `cities` VALUES ('226', 'قائنات');
INSERT INTO `cities` VALUES ('227', 'قروه');
INSERT INTO `cities` VALUES ('228', 'قزوین');
INSERT INTO `cities` VALUES ('229', 'قشم');
INSERT INTO `cities` VALUES ('230', 'قصر شیرین');
INSERT INTO `cities` VALUES ('231', 'قلعه گنج');
INSERT INTO `cities` VALUES ('232', 'قم');
INSERT INTO `cities` VALUES ('233', 'قوچان');
INSERT INTO `cities` VALUES ('234', 'قیر و کارزین');
INSERT INTO `cities` VALUES ('235', 'لارستان');
INSERT INTO `cities` VALUES ('236', 'لالی');
INSERT INTO `cities` VALUES ('237', 'لامِرد');
INSERT INTO `cities` VALUES ('238', 'لاهیجان');
INSERT INTO `cities` VALUES ('239', 'لردگان');
INSERT INTO `cities` VALUES ('240', 'لنجان');
INSERT INTO `cities` VALUES ('241', 'لنگرود');
INSERT INTO `cities` VALUES ('242', 'ماسال');
INSERT INTO `cities` VALUES ('243', 'مانه و سملقان');
INSERT INTO `cities` VALUES ('244', 'ماه‌نشان');
INSERT INTO `cities` VALUES ('245', 'ماکو');
INSERT INTO `cities` VALUES ('246', 'مبارکه');
INSERT INTO `cities` VALUES ('247', 'محلات');
INSERT INTO `cities` VALUES ('248', 'محمودآباد');
INSERT INTO `cities` VALUES ('249', 'مراغه');
INSERT INTO `cities` VALUES ('250', 'مراوه‌تپه');
INSERT INTO `cities` VALUES ('251', 'مرند');
INSERT INTO `cities` VALUES ('252', 'مرودشت');
INSERT INTO `cities` VALUES ('253', 'مریوان');
INSERT INTO `cities` VALUES ('254', 'مسجد سلیمان');
INSERT INTO `cities` VALUES ('255', 'مشهد');
INSERT INTO `cities` VALUES ('256', 'ملاير');
INSERT INTO `cities` VALUES ('257', 'ملکان');
INSERT INTO `cities` VALUES ('258', 'ممسنی');
INSERT INTO `cities` VALUES ('259', 'منوجان');
INSERT INTO `cities` VALUES ('260', 'مه ولات');
INSERT INTO `cities` VALUES ('261', 'مهاباد');
INSERT INTO `cities` VALUES ('262', 'مهدی‌شهر');
INSERT INTO `cities` VALUES ('263', 'مهر');
INSERT INTO `cities` VALUES ('264', 'مهران');
INSERT INTO `cities` VALUES ('265', 'مهريز');
INSERT INTO `cities` VALUES ('266', 'ميناب');
INSERT INTO `cities` VALUES ('267', 'مِشگین‌شهر');
INSERT INTO `cities` VALUES ('268', 'مِيبُد');
INSERT INTO `cities` VALUES ('269', 'میاندوآب');
INSERT INTO `cities` VALUES ('270', 'میانه');
INSERT INTO `cities` VALUES ('271', 'مینودشت');
INSERT INTO `cities` VALUES ('272', 'نائین');
INSERT INTO `cities` VALUES ('273', 'نجف‌آباد');
INSERT INTO `cities` VALUES ('274', 'نطنز');
INSERT INTO `cities` VALUES ('275', 'نظرآباد');
INSERT INTO `cities` VALUES ('276', 'نقده');
INSERT INTO `cities` VALUES ('277', 'نهاوند');
INSERT INTO `cities` VALUES ('278', 'نهبندان');
INSERT INTO `cities` VALUES ('279', 'نور');
INSERT INTO `cities` VALUES ('280', 'نوشهر');
INSERT INTO `cities` VALUES ('281', 'نَمین');
INSERT INTO `cities` VALUES ('282', 'نکا');
INSERT INTO `cities` VALUES ('283', 'نیر');
INSERT INTO `cities` VALUES ('284', 'نیشابور');
INSERT INTO `cities` VALUES ('285', 'نیک‌شهر');
INSERT INTO `cities` VALUES ('286', 'نی‌ریز');
INSERT INTO `cities` VALUES ('287', 'هرسین');
INSERT INTO `cities` VALUES ('288', 'هریس');
INSERT INTO `cities` VALUES ('289', 'هشترود');
INSERT INTO `cities` VALUES ('290', 'همدان');
INSERT INTO `cities` VALUES ('291', 'هندیجان');
INSERT INTO `cities` VALUES ('292', 'ورامین');
INSERT INTO `cities` VALUES ('293', 'ورزقان');
INSERT INTO `cities` VALUES ('294', 'يزد');
INSERT INTO `cities` VALUES ('295', 'پارس‌آباد');
INSERT INTO `cities` VALUES ('296', 'پاسارگاد');
INSERT INTO `cities` VALUES ('297', 'پاوه');
INSERT INTO `cities` VALUES ('298', 'پاکدشت');
INSERT INTO `cities` VALUES ('299', 'پل‌دختر');
INSERT INTO `cities` VALUES ('300', 'پیرانشهر');
INSERT INTO `cities` VALUES ('301', 'چابهار');
INSERT INTO `cities` VALUES ('302', 'چادگان');
INSERT INTO `cities` VALUES ('303', 'چاراویماق');
INSERT INTO `cities` VALUES ('304', 'چالدران');
INSERT INTO `cities` VALUES ('305', 'چالوس');
INSERT INTO `cities` VALUES ('306', 'چناران');
INSERT INTO `cities` VALUES ('307', 'کازرون');
INSERT INTO `cities` VALUES ('308', 'کاشان');
INSERT INTO `cities` VALUES ('309', 'کاشمر');
INSERT INTO `cities` VALUES ('310', 'کامیاران');
INSERT INTO `cities` VALUES ('311', 'کبودرآهنگ');
INSERT INTO `cities` VALUES ('312', 'کرج');
INSERT INTO `cities` VALUES ('313', 'کردکوی');
INSERT INTO `cities` VALUES ('314', 'کرمان');
INSERT INTO `cities` VALUES ('315', 'کرمانشاه');
INSERT INTO `cities` VALUES ('316', 'کلات');
INSERT INTO `cities` VALUES ('317', 'کلاله');
INSERT INTO `cities` VALUES ('318', 'کلیبر');
INSERT INTO `cities` VALUES ('319', 'کميجان');
INSERT INTO `cities` VALUES ('320', 'کنارک');
INSERT INTO `cities` VALUES ('321', 'کنگان');
INSERT INTO `cities` VALUES ('322', 'کنگاور');
INSERT INTO `cities` VALUES ('323', 'کهنوج');
INSERT INTO `cities` VALUES ('324', 'کهگیلویه');
INSERT INTO `cities` VALUES ('325', 'کوثر');
INSERT INTO `cities` VALUES ('326', 'کوهبنان');
INSERT INTO `cities` VALUES ('327', 'کوهدشت');
INSERT INTO `cities` VALUES ('328', 'کوهرنگ');
INSERT INTO `cities` VALUES ('329', 'گاوبندي');
INSERT INTO `cities` VALUES ('330', 'گتوند');
INSERT INTO `cities` VALUES ('331', 'گرمسار');
INSERT INTO `cities` VALUES ('332', 'گرگان');
INSERT INTO `cities` VALUES ('333', 'گلوگاه');
INSERT INTO `cities` VALUES ('334', 'گلپایگان');
INSERT INTO `cities` VALUES ('335', 'گناباد');
INSERT INTO `cities` VALUES ('336', 'گناوه');
INSERT INTO `cities` VALUES ('337', 'گنبد کاووس');
INSERT INTO `cities` VALUES ('338', 'گِرمی');
INSERT INTO `cities` VALUES ('339', 'گچساران');
INSERT INTO `cities` VALUES ('340', 'گیلان غرب');

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'نام کشور',
  `full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'نام کامل کشور',
  `fifa_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES ('2', 'Bangladesh', 'BANGLADESH', 'BAN');
INSERT INTO `countries` VALUES ('3', 'Belgium', 'BELGIUM', 'BEL');
INSERT INTO `countries` VALUES ('4', 'Burkina Faso', 'BURKINA FASO', 'BFA');
INSERT INTO `countries` VALUES ('5', 'Bulgaria', 'BULGARIA', 'BUL');
INSERT INTO `countries` VALUES ('6', 'Bosnia and Herzegovina', 'BOSNIA AND HERZEGOVINA', 'BIH');
INSERT INTO `countries` VALUES ('7', 'Barbados', 'BARBADOS', 'BRB');
INSERT INTO `countries` VALUES ('8', 'Wallis and Futuna Islands', 'WALLIS AND FUTUNA', 'WLF');
INSERT INTO `countries` VALUES ('9', 'Saint Barthélemy', 'SAINT BARTHÉLEMY', ' ');
INSERT INTO `countries` VALUES ('10', 'Bermuda', 'BERMUDA', 'BER');
INSERT INTO `countries` VALUES ('11', 'Brunei Darussalam', 'BRUNEI DARUSSALAM', 'BRU');
INSERT INTO `countries` VALUES ('12', 'Bolivia', 'BOLIVIA, PLURINATIONAL STATE OF', 'BOL');
INSERT INTO `countries` VALUES ('13', 'Bahrain', 'BAHRAIN', 'BHR');
INSERT INTO `countries` VALUES ('14', 'Burundi', 'BURUNDI', 'BDI');
INSERT INTO `countries` VALUES ('15', 'Benin', 'BENIN', 'BEN');
INSERT INTO `countries` VALUES ('16', 'Bhutan', 'BHUTAN', 'BHU');
INSERT INTO `countries` VALUES ('17', 'Jamaica', 'JAMAICA', 'JAM');
INSERT INTO `countries` VALUES ('18', 'Bouvet Island', 'BOUVET ISLAND', null);
INSERT INTO `countries` VALUES ('19', 'Botswana', 'BOTSWANA', 'BOT');
INSERT INTO `countries` VALUES ('20', 'Samoa', 'SAMOA', 'SAM');
INSERT INTO `countries` VALUES ('21', 'Bonaire, Sint Eustatiusand Saba', 'BONAIRE, SINT EUSTATIUS AND SABA', 'ANT');
INSERT INTO `countries` VALUES ('22', 'Brazil', 'BRAZIL', 'BRA');
INSERT INTO `countries` VALUES ('23', 'Bahamas', 'BAHAMAS', 'BAH');
INSERT INTO `countries` VALUES ('24', 'Jersey', 'JERSEY', 'GBJ');
INSERT INTO `countries` VALUES ('25', 'Belarus', 'BELARUS', 'BLR');
INSERT INTO `countries` VALUES ('26', 'Belize', 'BELIZE', 'BLZ');
INSERT INTO `countries` VALUES ('27', 'Russian Federation', 'RUSSIAN FEDERATION', 'RUS');
INSERT INTO `countries` VALUES ('28', 'Rwanda', 'RWANDA', 'RWA');
INSERT INTO `countries` VALUES ('29', 'Serbia', 'SERBIA', 'SRB');
INSERT INTO `countries` VALUES ('30', 'Timor-Leste', 'TIMOR-LESTE', 'TLS');
INSERT INTO `countries` VALUES ('31', 'Reunion', 'RÉUNION', 'REU');
INSERT INTO `countries` VALUES ('32', 'Panama', 'PANAMA', 'PAN');
INSERT INTO `countries` VALUES ('33', 'Liberia', 'LIBERIA', 'LBR');
INSERT INTO `countries` VALUES ('34', 'Romania', 'ROMANIA', 'ROU,ROM');
INSERT INTO `countries` VALUES ('35', 'Tokelau', 'TOKELAU', 'TKL');
INSERT INTO `countries` VALUES ('36', 'Guinea-Bissau', 'GUINEA-BISSAU', 'GNB');
INSERT INTO `countries` VALUES ('37', 'Guam', 'GUAM', 'GUM');
INSERT INTO `countries` VALUES ('38', 'Guatemala', 'GUATEMALA', 'GUA');
INSERT INTO `countries` VALUES ('39', 'South Georgia and SouthSandwich Islands', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', null);
INSERT INTO `countries` VALUES ('40', 'Greece', 'GREECE', 'GRE');
INSERT INTO `countries` VALUES ('41', 'Equatorial Guinea', 'EQUATORIAL GUINEA', 'EQG');
INSERT INTO `countries` VALUES ('42', 'Guadeloupe', 'GUADELOUPE', 'GLP');
INSERT INTO `countries` VALUES ('43', 'Japan', 'JAPAN', 'JPN');
INSERT INTO `countries` VALUES ('44', 'Guyana', 'GUYANA', 'GUY');
INSERT INTO `countries` VALUES ('45', 'Guernsey', 'GUERNSEY', 'GBG');
INSERT INTO `countries` VALUES ('46', 'French Guiana', 'FRENCH GUIANA', 'GUF');
INSERT INTO `countries` VALUES ('47', 'Georgia', 'GEORGIA', 'GEO');
INSERT INTO `countries` VALUES ('48', 'Grenada', 'GRENADA', 'GRN');
INSERT INTO `countries` VALUES ('49', 'United Kingdom,England,Great Britain', 'UNITED KINGDOM', 'ENG,NIR,SC');
INSERT INTO `countries` VALUES ('50', 'Gabon', 'GABON', 'GAB');
INSERT INTO `countries` VALUES ('51', 'Pakistan', 'PAKISTAN', 'PAK');
INSERT INTO `countries` VALUES ('52', 'Guinea', 'GUINEA', 'GUI');
INSERT INTO `countries` VALUES ('53', 'Gambia', 'GAMBIA', 'GAM');
INSERT INTO `countries` VALUES ('54', 'Greenland', 'GREENLAND', 'GRL');
INSERT INTO `countries` VALUES ('55', 'Gibraltar', 'GIBRALTAR', 'GBZ');
INSERT INTO `countries` VALUES ('56', 'Ghana', 'GHANA', 'GHA');
INSERT INTO `countries` VALUES ('57', 'Oman', 'OMAN', 'OMA');
INSERT INTO `countries` VALUES ('58', 'Jordan', 'JORDAN', 'JOR');
INSERT INTO `countries` VALUES ('59', 'Croatia', 'CROATIA', 'CRO');
INSERT INTO `countries` VALUES ('60', 'Haiti', 'HAITI', 'HAI');
INSERT INTO `countries` VALUES ('61', 'Saint Kitts and Nevis', 'SAINT KITTS AND NEVIS', 'SKN');
INSERT INTO `countries` VALUES ('62', 'Hong Kong', 'HONG KONG', 'HKG');
INSERT INTO `countries` VALUES ('63', 'Honduras', 'HONDURAS', 'HON');
INSERT INTO `countries` VALUES ('64', 'Heard and McDonald Islands', 'HEARD ISLAND AND MCDONALD ISLANDS', null);
INSERT INTO `countries` VALUES ('65', 'Venezuela', 'VENEZUELA, BOLIVARIAN REPUBLIC OF', 'VEN');
INSERT INTO `countries` VALUES ('66', 'Puerto Rico', 'PUERTO RICO', 'PUR');
INSERT INTO `countries` VALUES ('67', 'Palestine', 'PALESTINE, STATE OF', 'PLE,PAL');
INSERT INTO `countries` VALUES ('68', 'Palau', 'PALAU', 'PLW');
INSERT INTO `countries` VALUES ('69', 'Portugal', 'PORTUGAL', 'POR');
INSERT INTO `countries` VALUES ('70', 'Svalbard and Jan MayenIslands', 'SVALBARD AND JAN MAYEN', null);
INSERT INTO `countries` VALUES ('71', 'Paraguay', 'PARAGUAY', 'PAR');
INSERT INTO `countries` VALUES ('72', 'Iraq', 'IRAQ', 'IRQ');
INSERT INTO `countries` VALUES ('73', 'Latvia', 'LATVIA', 'LVA');
INSERT INTO `countries` VALUES ('74', 'French Polynesia', 'FRENCH POLYNESIA', 'TAH');
INSERT INTO `countries` VALUES ('75', 'Papua New Guinea', 'PAPUA NEW GUINEA', 'PNG');
INSERT INTO `countries` VALUES ('76', 'Peru', 'PERU', 'PER');
INSERT INTO `countries` VALUES ('77', 'Kuwait', 'KUWAIT', 'KUW');
INSERT INTO `countries` VALUES ('78', 'Philippines', 'PHILIPPINES', 'PHI');
INSERT INTO `countries` VALUES ('79', 'Pitcairn', 'PITCAIRN', 'PCN');
INSERT INTO `countries` VALUES ('80', 'Poland', 'POLAND', 'POL');
INSERT INTO `countries` VALUES ('81', 'Saint Pierre and Miquelon', 'SAINT PIERRE AND MIQUELON', 'SPM');
INSERT INTO `countries` VALUES ('82', 'Zambia', 'ZAMBIA', 'ZAM');
INSERT INTO `countries` VALUES ('83', 'Western Sahara', 'WESTERN SAHARA', 'SAH');
INSERT INTO `countries` VALUES ('84', 'Estonia', 'ESTONIA', 'EST');
INSERT INTO `countries` VALUES ('85', 'Egypt', 'EGYPT', 'EGY');
INSERT INTO `countries` VALUES ('86', 'South Africa', 'SOUTH AFRICA', 'RSA');
INSERT INTO `countries` VALUES ('87', 'Ecuador', 'ECUADOR', 'ECU');
INSERT INTO `countries` VALUES ('88', 'Italy', 'ITALY', 'ITA');
INSERT INTO `countries` VALUES ('89', 'Vietnam', 'VIET NAM', 'VIE');
INSERT INTO `countries` VALUES ('90', 'Solomon Islands', 'SOLOMON ISLANDS', 'SOL');
INSERT INTO `countries` VALUES ('91', 'Ethiopia', 'ETHIOPIA', 'ETH');
INSERT INTO `countries` VALUES ('92', 'Zimbabwe', 'ZIMBABWE', 'ZIM');
INSERT INTO `countries` VALUES ('93', 'Saudi Arabia', 'SAUDI ARABIA', 'KSA');
INSERT INTO `countries` VALUES ('94', 'Spain', 'SPAIN', 'ESP');
INSERT INTO `countries` VALUES ('95', 'Eritrea', 'ERITREA', 'ERI');
INSERT INTO `countries` VALUES ('96', 'Montenegro', 'MONTENEGRO', 'MNE,MNT');
INSERT INTO `countries` VALUES ('97', 'Moldova', 'MOLDOVA, REPUBLIC OF', 'MDA');
INSERT INTO `countries` VALUES ('98', 'Madagascar', 'MADAGASCAR', 'MAD');
INSERT INTO `countries` VALUES ('99', 'Saint Martin (French part)', 'SAINT MARTIN (FRENCH PART)', ' ');
INSERT INTO `countries` VALUES ('100', 'Morocco', 'MOROCCO', 'MAR');
INSERT INTO `countries` VALUES ('101', 'Monaco', 'MONACO', 'MON');
INSERT INTO `countries` VALUES ('102', 'Uzbekistan', 'UZBEKISTAN', 'UZB');
INSERT INTO `countries` VALUES ('103', 'Myanmar', 'MYANMAR', 'MYA');
INSERT INTO `countries` VALUES ('104', 'Mali', 'MALI', 'MLI');
INSERT INTO `countries` VALUES ('105', 'Macau', 'MACAO', 'MAC');
INSERT INTO `countries` VALUES ('106', 'Mongolia', 'MONGOLIA', 'MNG,MGL');
INSERT INTO `countries` VALUES ('107', 'Marshall Islands', 'MARSHALL ISLANDS', 'MHL');
INSERT INTO `countries` VALUES ('108', 'United States of America', 'UNITED STATES', 'USA');
INSERT INTO `countries` VALUES ('109', 'Mauritius', 'MAURITIUS', 'MRI');
INSERT INTO `countries` VALUES ('110', 'Malta', 'MALTA', 'MLT');
INSERT INTO `countries` VALUES ('111', 'Malawi', 'MALAWI', 'MWI');
INSERT INTO `countries` VALUES ('112', 'Maldives', 'MALDIVES', 'MDV');
INSERT INTO `countries` VALUES ('113', 'Martinique', 'MARTINIQUE', 'MTQ');
INSERT INTO `countries` VALUES ('114', 'Northern Mariana Islands', 'NORTHERN MARIANA ISLANDS', 'NMI');
INSERT INTO `countries` VALUES ('115', 'Montserrat', 'MONTSERRAT', 'MSR');
INSERT INTO `countries` VALUES ('116', 'Mauritania', 'MAURITANIA', 'MTN');
INSERT INTO `countries` VALUES ('117', 'Isle of Man', 'ISLE OF MAN', 'GBM');
INSERT INTO `countries` VALUES ('118', 'Uganda', 'UGANDA', 'UGA');
INSERT INTO `countries` VALUES ('119', 'Tanzania', 'TANZANIA, UNITED REPUBLIC OF', 'TAN');
INSERT INTO `countries` VALUES ('120', 'Ukraine', 'UKRAINE', 'UKR');
INSERT INTO `countries` VALUES ('121', 'Mexico', 'MEXICO', 'MEX');
INSERT INTO `countries` VALUES ('122', 'Austria', 'AUSTRIA', 'AUT');
INSERT INTO `countries` VALUES ('123', 'France', 'FRANCE', 'FRA');
INSERT INTO `countries` VALUES ('124', 'Aruba', 'ARUBA', 'ARU');
INSERT INTO `countries` VALUES ('125', 'Saint Helena', 'SAINT HELENA, ASCENSION AND TRISTAN DA CUNHA', 'SHN');
INSERT INTO `countries` VALUES ('126', 'Luxembourg', 'LUXEMBOURG', 'LUX');
INSERT INTO `countries` VALUES ('127', 'Dominica', 'DOMINICA', 'DMA');
INSERT INTO `countries` VALUES ('128', 'Finland', 'FINLAND', 'FIN');
INSERT INTO `countries` VALUES ('129', 'Fiji', 'FIJI', 'FIJ');
INSERT INTO `countries` VALUES ('130', 'Falkland Islands', 'FALKLAND ISLANDS (MALVINAS)', 'FLK');
INSERT INTO `countries` VALUES ('131', 'Micronesia', 'MICRONESIA, FEDERATED STATES OF', 'FSM');
INSERT INTO `countries` VALUES ('132', 'Faroe Islands', 'FAROE ISLANDS', 'FRO');
INSERT INTO `countries` VALUES ('133', 'Nicaragua', 'NICARAGUA', 'NCA');
INSERT INTO `countries` VALUES ('134', 'Netherlands', 'NETHERLANDS', 'NED');
INSERT INTO `countries` VALUES ('135', 'Norway', 'NORWAY', 'NOR');
INSERT INTO `countries` VALUES ('136', 'Namibia', 'NAMIBIA', 'NAM');
INSERT INTO `countries` VALUES ('137', 'Vanuatu', 'VANUATU', 'VAN');
INSERT INTO `countries` VALUES ('138', 'New Caledonia', 'NEW CALEDONIA', 'NCL');
INSERT INTO `countries` VALUES ('139', 'Niger', 'NIGER', 'NIG');
INSERT INTO `countries` VALUES ('140', 'Norfolk Island', 'NORFOLK ISLAND', 'NFK');
INSERT INTO `countries` VALUES ('141', 'Nigeria', 'NIGERIA', 'NGA');
INSERT INTO `countries` VALUES ('142', 'New Zealand', 'NEW ZEALAND', 'NZL');
INSERT INTO `countries` VALUES ('143', 'Nepal', 'NEPAL', 'NEP');
INSERT INTO `countries` VALUES ('144', 'Nauru', 'NAURU', 'NRU');
INSERT INTO `countries` VALUES ('145', 'Niue', 'NIUE', 'NIU');
INSERT INTO `countries` VALUES ('146', 'Cook Islands', 'COOK ISLANDS', 'COK');
INSERT INTO `countries` VALUES ('147', 'Côte d\'Ivoire', 'CÔTE D\'IVOIRE', 'CIV');
INSERT INTO `countries` VALUES ('148', 'Switzerland', 'SWITZERLAND', 'SUI');
INSERT INTO `countries` VALUES ('149', 'Colombia', 'COLOMBIA', 'COL');
INSERT INTO `countries` VALUES ('150', 'China', 'CHINA', 'CHN');
INSERT INTO `countries` VALUES ('151', 'Cameroon', 'CAMEROON', 'CMR');
INSERT INTO `countries` VALUES ('152', 'Chile', 'CHILE', 'CHI');
INSERT INTO `countries` VALUES ('153', 'Cocos (Keeling) Islands', 'COCOS (KEELING) ISLANDS', 'CCK');
INSERT INTO `countries` VALUES ('154', 'Canada', 'CANADA', 'CAN');
INSERT INTO `countries` VALUES ('155', 'Congo (Brazzaville)', 'CONGO', 'CGO');
INSERT INTO `countries` VALUES ('156', 'Central African Republic', 'CENTRAL AFRICAN REPUBLIC', 'CTA');
INSERT INTO `countries` VALUES ('157', 'Congo (Kinshasa)', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'COD');
INSERT INTO `countries` VALUES ('158', 'Czech Republic', 'CZECH REPUBLIC', 'CZE');
INSERT INTO `countries` VALUES ('159', 'Cyprus', 'CYPRUS', 'CYP');
INSERT INTO `countries` VALUES ('160', 'Christmas Island', 'CHRISTMAS ISLAND', 'CXR');
INSERT INTO `countries` VALUES ('161', 'Costa Rica', 'COSTA RICA', 'CRC');
INSERT INTO `countries` VALUES ('162', 'Hungary', 'HUNGARY', 'HUN');
INSERT INTO `countries` VALUES ('163', 'Curaçao', 'CURAÇAO', null);
INSERT INTO `countries` VALUES ('164', 'Cape Verde', 'CAPE VERDE', 'CPV');
INSERT INTO `countries` VALUES ('165', 'Cuba', 'CUBA', 'CUB');
INSERT INTO `countries` VALUES ('166', 'Swaziland', 'SWAZILAND', 'SWZ');
INSERT INTO `countries` VALUES ('167', 'Syria', 'SYRIAN ARAB REPUBLIC', 'SYR');
INSERT INTO `countries` VALUES ('168', 'Sint Maarten', 'SINT MAARTEN (DUTCH PART)', null);
INSERT INTO `countries` VALUES ('169', 'Kyrgyzstan', 'KYRGYZSTAN', 'KGZ');
INSERT INTO `countries` VALUES ('170', 'Kenya', 'KENYA', 'KEN');
INSERT INTO `countries` VALUES ('171', 'South Sudan', 'SOUTH SUDAN', null);
INSERT INTO `countries` VALUES ('172', 'Suriname', 'SURINAME', 'SUR');
INSERT INTO `countries` VALUES ('173', 'Kiribati', 'KIRIBATI', 'KIR');
INSERT INTO `countries` VALUES ('174', 'Cambodia', 'CAMBODIA', 'CAM');
INSERT INTO `countries` VALUES ('175', 'El Salvador', 'EL SALVADOR', 'SLV');
INSERT INTO `countries` VALUES ('176', 'Comoros', 'COMOROS', 'COM');
INSERT INTO `countries` VALUES ('177', 'Sao Tome and Principe', 'SAO TOME AND PRINCIPE', 'STP');
INSERT INTO `countries` VALUES ('178', 'Slovakia', 'SLOVAKIA', 'SVK');
INSERT INTO `countries` VALUES ('179', 'Korea, South', 'KOREA, REPUBLIC OF', 'KOR');
INSERT INTO `countries` VALUES ('180', 'Slovenia', 'SLOVENIA', 'SVN');
INSERT INTO `countries` VALUES ('181', 'Korea, North', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'PRK');
INSERT INTO `countries` VALUES ('182', 'Somalia', 'SOMALIA', 'SOM');
INSERT INTO `countries` VALUES ('183', 'Senegal', 'SENEGAL', 'SEN');
INSERT INTO `countries` VALUES ('184', 'San Marino', 'SAN MARINO', 'SMR');
INSERT INTO `countries` VALUES ('185', 'Sierra Leone', 'SIERRA LEONE', 'SLE');
INSERT INTO `countries` VALUES ('186', 'Seychelles', 'SEYCHELLES', 'SEY');
INSERT INTO `countries` VALUES ('187', 'Kazakhstan', 'KAZAKHSTAN', 'KAZ');
INSERT INTO `countries` VALUES ('188', 'Cayman Islands', 'CAYMAN ISLANDS', 'CAY');
INSERT INTO `countries` VALUES ('189', 'Singapore', 'SINGAPORE', 'SIN');
INSERT INTO `countries` VALUES ('190', 'Sweden', 'SWEDEN', 'SWE');
INSERT INTO `countries` VALUES ('191', 'Sudan', 'SUDAN', 'SUD');
INSERT INTO `countries` VALUES ('192', 'Dominican Republic', 'DOMINICAN REPUBLIC', 'DOM');
INSERT INTO `countries` VALUES ('193', 'Djibouti', 'DJIBOUTI', 'DJI');
INSERT INTO `countries` VALUES ('194', 'Denmark', 'DENMARK', 'DEN');
INSERT INTO `countries` VALUES ('195', 'Virgin Islands, British', 'VIRGIN ISLANDS, BRITISH', 'VGB');
INSERT INTO `countries` VALUES ('196', 'Germany', 'GERMANY', 'GER');
INSERT INTO `countries` VALUES ('197', 'Yemen', 'YEMEN', 'YEM');
INSERT INTO `countries` VALUES ('198', 'Algeria', 'ALGERIA', 'ALG');
INSERT INTO `countries` VALUES ('199', 'Macedonia', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'MKD');
INSERT INTO `countries` VALUES ('200', 'Uruguay', 'URUGUAY', 'URU');
INSERT INTO `countries` VALUES ('201', 'Mayotte', 'MAYOTTE', 'MYT');
INSERT INTO `countries` VALUES ('202', 'United States MinorOutlying Islands', 'UNITED STATES MINOR OUTLYING ISLANDS', null);
INSERT INTO `countries` VALUES ('203', 'Lebanon', 'LEBANON', 'LIB');
INSERT INTO `countries` VALUES ('204', 'Saint Lucia', 'SAINT LUCIA', 'LCA');
INSERT INTO `countries` VALUES ('205', 'Laos', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'LAO');
INSERT INTO `countries` VALUES ('206', 'Tuvalu', 'TUVALU', 'TUV');
INSERT INTO `countries` VALUES ('207', 'Taiwan', 'TAIWAN, PROVINCE OF CHINA', 'TPE');
INSERT INTO `countries` VALUES ('208', 'Trinidad and Tobago', 'TRINIDAD AND TOBAGO', 'TRI');
INSERT INTO `countries` VALUES ('209', 'Turkey', 'TURKEY', 'TUR');
INSERT INTO `countries` VALUES ('210', 'Sri Lanka', 'SRI LANKA', 'SRI');
INSERT INTO `countries` VALUES ('211', 'Liechtenstein', 'LIECHTENSTEIN', 'LIE');
INSERT INTO `countries` VALUES ('212', 'Tunisia', 'TUNISIA', 'TUN');
INSERT INTO `countries` VALUES ('213', 'Tonga', 'TONGA', 'TGA');
INSERT INTO `countries` VALUES ('214', 'Lithuania', 'LITHUANIA', 'LTU');
INSERT INTO `countries` VALUES ('215', 'Turkmenistan', 'TURKMENISTAN', 'TKM');
INSERT INTO `countries` VALUES ('216', 'Tajikistan', 'TAJIKISTAN', 'TJK');
INSERT INTO `countries` VALUES ('217', 'Lesotho', 'LESOTHO', 'LES');
INSERT INTO `countries` VALUES ('218', 'Thailand', 'THAILAND', 'THA');
INSERT INTO `countries` VALUES ('219', 'French Southern Lands', 'FRENCH SOUTHERN TERRITORIES', null);
INSERT INTO `countries` VALUES ('220', 'Togo', 'TOGO', 'TOG');
INSERT INTO `countries` VALUES ('221', 'Chad', 'CHAD', 'CHA');
INSERT INTO `countries` VALUES ('222', 'Turks and Caicos Islands', 'TURKS AND CAICOS ISLANDS', 'TCA');
INSERT INTO `countries` VALUES ('223', 'Libya', 'LIBYA', 'LBY');
INSERT INTO `countries` VALUES ('224', 'Vatican City', 'HOLY SEE (VATICAN CITY STATE)', 'VAT');
INSERT INTO `countries` VALUES ('225', 'Saint Vincent and theGrenadines', 'SAINT VINCENT AND THE GRENADINES', 'VIN');
INSERT INTO `countries` VALUES ('226', 'United Arab Emirates', 'UNITED ARAB EMIRATES', 'UAE');
INSERT INTO `countries` VALUES ('227', 'Andorra', 'ANDORRA', 'AND');
INSERT INTO `countries` VALUES ('228', 'Antigua and Barbuda', 'ANTIGUA AND BARBUDA', 'ATG');
INSERT INTO `countries` VALUES ('229', 'Afghanistan', 'AFGHANISTAN', 'AFG');
INSERT INTO `countries` VALUES ('230', 'Anguilla', 'ANGUILLA', 'AIA');
INSERT INTO `countries` VALUES ('231', 'Virgin Islands, U.S.', 'VIRGIN ISLANDS, U.S.', 'VIR');
INSERT INTO `countries` VALUES ('232', 'Iceland', 'ICELAND', 'ISL');
INSERT INTO `countries` VALUES ('233', 'Iran', 'IRAN, ISLAMIC REPUBLIC OF', 'IRN');
INSERT INTO `countries` VALUES ('234', 'Armenia', 'ARMENIA', 'ARM');
INSERT INTO `countries` VALUES ('235', 'Albania', 'ALBANIA', 'ALB');
INSERT INTO `countries` VALUES ('236', 'Angola', 'ANGOLA', 'ANG');
INSERT INTO `countries` VALUES ('237', 'Antarctica', 'ANTARCTICA', 'ROS');
INSERT INTO `countries` VALUES ('238', 'American Samoa', 'AMERICAN SAMOA', 'ASA');
INSERT INTO `countries` VALUES ('239', 'Argentina', 'ARGENTINA', 'ARG');
INSERT INTO `countries` VALUES ('240', 'Australia', 'AUSTRALIA', 'AUS');
INSERT INTO `countries` VALUES ('241', 'Israel', 'ISRAEL', 'ISR');
INSERT INTO `countries` VALUES ('242', 'British Indian OceanTerritory', 'BRITISH INDIAN OCEAN TERRITORY', null);
INSERT INTO `countries` VALUES ('243', 'India', 'INDIA', 'IND');
INSERT INTO `countries` VALUES ('244', 'Åland', 'ÅLAND ISLANDS', 'ALD');
INSERT INTO `countries` VALUES ('245', 'Azerbaijan', 'AZERBAIJAN', 'AZE');
INSERT INTO `countries` VALUES ('246', 'Ireland', 'IRELAND', 'IRL');
INSERT INTO `countries` VALUES ('247', 'Indonesia', 'INDONESIA', 'IDN');
INSERT INTO `countries` VALUES ('248', 'Malaysia', 'MALAYSIA', 'MAS');
INSERT INTO `countries` VALUES ('249', 'Qatar', 'QATAR', 'QAT');
INSERT INTO `countries` VALUES ('250', 'Mozambique', 'MOZAMBIQUE', 'MOZ');

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_user_id` int(11) DEFAULT NULL,
  `to_user_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `conversation_number` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `read` tinyint(2) DEFAULT '0' COMMENT '0=unread\r\n1=read',
  `status` tinyint(2) DEFAULT '0' COMMENT '-1=deleted\r\n0=unpublished\r\n1=suspend\r\n2=published',
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_ibfk_3` FOREIGN KEY (`parent_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of messages
-- ----------------------------

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `from_user_id` int(11) DEFAULT NULL,
  `to_user_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other_options` text COLLATE utf8_unicode_ci COMMENT 'other needed options in json format',
  `read` tinyint(2) DEFAULT '0' COMMENT '0 = unread\r\n1 = readed',
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of notifications
-- ----------------------------
INSERT INTO `notifications` VALUES ('1', '1', '1', 'ورود شما به باشگاه مشتریان \"بازی برتر\" را خیر مقدم میگوییم.', 'www.google.com', '{\"test\":\"hi\"}', '1', '2015-12-13 09:29:44');

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
