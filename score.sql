/*
Navicat MySQL Data Transfer

Source Server         : never
Source Server Version : 50721
Source Host           : 127.0.0.1:3306
Source Database       : examination

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-04-20 18:06:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `math` decimal(10,0) DEFAULT NULL,
  `en` decimal(10,0) DEFAULT NULL,
  `yw` decimal(10,0) DEFAULT NULL,
  `ty` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('1', '凌榭辉', '男', '24', '77', '10', '52');
INSERT INTO `score` VALUES ('2', '啊', '男', '34', '74', '14', '94');
INSERT INTO `score` VALUES ('3', '是', '男', '80', '99', '2', '4');
INSERT INTO `score` VALUES ('4', '的', '男', '51', '16', '73', '98');
INSERT INTO `score` VALUES ('5', '发', '女', '96', '6', '96', '82');
