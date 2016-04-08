/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : ahhotel

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-04-04 16:01:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for roomtype
-- ----------------------------
DROP TABLE IF EXISTS `roomtype`;
CREATE TABLE `roomtype` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of roomtype
-- ----------------------------
INSERT INTO `roomtype` VALUES ('1', 'Normal', '1');
INSERT INTO `roomtype` VALUES ('2', 'VIP', '1');
INSERT INTO `roomtype` VALUES ('3', 'Midiam', '1');
INSERT INTO `roomtype` VALUES ('17', ' 5Star', '0');

-- ----------------------------
-- Table structure for tbl_booking
-- ----------------------------
DROP TABLE IF EXISTS `tbl_booking`;
CREATE TABLE `tbl_booking` (
  `Bid` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `datestart` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `Total_price` float DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`Bid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tbl_booking
-- ----------------------------
INSERT INTO `tbl_booking` VALUES ('1', '1', '1', '1', '170', '2016-03-29 00:28:02', '2016-03-31 00:28:16', '510', '1');

-- ----------------------------
-- Table structure for tbl_room
-- ----------------------------
DROP TABLE IF EXISTS `tbl_room`;
CREATE TABLE `tbl_room` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) DEFAULT NULL,
  `bed` int(11) DEFAULT NULL,
  `rname` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `iconpath` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tbl_room
-- ----------------------------
INSERT INTO `tbl_room` VALUES ('1', '1', '1', 'R00001', '15', 'images (1).jpg', '1');
INSERT INTO `tbl_room` VALUES ('2', '3', '2', 'R00002', '35', 'hotel-zephyr.jpg', '1');
INSERT INTO `tbl_room` VALUES ('3', '2', '1', 'R00003', '22', 'images (2).jpg', '1');
INSERT INTO `tbl_room` VALUES ('4', '1', '2', 'R00004', '25', 'images.jpg', '1');
INSERT INTO `tbl_room` VALUES ('5', '2', '3', 'R66', '60', 'r_20160404_093431.jpg', '1');
INSERT INTO `tbl_room` VALUES ('6', '3', '3', 'R66', '40', 'r_20160404_090857.jpg', '1');
INSERT INTO `tbl_room` VALUES ('7', '2', '3', 'R66', null, '', '0');
INSERT INTO `tbl_room` VALUES ('8', '2', '2', 'R66', '40', 'r_20160404_091732.png', '1');
INSERT INTO `tbl_room` VALUES ('9', '2', '3', 'R66', null, 'r_20160404_092849.png', '0');
INSERT INTO `tbl_room` VALUES ('10', '3', '2', 'R342', '50', 'r_20160404_095216.png', '1');
INSERT INTO `tbl_room` VALUES ('11', '3', '2', 'R0009', '35', 'r_20160404_101832.jpg', '1');

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `national_ID` varchar(15) DEFAULT NULL,
  `passport` varchar(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('1', ' Sok Sopheak', 'sopheaks377@gmail.com', '0979045638', '0123848398234', '08520984529', '1');
INSERT INTO `tbl_user` VALUES ('2', ' fadf', 'sopheaks377@gmail.com', '435345435', '32432', '234234', '1');
INSERT INTO `tbl_user` VALUES ('3', '  Sok Sopheak', 'sopheaks377@gmail.com', '093875070', '1231312314', '08520984529', '1');
INSERT INTO `tbl_user` VALUES ('4', '   Sok Rada', 'sopheaks767@gmail.com', '087443646', '123', '12345345345', '1');
INSERT INTO `tbl_user` VALUES ('5', 'Kann Ratha', 'kannratha@gmail.com', '070546384', '909044', '5564993', '1');

-- ----------------------------
-- View structure for v_booking
-- ----------------------------
DROP VIEW IF EXISTS `v_booking`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `v_booking` AS (SELECT
	`bk`.`Bid` AS `Bid`,
	`bk`.`tid` AS `tsid`,
	`bk`.`rid` AS `rsid`,
	`bk`.`uid` AS `usid`,
	`bk`.`price` AS `price`,
	`bk`.`datestart` AS `datestart`,
	`bk`.`date_end` AS `date_end`,
	`bk`.`status` AS `status`,
	`bk`.`Total_price` AS `Total_price`,
	`u`.`uid` AS `uid`,
	`u`.`uName` AS `uName`,
	`u`.`phone` AS `phone`,
	`u`.`national_ID` AS `national_ID`,
	`u`.`passport` AS `passport`,
	`r`.`rid` AS `rid`,
	`r`.`rname` AS `rname`,
	`r`.`iconpath` AS `iconpath`,
	`r`.`bed` AS `bed`,
	`t`.`tid` AS `tid`,
	`t`.`tname` AS `tname`
FROM
	(
		`tbl_booking` `bk`
		LEFT JOIN `tbl_user` `u` ON (`u`.`uid` = `bk`.`uid`)
	)
LEFT JOIN tbl_room r ON(r.rid=bk.rid)
LEFT JOIN roomtype t ON(t.tid=bk.tid)
WHERE
	(`bk`.`status` <> 0)) ;
