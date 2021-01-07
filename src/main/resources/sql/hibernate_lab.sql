/*
Navicat MySQL Data Transfer

Source Server         : hello
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : hibernate_lab

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2021-01-07 16:35:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '军事');
INSERT INTO `category` VALUES ('2', '娱乐');
INSERT INTO `category` VALUES ('3', '体育');
INSERT INTO `category` VALUES ('4', '游戏');
INSERT INTO `category` VALUES ('5', '影视');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `source` varchar(20) DEFAULT NULL,
  `content` longtext NOT NULL,
  `issueTime` datetime NOT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKasi698e9ovs6xpcedbcdrhk67` (`cid`),
  CONSTRAINT `news_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('3', 'iou88', 'adfad88', '00008888', '2020-11-19 17:27:17', '1');
INSERT INTO `news` VALUES ('4', '老母猪高产', '新华网', '张三家养的一只老母猪一夜高产12只小猪', '2020-12-26 14:49:49', '3');
INSERT INTO `news` VALUES ('5', '闰土刺猹', '今日头条', '这里的乡村非常美', '2020-12-24 14:50:38', '2');
INSERT INTO `news` VALUES ('7', '超级赛亚人来袭', '龙珠', '速趴贝吉塔', '2020-12-28 12:56:57', '2');
INSERT INTO `news` VALUES ('9', '四级报名时间出了', '中华网', '今年下半年四级时间将推迟两个月报名！！！', '2020-12-28 14:44:11', '2');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'xiaoxiao', '12138');
INSERT INTO `user` VALUES ('2', 'lbl', '123');
