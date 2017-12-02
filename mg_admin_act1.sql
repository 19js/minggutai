/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : minggutai

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2017-12-02 12:19:06
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
INSERT INTO `mg_admin_act` VALUES ('6', '0', '权限管理', 'System', 'index', 'icon-group (alias)');
INSERT INTO `mg_admin_act` VALUES ('1', '0', '基本设置', 'Index', 'info', 'icon-home');
INSERT INTO `mg_admin_act` VALUES ('10', '1', '网站信息', 'Index', 'info', null);
INSERT INTO `mg_admin_act` VALUES ('2', '0', '页面管理', 'Web', 'lists', 'icon-pencil-square-o');
INSERT INTO `mg_admin_act` VALUES ('12', '1', '图片管理', 'Index', 'picture', null);
INSERT INTO `mg_admin_act` VALUES ('25', '6', '角色管理', 'System', 'role', null);
INSERT INTO `mg_admin_act` VALUES ('26', '6', '管理员管理', 'System', 'admin', null);
INSERT INTO `mg_admin_act` VALUES ('27', '6', '网站配置', 'System', 'info', null);
INSERT INTO `mg_admin_act` VALUES ('32', '6', '管理员日志', 'System', 'log', null);
INSERT INTO `mg_admin_act` VALUES ('33', '6', '个人信息', 'System', 'person', null);
