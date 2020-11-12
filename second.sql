/*
 Navicat Premium Data Transfer

 Source Server         : LearningPlatform
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : 10.211.55.4:3306
 Source Schema         : learningplatform

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 11/11/2020 20:19:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `questioncontent` varchar(45) NOT NULL,
  `questiontype` int NOT NULL,
  `options1` varchar(45) NOT NULL,
  `options2` varchar(45) DEFAULT NULL,
  `options3` varchar(45) DEFAULT NULL,
  `options4` varchar(45) DEFAULT NULL,
  `answer` varchar(45) NOT NULL,
  PRIMARY KEY (`questioncontent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for studentinfo
-- ----------------------------
DROP TABLE IF EXISTS `studentinfo`;
CREATE TABLE `studentinfo` (
  `uname` varchar(50) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `number` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `class` varchar(45) NOT NULL,
  `id` varchar(45) NOT NULL,
  PRIMARY KEY (`uname`),
  UNIQUE KEY `uname_UNIQUE` (`uname`),
  UNIQUE KEY `number_UNIQUE` (`number`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of studentinfo
-- ----------------------------
BEGIN;
INSERT INTO `studentinfo` VALUES ('123', '123', '1', 'xiaoming', '1', '110');
COMMIT;

-- ----------------------------
-- Table structure for studentscore
-- ----------------------------
DROP TABLE IF EXISTS `studentscore`;
CREATE TABLE `studentscore` (
  `uname` varchar(50) NOT NULL,
  `singlechoice` int DEFAULT '0',
  `fillintheblank` int DEFAULT '0',
  `trueoffalse` int DEFAULT '0',
  `shortanswer` int DEFAULT '0',
  `Discourse` int DEFAULT '0',
  `actualoperation` int DEFAULT '0',
  `all` int DEFAULT '0',
  PRIMARY KEY (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for teacherinfo
-- ----------------------------
DROP TABLE IF EXISTS `teacherinfo`;
CREATE TABLE `teacherinfo` (
  `uname` varchar(50) NOT NULL,
  `pwd` varchar(45) NOT NULL,
  PRIMARY KEY (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of teacherinfo
-- ----------------------------
BEGIN;
INSERT INTO `teacherinfo` VALUES ('111', '111');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
