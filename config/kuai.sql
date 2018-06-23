/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : kuai

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-05-20 07:57:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for kuai_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `kuai_auth_group`;
CREATE TABLE `kuai_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kuai_auth_group
-- ----------------------------
INSERT INTO `kuai_auth_group` VALUES ('1', '管理员', '1', '1');

-- ----------------------------
-- Table structure for kuai_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `kuai_auth_group_access`;
CREATE TABLE `kuai_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kuai_auth_group_access
-- ----------------------------
INSERT INTO `kuai_auth_group_access` VALUES ('1', '1');

-- ----------------------------
-- Table structure for kuai_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `kuai_auth_rule`;
CREATE TABLE `kuai_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kuai_auth_rule
-- ----------------------------
INSERT INTO `kuai_auth_rule` VALUES ('1', 'System', '管理平台', '1', '1', 'index/system');

-- ----------------------------
-- Table structure for kuai_auth_user
-- ----------------------------
DROP TABLE IF EXISTS `kuai_auth_user`;
CREATE TABLE `kuai_auth_user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kuai_auth_user
-- ----------------------------
INSERT INTO `kuai_auth_user` VALUES ('1', 'nameker', null);
