/*
Navicat MySQL Data Transfer

Source Server         : my
Source Server Version : 50718
Source Host           : 47.96.186.41:3306
Source Database       : minggutai

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-12-02 12:18:32
*/

SET FOREIGN_KEY_CHECKS=0;

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
