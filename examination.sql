/*
Navicat MySQL Data Transfer

Source Server         : never
Source Server Version : 50721
Source Host           : 127.0.0.1:3306
Source Database       : examination

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-04-20 18:07:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('1', '高三二班');
INSERT INTO `class` VALUES ('2', '高三三班');
INSERT INTO `class` VALUES ('3', '高三一班');
INSERT INTO `class` VALUES ('7', '高一十五班');

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `price` float DEFAULT NULL,
  `unit` varchar(800) DEFAULT NULL,
  `area` varchar(80) DEFAULT NULL,
  `layout` varchar(800) DEFAULT NULL,
  `floor` varchar(80) DEFAULT NULL,
  `direction` varchar(80) DEFAULT NULL,
  `subway` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES ('1', '8000', '元/月', '88平米 (套内70平米)', '2室1厅1卫  整租', '中楼层 (共24层)', '南', '暂无数据');
INSERT INTO `house` VALUES ('2', '6500', '元/月', '59平米 (套内59平米)', '2室1厅1卫  整租', '中楼层 (共6层)', '南 北', '距地铁10号线团结湖878米');
INSERT INTO `house` VALUES ('3', '6200', '元/月', '63平米 (套内44平米)', '2室1厅1卫  ', '中楼层 (共18层)', '西南', '距地铁10号线潘家园374米');
INSERT INTO `house` VALUES ('4', '13500', '元/月', '104平米 (套内81平米)', '2室1厅2卫  整租', '高楼层 (共9层)', '南 北', '距地铁10号线双井821米');
INSERT INTO `house` VALUES ('5', '5700', '元/月', '91平米 (套内79平米)', '2室2厅1卫  整租', '中楼层 (共10层)', '南 北', '暂无数据');
INSERT INTO `house` VALUES ('6', '4500', '元/月', '28平米 (套内20平米)', '1室1厅1卫  整租', '中楼层 (共12层)', '北', '距地铁7号线达官营1149米');
INSERT INTO `house` VALUES ('7', '4000', '元/月', '38.62平米', '1室1厅1卫  整租', '高楼层 (共5层)', '南', '距地铁10号线劲松540米');
INSERT INTO `house` VALUES ('8', '6300', '元/月', '42.4平米', '1室1厅1卫  ', '中楼层 (共6层)', '东 西', '距地铁10号线牡丹园765米');
INSERT INTO `house` VALUES ('9', '8000', '元/月', '88平米 (套内70平米)', '2室1厅1卫  整租', '中楼层 (共24层)', '南', '暂无数据');
INSERT INTO `house` VALUES ('10', '7300', '元/月', '90平米 (套内72平米)', '2室1厅1卫  整租', '中楼层 (共17层)', '南', '距地铁6号线常营863米');
INSERT INTO `house` VALUES ('11', '8200', '元/月', '66平米 (套内46平米)', '2室1厅1卫  整租', '低楼层 (共12层)', '南', '距地铁2号线车公庄277米');
INSERT INTO `house` VALUES ('12', '9300', '元/月', '75平米 (套内50平米)', '2室1厅1卫  ', '高楼层 (共6层)', '南 北', '距地铁6号线北海北663米');
INSERT INTO `house` VALUES ('13', '6200', '元/月', '76平米 (套内67平米)', '2室1厅1卫  整租', '中楼层 (共6层)', '南 北', '距地铁16号线西北旺838米');
INSERT INTO `house` VALUES ('14', '11000', '元/月', '103平米 (套内81平米)', '2室2厅2卫  整租', '高楼层 (共14层)', '南 北', '距地铁6号线十里堡890米');
INSERT INTO `house` VALUES ('15', '10500', '元/月', '70.8平米', '3室1厅1卫  ', '中楼层 (共7层)', '南 北', '距地铁6号线北海北940米');
INSERT INTO `house` VALUES ('16', '9500', '元/月', '90平米 (套内71平米)', '2室1厅1卫  整租', '中楼层 (共17层)', '东 西', '暂无数据');
INSERT INTO `house` VALUES ('17', '7500', '元/月', '107平米 (套内85平米)', '2室2厅2卫  整租', '中楼层 (共25层)', '东南', '暂无数据');
INSERT INTO `house` VALUES ('18', '4700', '元/月', '56平米 (套内56平米)', '2室1厅1卫  ', '中楼层 (共5层)', '东 西', '距地铁5号线刘家窑789米');
INSERT INTO `house` VALUES ('19', '6300', '元/月', '87平米 (套内65平米)', '2室1厅1卫  ', '中楼层 (共25层)', '南', '暂无数据');
INSERT INTO `house` VALUES ('20', '9000', '元/月', '67平米 (套内68平米)', '2室1厅1卫  整租', '中楼层 (共6层)', '南 北', '距地铁2号线朝阳门1048米');
INSERT INTO `house` VALUES ('21', '12000', '元/月', '84平米 (套内68平米)', '2室1厅1卫  整租', '低楼层 (共26层)', '北', '距地铁10号线双井329米');
INSERT INTO `house` VALUES ('22', '6000', '元/月', '70平米 (套内70平米)', '2室1厅1卫  ', '高楼层 (共6层)', '南 北', '距地铁5号线蒲黄榆425米');
INSERT INTO `house` VALUES ('23', '3600', '元/月', '68平米 (套内55平米)', '1室1厅1卫  ', '低楼层 (共24层)', '西北', '暂无数据');
INSERT INTO `house` VALUES ('24', '4500', '元/月', '41平米 (套内32平米)', '1室0厅1卫  ', '高楼层 (共14层)', '南', '距地铁6号线褡裢坡608米');
INSERT INTO `house` VALUES ('25', '22500', '元/月', '178平米 (套内145平米)', '3室1厅2卫  整租', '高楼层 (共23层)', '南 北', '距地铁10号线双井619米');
INSERT INTO `house` VALUES ('26', '15000', '元/月', '139平米 (套内114平米)', '3室2厅2卫  整租', '高楼层 (共12层)', '南 北', '距地铁7号线广渠门内369米');
INSERT INTO `house` VALUES ('27', '9500', '元/月', '89平米 (套内61平米)', '3室1厅1卫  整租', '高楼层 (共16层)', '南', '距地铁4号线动物园675米');
INSERT INTO `house` VALUES ('28', '8000', '元/月', '92平米 (套内74平米)', '2室1厅1卫  整租', '高楼层 (共14层)', '东 北', '距地铁9号线北京西915米');
INSERT INTO `house` VALUES ('29', '5000', '元/月', '58平米 (套内38平米)', '2室1厅1卫  整租', '中楼层 (共18层)', '西北', '距地铁6号线慈寿寺1057米');
INSERT INTO `house` VALUES ('30', '5500', '元/月', '84.44平米', '2室1厅1卫  整租', '中楼层 (共7层)', '南 北', '距地铁8号线育知路1004米');
INSERT INTO `house` VALUES ('31', '6500', '元/月', '67平米 (套内56平米)', '2室1厅1卫  ', '高楼层 (共29层)', '南 西', '距地铁5号线宋家庄51米');
INSERT INTO `house` VALUES ('32', '6500', '元/月', '59平米 (套内59平米)', '2室1厅1卫  整租', '中楼层 (共6层)', '南 北', '距地铁10号线团结湖878米');
INSERT INTO `house` VALUES ('33', '13500', '元/月', '104平米 (套内81平米)', '2室1厅2卫  整租', '高楼层 (共9层)', '南 北', '距地铁10号线双井821米');
INSERT INTO `house` VALUES ('34', '6200', '元/月', '63平米 (套内44平米)', '2室1厅1卫  ', '中楼层 (共18层)', '西南', '距地铁10号线潘家园374米');
INSERT INTO `house` VALUES ('35', '8200', '元/月', '66平米 (套内46平米)', '2室1厅1卫  整租', '低楼层 (共12层)', '南', '距地铁2号线车公庄277米');
INSERT INTO `house` VALUES ('36', '9300', '元/月', '75平米 (套内50平米)', '2室1厅1卫  ', '高楼层 (共6层)', '南 北', '距地铁6号线北海北663米');
INSERT INTO `house` VALUES ('37', '6200', '元/月', '76平米 (套内67平米)', '2室1厅1卫  整租', '中楼层 (共6层)', '南 北', '距地铁16号线西北旺838米');
INSERT INTO `house` VALUES ('38', '1', '凌榭辉', '男', '59', '27', '73', '65');
INSERT INTO `house` VALUES ('39', '2', '啊', '男', '97', '74', '22', '66');
INSERT INTO `house` VALUES ('40', '3', '是', '男', '56', '78', '90', '83');

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

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '0', '男', '凌榭辉');
INSERT INTO `student` VALUES ('2', '0', '男', '啊');
INSERT INTO `student` VALUES ('3', '0', '男', '是');
INSERT INTO `student` VALUES ('4', '0', '男', '的');
INSERT INTO `student` VALUES ('5', '0', '女', '发');
