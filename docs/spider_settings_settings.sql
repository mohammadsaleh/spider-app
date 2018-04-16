/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50715
Source Host           : localhost:3306
Source Database       : spider

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2017-09-03 14:05:40
*/

SET FOREIGN_KEY_CHECKS=0;

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
  `weight` double(10,0) DEFAULT NULL,
  `editable` tinyint(2) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of spider_settings_settings
-- ----------------------------
INSERT INTO `spider_settings_settings` VALUES ('1', 'site.title', 'Bazibartar', 'Site Title', 'the title of site', 'text', null, '4', '1', '1', null, null, null);
INSERT INTO `spider_settings_settings` VALUES ('18', 'audit.audit_hidden_password', '1', 'Audit  Password', null, 'radio', '{\"options\":[{\"text\":\"Show\",\"value\":\"0\",\"class\":\"control-warning\"},{\"text\":\"Hidden\",\"value\":\"1\",\"class\":\"control-success\"}],\"label\":false,\"div\":false}', '5', '1', '1', null, '2017-08-29 17:12:46', '2017-08-29 17:12:46');
INSERT INTO `spider_settings_settings` VALUES ('19', 'users.force_logout', '0', 'Force Logout', null, 'radio', '{\"options\":[{\"text\":\"Disable\",\"value\":\"0\",\"class\":\"control-warning\"},{\"text\":\"Enable\",\"value\":\"1\",\"class\":\"control-info\"}],\"label\":false,\"div\":false}', '4', '1', '1', null, '2017-09-03 09:29:28', '2017-09-03 09:29:28');
INSERT INTO `spider_settings_settings` VALUES ('32', 'site.privacy', '<p dir=\"rtl\" style=\"text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">در شرح شرایط و قوانین منظور از بی کوچ وب سایت <a href=\"http://bikooch.com\">http://bikooch.com</a> می باشد.&nbsp;<br />\r\nکلیه حقوق مادی و معنوی بی کوچ متعلق به شرکت دانشگرایان موج چهارم به شماره ثبت 47047 می باشد. &nbsp;<br />\r\nوب سایت بی کوچ طبق قوانین جرایم اینترنتی و مجموعه قوانین و مقررات تجارت الکترونیکی بین المللی &nbsp;فعالیت می کند.</span></p>\r\n\r\n<p dir=\"rtl\" style=\"text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif\"><strong><span style=\"color:#0000ff\">نحوه ثبت نام کارگزاران:</span></strong><br />\r\nکارگزاران دارای مجوز فعالیت <strong><span style=\"color:#ff0000\">(در کشور ی که فعالیت گردشگری دارند)&nbsp;</span></strong>مجاز به داشتن پنل از بی کوچ و ارایه خدمات&nbsp;می باشند.<br />\r\nکارگزاران در صورت درخواست پنل، موظف به ارسال مدارک شرکتی ،مجوزها، رزومه و سایر مدارک مورد نیاز برای بی کوچ میباشند تا پس از بررسی توسط بی کوچ و در صورت تایید پنل دریافت کنند.<br />\r\nمسولیت اعتبار اسناد ارسالی به عهده ارسال کننده و کارگزارمربوطه میباشد و بی کوچ هر گونه مسولیتی را در خصوص اعتبار اسنادازخود سلب مینماید.<br />\r\nپنل ارایه شده به کارگزاران &nbsp;جهت ثبت هتل با امکانات عمومی در بی کوچ <span style=\"color:#000000\"><strong><span style=\"font-size:14px\">رایگان</span></strong></span> میباشد و در صورت ارایه امکانات خاص مبلغ و هزینه ان اعلام خواهد شد.<br />\r\nقیمتهای تنظیم شده توسط کارگزاران هتل بدون کاهش یا افزایش عینا برای اژانسهای همکار(B2B )نمایش داده خواهد شد.</span></p>\r\n\r\n<p dir=\"rtl\" style=\"text-align:justify\"><br />\r\n<span style=\"font-family:Tahoma,Geneva,sans-serif\"><span style=\"color:#0000ff\"><strong>نحوه ثبت نام اژانس های مسافرتی:</strong></span><br />\r\nدر سیستم B2B &nbsp;فقط آژانس های مسافرتی دارای مجوز بند الف یاب یاپ مجاز به استفاده از وب سایت خواهند بود لذا در هنگام ثبت نام ،آژانسها موظفند مدارک معتبررا جهت دریافت ساین ارسال نمایند. مسئولیت صحت و سقم مدارک ارسالی بعهده ارسال کننده خواهد بود و بی کوچ در این خصوص هیچ گونه مسئولیتی را متقبل نخواهد شد.</span></p>\r\n\r\n<p dir=\"rtl\" style=\"text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">کلیه امکانات عمومی سایت برای آژانس های مسافرتی <span style=\"font-size:14px\"><span style=\"color:#000000\"><strong>رایگان</strong></span></span> می باشد</span></p>\r\n\r\n<p dir=\"rtl\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p dir=\"rtl\" style=\"text-align:justify\"><span style=\"color:#0000ff\"><strong><span style=\"font-family:Tahoma,Geneva,sans-serif\">سایر شرایط :</span></strong></span></p>\r\n\r\n<p dir=\"rtl\" style=\"text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">وقتی شما به سایت <a href=\"http://bikooch.com\">http://bikooch.com</a>&nbsp;دسترسی پیدا کردید موافقت نمودید که کلیه شرایط مندرج در سایت را بدون هیچ الزامی پذیرفتید و در صورتی که شرایط و ضوابط مقررات سایت را قبول ندارید مجاز به استفاده از این وب سایت نخواهید بود.&nbsp;</span></p>\r\n\r\n<p dir=\"rtl\" style=\"text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">بی کوچ اعلام می نماید که کلیه ضوابط و شرایط مندرج در شرایط و مقررات به صورت مستقیم و غیر مستقیم بر کلیه سرویس ها تسری دارد.&nbsp;<br />\r\nبی کوچ این حق را برای خود محفوظ می دارد که ضوابط و شرایط را به طور کلی یا جزئی تغییر دهد اضافه، تعدیل و یا حذف و اصلاح نماید بدون اینکه در این باره به کاربران اطلاع دهد.<br />\r\nبی کوچ حق دارد وب سایت خود را از جمله خصوصیات ، مشخصات و فراورده های طراحی شده بر روی سایت را تغییر دهد و آنها را اصلاح کند این حقوق همواره برای تغییر شرایط و ضوابط مندرج بر روی سایت برای ما محفوظ خواهد ماند اصل و مبنای این صفحات به صورت آنلاین و از طریق اینترنت می باشد.</span></p>\r\n\r\n<p dir=\"rtl\" style=\"text-align:justify\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">هرگونه سو استفاده از اطلاعات ، متن ها ، عکس ها ، طرح ها ، لوگوها و... از این وب سایت پیگرد قانونی دارد و هیچ فرد حقیقی یا حقوقی بدون دریافت مجوزاجازه استفاده از موارد مذکور را نخواهد داشت.&nbsp;<br />\r\nاطلاعات شخصی کاربران در بی کوچ کاملا محرمانه است . بی کوچ تمام تلاش خود را برای محافظت از اطلاعات شخصی کاربران می نماید ، لذا جهت حفظ حریم اطلاعات شخصی کاربران ، کاربر تعهد می نماید تا عامل تلاش جهت هک کردن هرگونه اطلاعات درون سایت نبوده و هیچ گونه معاونت و یا مشارکتی با اشخاص حقیقی و یا حقوقی در این امر نداشته باشد ضمنا کاربر تعهد می دهد که هرگونه اطلاع،توسل و هک کردن اطلاعات توسط شخص و یا موسسه دیگر را در اسرع وقت به عوامل سایت بی کوچ اطلاع دهد.<br />\r\nکاربران متعهد می شوند که اطلاعات خود را هنگام ثبت نام و رزرو به صورت صحیح در وب سایت بی کوچ وارد نمایند وهرگونه تغییر در مشخصات خود را در اسرع وقت اصلاح نماید در صورت ورود اطلاعات ناقص و یا نادرست مسئولیت عواقب بعدی بر عهده کاربران خواهد بودو بی کوچ مسولیتی را به عهده نمیگیرد.<br />\r\nهرگونه سوء استفاده از نام بی کوچ ، سایت اینترنتی بی کوچ ، مکاتبه از طرف بی کوچ و یا استفاده از نام های مشابه که شبیه مشابهت و تطابق را ایجاد نماید ممنوع بوده و از طریق شکایت به مراجع قانونی ذی صلاح دادگاه های رسیدگی به جرایم اینترنتی در داخل و یا خارج از کشور و نیز اطلاع رسانی به سرویس دهندگان و سرویس دهندگان اینترنتی قابل پیگرد خواهد بود.<br />\r\nبی کوچ ضمن احترامی که برای حریم شخصی کاربران قائل است ثبت نظر و یا استفاده برخی از امکانات وب سایت اطلاعاتی را از قبیل آدرس ، تلفن ، ایمیل و ... از کاربران درخواست می نماید تا بتواند خدماتی امن و مطمئن را به کاربران ارائه دهد.<br />\r\nحفظ و نگهداری رمز عبور بعهده کاربران است و برای جلوگیری از هرگونه سوء استفاده احتمالی ، کاربران نباید آن را برای شخص دیگری فاش کنند.<br />\r\nبی کوچ همانند سایر وب سایت ها از جمع آوری آی پی و کوکی ها استفاده می نماید اما پروتکل سرور و لایه های امنیتی بی کوچ و روش های مناسب مدیریت داده ها اطلاعات کاربران را محافظت و از دسترسی های غیر قانونی جلوگیری می کند.<br />\r\n&nbsp;<br />\r\nاز طریق این وب سایت و قالب آن در هر زمان به صورت دائمی یا موقت بدون یادداشت و یا هرگونه مسئولیتی این حق را برای خود محفوظ می دارد که دسترسی به این سایت را محدود یا لغو کند بدون اینکه نیاز باشد برای آن دلیلی ذکر کند و همه این موارد را در اختیار مطلق خودش خواهد بود و حق هر گونه اعتراضی را از کاربران سلب مینماید.<br />\r\nتمام سایت بدون محدودیت شامل موارد صوتی ، تصاویر ، نرم افزار ، متن ، نشانه ها و امثال آن که محتویات سایت نامیده می شود جزو کپی رایت و حقوق معنوی حمایت شده اند نمی توان از این محتویات استفاده کرد.<br />\r\nبه هنگام اجرای خدمات بی کوچ اطلاعات هتل ها، کارگزاران و کابران که در اختیار ما قرار گرفته است در اختیار شما نیز قرار می گیرد اما اگر اطلاعات ارائه شده کامل یا درست نباشد هیچ گونه تضمینی برای کامل بودن یا صحیح&nbsp;بودن آن از طرف بی کوچ داده نمی شود و هیچ مسئولیتی در این مورد به عهده ما نخواهد بود .<br />\r\nبی کوچ درخصوص ثبت نام کارگزاران در سایت نهایت بررسی و تحقیق را درخصوص مجوزهای مربوطه ، مدارک ثبتی شرکتهای کارگزاری و غیره انجام می دهد ولی هرگونه مسئولیتی را از خود در خصوص اعتبار و نحوه خدمات و شرایط بعدی کارگزاران در حال و آینده از خود سلب می نماید لذا کاربران در زمان انتخاب هتل ، انتخاب کارگزار و پرداخت و ... نهایت تحقیق و بررسی خود را انجام دهند و در صورت بروز هرگونه نارضایتی از سمت آژانس ها و کاربران مسئولیتی متوجه بی کوچ نخواهد بود.<br />\r\nکاربر جهت استفاده از سایت احتیاج به شناسه کاربری و رمز عبور دارد و همچنین موظف است سریعا رمز عبور خود را بلافاصله بعد از دریافت تغییر دهد.&nbsp;<br />\r\nکاربر همین جا تایید می نماید که در هیچ صورتی رمز عبور خود را در اختیار فرد ثالث ( حتی گردانندگان سایت ، مدیران سایت ، مجریان ، نمایندگیها و سایرین ) قرار ندهد و کلیه مسئولیت نگهداری از آن را متقبل می شود .<br />\r\nبرای هرگونه صدمه شخصی ، فوت ، فقدان &nbsp;و خسارت مالی یا سایر خسارات ( مستقیم ، غیر مستقیم ) هرگونه زیان یا هزینه ایی که شما متحل می شوید چه بخاطر اعمال قانونی ، خطا ، نقض ، سهل انگاری و غفلت محض سوء رفتار شرمندانه ، حذفیات ، عدم اجرا ، سوء ارائه ، شبه جرم یا تعهد اکید ( جزیی یا کلی ) که قابل انتساب به خدمات بی کوچ باشد و کارکنان ، مدیران ، مقامات ،کارگزاران ، نمایندگی ها یا شرکت های وابسته از جمله لغو و کنسلی (جزیی) ، رزرواسیون بیش از حد ، اعتصاب ، فورس ماژور یا هر رویداد دیگری که خارج از کنترل ما باشد ما هیچگونه مسئولیتی را متقبل نمی شویم .<br />\r\nبی کوچ حق انحصار را برای خودش محفوظ می دارد که با اختیار کامل هر کاربری را از دسترسی به این سایت یا هر قسمتی در آن باز دارد و مانع استفاده ی او شود.</span><br />\r\n&nbsp;</p>\r\n', 'Privacy Policy', null, 'textarea', '{\"ckeditor\":true}', '1', '1', '1', null, null, null);
INSERT INTO `spider_settings_settings` VALUES ('36', 'site.status', 'online', 'Site Status', null, 'radio', '{\"options\":[{\"text\":\"Offline\",\"value\":\"offline\",\"class\":\"control-warning\"},{\"text\":\"Online\",\"value\":\"online\",\"class\":\"control-info\"}],\"label\":false,\"div\":false}', '3', '1', '1', null, null, null);
INSERT INTO `spider_settings_settings` VALUES ('39', 'affiliate.commission', '0.03', 'Affiliate Commission', null, 'text', null, '3', '1', '1', null, null, null);
INSERT INTO `spider_settings_settings` VALUES ('40', 'shop.post_price', '250000', 'Post Price', null, 'text', null, '3', '1', '1', null, null, null);
INSERT INTO `spider_settings_settings` VALUES ('41', 'bwin.time_diff', '-7200', 'Bwin Time Diff', null, 'text', null, '3', '1', '1', null, null, null);
INSERT INTO `spider_settings_settings` VALUES ('42', 'captcha.status', '1', null, null, null, null, null, null, null, null, null, null);
