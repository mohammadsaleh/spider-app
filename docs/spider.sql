-- MySQL dump 10.13  Distrib 5.7.15, for Linux (x86_64)
--
-- Host: localhost    Database: spider
-- ------------------------------------------------------
-- Server version	5.7.15-0ubuntu2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `spider_aclmanager_acos`
--

DROP TABLE IF EXISTS `spider_aclmanager_acos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider_aclmanager_acos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider_aclmanager_acos`
--

LOCK TABLES `spider_aclmanager_acos` WRITE;
/*!40000 ALTER TABLE `spider_aclmanager_acos` DISABLE KEYS */;
INSERT INTO `spider_aclmanager_acos` VALUES (43,'Pages/display',NULL,NULL,NULL,NULL),(88,'plugin',NULL,NULL,NULL,NULL),(89,'Pages/display/',NULL,NULL,NULL,NULL),(90,'plugin/Settings/Admin/Settings/index/',NULL,NULL,NULL,NULL),(91,'plugin/Captcha/Captcha/create/',NULL,NULL,NULL,NULL),(92,'plugin/AclManager/Admin/Permissions/index/',NULL,NULL,NULL,NULL),(93,'plugin/AclManager/Admin/Permissions/sync/',NULL,NULL,NULL,NULL),(94,'plugin/AclManager/Admin/Permissions/acoList/',NULL,NULL,NULL,NULL),(95,'plugin/AclManager/Admin/Roles/index/',NULL,NULL,NULL,NULL),(96,'plugin/AclManager/Admin/Roles/view/',NULL,NULL,NULL,NULL),(97,'plugin/AclManager/Admin/Roles/add/',NULL,NULL,NULL,NULL),(98,'plugin/AclManager/Admin/Roles/edit/',NULL,NULL,NULL,NULL),(99,'plugin/AclManager/Admin/Roles/delete/',NULL,NULL,NULL,NULL),(100,'plugin/PluginManager/Admin/Plugins/index/',NULL,NULL,NULL,NULL),(101,'plugin/PluginManager/Admin/Plugins/view/',NULL,NULL,NULL,NULL),(102,'plugin/PluginManager/Admin/Plugins/add/',NULL,NULL,NULL,NULL),(103,'plugin/PluginManager/Admin/Plugins/edit/',NULL,NULL,NULL,NULL),(104,'plugin/PluginManager/Admin/Plugins/delete/',NULL,NULL,NULL,NULL),(105,'plugin/Users/Users/login/',NULL,NULL,NULL,NULL),(106,'plugin/Users/Users/add/',NULL,NULL,NULL,NULL),(107,'plugin/Users/Users/active/',NULL,NULL,NULL,NULL),(108,'plugin/Users/Users/editPassword/',NULL,NULL,NULL,NULL),(109,'plugin/Users/Users/checkEmail/',NULL,NULL,NULL,NULL),(110,'plugin/Users/Users/forgetPass/',NULL,NULL,NULL,NULL),(111,'plugin/Users/Users/logout/',NULL,NULL,NULL,NULL),(112,'plugin/Users/Users/uploadAvatar/',NULL,NULL,NULL,NULL),(113,'plugin/Users/Admin/Users/login/',NULL,NULL,NULL,NULL),(114,'plugin/Users/Admin/Users/index/',NULL,NULL,NULL,NULL),(115,'plugin/Users/Admin/Users/view/',NULL,NULL,NULL,NULL),(116,'plugin/Users/Admin/Users/add/',NULL,NULL,NULL,NULL),(117,'plugin/Users/Admin/Users/edit/',NULL,NULL,NULL,NULL),(118,'plugin/Users/Admin/Users/delete/',NULL,NULL,NULL,NULL),(119,'plugin/Users/Admin/Users/profile/',NULL,NULL,NULL,NULL),(120,'plugin/Users/Admin/Users/unlock/',NULL,NULL,NULL,NULL),(121,'plugin/Bird/Admin/Dashboards/index/',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `spider_aclmanager_acos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider_aclmanager_aros`
--

DROP TABLE IF EXISTS `spider_aclmanager_aros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider_aclmanager_aros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider_aclmanager_aros`
--

LOCK TABLES `spider_aclmanager_aros` WRITE;
/*!40000 ALTER TABLE `spider_aclmanager_aros` DISABLE KEYS */;
INSERT INTO `spider_aclmanager_aros` VALUES (1,'roles',4),(36,'users',4),(37,'users',1),(38,'roles',1),(39,'users',2),(40,'users',3);
/*!40000 ALTER TABLE `spider_aclmanager_aros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider_aclmanager_aros_acos`
--

DROP TABLE IF EXISTS `spider_aclmanager_aros_acos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider_aclmanager_aros_acos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aro_id` int(11) NOT NULL,
  `aco_id` int(11) NOT NULL,
  `deny` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `aro_id` (`aro_id`,`aco_id`),
  KEY `aco_id` (`aco_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1352 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider_aclmanager_aros_acos`
--

LOCK TABLES `spider_aclmanager_aros_acos` WRITE;
/*!40000 ALTER TABLE `spider_aclmanager_aros_acos` DISABLE KEYS */;
INSERT INTO `spider_aclmanager_aros_acos` VALUES (588,1,88,NULL),(1316,1,94,NULL),(1317,1,92,NULL),(1318,1,93,NULL),(1319,1,97,NULL),(1320,1,99,NULL),(1321,1,98,NULL),(1322,1,95,NULL),(1323,1,96,NULL),(1324,1,121,NULL),(1325,1,91,NULL),(1326,1,102,NULL),(1327,1,104,NULL),(1328,1,103,NULL),(1329,1,100,NULL),(1330,1,101,NULL),(1331,1,90,NULL),(1332,1,116,NULL),(1333,1,118,NULL),(1334,1,117,NULL),(1335,1,114,NULL),(1336,1,113,NULL),(1337,1,119,NULL),(1338,1,120,NULL),(1339,1,115,NULL),(1340,1,107,NULL),(1341,1,106,NULL),(1342,1,109,NULL),(1343,1,108,NULL),(1344,1,110,NULL),(1345,1,105,NULL),(1346,1,111,NULL),(1347,1,112,NULL),(1348,1,43,NULL),(1349,1,89,NULL),(1350,38,43,NULL),(1351,38,89,NULL);
/*!40000 ALTER TABLE `spider_aclmanager_aros_acos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider_aclmanager_roles`
--

DROP TABLE IF EXISTS `spider_aclmanager_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider_aclmanager_roles`
--

LOCK TABLES `spider_aclmanager_roles` WRITE;
/*!40000 ALTER TABLE `spider_aclmanager_roles` DISABLE KEYS */;
INSERT INTO `spider_aclmanager_roles` VALUES (1,NULL,'public','کاربر عمومی',NULL,1,8),(2,1,'registered','کاربر ثبت نام شده',NULL,2,7),(3,2,'admin','مدیر',NULL,3,6),(4,3,'superadmin','مدیرکل',NULL,4,5);
/*!40000 ALTER TABLE `spider_aclmanager_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider_aclmanager_users_roles`
--

DROP TABLE IF EXISTS `spider_aclmanager_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider_aclmanager_users_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider_aclmanager_users_roles`
--

LOCK TABLES `spider_aclmanager_users_roles` WRITE;
/*!40000 ALTER TABLE `spider_aclmanager_users_roles` DISABLE KEYS */;
INSERT INTO `spider_aclmanager_users_roles` VALUES (1,1,4);
/*!40000 ALTER TABLE `spider_aclmanager_users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider_plugins_plugins`
--

DROP TABLE IF EXISTS `spider_plugins_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider_plugins_plugins`
--

LOCK TABLES `spider_plugins_plugins` WRITE;
/*!40000 ALTER TABLE `spider_plugins_plugins` DISABLE KEYS */;
INSERT INTO `spider_plugins_plugins` VALUES (3,'Bird','admin',NULL,NULL,2,1,1),(5,'DataTables',NULL,NULL,NULL,NULL,1,0);
/*!40000 ALTER TABLE `spider_plugins_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider_settings_settings`
--

DROP TABLE IF EXISTS `spider_settings_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `created` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider_settings_settings`
--

LOCK TABLES `spider_settings_settings` WRITE;
/*!40000 ALTER TABLE `spider_settings_settings` DISABLE KEYS */;
INSERT INTO `spider_settings_settings` VALUES (1,'site.title','Bazibartar','Site Title','the title of site','text',NULL,4,1,1,NULL,NULL,NULL),(32,'site.privacy','<p dir=\"rtl\" style=\"text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">در شرح شرایط و قوانین منظور از بی کوچ وب سایت <a href=\"http://bikooch.com\">http://bikooch.com</a> می باشد.&nbsp;<br />\r\nکلیه حقوق مادی و معنوی بی کوچ متعلق به شرکت دانشگرایان موج چهارم به شماره ثبت 47047 می باشد. &nbsp;<br />\r\nوب سایت بی کوچ طبق قوانین جرایم اینترنتی و مجموعه قوانین و مقررات تجارت الکترونیکی بین المللی &nbsp;فعالیت می کند.</span></p>\r\n\r\n<p dir=\"rtl\" style=\"text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif\"><strong><span style=\"color:#0000ff\">نحوه ثبت نام کارگزاران:</span></strong><br />\r\nکارگزاران دارای مجوز فعالیت <strong><span style=\"color:#ff0000\">(در کشور ی که فعالیت گردشگری دارند)&nbsp;</span></strong>مجاز به داشتن پنل از بی کوچ و ارایه خدمات&nbsp;می باشند.<br />\r\nکارگزاران در صورت درخواست پنل، موظف به ارسال مدارک شرکتی ،مجوزها، رزومه و سایر مدارک مورد نیاز برای بی کوچ میباشند تا پس از بررسی توسط بی کوچ و در صورت تایید پنل دریافت کنند.<br />\r\nمسولیت اعتبار اسناد ارسالی به عهده ارسال کننده و کارگزارمربوطه میباشد و بی کوچ هر گونه مسولیتی را در خصوص اعتبار اسنادازخود سلب مینماید.<br />\r\nپنل ارایه شده به کارگزاران &nbsp;جهت ثبت هتل با امکانات عمومی در بی کوچ <span style=\"color:#000000\"><strong><span style=\"font-size:14px\">رایگان</span></strong></span> میباشد و در صورت ارایه امکانات خاص مبلغ و هزینه ان اعلام خواهد شد.<br />\r\nقیمتهای تنظیم شده توسط کارگزاران هتل بدون کاهش یا افزایش عینا برای اژانسهای همکار(B2B )نمایش داده خواهد شد.</span></p>\r\n\r\n<p dir=\"rtl\" style=\"text-align:justify\"><br />\r\n<span style=\"font-family:Tahoma,Geneva,sans-serif\"><span style=\"color:#0000ff\"><strong>نحوه ثبت نام اژانس های مسافرتی:</strong></span><br />\r\nدر سیستم B2B &nbsp;فقط آژانس های مسافرتی دارای مجوز بند الف یاب یاپ مجاز به استفاده از وب سایت خواهند بود لذا در هنگام ثبت نام ،آژانسها موظفند مدارک معتبررا جهت دریافت ساین ارسال نمایند. مسئولیت صحت و سقم مدارک ارسالی بعهده ارسال کننده خواهد بود و بی کوچ در این خصوص هیچ گونه مسئولیتی را متقبل نخواهد شد.</span></p>\r\n\r\n<p dir=\"rtl\" style=\"text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">کلیه امکانات عمومی سایت برای آژانس های مسافرتی <span style=\"font-size:14px\"><span style=\"color:#000000\"><strong>رایگان</strong></span></span> می باشد</span></p>\r\n\r\n<p dir=\"rtl\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p dir=\"rtl\" style=\"text-align:justify\"><span style=\"color:#0000ff\"><strong><span style=\"font-family:Tahoma,Geneva,sans-serif\">سایر شرایط :</span></strong></span></p>\r\n\r\n<p dir=\"rtl\" style=\"text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">وقتی شما به سایت <a href=\"http://bikooch.com\">http://bikooch.com</a>&nbsp;دسترسی پیدا کردید موافقت نمودید که کلیه شرایط مندرج در سایت را بدون هیچ الزامی پذیرفتید و در صورتی که شرایط و ضوابط مقررات سایت را قبول ندارید مجاز به استفاده از این وب سایت نخواهید بود.&nbsp;</span></p>\r\n\r\n<p dir=\"rtl\" style=\"text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">بی کوچ اعلام می نماید که کلیه ضوابط و شرایط مندرج در شرایط و مقررات به صورت مستقیم و غیر مستقیم بر کلیه سرویس ها تسری دارد.&nbsp;<br />\r\nبی کوچ این حق را برای خود محفوظ می دارد که ضوابط و شرایط را به طور کلی یا جزئی تغییر دهد اضافه، تعدیل و یا حذف و اصلاح نماید بدون اینکه در این باره به کاربران اطلاع دهد.<br />\r\nبی کوچ حق دارد وب سایت خود را از جمله خصوصیات ، مشخصات و فراورده های طراحی شده بر روی سایت را تغییر دهد و آنها را اصلاح کند این حقوق همواره برای تغییر شرایط و ضوابط مندرج بر روی سایت برای ما محفوظ خواهد ماند اصل و مبنای این صفحات به صورت آنلاین و از طریق اینترنت می باشد.</span></p>\r\n\r\n<p dir=\"rtl\" style=\"text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">هرگونه سو استفاده از اطلاعات ، متن ها ، عکس ها ، طرح ها ، لوگوها و... از این وب سایت پیگرد قانونی دارد و هیچ فرد حقیقی یا حقوقی بدون دریافت مجوزاجازه استفاده از موارد مذکور را نخواهد داشت.&nbsp;<br />\r\nاطلاعات شخصی کاربران در بی کوچ کاملا محرمانه است . بی کوچ تمام تلاش خود را برای محافظت از اطلاعات شخصی کاربران می نماید ، لذا جهت حفظ حریم اطلاعات شخصی کاربران ، کاربر تعهد می نماید تا عامل تلاش جهت هک کردن هرگونه اطلاعات درون سایت نبوده و هیچ گونه معاونت و یا مشارکتی با اشخاص حقیقی و یا حقوقی در این امر نداشته باشد ضمنا کاربر تعهد می دهد که هرگونه اطلاع،توسل و هک کردن اطلاعات توسط شخص و یا موسسه دیگر را در اسرع وقت به عوامل سایت بی کوچ اطلاع دهد.<br />\r\nکاربران متعهد می شوند که اطلاعات خود را هنگام ثبت نام و رزرو به صورت صحیح در وب سایت بی کوچ وارد نمایند وهرگونه تغییر در مشخصات خود را در اسرع وقت اصلاح نماید در صورت ورود اطلاعات ناقص و یا نادرست مسئولیت عواقب بعدی بر عهده کاربران خواهد بودو بی کوچ مسولیتی را به عهده نمیگیرد.<br />\r\nهرگونه سوء استفاده از نام بی کوچ ، سایت اینترنتی بی کوچ ، مکاتبه از طرف بی کوچ و یا استفاده از نام های مشابه که شبیه مشابهت و تطابق را ایجاد نماید ممنوع بوده و از طریق شکایت به مراجع قانونی ذی صلاح دادگاه های رسیدگی به جرایم اینترنتی در داخل و یا خارج از کشور و نیز اطلاع رسانی به سرویس دهندگان و سرویس دهندگان اینترنتی قابل پیگرد خواهد بود.<br />\r\nبی کوچ ضمن احترامی که برای حریم شخصی کاربران قائل است ثبت نظر و یا استفاده برخی از امکانات وب سایت اطلاعاتی را از قبیل آدرس ، تلفن ، ایمیل و ... از کاربران درخواست می نماید تا بتواند خدماتی امن و مطمئن را به کاربران ارائه دهد.<br />\r\nحفظ و نگهداری رمز عبور بعهده کاربران است و برای جلوگیری از هرگونه سوء استفاده احتمالی ، کاربران نباید آن را برای شخص دیگری فاش کنند.<br />\r\nبی کوچ همانند سایر وب سایت ها از جمع آوری آی پی و کوکی ها استفاده می نماید اما پروتکل سرور و لایه های امنیتی بی کوچ و روش های مناسب مدیریت داده ها اطلاعات کاربران را محافظت و از دسترسی های غیر قانونی جلوگیری می کند.<br />\r\n&nbsp;<br />\r\nاز طریق این وب سایت و قالب آن در هر زمان به صورت دائمی یا موقت بدون یادداشت و یا هرگونه مسئولیتی این حق را برای خود محفوظ می دارد که دسترسی به این سایت را محدود یا لغو کند بدون اینکه نیاز باشد برای آن دلیلی ذکر کند و همه این موارد را در اختیار مطلق خودش خواهد بود و حق هر گونه اعتراضی را از کاربران سلب مینماید.<br />\r\nتمام سایت بدون محدودیت شامل موارد صوتی ، تصاویر ، نرم افزار ، متن ، نشانه ها و امثال آن که محتویات سایت نامیده می شود جزو کپی رایت و حقوق معنوی حمایت شده اند نمی توان از این محتویات استفاده کرد.<br />\r\nبه هنگام اجرای خدمات بی کوچ اطلاعات هتل ها، کارگزاران و کابران که در اختیار ما قرار گرفته است در اختیار شما نیز قرار می گیرد اما اگر اطلاعات ارائه شده کامل یا درست نباشد هیچ گونه تضمینی برای کامل بودن یا صحیح&nbsp;بودن آن از طرف بی کوچ داده نمی شود و هیچ مسئولیتی در این مورد به عهده ما نخواهد بود .<br />\r\nبی کوچ درخصوص ثبت نام کارگزاران در سایت نهایت بررسی و تحقیق را درخصوص مجوزهای مربوطه ، مدارک ثبتی شرکتهای کارگزاری و غیره انجام می دهد ولی هرگونه مسئولیتی را از خود در خصوص اعتبار و نحوه خدمات و شرایط بعدی کارگزاران در حال و آینده از خود سلب می نماید لذا کاربران در زمان انتخاب هتل ، انتخاب کارگزار و پرداخت و ... نهایت تحقیق و بررسی خود را انجام دهند و در صورت بروز هرگونه نارضایتی از سمت آژانس ها و کاربران مسئولیتی متوجه بی کوچ نخواهد بود.<br />\r\nکاربر جهت استفاده از سایت احتیاج به شناسه کاربری و رمز عبور دارد و همچنین موظف است سریعا رمز عبور خود را بلافاصله بعد از دریافت تغییر دهد.&nbsp;<br />\r\nکاربر همین جا تایید می نماید که در هیچ صورتی رمز عبور خود را در اختیار فرد ثالث ( حتی گردانندگان سایت ، مدیران سایت ، مجریان ، نمایندگیها و سایرین ) قرار ندهد و کلیه مسئولیت نگهداری از آن را متقبل می شود .<br />\r\nبرای هرگونه صدمه شخصی ، فوت ، فقدان &nbsp;و خسارت مالی یا سایر خسارات ( مستقیم ، غیر مستقیم ) هرگونه زیان یا هزینه ایی که شما متحل می شوید چه بخاطر اعمال قانونی ، خطا ، نقض ، سهل انگاری و غفلت محض سوء رفتار شرمندانه ، حذفیات ، عدم اجرا ، سوء ارائه ، شبه جرم یا تعهد اکید ( جزیی یا کلی ) که قابل انتساب به خدمات بی کوچ باشد و کارکنان ، مدیران ، مقامات ،کارگزاران ، نمایندگی ها یا شرکت های وابسته از جمله لغو و کنسلی (جزیی) ، رزرواسیون بیش از حد ، اعتصاب ، فورس ماژور یا هر رویداد دیگری که خارج از کنترل ما باشد ما هیچگونه مسئولیتی را متقبل نمی شویم .<br />\r\nبی کوچ حق انحصار را برای خودش محفوظ می دارد که با اختیار کامل هر کاربری را از دسترسی به این سایت یا هر قسمتی در آن باز دارد و مانع استفاده ی او شود.</span><br />\r\n&nbsp;</p>\r\n','Privacy Policy',NULL,'textarea','{\"ckeditor\":true}',1,1,1,NULL,NULL,NULL),(36,'site.status','online','Site Status',NULL,'radio','{\"options\":[{\"text\":\"Offline\",\"value\":\"offline\",\"class\":\"control-warning\"},{\"text\":\"Online\",\"value\":\"online\",\"class\":\"control-info\"}],\"label\":false,\"div\":false}',3,1,1,NULL,NULL,NULL),(39,'affiliate.commission','0.03','Affiliate Commission',NULL,'text',NULL,3,1,1,NULL,NULL,NULL),(40,'shop.post_price','250000','Post Price',NULL,'text',NULL,3,1,1,NULL,NULL,NULL),(41,'bwin.time_diff','-7200','Bwin Time Diff',NULL,'text',NULL,3,1,1,NULL,NULL,NULL),(42,'captcha.status','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `spider_settings_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider_users_activation_keys`
--

DROP TABLE IF EXISTS `spider_users_activation_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spider_users_activation_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `activation_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `spider_users_activation_keys_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `spider_users_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider_users_activation_keys`
--

LOCK TABLES `spider_users_activation_keys` WRITE;
/*!40000 ALTER TABLE `spider_users_activation_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `spider_users_activation_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spider_users_users`
--

DROP TABLE IF EXISTS `spider_users_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spider_users_users`
--

LOCK TABLES `spider_users_users` WRITE;
/*!40000 ALTER TABLE `spider_users_users` DISABLE KEYS */;
INSERT INTO `spider_users_users` VALUES (1,'superadmin','$2y$10$cqC39uic1CvRduur1HM5LepCUEZPFTvaEm/A3iFvO/5.pyUuqmIQy','Mohammad Saleh','Sayari','','09152225154','1366/11/16','',1,'2017-05-07 09:34:51');
/*!40000 ALTER TABLE `spider_users_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-25 17:19:30
