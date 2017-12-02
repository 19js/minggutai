/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : minggutai

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2017-11-28 22:58:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `mg_admin`
-- ----------------------------
DROP TABLE IF EXISTS `mg_admin`;
CREATE TABLE `mg_admin` (
  `admin_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mail` varchar(100) NOT NULL COMMENT '登录邮箱',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` char(32) NOT NULL COMMENT '密码md5',
  `last_ip` varchar(50) NOT NULL COMMENT '最后一次登录ip',
  `last_time` int(11) unsigned NOT NULL COMMENT '最后一次登录时间',
  `mobile` char(11) NOT NULL DEFAULT '0' COMMENT '手机',
  `role_id` int(11) unsigned NOT NULL COMMENT '角色名',
  `add_time` int(11) unsigned NOT NULL DEFAULT '1400000',
  `other` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mg_admin
-- ----------------------------
INSERT INTO `mg_admin` VALUES ('1', 'admin@test.com', 'admin', 'a6c9648036ea2a131626bc3fb0437350', '127.0.0.1', '1495788782', '13456789333', '1', '1400000', null);
INSERT INTO `mg_admin` VALUES ('4', '15789006577@qq.com', 'test', 'a6c9648036ea2a131626bc3fb0437350', '', '0', '15789006577', '3', '1495898697', '');
INSERT INTO `mg_admin` VALUES ('5', '123@123.com', 'daquanxian', '99e80aca11ae7505e5ea52beae3c521f', '', '0', '13800138001', '4', '1498095956', '大权限管理');
INSERT INTO `mg_admin` VALUES ('6', '123456', '17346522861', 'a6c9648036ea2a131626bc3fb0437350', '', '0', '123456', '7', '1502870975', 'sfsf');

-- ----------------------------
-- Table structure for `mg_admin_act`
-- ----------------------------
DROP TABLE IF EXISTS `mg_admin_act`;
CREATE TABLE `mg_admin_act` (
  `act_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL COMMENT '权限名称',
  `controll` varchar(50) NOT NULL COMMENT '控制器',
  `action` varchar(50) NOT NULL COMMENT '具体操作名称',
  `style` varchar(50) DEFAULT NULL COMMENT '样式',
  PRIMARY KEY (`act_id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mg_admin_act
-- ----------------------------
INSERT INTO `mg_admin_act` VALUES ('1', '0', '学员管理', 'Student', 'index', 'icon-user');
INSERT INTO `mg_admin_act` VALUES ('2', '0', '课程管理', 'Lesson', 'index', 'icon-cube');
INSERT INTO `mg_admin_act` VALUES ('3', '0', '教材管理', 'Material', 'index', 'icon-laptop');
INSERT INTO `mg_admin_act` VALUES ('4', '0', '教学管理', 'Teacher', 'index', 'icon-group (alias)');
INSERT INTO `mg_admin_act` VALUES ('5', '0', '运营管理', 'Business', 'index', 'icon-pencil');
INSERT INTO `mg_admin_act` VALUES ('6', '0', '权限管理', 'System', 'index', 'icon-cog');
INSERT INTO `mg_admin_act` VALUES ('7', '0', '资源管理', 'Resource', 'index', 'icon-pencil-square-o');
INSERT INTO `mg_admin_act` VALUES ('8', '1', '管理学员', 'Student', 'manager', null);
INSERT INTO `mg_admin_act` VALUES ('9', '100', '下发通知', 'Student', 'send', null);
INSERT INTO `mg_admin_act` VALUES ('10', '2', '添加课程', 'Lesson', 'add', null);
INSERT INTO `mg_admin_act` VALUES ('11', '2', '课程分类', 'Lesson', 'cat', null);
INSERT INTO `mg_admin_act` VALUES ('13', '2', '课程列表', 'Lesson', 'lesson_list', null);
INSERT INTO `mg_admin_act` VALUES ('14', '3', '语音管理', 'Material', 'mp3', null);
INSERT INTO `mg_admin_act` VALUES ('15', '3', '习题管理', 'Material', 'exec', null);
INSERT INTO `mg_admin_act` VALUES ('16', '3', '文本教材', 'Material', 'pdf', null);
INSERT INTO `mg_admin_act` VALUES ('17', '0', '教师管理', 'Teachers', 'index', 'icon-user');
INSERT INTO `mg_admin_act` VALUES ('19', '4', '即将开始的课程', 'Teacher', 'willteach', null);
INSERT INTO `mg_admin_act` VALUES ('20', '4', '正在进行的课程', 'Teacher', 'teaching', null);
INSERT INTO `mg_admin_act` VALUES ('21', '4', '已经结束的课程', 'Teacher', 'teached', null);
INSERT INTO `mg_admin_act` VALUES ('41', '4', '课程安排', 'Teacher', 'zoom', null);
INSERT INTO `mg_admin_act` VALUES ('22', '5', '财务管理', 'Business', 'chat', null);
INSERT INTO `mg_admin_act` VALUES ('23', '5', '新闻资讯', 'Business', 'news', null);
INSERT INTO `mg_admin_act` VALUES ('24', '5', '订单管理', 'Business', 'order_list', null);
INSERT INTO `mg_admin_act` VALUES ('25', '6', '角色管理', 'System', 'role', null);
INSERT INTO `mg_admin_act` VALUES ('26', '6', '管理员管理', 'System', 'admin', null);
INSERT INTO `mg_admin_act` VALUES ('27', '6', '网站配置', 'System', 'info', null);
INSERT INTO `mg_admin_act` VALUES ('30', '7', '教室管理', 'Resource', 'classes', null);
INSERT INTO `mg_admin_act` VALUES ('31', '7', '协议签订', 'Resource', 'agreement', null);
INSERT INTO `mg_admin_act` VALUES ('32', '6', '管理员日志', 'System', 'log', null);
INSERT INTO `mg_admin_act` VALUES ('33', '6', '个人信息', 'System', 'person', null);
INSERT INTO `mg_admin_act` VALUES ('34', '5', '公告管理', 'Business', 'notice', null);
INSERT INTO `mg_admin_act` VALUES ('35', '5', '帮助中心', 'Business', 'help', null);
INSERT INTO `mg_admin_act` VALUES ('37', '17', '教师列表', 'Teachers', 't_list', null);
INSERT INTO `mg_admin_act` VALUES ('18', '4', '添加新的教室', 'Teacher', 'add_class', null);
INSERT INTO `mg_admin_act` VALUES ('39', '17', '工资发放', 'Teachers', 'money', null);
INSERT INTO `mg_admin_act` VALUES ('42', '1', '添加学员', 'Student', 'user_edit', null);
INSERT INTO `mg_admin_act` VALUES ('43', '5', '发布招聘', 'Business', 'jobs', null);
INSERT INTO `mg_admin_act` VALUES ('44', '3', '习题类型', 'Material', 'type', null);

-- ----------------------------
-- Table structure for `mg_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `mg_admin_log`;
CREATE TABLE `mg_admin_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) unsigned NOT NULL,
  `add_time` int(11) unsigned NOT NULL,
  `ip` varchar(40) NOT NULL,
  `log` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=455 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mg_admin_log
-- ----------------------------
INSERT INTO `mg_admin_log` VALUES ('1', '1', '1495893550', '127.0.0.1', '添加新用户成功2test');
INSERT INTO `mg_admin_log` VALUES ('2', '1', '1495894600', '127.0.0.1', '添加新用户成功3test');
INSERT INTO `mg_admin_log` VALUES ('3', '3', '1495894623', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('4', '1', '1495895780', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('5', '1', '1495898429', '127.0.0.1', '双语管理员修改成功');
INSERT INTO `mg_admin_log` VALUES ('6', '1', '1495898647', '127.0.0.1', '双语管理员添加成功');
INSERT INTO `mg_admin_log` VALUES ('7', '1', '1495898698', '127.0.0.1', '添加新用户成功4test');
INSERT INTO `mg_admin_log` VALUES ('8', '1', '1495902335', '127.0.0.1', '修改管理员admin密码成功！');
INSERT INTO `mg_admin_log` VALUES ('9', '1', '1495903554', '127.0.0.1', '修改管理员（1）手机号，邮箱修改成功！');
INSERT INTO `mg_admin_log` VALUES ('10', '1', '1495942780', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('11', '1', '1496029204', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('12', '1', '1496030422', '127.0.0.1', 'admin添加新闻如何快速学好英语');
INSERT INTO `mg_admin_log` VALUES ('13', '1', '1496030446', '127.0.0.1', 'admin添加新闻如何快速学好英语');
INSERT INTO `mg_admin_log` VALUES ('14', '1', '1496030490', '127.0.0.1', 'admin添加新闻如何快速学好英语');
INSERT INTO `mg_admin_log` VALUES ('15', '1', '1496030503', '127.0.0.1', 'admin添加新闻如何快速学好英语');
INSERT INTO `mg_admin_log` VALUES ('16', '1', '1496030516', '127.0.0.1', 'admin添加新闻如何快速学好英语');
INSERT INTO `mg_admin_log` VALUES ('17', '1', '1496030528', '127.0.0.1', 'admin添加新闻如何快速学好英语');
INSERT INTO `mg_admin_log` VALUES ('18', '1', '1496030931', '127.0.0.1', 'admin添加新闻如何快速学好英语');
INSERT INTO `mg_admin_log` VALUES ('19', '1', '1496044054', '127.0.0.1', 'admin添加新闻如何快速学好英语');
INSERT INTO `mg_admin_log` VALUES ('20', '1', '1496045198', '127.0.0.1', 'admin添加新闻如何快速学好英语');
INSERT INTO `mg_admin_log` VALUES ('21', '1', '1496045418', '127.0.0.1', 'admin修改新闻如何快速学好英语');
INSERT INTO `mg_admin_log` VALUES ('22', '1', '1496045646', '127.0.0.1', 'admin修改新闻如何快速学好英语');
INSERT INTO `mg_admin_log` VALUES ('23', '1', '1496045705', '127.0.0.1', 'admin修改新闻如何快速学好英语');
INSERT INTO `mg_admin_log` VALUES ('24', '1', '1496045811', '127.0.0.1', 'admin修改新闻如何快速学好英语');
INSERT INTO `mg_admin_log` VALUES ('25', '1', '1496045840', '127.0.0.1', 'admin修改新闻如何快速学好英语');
INSERT INTO `mg_admin_log` VALUES ('26', '1', '1496045871', '127.0.0.1', 'admin修改新闻如何快速学好英语');
INSERT INTO `mg_admin_log` VALUES ('27', '1', '1496045885', '127.0.0.1', 'admin修改新闻如何快速学好英语');
INSERT INTO `mg_admin_log` VALUES ('28', '1', '1496045905', '127.0.0.1', 'admin修改新闻如何快速学好英语');
INSERT INTO `mg_admin_log` VALUES ('29', '1', '1496048393', '127.0.0.1', 'admin修改noticesort为2');
INSERT INTO `mg_admin_log` VALUES ('30', '1', '1496049177', '127.0.0.1', 'admin删除noticeid=1');
INSERT INTO `mg_admin_log` VALUES ('31', '1', '1496049199', '127.0.0.1', 'admin删除noticeid=2');
INSERT INTO `mg_admin_log` VALUES ('32', '1', '1496049239', '127.0.0.1', 'admin修改noticesort为2');
INSERT INTO `mg_admin_log` VALUES ('33', '1', '1496049244', '127.0.0.1', 'admin删除noticeid=3');
INSERT INTO `mg_admin_log` VALUES ('34', '1', '1496049409', '127.0.0.1', 'admin修改noticesort为4');
INSERT INTO `mg_admin_log` VALUES ('35', '1', '1496049418', '127.0.0.1', 'admin删除noticeid=4');
INSERT INTO `mg_admin_log` VALUES ('36', '1', '1496050851', '127.0.0.1', 'admin添加新闻学习英语的10个小技巧');
INSERT INTO `mg_admin_log` VALUES ('37', '1', '1496050876', '127.0.0.1', 'admin删除noticeid=11');
INSERT INTO `mg_admin_log` VALUES ('38', '1', '1496051005', '127.0.0.1', 'admin添加新闻如何快速学好英语');
INSERT INTO `mg_admin_log` VALUES ('39', '1', '1496051134', '127.0.0.1', 'admin添加新闻如何快速学好英语');
INSERT INTO `mg_admin_log` VALUES ('40', '1', '1496051218', '127.0.0.1', 'admin修改新闻如何快速学好英语');
INSERT INTO `mg_admin_log` VALUES ('41', '1', '1496051229', '127.0.0.1', 'admin修改newssort为3333');
INSERT INTO `mg_admin_log` VALUES ('42', '1', '1496073796', '127.0.0.1', '网站设置调整成功');
INSERT INTO `mg_admin_log` VALUES ('43', '1', '1496073836', '127.0.0.1', '网站设置调整成功');
INSERT INTO `mg_admin_log` VALUES ('44', '4', '1496216295', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('45', '1', '1496216353', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('46', '1', '1496217734', '127.0.0.1', 'admin添加帮助中心账号初始密码123456');
INSERT INTO `mg_admin_log` VALUES ('47', '1', '1496217799', '127.0.0.1', 'admin修改帮助中心账号初始密码123456');
INSERT INTO `mg_admin_log` VALUES ('48', '1', '1496217812', '127.0.0.1', 'admin修改帮助中心账号初始密码123456');
INSERT INTO `mg_admin_log` VALUES ('49', '1', '1496223601', '127.0.0.1', '修改管理员admin密码成功！');
INSERT INTO `mg_admin_log` VALUES ('50', '1', '1496242128', '127.0.0.1', '添加课程类型ELS口语教材');
INSERT INTO `mg_admin_log` VALUES ('51', '1', '1496242199', '127.0.0.1', '添加课程类型ELS口语教材');
INSERT INTO `mg_admin_log` VALUES ('52', '1', '1496242324', '127.0.0.1', '修改课程类型ELS口语教材');
INSERT INTO `mg_admin_log` VALUES ('53', '1', '1496243109', '127.0.0.1', '添加课程类型ELS口语教材');
INSERT INTO `mg_admin_log` VALUES ('54', '1', '1496243124', '127.0.0.1', '添加课程类型小故事大启发');
INSERT INTO `mg_admin_log` VALUES ('55', '1', '1496243143', '127.0.0.1', '添加课程类型新概念');
INSERT INTO `mg_admin_log` VALUES ('56', '1', '1496328816', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('57', '1', '1496406384', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('58', '1', '1496408207', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('59', '1', '1496426797', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('60', '1', '1496462170', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('61', '1', '1496471685', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('62', '1', '1496471695', '127.0.0.1', '测试');
INSERT INTO `mg_admin_log` VALUES ('63', '1', '1496472367', '127.0.0.1', 'admin修改新闻账号初始密码123456');
INSERT INTO `mg_admin_log` VALUES ('64', '1', '1496472401', '127.0.0.1', 'admin添加新闻测试添加');
INSERT INTO `mg_admin_log` VALUES ('65', '1', '1496472545', '127.0.0.1', 'admin修改帮助中心测试添加');
INSERT INTO `mg_admin_log` VALUES ('66', '1', '1496472585', '127.0.0.1', 'admin添加帮助中心测试2');
INSERT INTO `mg_admin_log` VALUES ('67', '1', '1496499744', '127.0.0.1', '修改用户信息1');
INSERT INTO `mg_admin_log` VALUES ('68', '1', '1496499755', '127.0.0.1', '修改用户信息1');
INSERT INTO `mg_admin_log` VALUES ('69', '1', '1496499797', '127.0.0.1', '修改用户信息1');
INSERT INTO `mg_admin_log` VALUES ('70', '1', '1496499810', '127.0.0.1', '修改用户信息1');
INSERT INTO `mg_admin_log` VALUES ('71', '1', '1496504356', '127.0.0.1', '修改表格lesson_cat新概念');
INSERT INTO `mg_admin_log` VALUES ('72', '1', '1496504441', '127.0.0.1', '添加表格lesson_cat测试');
INSERT INTO `mg_admin_log` VALUES ('73', '1', '1496504484', '127.0.0.1', 'admin删除lesson_catid=5');
INSERT INTO `mg_admin_log` VALUES ('74', '1', '1496544639', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('75', '1', '1496545820', '127.0.0.1', 'admin添加新闻');
INSERT INTO `mg_admin_log` VALUES ('76', '1', '1496545822', '127.0.0.1', '测试');
INSERT INTO `mg_admin_log` VALUES ('77', '1', '1496545828', '127.0.0.1', '测试');
INSERT INTO `mg_admin_log` VALUES ('78', '1', '1496545833', '127.0.0.1', 'admin删除newsid=13');
INSERT INTO `mg_admin_log` VALUES ('79', '1', '1496547174', '127.0.0.1', '新增课程1');
INSERT INTO `mg_admin_log` VALUES ('80', '1', '1496591555', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('81', '1', '1496592793', '127.0.0.1', '新增teacher信息1');
INSERT INTO `mg_admin_log` VALUES ('82', '1', '1496593358', '127.0.0.1', '修改表teacher信息0');
INSERT INTO `mg_admin_log` VALUES ('83', '1', '1496593370', '127.0.0.1', '修改表teacher信息1');
INSERT INTO `mg_admin_log` VALUES ('84', '1', '1496635128', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('85', '1', '1496766467', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('86', '1', '1496928929', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('87', '1', '1496929805', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('88', '1', '1496936380', '127.0.0.1', '添加表格lesson_cat领取免费课程');
INSERT INTO `mg_admin_log` VALUES ('89', '1', '1496936560', '127.0.0.1', '新增课程3');
INSERT INTO `mg_admin_log` VALUES ('90', '1', '1496975241', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('91', '1', '1497012994', '127.0.0.1', '测试');
INSERT INTO `mg_admin_log` VALUES ('92', '1', '1497018212', '127.0.0.1', '新增teacher信息2');
INSERT INTO `mg_admin_log` VALUES ('93', '1', '1497021151', '127.0.0.1', 'admin删除teacherid=2');
INSERT INTO `mg_admin_log` VALUES ('94', '1', '1497107096', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('95', '1', '1497116745', '127.0.0.1', 'admin删除mp3id=1');
INSERT INTO `mg_admin_log` VALUES ('96', '1', '1497274728', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('97', '1', '1497281123', '127.0.0.1', '测试');
INSERT INTO `mg_admin_log` VALUES ('98', '1', '1497444095', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('99', '1', '1497542959', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('100', '1', '1497543613', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('101', '1', '1497544375', '127.0.0.1', '新增排课id1');
INSERT INTO `mg_admin_log` VALUES ('102', '1', '1497545271', '127.0.0.1', '新增排课id2');
INSERT INTO `mg_admin_log` VALUES ('103', '1', '1497545597', '127.0.0.1', '新增排课id1');
INSERT INTO `mg_admin_log` VALUES ('104', '1', '1497545679', '127.0.0.1', '新增排课id1');
INSERT INTO `mg_admin_log` VALUES ('105', '1', '1497547064', '127.0.0.1', '新增排课id1');
INSERT INTO `mg_admin_log` VALUES ('106', '1', '1497552722', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('107', '1', '1497558592', '183.220.25.91', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('108', '1', '1497578521', '106.121.72.41', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('109', '1', '1497578735', '106.121.72.41', '测试');
INSERT INTO `mg_admin_log` VALUES ('110', '1', '1497579945', '183.193.29.209', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('111', '1', '1497582299', '106.121.72.41', '新增排课id1ELS3006886');
INSERT INTO `mg_admin_log` VALUES ('112', '1', '1497587950', '106.121.72.41', '新增排课id1ELS3466982');
INSERT INTO `mg_admin_log` VALUES ('113', '1', '1497587959', '106.121.72.41', '新增排课id1ELS1906573');
INSERT INTO `mg_admin_log` VALUES ('114', '1', '1497591805', '106.121.14.254', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('115', '1', '1497591850', '106.121.14.254', '测试');
INSERT INTO `mg_admin_log` VALUES ('116', '1', '1497596194', '106.121.14.254', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('117', '1', '1497596254', '106.121.14.254', '测试');
INSERT INTO `mg_admin_log` VALUES ('118', '1', '1497596447', '106.121.14.254', '测试');
INSERT INTO `mg_admin_log` VALUES ('119', '1', '1497596493', '106.121.14.254', 'admin修改noticesort为9');
INSERT INTO `mg_admin_log` VALUES ('120', '1', '1497596503', '106.121.14.254', 'admin修改noticesort为1');
INSERT INTO `mg_admin_log` VALUES ('121', '1', '1497596551', '106.121.14.254', 'admin修改noticesort为9');
INSERT INTO `mg_admin_log` VALUES ('122', '1', '1497596568', '106.121.14.254', 'admin修改noticesort为1');
INSERT INTO `mg_admin_log` VALUES ('123', '1', '1497597108', '106.121.14.254', '测试');
INSERT INTO `mg_admin_log` VALUES ('124', '1', '1497602146', '106.121.72.41', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('125', '1', '1497603117', '183.220.25.91', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('126', '1', '1497603153', '183.220.25.91', '新增排课id3ELS7223559');
INSERT INTO `mg_admin_log` VALUES ('127', '1', '1497603511', '106.121.72.41', '新增teacher信息3');
INSERT INTO `mg_admin_log` VALUES ('128', '1', '1497603543', '106.121.72.41', '新增排课id4ELS9438236');
INSERT INTO `mg_admin_log` VALUES ('129', '1', '1497624151', '106.121.76.78', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('130', '1', '1497624425', '106.121.76.78', '新增排课id1ELS1816626');
INSERT INTO `mg_admin_log` VALUES ('131', '1', '1497883173', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('132', '1', '1497893178', '127.0.0.1', '修改习题');
INSERT INTO `mg_admin_log` VALUES ('133', '1', '1498095393', '106.121.73.246', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('134', '1', '1498095490', '106.121.73.246', '测试');
INSERT INTO `mg_admin_log` VALUES ('135', '1', '1498095611', '106.121.73.246', '测试');
INSERT INTO `mg_admin_log` VALUES ('136', '1', '1498095645', '106.121.73.246', '新增排课id1ELS8969934');
INSERT INTO `mg_admin_log` VALUES ('137', '1', '1498095653', '106.121.73.246', '测试');
INSERT INTO `mg_admin_log` VALUES ('138', '1', '1498095678', '106.121.73.246', '测试');
INSERT INTO `mg_admin_log` VALUES ('139', '1', '1498095738', '106.121.73.246', '网站设置调整成功');
INSERT INTO `mg_admin_log` VALUES ('140', '1', '1498095748', '106.121.73.246', '网站设置调整成功');
INSERT INTO `mg_admin_log` VALUES ('141', '1', '1498095766', '106.121.73.246', '测试');
INSERT INTO `mg_admin_log` VALUES ('142', '1', '1498095910', '106.121.73.246', '大权限添加成功');
INSERT INTO `mg_admin_log` VALUES ('143', '1', '1498095956', '106.121.73.246', '添加新用户成功5daquanxian');
INSERT INTO `mg_admin_log` VALUES ('144', '5', '1498095979', '106.121.73.246', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('145', '5', '1498095989', '106.121.73.246', '测试');
INSERT INTO `mg_admin_log` VALUES ('146', '1', '1498096020', '106.121.73.246', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('147', '1', '1498096075', '106.121.73.246', '新增排课id1ELS5570956');
INSERT INTO `mg_admin_log` VALUES ('148', '1', '1498096096', '106.121.73.246', '新增排课id1ELS4679811');
INSERT INTO `mg_admin_log` VALUES ('149', '1', '1498096614', '106.121.77.114', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('150', '1', '1498096862', '106.121.77.114', '测试');
INSERT INTO `mg_admin_log` VALUES ('151', '1', '1498100759', '106.121.77.114', '网站设置调整成功');
INSERT INTO `mg_admin_log` VALUES ('152', '1', '1498101208', '106.121.73.246', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('153', '1', '1498109564', '106.121.73.246', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('154', '1', '1498115422', '106.121.73.246', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('155', '1', '1498359221', '106.121.73.246', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('156', '1', '1498383308', '106.121.73.246', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('157', '1', '1498383393', '106.121.73.246', '新增排课id5ELS5127452');
INSERT INTO `mg_admin_log` VALUES ('158', '1', '1498383423', '106.121.73.246', '新增排课id1ELS9555816');
INSERT INTO `mg_admin_log` VALUES ('159', '1', '1498384257', '106.121.73.246', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('160', '1', '1498384644', '106.121.73.246', '新增排课id1ELS5621319');
INSERT INTO `mg_admin_log` VALUES ('161', '1', '1498384748', '223.87.232.62', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('162', '1', '1498384771', '223.87.232.62', '新增排课id1ELS6296961');
INSERT INTO `mg_admin_log` VALUES ('163', '1', '1498384997', '223.87.232.62', '新增排课id1ELS8486786');
INSERT INTO `mg_admin_log` VALUES ('164', '1', '1498384998', '106.121.73.246', '新增排课id1ELS1961088');
INSERT INTO `mg_admin_log` VALUES ('165', '1', '1498385004', '106.121.73.246', '新增排课id1ELS5594220');
INSERT INTO `mg_admin_log` VALUES ('166', '1', '1498385521', '223.87.232.62', '新增排课id6ELS3603037');
INSERT INTO `mg_admin_log` VALUES ('167', '1', '1498386158', '223.87.232.62', '新增排课id1ELS1457154');
INSERT INTO `mg_admin_log` VALUES ('168', '1', '1498387000', '223.87.232.62', '新增排课id1ELS7642448');
INSERT INTO `mg_admin_log` VALUES ('169', '1', '1498398163', '106.121.73.246', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('170', '1', '1498441657', '106.121.0.106', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('171', '1', '1498442067', '106.121.0.106', '测试');
INSERT INTO `mg_admin_log` VALUES ('172', '1', '1498442446', '106.121.0.106', '测试');
INSERT INTO `mg_admin_log` VALUES ('173', '1', '1498572756', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('174', '1', '1498573531', '127.0.0.1', '新增排课id1ELS3198784');
INSERT INTO `mg_admin_log` VALUES ('175', '1', '1498574030', '127.0.0.1', '新增排课id1ELS8758138');
INSERT INTO `mg_admin_log` VALUES ('176', '1', '1498574050', '127.0.0.1', '新增排课id1ELS8360188');
INSERT INTO `mg_admin_log` VALUES ('177', '1', '1498587464', '127.0.0.1', '新增排课id1ELS2153862');
INSERT INTO `mg_admin_log` VALUES ('178', '1', '1498589210', '127.0.0.1', '新增排课id1ELS3212890');
INSERT INTO `mg_admin_log` VALUES ('179', '1', '1498681588', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('180', '1', '1499002164', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('181', '1', '1499010326', '127.0.0.1', '新增排课id1ELS4281141');
INSERT INTO `mg_admin_log` VALUES ('182', '1', '1499011875', '127.0.0.1', '新增排课id1ELS5034722');
INSERT INTO `mg_admin_log` VALUES ('183', '1', '1499012392', '127.0.0.1', '新增排课id1ELS9211968');
INSERT INTO `mg_admin_log` VALUES ('184', '1', '1499051139', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('185', '1', '1499051181', '127.0.0.1', '新增排课id1ELS1512857');
INSERT INTO `mg_admin_log` VALUES ('186', '1', '1499051210', '127.0.0.1', '新增排课id1ELS1143663');
INSERT INTO `mg_admin_log` VALUES ('187', '1', '1499182287', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('188', '1', '1499696140', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('189', '1', '1499696888', '127.0.0.1', '添加用户信息');
INSERT INTO `mg_admin_log` VALUES ('190', '1', '1499774180', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('191', '1', '1499774216', '127.0.0.1', '测试');
INSERT INTO `mg_admin_log` VALUES ('192', '1', '1499775276', '127.0.0.1', '新增排课id7ELS3017849');
INSERT INTO `mg_admin_log` VALUES ('193', '1', '1499784192', '127.0.0.1', '新增排课id1ELS2990993');
INSERT INTO `mg_admin_log` VALUES ('194', '1', '1499785396', '127.0.0.1', '测试');
INSERT INTO `mg_admin_log` VALUES ('195', '1', '1499785401', '127.0.0.1', '测试');
INSERT INTO `mg_admin_log` VALUES ('196', '1', '1499785848', '127.0.0.1', '测试');
INSERT INTO `mg_admin_log` VALUES ('197', '1', '1499785862', '127.0.0.1', '测试');
INSERT INTO `mg_admin_log` VALUES ('198', '1', '1499785879', '127.0.0.1', '测试');
INSERT INTO `mg_admin_log` VALUES ('199', '1', '1499785893', '127.0.0.1', '测试');
INSERT INTO `mg_admin_log` VALUES ('200', '1', '1499785942', '127.0.0.1', '测试');
INSERT INTO `mg_admin_log` VALUES ('201', '1', '1499785948', '127.0.0.1', '测试');
INSERT INTO `mg_admin_log` VALUES ('202', '1', '1499785957', '127.0.0.1', '测试');
INSERT INTO `mg_admin_log` VALUES ('203', '1', '1499785981', '127.0.0.1', '测试');
INSERT INTO `mg_admin_log` VALUES ('204', '1', '1499786580', '127.0.0.1', 'admin修改newssort为12');
INSERT INTO `mg_admin_log` VALUES ('205', '1', '1499828120', '127.0.0.1', '新增排课id1ELS4728461');
INSERT INTO `mg_admin_log` VALUES ('206', '1', '1499873049', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('207', '1', '1500471320', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('208', '1', '1500565979', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('209', '1', '1500580688', '127.0.0.1', 'admin删除jobsid=1');
INSERT INTO `mg_admin_log` VALUES ('210', '1', '1500649366', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('211', '1', '1500735798', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('212', '1', '1500735925', '127.0.0.1', '新增排课id1ELS5387912');
INSERT INTO `mg_admin_log` VALUES ('213', '1', '1500821102', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('214', '1', '1500899006', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('215', '1', '1500904143', '127.0.0.1', '修改表teacher信息1');
INSERT INTO `mg_admin_log` VALUES ('216', '1', '1500907107', '127.0.0.1', 'admin修改ordersort为total_amount');
INSERT INTO `mg_admin_log` VALUES ('217', '1', '1500907935', '127.0.0.1', 'admin修改ordersort为100');
INSERT INTO `mg_admin_log` VALUES ('218', '1', '1500907943', '127.0.0.1', 'admin修改ordersort为50');
INSERT INTO `mg_admin_log` VALUES ('219', '1', '1501081448', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('220', '1', '1501165104', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('221', '1', '1501233262', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('222', '1', '1501252534', '127.0.0.1', 'admin删除orderid=14');
INSERT INTO `mg_admin_log` VALUES ('223', '1', '1501252548', '127.0.0.1', 'admin删除orderid=10');
INSERT INTO `mg_admin_log` VALUES ('224', '1', '1501252555', '127.0.0.1', 'admin删除orderid=11');
INSERT INTO `mg_admin_log` VALUES ('225', '1', '1501252560', '127.0.0.1', 'admin删除orderid=12');
INSERT INTO `mg_admin_log` VALUES ('226', '1', '1501337227', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('227', '1', '1501344167', '127.0.0.1', '新增排课idELS6591525');
INSERT INTO `mg_admin_log` VALUES ('228', '1', '1501344437', '127.0.0.1', '新增排课idELS8382975');
INSERT INTO `mg_admin_log` VALUES ('229', '1', '1501423331', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('230', '1', '1501423353', '127.0.0.1', '新增排课idELS7508409');
INSERT INTO `mg_admin_log` VALUES ('231', '1', '1501511243', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('232', '1', '1501516636', '127.0.0.1', '新增排课idELS6086425');
INSERT INTO `mg_admin_log` VALUES ('233', '1', '1501524568', '127.0.0.1', '新增排课idELS4045410');
INSERT INTO `mg_admin_log` VALUES ('234', '1', '1501524859', '127.0.0.1', '新增排课id7ELS8700629');
INSERT INTO `mg_admin_log` VALUES ('235', '1', '1501525039', '127.0.0.1', '新增排课id5ELS7793239');
INSERT INTO `mg_admin_log` VALUES ('236', '1', '1501525677', '127.0.0.1', '新增排课id5ELS1434732');
INSERT INTO `mg_admin_log` VALUES ('237', '1', '1501526285', '127.0.0.1', '新增排课idELS5135091');
INSERT INTO `mg_admin_log` VALUES ('238', '1', '1501526368', '127.0.0.1', '新增排课id9ELS2690700');
INSERT INTO `mg_admin_log` VALUES ('239', '1', '1501526431', '127.0.0.1', '新增排课id12ELS1176757');
INSERT INTO `mg_admin_log` VALUES ('240', '1', '1501526559', '127.0.0.1', '新增排课id14ELS7224663');
INSERT INTO `mg_admin_log` VALUES ('241', '1', '1501527367', '127.0.0.1', '新增排课id17ELS6042480');
INSERT INTO `mg_admin_log` VALUES ('242', '1', '1501528140', '127.0.0.1', '新增排课idELS4374186');
INSERT INTO `mg_admin_log` VALUES ('243', '1', '1501529866', '127.0.0.1', '新增排课id20ELS7621527');
INSERT INTO `mg_admin_log` VALUES ('244', '1', '1501529938', '127.0.0.1', '新增排课id28ELS8857964');
INSERT INTO `mg_admin_log` VALUES ('245', '1', '1501529987', '127.0.0.1', '新增排课id30ELS2010091');
INSERT INTO `mg_admin_log` VALUES ('246', '1', '1501531338', '127.0.0.1', '新增排课id65ELS9294162');
INSERT INTO `mg_admin_log` VALUES ('247', '1', '1501531353', '127.0.0.1', '新增排课id72ELS6647135');
INSERT INTO `mg_admin_log` VALUES ('248', '1', '1501531416', '127.0.0.1', '新增排课id7ELS2108289');
INSERT INTO `mg_admin_log` VALUES ('249', '1', '1501532178', '127.0.0.1', '新增排课id39ELS8092447');
INSERT INTO `mg_admin_log` VALUES ('250', '1', '1501532188', '127.0.0.1', '新增排课id43ELS6392144');
INSERT INTO `mg_admin_log` VALUES ('251', '1', '1501532348', '127.0.0.1', '新增排课id47ELS7431911');
INSERT INTO `mg_admin_log` VALUES ('252', '1', '1501532446', '127.0.0.1', '新增排课id51ELS8453776');
INSERT INTO `mg_admin_log` VALUES ('253', '1', '1501532634', '127.0.0.1', '新增排课id55ELS5058051');
INSERT INTO `mg_admin_log` VALUES ('254', '1', '1501532837', '127.0.0.1', '新增排课id58ELS5148111');
INSERT INTO `mg_admin_log` VALUES ('255', '1', '1501533565', '127.0.0.1', '新增排课id61ELS2104763');
INSERT INTO `mg_admin_log` VALUES ('256', '1', '1501534424', '127.0.0.1', '新增排课id63ELS3279622');
INSERT INTO `mg_admin_log` VALUES ('257', '1', '1501534498', '127.0.0.1', '新增排课id65ELS3766275');
INSERT INTO `mg_admin_log` VALUES ('258', '1', '1501534597', '127.0.0.1', '新增排课id69ELS3088921');
INSERT INTO `mg_admin_log` VALUES ('259', '1', '1501594578', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('260', '1', '1501639834', '106.121.65.50', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('261', '1', '1501640271', '106.121.65.50', '添加用户信息');
INSERT INTO `mg_admin_log` VALUES ('262', '1', '1501642693', '106.121.65.50', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('263', '1', '1501660426', '106.121.69.208', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('264', '1', '1501704924', '223.87.36.71', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('265', '1', '1501721925', '106.121.69.208', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('266', '1', '1501722826', '106.121.69.208', '修改用户信息1');
INSERT INTO `mg_admin_log` VALUES ('267', '1', '1501722895', '106.121.69.208', '添加用户信息');
INSERT INTO `mg_admin_log` VALUES ('268', '1', '1501723078', '106.121.69.208', '修改用户信息7');
INSERT INTO `mg_admin_log` VALUES ('269', '1', '1501723086', '106.121.69.208', '修改用户信息7');
INSERT INTO `mg_admin_log` VALUES ('270', '1', '1501723095', '106.121.69.208', '修改用户信息7');
INSERT INTO `mg_admin_log` VALUES ('271', '1', '1501723114', '106.121.69.208', '修改用户信息7');
INSERT INTO `mg_admin_log` VALUES ('272', '1', '1501723134', '106.121.69.208', '修改用户信息7');
INSERT INTO `mg_admin_log` VALUES ('273', '1', '1501723142', '106.121.69.208', '修改用户信息7');
INSERT INTO `mg_admin_log` VALUES ('274', '1', '1501723171', '106.121.69.208', '修改用户信息7');
INSERT INTO `mg_admin_log` VALUES ('275', '1', '1501723194', '106.121.69.208', '修改用户信息7');
INSERT INTO `mg_admin_log` VALUES ('276', '1', '1501723226', '106.121.69.208', '修改用户信息7');
INSERT INTO `mg_admin_log` VALUES ('277', '1', '1501723374', '106.121.69.208', '添加用户信息');
INSERT INTO `mg_admin_log` VALUES ('278', '1', '1501723395', '106.121.69.208', '修改用户信息8');
INSERT INTO `mg_admin_log` VALUES ('279', '1', '1501723699', '106.121.69.208', '新增课程4');
INSERT INTO `mg_admin_log` VALUES ('280', '1', '1501723970', '106.121.69.208', '新增课程5');
INSERT INTO `mg_admin_log` VALUES ('281', '1', '1501724028', '106.121.69.208', '新增课程6');
INSERT INTO `mg_admin_log` VALUES ('282', '1', '1501724081', '106.121.69.208', '新增课程7');
INSERT INTO `mg_admin_log` VALUES ('283', '1', '1501724101', '106.121.69.208', 'admin删除lessonid=7');
INSERT INTO `mg_admin_log` VALUES ('284', '1', '1501724123', '106.121.69.208', '添加表格lesson_cat文学');
INSERT INTO `mg_admin_log` VALUES ('285', '1', '1501724149', '106.121.69.208', '添加表格lesson_cat哲学');
INSERT INTO `mg_admin_log` VALUES ('286', '1', '1501724686', '106.121.69.208', '添加习题');
INSERT INTO `mg_admin_log` VALUES ('287', '1', '1501724796', '106.121.69.208', '添加习题');
INSERT INTO `mg_admin_log` VALUES ('288', '1', '1501724916', '106.121.69.208', '添加习题');
INSERT INTO `mg_admin_log` VALUES ('289', '1', '1501724996', '106.121.69.208', '修改习题');
INSERT INTO `mg_admin_log` VALUES ('290', '1', '1501725017', '106.121.69.208', '添加习题');
INSERT INTO `mg_admin_log` VALUES ('291', '1', '1501725030', '106.121.69.208', '添加习题');
INSERT INTO `mg_admin_log` VALUES ('292', '1', '1501725046', '106.121.69.208', '修改习题');
INSERT INTO `mg_admin_log` VALUES ('293', '1', '1501725052', '106.121.69.208', 'admin删除execid=7');
INSERT INTO `mg_admin_log` VALUES ('294', '1', '1501725057', '106.121.69.208', 'admin删除execid=6');
INSERT INTO `mg_admin_log` VALUES ('295', '1', '1501725328', '106.121.69.208', 'admin删除pdfid=6');
INSERT INTO `mg_admin_log` VALUES ('296', '1', '1501725927', '106.121.69.208', 'admin添加新闻如何快速学会高数');
INSERT INTO `mg_admin_log` VALUES ('297', '1', '1501725990', '106.121.69.208', 'admin添加新闻如何快速学会高数');
INSERT INTO `mg_admin_log` VALUES ('298', '1', '1501726009', '106.121.69.208', 'admin修改新闻如何快速学会高数');
INSERT INTO `mg_admin_log` VALUES ('299', '1', '1501726029', '106.121.69.208', 'admin修改新闻如何快速学会高数');
INSERT INTO `mg_admin_log` VALUES ('300', '1', '1501726902', '106.121.69.208', '添加用户信息');
INSERT INTO `mg_admin_log` VALUES ('301', '1', '1501727338', '106.121.69.208', 'admin添加新闻如何快速学会高数');
INSERT INTO `mg_admin_log` VALUES ('302', '1', '1501727387', '106.121.69.208', 'admin添加帮助中心小助手上线了');
INSERT INTO `mg_admin_log` VALUES ('303', '1', '1501727410', '106.121.69.208', 'admin添加帮助中心小助手上线了');
INSERT INTO `mg_admin_log` VALUES ('304', '1', '1501727470', '106.121.69.208', 'admin添加帮助中心如何收藏课程');
INSERT INTO `mg_admin_log` VALUES ('305', '1', '1501727482', '106.121.69.208', 'admin添加帮助中心如何收藏课程');
INSERT INTO `mg_admin_log` VALUES ('306', '1', '1501727508', '106.121.69.208', 'admin修改帮助中心如何选择听课');
INSERT INTO `mg_admin_log` VALUES ('307', '1', '1501727520', '106.121.69.208', 'admin删除helpid=5');
INSERT INTO `mg_admin_log` VALUES ('308', '1', '1501727960', '106.121.69.208', '学员管理和课程管理添加成功');
INSERT INTO `mg_admin_log` VALUES ('309', '1', '1501728036', '106.121.69.208', '教材教学管理添加成功');
INSERT INTO `mg_admin_log` VALUES ('310', '1', '1501728085', '106.121.69.208', '学员课程教材管理添加成功');
INSERT INTO `mg_admin_log` VALUES ('311', '1', '1501728098', '106.121.69.208', '删除角色6成功');
INSERT INTO `mg_admin_log` VALUES ('312', '1', '1501728343', '106.121.69.208', '添加新用户成功6学员管理和课程管理');
INSERT INTO `mg_admin_log` VALUES ('313', '1', '1501728604', '106.121.69.208', '添加新用户成功7学员课程教材管理');
INSERT INTO `mg_admin_log` VALUES ('314', '1', '1501728663', '106.121.69.208', '删除管理员7成功');
INSERT INTO `mg_admin_log` VALUES ('315', '1', '1501728702', '106.121.69.208', '添加新用户成功8学员管理和课程管理');
INSERT INTO `mg_admin_log` VALUES ('316', '1', '1501729599', '106.121.69.208', '新增teacher信息4');
INSERT INTO `mg_admin_log` VALUES ('317', '1', '1501730333', '106.121.69.208', '修改表teacher信息0');
INSERT INTO `mg_admin_log` VALUES ('318', '1', '1501730342', '106.121.69.208', '修改表teacher信息0');
INSERT INTO `mg_admin_log` VALUES ('319', '1', '1501730353', '106.121.69.208', '修改表teacher信息1');
INSERT INTO `mg_admin_log` VALUES ('320', '1', '1501731251', '106.121.69.208', '修改表格lesson_cat哲学');
INSERT INTO `mg_admin_log` VALUES ('321', '1', '1501731756', '106.121.69.208', '修改用户信息9');
INSERT INTO `mg_admin_log` VALUES ('322', '1', '1501731772', '106.121.69.208', '修改用户信息9');
INSERT INTO `mg_admin_log` VALUES ('323', '1', '1501731782', '106.121.69.208', '修改用户信息9');
INSERT INTO `mg_admin_log` VALUES ('324', '1', '1501731927', '106.121.68.21', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('325', '1', '1501738245', '106.121.69.208', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('326', '1', '1501740598', '106.121.69.208', '修改用户信息9');
INSERT INTO `mg_admin_log` VALUES ('327', '1', '1501740609', '106.121.69.208', '修改用户信息8');
INSERT INTO `mg_admin_log` VALUES ('328', '1', '1501746670', '106.121.69.208', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('329', '1', '1501746927', '106.121.69.208', '修改用户信息6');
INSERT INTO `mg_admin_log` VALUES ('330', '1', '1501747219', '106.121.69.208', '修改管理员admin密码成功！');
INSERT INTO `mg_admin_log` VALUES ('331', '1', '1501747275', '106.121.69.208', '修改管理员（1）手机号，邮箱修改成功！');
INSERT INTO `mg_admin_log` VALUES ('332', '1', '1501747732', '106.121.69.208', '新增课程8');
INSERT INTO `mg_admin_log` VALUES ('333', '1', '1501845740', '117.175.131.104', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('334', '1', '1502070948', '106.38.128.27', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('335', '1', '1502093997', '106.38.128.27', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('336', '1', '1502121818', '106.121.15.20', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('337', '1', '1502153995', '106.38.128.27', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('338', '1', '1502179465', '101.81.63.254', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('339', '1', '1502180004', '101.81.63.254', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('340', '1', '1502180063', '101.81.63.254', '修改用户信息');
INSERT INTO `mg_admin_log` VALUES ('341', '1', '1502180207', '101.81.63.254', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('342', '1', '1502180262', '101.81.63.254', '修改用户信息');
INSERT INTO `mg_admin_log` VALUES ('343', '1', '1502180591', '106.121.15.20', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('344', '1', '1502180593', '101.81.63.254', '修改表格lesson_cat新概念青少版');
INSERT INTO `mg_admin_log` VALUES ('345', '1', '1502180636', '101.81.63.254', '修改表格lesson_cat小故事大启发');
INSERT INTO `mg_admin_log` VALUES ('346', '1', '1502180794', '101.81.63.254', 'admin删除orderid=22');
INSERT INTO `mg_admin_log` VALUES ('347', '1', '1502182040', '125.227.85.143', '修改表格lesson_cat新概念青少版');
INSERT INTO `mg_admin_log` VALUES ('348', '1', '1502182073', '125.227.85.143', '修改表格lesson_cat主教材');
INSERT INTO `mg_admin_log` VALUES ('349', '1', '1502182429', '125.227.85.143', '新增课程9');
INSERT INTO `mg_admin_log` VALUES ('350', '1', '1502189625', '117.19.167.187', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('351', '1', '1502189801', '183.193.29.209', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('352', '1', '1502240652', '106.38.128.27', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('353', '1', '1502247399', '106.121.15.20', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('354', '1', '1502256992', '106.38.128.27', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('355', '1', '1502258102', '118.122.93.111', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('356', '1', '1502288317', '223.87.206.142', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('357', '1', '1502326747', '106.38.128.27', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('358', '1', '1502326769', '106.121.15.20', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('359', '1', '1502330833', '106.38.128.27', '修改用户信息');
INSERT INTO `mg_admin_log` VALUES ('360', '1', '1502335994', '183.193.29.209', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('361', '1', '1502415116', '112.65.190.79', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('362', '1', '1502415197', '112.65.190.79', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('363', '1', '1502416081', '106.121.15.20', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('364', '1', '1502418488', '61.148.244.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('365', '1', '1502418639', '61.148.244.1', '网站设置调整成功');
INSERT INTO `mg_admin_log` VALUES ('366', '1', '1502436848', '106.121.65.76', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('367', '1', '1502507622', '106.121.15.20', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('368', '1', '1502529168', '106.121.15.20', '网站设置调整成功');
INSERT INTO `mg_admin_log` VALUES ('369', '1', '1502670899', '183.193.29.209', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('370', '1', '1502674765', '106.121.15.20', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('371', '1', '1502675058', '106.121.15.20', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('372', '1', '1502704941', '183.193.29.209', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('373', '1', '1502725448', '106.121.63.78', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('374', '1', '1502781993', '106.121.63.78', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('375', '1', '1502849161', '118.122.93.111', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('376', '1', '1502852389', '106.121.60.78', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('377', '1', '1502863881', '106.121.62.69', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('378', '1', '1502865134', '106.121.62.69', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('379', '1', '1502866049', '106.121.62.69', '新增课程10');
INSERT INTO `mg_admin_log` VALUES ('380', '1', '1502866387', '106.121.62.69', '新增课程11');
INSERT INTO `mg_admin_log` VALUES ('381', '1', '1502869465', '106.121.62.69', '修改用户信息1');
INSERT INTO `mg_admin_log` VALUES ('382', '1', '1502869484', '106.121.62.69', '修改用户信息1');
INSERT INTO `mg_admin_log` VALUES ('383', '1', '1502869920', '106.121.62.69', '修改用户信息');
INSERT INTO `mg_admin_log` VALUES ('384', '1', '1502870205', '106.121.62.69', 'admin修改帮助中心如何收藏课程');
INSERT INTO `mg_admin_log` VALUES ('385', '1', '1502870313', '106.121.62.69', 'admin修改新闻如何快速学好英语');
INSERT INTO `mg_admin_log` VALUES ('386', '1', '1502870351', '106.121.62.69', 'admin删除newsid=8');
INSERT INTO `mg_admin_log` VALUES ('387', '1', '1502870356', '106.121.62.69', 'admin删除newsid=7');
INSERT INTO `mg_admin_log` VALUES ('388', '1', '1502870975', '106.121.62.69', '添加新用户成功617346522861');
INSERT INTO `mg_admin_log` VALUES ('389', '1', '1502871087', '106.121.62.69', '修改管理员admin密码成功！');
INSERT INTO `mg_admin_log` VALUES ('390', '1', '1502871112', '106.121.62.69', '修改管理员admin密码成功！');
INSERT INTO `mg_admin_log` VALUES ('391', '1', '1502874747', '106.121.0.149', 'admin删除lessonid=4');
INSERT INTO `mg_admin_log` VALUES ('392', '1', '1502874805', '106.121.0.149', '添加表格lesson_cat新概念');
INSERT INTO `mg_admin_log` VALUES ('393', '1', '1502875010', '106.121.62.69', '新增teacher信息5');
INSERT INTO `mg_admin_log` VALUES ('394', '1', '1502875421', '106.121.0.149', '新增课程12');
INSERT INTO `mg_admin_log` VALUES ('395', '1', '1502876400', '106.121.0.149', '添加表格exec_typeels口语');
INSERT INTO `mg_admin_log` VALUES ('396', '1', '1502878295', '106.121.62.69', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('397', '1', '1503287030', '106.121.0.149', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('398', '1', '1503287213', '106.121.0.149', '添加表格exec_type初中');
INSERT INTO `mg_admin_log` VALUES ('399', '1', '1503287773', '106.121.0.149', '添加习题');
INSERT INTO `mg_admin_log` VALUES ('400', '1', '1503287809', '106.121.0.149', '修改习题');
INSERT INTO `mg_admin_log` VALUES ('401', '1', '1503326723', '112.44.107.39', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('402', '1', '1503326893', '112.44.107.39', '修改习题');
INSERT INTO `mg_admin_log` VALUES ('403', '1', '1503382883', '106.121.0.149', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('404', '1', '1503412888', '112.44.107.39', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('405', '1', '1503413488', '112.44.107.39', '新增排课id113ELS2574796');
INSERT INTO `mg_admin_log` VALUES ('406', '1', '1503413599', '112.44.107.39', '新增排课id114ELS8982918');
INSERT INTO `mg_admin_log` VALUES ('407', '1', '1503415247', '112.44.107.39', '新增排课id3ELS1370025');
INSERT INTO `mg_admin_log` VALUES ('408', '1', '1503584543', '223.87.206.130', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('409', '1', '1503584619', '223.87.206.130', '新增排课id34ELS4658589');
INSERT INTO `mg_admin_log` VALUES ('410', '1', '1503647729', '106.121.60.250', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('411', '1', '1503803581', '117.175.131.98', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('412', '1', '1503817249', '106.121.56.63', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('413', '1', '1503818872', '117.175.131.98', '新增排课id2ELS6160823');
INSERT INTO `mg_admin_log` VALUES ('414', '1', '1503819305', '106.121.56.63', '新增排课id3ELS1129472');
INSERT INTO `mg_admin_log` VALUES ('415', '1', '1503820517', '117.175.131.98', '新增排课id5ELS7769482');
INSERT INTO `mg_admin_log` VALUES ('416', '1', '1503821015', '117.175.131.98', '新增排课id8ELS8456013');
INSERT INTO `mg_admin_log` VALUES ('417', '1', '1503821034', '106.121.56.63', '新增排课id38ELS3344646');
INSERT INTO `mg_admin_log` VALUES ('418', '1', '1503821952', '117.175.131.98', '新增排课id69ELS4078051');
INSERT INTO `mg_admin_log` VALUES ('419', '1', '1503822590', '106.121.56.63', '新增排课id100ELS4724455');
INSERT INTO `mg_admin_log` VALUES ('420', '1', '1503841633', '106.121.56.63', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('421', '1', '1503899428', '183.193.29.209', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('422', '1', '1503902915', '183.193.29.209', '修改用户信息12');
INSERT INTO `mg_admin_log` VALUES ('423', '1', '1503902938', '183.193.29.209', '修改用户信息12');
INSERT INTO `mg_admin_log` VALUES ('424', '1', '1503903032', '183.193.29.209', '修改用户信息');
INSERT INTO `mg_admin_log` VALUES ('425', '1', '1503903085', '183.193.29.209', '修改用户信息');
INSERT INTO `mg_admin_log` VALUES ('426', '1', '1503903212', '183.193.29.209', '修改用户信息');
INSERT INTO `mg_admin_log` VALUES ('427', '1', '1503903724', '183.193.29.209', '修改用户信息9');
INSERT INTO `mg_admin_log` VALUES ('428', '1', '1503903778', '183.193.29.209', '修改用户信息12');
INSERT INTO `mg_admin_log` VALUES ('429', '1', '1503903946', '183.193.29.209', '修改用户信息18');
INSERT INTO `mg_admin_log` VALUES ('430', '1', '1503908563', '183.193.29.209', '新增课程13');
INSERT INTO `mg_admin_log` VALUES ('431', '1', '1503969313', '118.122.93.111', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('432', '1', '1503978245', '183.193.29.209', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('433', '1', '1503988596', '106.121.56.63', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('434', '1', '1504010662', '117.176.143.22', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('435', '1', '1504021810', '117.176.143.22', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('436', '1', '1504063726', '106.121.56.63', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('437', '1', '1504064412', '106.121.56.63', '新增课程14');
INSERT INTO `mg_admin_log` VALUES ('438', '1', '1504163001', '118.122.93.111', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('439', '1', '1504189995', '117.173.134.68', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('440', '1', '1504360995', '106.121.56.63', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('441', '1', '1504426639', '117.139.249.89', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('442', '1', '1504490364', '106.121.56.63', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('443', '1', '1504514603', '61.216.161.190', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('444', '1', '1504520617', '183.193.29.209', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('445', '1', '1504520861', '183.193.29.209', '修改用户信息');
INSERT INTO `mg_admin_log` VALUES ('446', '1', '1504522567', '183.193.29.209', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('447', '1', '1504531661', '182.235.81.213', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('448', '1', '1504531849', '125.227.207.250', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('449', '4', '1504531893', '182.235.81.213', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('450', '1', '1505831474', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('451', '1', '1505915474', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('452', '1', '1506434293', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('453', '1', '1511880976', '127.0.0.1', '登录成功');
INSERT INTO `mg_admin_log` VALUES ('454', '1', '1511881060', '127.0.0.1', '网站设置调整成功');

-- ----------------------------
-- Table structure for `mg_config`
-- ----------------------------
DROP TABLE IF EXISTS `mg_config`;
CREATE TABLE `mg_config` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `name` varchar(64) NOT NULL COMMENT '配置的key键名',
  `value` varchar(1000) NOT NULL COMMENT '配置的val值',
  `inc_type` varchar(64) NOT NULL COMMENT '配置分组',
  `desc` varchar(50) NOT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=423 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mg_config
-- ----------------------------
INSERT INTO `mg_config` VALUES ('388', 'host_id1', 'FczWOW_gTZmwavbsy95TvA', 'zoom', '');
INSERT INTO `mg_config` VALUES ('387', 'url1', 'https://api.zoom.us/v1/', 'zoom', '');
INSERT INTO `mg_config` VALUES ('404', 'templateId', 'SMS_80140069', 'yzx', '');
INSERT INTO `mg_config` VALUES ('402', 'token', '6B0o5A73cQi8jWO5rb0bXmWoDKDDEv', 'yzx', '');
INSERT INTO `mg_config` VALUES ('403', 'appid', '世界桥少儿线上英语', 'yzx', '');
INSERT INTO `mg_config` VALUES ('9', 'alipay_account', '297777470@qq.com', 'alipay', '');
INSERT INTO `mg_config` VALUES ('10', 'alipay_key', 'lkvokyqtgpzkes0u23rj7mj4cvln2ztw', 'alipay', '');
INSERT INTO `mg_config` VALUES ('11', 'alipay_partner', '2088521057916354', 'alipay', '');
INSERT INTO `mg_config` VALUES ('12', 'alipay_private_key', 'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCnxj/9qwVfgoUh/y2W89L6BkRAFljhNhgPdyPuBV64bfQNN1PjbCzkIM6qRdKBoLPXmKKMiFYnkd6rAoprih3/PrQEB/VsW8OoM8fxn67UDYuyBTqA23MML9q1+ilIZwBC2AQ2UBVOrFXfFl75p6/B5KsiNG9zpgmLCUYuLkxpLQIDAQAB', 'alipay', '');
INSERT INTO `mg_config` VALUES ('385', 'key1', '2l9qWcviTnCYX3bxPXQnSA', 'zoom', '');
INSERT INTO `mg_config` VALUES ('386', 'secret1', 'pHs2qY196e09Htd6CXeCKvYUITyrpthjIwT4', 'zoom', '');
INSERT INTO `mg_config` VALUES ('384', 'check', '1', 'zoom', '');
INSERT INTO `mg_config` VALUES ('383', 'host_id0', 'FczWOW_gTZmwavbsy95TvA', 'zoom', '');
INSERT INTO `mg_config` VALUES ('381', 'secret0', 'pHs2qY196e09Htd6CXeCKvYUITyrpthjIwT4', 'zoom', '');
INSERT INTO `mg_config` VALUES ('382', 'url0', 'https://api.zoom.us/v1/', 'zoom', '');
INSERT INTO `mg_config` VALUES ('380', 'key0', '2l9qWcviTnCYX3bxPXQnSA', 'zoom', '');
INSERT INTO `mg_config` VALUES ('401', 'accountsid', 'LTAIy4quDG8S3O4W', 'yzx', '');
INSERT INTO `mg_config` VALUES ('422', 'usd', '6.5', 'paypal', '');
INSERT INTO `mg_config` VALUES ('421', 'secret', 'EPhx_YxZ6M7Snp_4k2jyUJ2gSzxHihpgA-Yad4MmV963WmIRFPouAVYdRDg8IRQwv8yXxcr6VoJHpbYn', 'paypal', '');
INSERT INTO `mg_config` VALUES ('420', 'apiname', 'ATpeVrKl-wyYD1oh2fXG9bkXD6X_hi5QwG-VKIsOkfFWMz8aOA9735PT-W5DikXfsaWTk0vGa3HvyUer', 'paypal', '');

-- ----------------------------
-- Table structure for `mg_info`
-- ----------------------------
DROP TABLE IF EXISTS `mg_info`;
CREATE TABLE `mg_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(50) NOT NULL,
  `value` varchar(255) NOT NULL,
  `author` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mg_info
-- ----------------------------
INSERT INTO `mg_info` VALUES ('1', 'stitle', '名古态', '1', '1511881060');
INSERT INTO `mg_info` VALUES ('2', 'slogo', '/world/Public/upload/2017-08-12/598ec68d2e621.png', '1', '1511881060');
INSERT INTO `mg_info` VALUES ('3', 'surl', '', '1', '1511881060');
INSERT INTO `mg_info` VALUES ('4', 'sentitle', '', '1', '1511881060');
INSERT INTO `mg_info` VALUES ('5', 'skeywords', '', '1', '1511881060');
INSERT INTO `mg_info` VALUES ('6', 'sdescription', '', '1', '1511881060');
INSERT INTO `mg_info` VALUES ('7', 's_name', '世界桥', '1', '1511881060');
INSERT INTO `mg_info` VALUES ('8', 's_phone', '123', '1', '1511881060');
INSERT INTO `mg_info` VALUES ('9', 's_tel', '1234', '1', '1511881060');
INSERT INTO `mg_info` VALUES ('10', 's_400', '', '1', '1511881060');
INSERT INTO `mg_info` VALUES ('11', 's_fax', '12345', '1', '1511881060');
INSERT INTO `mg_info` VALUES ('12', 's_qq', '123456', '1', '1511881060');
INSERT INTO `mg_info` VALUES ('13', 's_qqu', '', '1', '1511881060');
INSERT INTO `mg_info` VALUES ('14', 's_email', '1234567', '1', '1511881060');
INSERT INTO `mg_info` VALUES ('15', 's_address', '北京北京', '1', '1511881060');
INSERT INTO `mg_info` VALUES ('16', 'scopyright', '世界桥总部', '1', '1511881060');

-- ----------------------------
-- Table structure for `mg_role`
-- ----------------------------
DROP TABLE IF EXISTS `mg_role`;
CREATE TABLE `mg_role` (
  `role_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `act_list` varchar(200) NOT NULL DEFAULT 'all' COMMENT '操作列表',
  `role_name` varchar(200) NOT NULL DEFAULT '管理员' COMMENT '角色名称',
  `other` varchar(200) DEFAULT '管理所有信息' COMMENT '备注',
  PRIMARY KEY (`role_id`),
  KEY `role_id` (`role_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mg_role
-- ----------------------------
INSERT INTO `mg_role` VALUES ('1', 'all', '管理员', '管理所有信息');
INSERT INTO `mg_role` VALUES ('3', '10,2,11,2,12,2,13,2,17,4,18,4,19,4,20,4,21,4,33,6,', '双语管理员', '课程，教师');
INSERT INTO `mg_role` VALUES ('4', '8,1,9,1,19,4,20,4,21,4,41,4,18,4,22,5,23,5,24,5,34,5,35,5,30,7,31,7,37,17,39,17,', '大权限', '大权限');
INSERT INTO `mg_role` VALUES ('5', '8,1,42,1,10,2,11,2,13,2,', '学员管理和课程管理', '学员管理和课程管理');
INSERT INTO `mg_role` VALUES ('7', '8,1,42,1,10,2,11,2,13,2,14,3,15,3,16,3,', '学员课程教材管理', '学员课程教材管理');
