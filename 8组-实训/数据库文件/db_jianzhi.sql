/*
Navicat MySQL Data Transfer

Source Server         : 本地连接
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_jianzhi

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-02-21 12:52:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `city`
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `CITY_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`CITY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('上海');
INSERT INTO `city` VALUES ('北京');
INSERT INTO `city` VALUES ('杭州');

-- ----------------------------
-- Table structure for `company`
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `COMPANY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COMPANY_NAME` varchar(255) DEFAULT NULL,
  `CITY_NAME` varchar(255) DEFAULT NULL,
  `DISTRICT` varchar(255) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`COMPANY_ID`),
  KEY `FK_igie2c6inrgfl397yask39cbi` (`CITY_NAME`),
  CONSTRAINT `FK_igie2c6inrgfl397yask39cbi` FOREIGN KEY (`CITY_NAME`) REFERENCES `city` (`CITY_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('2', '电信', '上海', '浦东新区', null, null);
INSERT INTO `company` VALUES ('3', '百度技术有限公司', '北京', '朝阳区', null, null);
INSERT INTO `company` VALUES ('4', '杭州阿里巴巴有限公司', '杭州', '萧山区', null, null);

-- ----------------------------
-- Table structure for `correspond`
-- ----------------------------
DROP TABLE IF EXISTS `correspond`;
CREATE TABLE `correspond` (
  `CORRESPOND_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`CORRESPOND_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of correspond
-- ----------------------------
INSERT INTO `correspond` VALUES ('兼职');
INSERT INTO `correspond` VALUES ('实习');

-- ----------------------------
-- Table structure for `recruiter`
-- ----------------------------
DROP TABLE IF EXISTS `recruiter`;
CREATE TABLE `recruiter` (
  `RECRUITER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `COMPANY_ID` int(11) DEFAULT NULL,
  `TELPHONE` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`RECRUITER_ID`),
  KEY `FK_3wh5138tra8b821dylkmoliio` (`COMPANY_ID`),
  CONSTRAINT `FK_3wh5138tra8b821dylkmoliio` FOREIGN KEY (`COMPANY_ID`) REFERENCES `company` (`COMPANY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recruiter
-- ----------------------------
INSERT INTO `recruiter` VALUES ('4', '猿来入此', '123', '2', '1356565656', 'llqqxf@163.com');
INSERT INTO `recruiter` VALUES ('5', '百度hr', '123', '3', '1356565656', 'hr@baidu.com');
INSERT INTO `recruiter` VALUES ('6', '阿里巴巴', '123456', '4', '13989898989', 'hr@alibaba.com');

-- ----------------------------
-- Table structure for `recruitment`
-- ----------------------------
DROP TABLE IF EXISTS `recruitment`;
CREATE TABLE `recruitment` (
  `RECRUITMENT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) DEFAULT NULL,
  `CITY` varchar(255) DEFAULT NULL,
  `DISTRICT` varchar(255) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `SALARY` int(11) DEFAULT NULL,
  `PHONE` varchar(255) DEFAULT NULL,
  `BEGIN_YEAR` int(11) DEFAULT NULL,
  `BEGIN_MONTH` int(11) DEFAULT NULL,
  `BEGIN_DAY` int(11) DEFAULT NULL,
  `END_YEAR` int(11) DEFAULT NULL,
  `END_MONTH` int(11) DEFAULT NULL,
  `END_DAY` int(11) DEFAULT NULL,
  `CORRESPOND_NAME` varchar(255) DEFAULT NULL,
  `WORKKIND_NAME` varchar(255) DEFAULT NULL,
  `DATE` datetime DEFAULT NULL,
  `RECRUITER_ID` int(11) DEFAULT NULL,
  `CONTEXT` text,
  PRIMARY KEY (`RECRUITMENT_ID`),
  KEY `FK_faf59ftws0mmknsyojnw1i3y2` (`CITY`),
  KEY `FK_jhd9jdx6libolyxnu5hgjvfen` (`CORRESPOND_NAME`),
  KEY `FK_b3lqv5wc1qvvt5evx7gliw58k` (`WORKKIND_NAME`),
  KEY `FK_k82yvdgugkjghvs0ousw7mhve` (`RECRUITER_ID`),
  CONSTRAINT `FK_b3lqv5wc1qvvt5evx7gliw58k` FOREIGN KEY (`WORKKIND_NAME`) REFERENCES `workkind` (`WORKKIND_NAME`),
  CONSTRAINT `FK_faf59ftws0mmknsyojnw1i3y2` FOREIGN KEY (`CITY`) REFERENCES `city` (`CITY_NAME`),
  CONSTRAINT `FK_jhd9jdx6libolyxnu5hgjvfen` FOREIGN KEY (`CORRESPOND_NAME`) REFERENCES `correspond` (`CORRESPOND_NAME`),
  CONSTRAINT `FK_k82yvdgugkjghvs0ousw7mhve` FOREIGN KEY (`RECRUITER_ID`) REFERENCES `recruiter` (`RECRUITER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recruitment
-- ----------------------------
INSERT INTO `recruitment` VALUES ('3', '招聘软件开发工程师兼职的', '上海', '浦东新区', '浦东南路1835号', '200', '18888888888', '2019', '1', '1', '2019', '7', '31', '兼职', '技术', '2019-02-20 15:25:55', '4', '要求熟练掌握各种开发语言及数据库操作。');
INSERT INTO `recruitment` VALUES ('4', '招聘大数据分析实习生', '上海', '浦东新区', '浦东南路1835号', '300', '18888888888', '2018', '12', '31', '2019', '7', '31', '实习', '技术', '2019-02-20 15:46:53', '4', '要求熟悉常见的算法模型，熟悉数学建模。');
INSERT INTO `recruitment` VALUES ('5', '招聘Java开发工程师实习生', '北京', '朝阳区', '北京市朝阳区朝阳大道138号', '900', '13656565666', '2015', '1', '1', '2018', '1', '1', '实习', '技术', '2019-02-20 15:54:33', '5', '要求熟练掌握Java');
INSERT INTO `recruitment` VALUES ('6', '阿里巴巴招聘Java实习生三名', '杭州', '萧山区', '萧山大道128号', '1000', '18888888888', '2019', '1', '31', '2019', '12', '31', '实习', '技术', '2019-02-21 12:41:28', '6', '要求精通Java，熟练掌握mysql数据库操作。');
INSERT INTO `recruitment` VALUES ('7', '招聘淘宝推广营销人员', '杭州', '萧山区', '杭州西溪湿地', '200', '13656565666', '2019', '3', '31', '2019', '5', '31', '兼职', '营销', '2019-02-21 12:44:03', '6', '要求为人热情大方。');
INSERT INTO `recruitment` VALUES ('8', '阿里巴巴招聘传单派发人员', '杭州', '萧山区', '杭州西湖景区', '300', '18888888888', '2019', '1', '1', '2019', '12', '31', '兼职', '派单', '2019-02-21 12:45:35', '6', '要求长相气质佳。');

-- ----------------------------
-- Table structure for `school`
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school` (
  `SCHOOL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SCHOOL_NAME` varchar(255) DEFAULT NULL,
  `CITY_NAME` varchar(255) DEFAULT NULL,
  `DISTRICT` varchar(255) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SCHOOL_ID`),
  KEY `FK_8f4gmfsg4m4f13153ybsjmjgp` (`CITY_NAME`),
  CONSTRAINT `FK_8f4gmfsg4m4f13153ybsjmjgp` FOREIGN KEY (`CITY_NAME`) REFERENCES `city` (`CITY_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES ('1', '东华大学', '上海', '松江区', '上海松江区');
INSERT INTO `school` VALUES ('2', '上海交通大学', '上海', '闵行区', '上海闵行区');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `STUDENT_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `SCHOOL_ID` int(11) DEFAULT NULL,
  `TELPHONE` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`STUDENT_ID`),
  KEY `FK_kfu8i2oaa9mgg4hhas8grjnol` (`SCHOOL_ID`),
  CONSTRAINT `FK_kfu8i2oaa9mgg4hhas8grjnol` FOREIGN KEY (`SCHOOL_ID`) REFERENCES `school` (`SCHOOL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '张三', '123', '1', '13556565656', 'llq@qq.com');
INSERT INTO `student` VALUES ('2', '薛++', '123', '2', '13556565656', 'xjj@163.com');

-- ----------------------------
-- Table structure for `workkind`
-- ----------------------------
DROP TABLE IF EXISTS `workkind`;
CREATE TABLE `workkind` (
  `WORKKIND_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`WORKKIND_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workkind
-- ----------------------------
INSERT INTO `workkind` VALUES ('技术');
INSERT INTO `workkind` VALUES ('派单');
INSERT INTO `workkind` VALUES ('营销');
