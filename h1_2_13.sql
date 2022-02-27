/*
 Navicat Premium Data Transfer

 Source Server         : Laptop
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : h1

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 27/02/2022 13:50:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for COURSE
-- ----------------------------
DROP TABLE IF EXISTS `COURSE`;
CREATE TABLE `COURSE` (
  `Course_name` varchar(255) DEFAULT NULL,
  `Course_number` varchar(10) DEFAULT NULL,
  `Credit_hours` smallint DEFAULT NULL,
  `Department` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  KEY `Course_number` (`Course_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of COURSE
-- ----------------------------
BEGIN;
INSERT INTO `COURSE` (`Course_name`, `Course_number`, `Credit_hours`, `Department`) VALUES ('Intro to Computer Science', 'CS1310', 4, 'CS');
INSERT INTO `COURSE` (`Course_name`, `Course_number`, `Credit_hours`, `Department`) VALUES ('Data Structures', 'CS3320', 4, 'CS');
INSERT INTO `COURSE` (`Course_name`, `Course_number`, `Credit_hours`, `Department`) VALUES ('Discrete Mathematics', 'MATH2410', 3, 'MATH');
INSERT INTO `COURSE` (`Course_name`, `Course_number`, `Credit_hours`, `Department`) VALUES ('Database', 'CS3380', 3, 'CS');
COMMIT;

-- ----------------------------
-- Table structure for GRADE_REPORT
-- ----------------------------
DROP TABLE IF EXISTS `GRADE_REPORT`;
CREATE TABLE `GRADE_REPORT` (
  `Student_number` smallint DEFAULT NULL,
  `Section_idenfitifer` smallint DEFAULT NULL,
  `Grade` enum('A','B','C','D','F') DEFAULT 'C'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of GRADE_REPORT
-- ----------------------------
BEGIN;
INSERT INTO `GRADE_REPORT` (`Student_number`, `Section_idenfitifer`, `Grade`) VALUES (17, 112, 'B');
INSERT INTO `GRADE_REPORT` (`Student_number`, `Section_idenfitifer`, `Grade`) VALUES (17, 119, 'C');
INSERT INTO `GRADE_REPORT` (`Student_number`, `Section_idenfitifer`, `Grade`) VALUES (8, 85, 'A');
INSERT INTO `GRADE_REPORT` (`Student_number`, `Section_idenfitifer`, `Grade`) VALUES (8, 92, 'A');
INSERT INTO `GRADE_REPORT` (`Student_number`, `Section_idenfitifer`, `Grade`) VALUES (8, 102, 'B');
INSERT INTO `GRADE_REPORT` (`Student_number`, `Section_idenfitifer`, `Grade`) VALUES (8, 135, 'A');
COMMIT;

-- ----------------------------
-- Table structure for PREREQUISITE
-- ----------------------------
DROP TABLE IF EXISTS `PREREQUISITE`;
CREATE TABLE `PREREQUISITE` (
  `Course_number` varchar(10) DEFAULT NULL,
  `Prerequisite_number` varchar(10) DEFAULT NULL,
  KEY `Course_number` (`Course_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of PREREQUISITE
-- ----------------------------
BEGIN;
INSERT INTO `PREREQUISITE` (`Course_number`, `Prerequisite_number`) VALUES ('CS3380', 'CS3320');
INSERT INTO `PREREQUISITE` (`Course_number`, `Prerequisite_number`) VALUES ('CS3380', 'MATH2410');
INSERT INTO `PREREQUISITE` (`Course_number`, `Prerequisite_number`) VALUES ('CS3320', 'CS1310');
COMMIT;

-- ----------------------------
-- Table structure for SECTION
-- ----------------------------
DROP TABLE IF EXISTS `SECTION`;
CREATE TABLE `SECTION` (
  `Section_identifier` smallint DEFAULT NULL,
  `Course_number` varchar(10) DEFAULT NULL,
  `Semester` varchar(255) DEFAULT NULL,
  `Year` varchar(4) DEFAULT NULL,
  `Instructor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of SECTION
-- ----------------------------
BEGIN;
INSERT INTO `SECTION` (`Section_identifier`, `Course_number`, `Semester`, `Year`, `Instructor`) VALUES (85, 'MATH2410', 'Fall', '07', 'King');
INSERT INTO `SECTION` (`Section_identifier`, `Course_number`, `Semester`, `Year`, `Instructor`) VALUES (92, 'CS1310', 'Fall', '07', 'Anderson');
INSERT INTO `SECTION` (`Section_identifier`, `Course_number`, `Semester`, `Year`, `Instructor`) VALUES (102, 'CS3320', 'Spring', '08', 'Knuth');
INSERT INTO `SECTION` (`Section_identifier`, `Course_number`, `Semester`, `Year`, `Instructor`) VALUES (112, 'MATH2410', 'Fall', '08', 'Chang');
INSERT INTO `SECTION` (`Section_identifier`, `Course_number`, `Semester`, `Year`, `Instructor`) VALUES (119, 'CS1310', 'Fall', '08', 'Anderson');
INSERT INTO `SECTION` (`Section_identifier`, `Course_number`, `Semester`, `Year`, `Instructor`) VALUES (135, 'CS3380', 'Fall', '08', 'Stone');
COMMIT;

-- ----------------------------
-- Table structure for STUDENT
-- ----------------------------
DROP TABLE IF EXISTS `STUDENT`;
CREATE TABLE `STUDENT` (
  `Name` varchar(255) DEFAULT NULL,
  `Student_number` smallint DEFAULT NULL,
  `Class` smallint DEFAULT NULL,
  `Major` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of STUDENT
-- ----------------------------
BEGIN;
INSERT INTO `STUDENT` (`Name`, `Student_number`, `Class`, `Major`) VALUES ('Smith', 17, 1, 'CS');
INSERT INTO `STUDENT` (`Name`, `Student_number`, `Class`, `Major`) VALUES ('Brown', 8, 2, 'CS');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
