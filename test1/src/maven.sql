/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : maven

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-12-19 17:37:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `classtype`
-- ----------------------------
DROP TABLE IF EXISTS `classtype`;
CREATE TABLE `classtype` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(100) NOT NULL,
  `class_code` varchar(100) NOT NULL,
  PRIMARY KEY (`class_id`),
  KEY `class_name` (`class_name`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classtype
-- ----------------------------
INSERT INTO `classtype` VALUES ('1', '软件工程一班', 'SF1001');
INSERT INTO `classtype` VALUES ('2', '软件工程二班', 'SF1002');
INSERT INTO `classtype` VALUES ('3', '软件工程三班', 'SF1003');
INSERT INTO `classtype` VALUES ('4', '软件工程四班', 'SF1004');
INSERT INTO `classtype` VALUES ('5', '软件工程五班', 'SF1005');
INSERT INTO `classtype` VALUES ('6', '软件工程六班', 'SF1006');
INSERT INTO `classtype` VALUES ('7', '软件工程七班', 'SF1007');
INSERT INTO `classtype` VALUES ('8', '软件工程八班', 'SF1008');
INSERT INTO `classtype` VALUES ('9', '信息工程一班', 'IT1001');
INSERT INTO `classtype` VALUES ('10', '信息工程二班', 'IT1002');
INSERT INTO `classtype` VALUES ('11', '信息工程三班', 'IT1003');
INSERT INTO `classtype` VALUES ('12', '信息工程四班', 'IT1004');
INSERT INTO `classtype` VALUES ('13', '信息工程五班', 'IT1005');
INSERT INTO `classtype` VALUES ('14', '一班', 'ONE');
INSERT INTO `classtype` VALUES ('15', '二班', 'TWO');
INSERT INTO `classtype` VALUES ('16', '三班', 'THREE');
INSERT INTO `classtype` VALUES ('17', '四班', 'FOUR');
INSERT INTO `classtype` VALUES ('18', '五班', 'FIVE');
INSERT INTO `classtype` VALUES ('19', '六班', 'SIX');
INSERT INTO `classtype` VALUES ('20', '七班', 'SEVEN');
INSERT INTO `classtype` VALUES ('21', '八班', 'EIGHT');
INSERT INTO `classtype` VALUES ('22', '九班', 'NINE');

-- ----------------------------
-- Table structure for `grade`
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_name` varchar(50) NOT NULL,
  PRIMARY KEY (`grade_id`),
  KEY `grade_name` (`grade_name`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES ('5', '一年级');
INSERT INTO `grade` VALUES ('11', '七年级');
INSERT INTO `grade` VALUES ('7', '三年级');
INSERT INTO `grade` VALUES ('13', '九年级');
INSERT INTO `grade` VALUES ('6', '二年级');
INSERT INTO `grade` VALUES ('9', '五年级');
INSERT INTO `grade` VALUES ('12', '八年级');
INSERT INTO `grade` VALUES ('10', '六年级');
INSERT INTO `grade` VALUES ('22', '博士');
INSERT INTO `grade` VALUES ('23', '博士后');
INSERT INTO `grade` VALUES ('8', '四年级');
INSERT INTO `grade` VALUES ('17', '大一');
INSERT INTO `grade` VALUES ('19', '大三');
INSERT INTO `grade` VALUES ('18', '大二');
INSERT INTO `grade` VALUES ('20', '大四');
INSERT INTO `grade` VALUES ('4', '学前班');
INSERT INTO `grade` VALUES ('2', '幼儿园中班');
INSERT INTO `grade` VALUES ('3', '幼儿园大班');
INSERT INTO `grade` VALUES ('1', '幼儿园小班');
INSERT INTO `grade` VALUES ('21', '研究生');
INSERT INTO `grade` VALUES ('14', '高一');
INSERT INTO `grade` VALUES ('16', '高三');
INSERT INTO `grade` VALUES ('15', '高二');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menu_id` int(20) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(100) NOT NULL,
  `menu_level` int(1) NOT NULL,
  `menu_parent_node` int(20) NOT NULL,
  `menu_path` varchar(1000) NOT NULL,
  `menu_url` varchar(1000) NOT NULL,
  `menu_leaf_node` enum('N','Y') NOT NULL,
  `menu_is_show` enum('N','Y') NOT NULL,
  `menu_is_choose` enum('N','Y') NOT NULL,
  `menu_in_table_time` datetime NOT NULL,
  `menu_effect_time` datetime NOT NULL,
  `menu_ineffectiveness_time` datetime NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1004002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1001', '权限管理', '1', '0', '权限管理', 'null', 'N', 'N', 'Y', '2017-12-15 12:01:21', '2017-12-15 12:01:25', '2110-01-01 12:01:29');
INSERT INTO `menu` VALUES ('1002', '信息管理', '1', '0', '信息管理', 'null', 'N', 'N', 'Y', '2017-12-15 14:40:44', '2017-12-15 14:40:47', '2110-01-01 12:01:29');
INSERT INTO `menu` VALUES ('1003', '绩效管理', '1', '0', '绩效管理', 'null', 'N', 'Y', 'Y', '2017-12-17 08:57:58', '2017-12-17 08:58:07', '2110-01-01 12:01:29');
INSERT INTO `menu` VALUES ('1004', '其它管理', '1', '0', '其它管理', 'null', 'N', 'N', 'Y', '2017-12-17 09:02:07', '2017-12-17 09:02:12', '2110-01-01 12:01:29');
INSERT INTO `menu` VALUES ('1001001', '用户权限', '2', '1001', '权限管理->用户权限', 'null', 'Y', 'Y', 'Y', '2017-12-15 14:35:56', '2017-12-15 14:35:59', '2110-01-01 12:01:29');
INSERT INTO `menu` VALUES ('1001002', '页面权限', '2', '1001', '权限管理->页面权限', 'null', 'Y', 'Y', 'Y', '2017-12-15 14:40:07', '2017-12-15 14:40:09', '2110-01-01 12:01:29');
INSERT INTO `menu` VALUES ('1001003', '按钮权限', '2', '1001', '权限管理->按钮权限', 'null', 'Y', 'Y', 'Y', '2017-12-17 09:00:18', '2017-12-17 09:00:23', '2110-01-01 12:01:29');
INSERT INTO `menu` VALUES ('1002001', '教师信息', '2', '1002', '信息管理->教师信息', 'null', 'Y', 'N', 'Y', '2017-12-15 14:41:03', '2017-12-15 14:41:00', '2110-01-01 12:01:29');
INSERT INTO `menu` VALUES ('1002002', '学生信息', '2', '1002', '信息管理->学生信息', 'null', 'Y', 'Y', 'Y', '2017-12-15 14:41:38', '2017-12-15 14:41:41', '2110-01-01 12:01:29');
INSERT INTO `menu` VALUES ('1002003', '其它用户信息', '2', '1002', '信息管理->其它用户信息', 'null', 'Y', 'Y', 'Y', '2017-12-15 14:41:53', '2017-12-15 14:41:50', '2110-01-01 12:01:29');
INSERT INTO `menu` VALUES ('1003001', '教师考评成绩', '2', '1003', '绩效管理->教师考评成绩', 'null', 'Y', 'N', 'Y', '2017-12-17 08:57:54', '2017-12-17 08:58:04', '2110-01-01 12:01:29');
INSERT INTO `menu` VALUES ('1003002', '学生成绩', '2', '1003', '绩效管理->学生成绩', 'mainpage/studentsore', 'Y', 'Y', 'Y', '2017-12-17 08:55:54', '2017-12-17 08:56:03', '2110-01-01 12:01:29');
INSERT INTO `menu` VALUES ('1004001', '页面设置', '2', '1004', '其它设置->页面设置', 'null', 'Y', 'Y', 'Y', '2017-12-17 10:24:53', '2017-12-17 10:24:55', '2017-12-21 10:24:59');

-- ----------------------------
-- Table structure for `permissions_type`
-- ----------------------------
DROP TABLE IF EXISTS `permissions_type`;
CREATE TABLE `permissions_type` (
  `permissions_id` int(11) NOT NULL AUTO_INCREMENT,
  `permissions_name` varchar(8) NOT NULL,
  `permissions_identification` varchar(30) NOT NULL,
  PRIMARY KEY (`permissions_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permissions_type
-- ----------------------------
INSERT INTO `permissions_type` VALUES ('1', '授权', 'mKMVwPxxl6cIOO7rR0xaBg==');
INSERT INTO `permissions_type` VALUES ('2', '录入', 'yVIRpUCgVw6MSwKCuE7lKA==');
INSERT INTO `permissions_type` VALUES ('3', '修改', 'g0epJ8CaTsL+RzsKk/Zn0A==');
INSERT INTO `permissions_type` VALUES ('4', '查询', 'vukS157vtzNZiMSZeqkTjQ==');
INSERT INTO `permissions_type` VALUES ('5', '删除', 'L0qt3eM8m5PDb9JQPz0SKw==');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_group_id` int(20) NOT NULL AUTO_INCREMENT,
  `role_group_name` varchar(100) NOT NULL,
  `role_describe` text,
  `role_group` varchar(200) NOT NULL,
  `role_group_max_count` int(10) NOT NULL,
  `role_group_new_count` int(10) NOT NULL,
  PRIMARY KEY (`role_group_id`),
  KEY `permissions_group_name` (`role_group_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '超级管理员', '拥有所有权限', '1,2,3,4,5', '2', '2');
INSERT INTO `role` VALUES ('2', '一级管理员', '拥有录入、修改、查询、删除权限', '2,3,4,5', '20', '1');
INSERT INTO `role` VALUES ('3', '二级管理员', '拥有修改、查询、删除权限', '3,4,5', '50', '1');
INSERT INTO `role` VALUES ('4', '三级管理员', '拥有修改、查询权限', '3,4', '2000', '1');
INSERT INTO `role` VALUES ('5', '四级管理员', '拥有查询权限', '4', '5000', '1');

-- ----------------------------
-- Table structure for `role_group_correlate`
-- ----------------------------
DROP TABLE IF EXISTS `role_group_correlate`;
CREATE TABLE `role_group_correlate` (
  `p_g_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(20) NOT NULL,
  `role_group_id` int(11) NOT NULL,
  PRIMARY KEY (`p_g_id`),
  KEY `p_p_id` (`role_group_id`),
  KEY `pg_m_id` (`menu_id`),
  CONSTRAINT `p_p_id` FOREIGN KEY (`role_group_id`) REFERENCES `role` (`role_group_id`) ON UPDATE CASCADE,
  CONSTRAINT `pg_m_id` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_group_correlate
-- ----------------------------
INSERT INTO `role_group_correlate` VALUES ('8', '1002', '2');
INSERT INTO `role_group_correlate` VALUES ('9', '1002001', '2');
INSERT INTO `role_group_correlate` VALUES ('10', '1002002', '2');
INSERT INTO `role_group_correlate` VALUES ('11', '1002003', '2');
INSERT INTO `role_group_correlate` VALUES ('12', '1002001', '3');
INSERT INTO `role_group_correlate` VALUES ('13', '1002002', '3');
INSERT INTO `role_group_correlate` VALUES ('14', '1002003', '3');
INSERT INTO `role_group_correlate` VALUES ('15', '1002001', '4');
INSERT INTO `role_group_correlate` VALUES ('16', '1002002', '4');
INSERT INTO `role_group_correlate` VALUES ('17', '1002003', '4');
INSERT INTO `role_group_correlate` VALUES ('23', '1002', '3');
INSERT INTO `role_group_correlate` VALUES ('24', '1002', '4');
INSERT INTO `role_group_correlate` VALUES ('25', '1003', '3');
INSERT INTO `role_group_correlate` VALUES ('26', '1003001', '3');
INSERT INTO `role_group_correlate` VALUES ('27', '1003002', '3');
INSERT INTO `role_group_correlate` VALUES ('28', '1004', '3');
INSERT INTO `role_group_correlate` VALUES ('29', '1004001', '3');
INSERT INTO `role_group_correlate` VALUES ('30', '1003', '4');
INSERT INTO `role_group_correlate` VALUES ('31', '1003001', '4');
INSERT INTO `role_group_correlate` VALUES ('32', '1003002', '4');
INSERT INTO `role_group_correlate` VALUES ('33', '1004', '4');
INSERT INTO `role_group_correlate` VALUES ('34', '1004001', '4');
INSERT INTO `role_group_correlate` VALUES ('42', '1001', '1');
INSERT INTO `role_group_correlate` VALUES ('43', '1002', '1');
INSERT INTO `role_group_correlate` VALUES ('44', '1003', '1');
INSERT INTO `role_group_correlate` VALUES ('45', '1004', '1');
INSERT INTO `role_group_correlate` VALUES ('46', '1001001', '1');
INSERT INTO `role_group_correlate` VALUES ('47', '1001002', '1');
INSERT INTO `role_group_correlate` VALUES ('48', '1001003', '1');
INSERT INTO `role_group_correlate` VALUES ('49', '1002001', '1');
INSERT INTO `role_group_correlate` VALUES ('51', '1002002', '1');
INSERT INTO `role_group_correlate` VALUES ('52', '1002003', '1');
INSERT INTO `role_group_correlate` VALUES ('53', '1003001', '1');
INSERT INTO `role_group_correlate` VALUES ('54', '1003002', '1');
INSERT INTO `role_group_correlate` VALUES ('55', '1004001', '1');

-- ----------------------------
-- Table structure for `score`
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `score_id` int(50) NOT NULL AUTO_INCREMENT,
  `score` int(3) NOT NULL,
  `subject_id` int(20) NOT NULL,
  `student_number` int(20) NOT NULL,
  `subject_teacher_number` int(20) NOT NULL,
  `modification_teacher_number` int(20) NOT NULL,
  `score_join_time` datetime NOT NULL,
  `score_team` enum('第二学期','第一学期') NOT NULL,
  PRIMARY KEY (`score_id`),
  KEY `s_u_number` (`student_number`),
  KEY `s_s_t_id` (`subject_id`),
  KEY `s_t_m_number` (`modification_teacher_number`),
  KEY `s_t_s_number` (`subject_teacher_number`),
  CONSTRAINT `s_s_t_id` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON UPDATE CASCADE,
  CONSTRAINT `s_t_m_number` FOREIGN KEY (`modification_teacher_number`) REFERENCES `teacher_score` (`teacher_number`) ON UPDATE CASCADE,
  CONSTRAINT `s_t_s_number` FOREIGN KEY (`subject_teacher_number`) REFERENCES `teacher_score` (`teacher_number`) ON UPDATE CASCADE,
  CONSTRAINT `s_u_number` FOREIGN KEY (`student_number`) REFERENCES `student_score` (`student_number`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('1', '96', '37', '1440121160', '10001002', '10001003', '2017-12-16 20:53:45', '第一学期');
INSERT INTO `score` VALUES ('2', '99', '11', '1440121160', '10001001', '10001003', '2017-12-16 20:52:47', '第一学期');
INSERT INTO `score` VALUES ('3', '97', '23', '1440121160', '10001003', '10001001', '2017-12-16 20:53:09', '第一学期');
INSERT INTO `score` VALUES ('4', '85', '52', '1440121160', '10001002', '10001001', '2017-12-16 20:53:38', '第一学期');
INSERT INTO `score` VALUES ('7', '58', '11', '1440121156', '10001001', '10001002', '2017-12-18 23:29:59', '第一学期');
INSERT INTO `score` VALUES ('8', '78', '11', '1440121156', '10001002', '10001001', '2017-12-17 20:30:22', '第二学期');
INSERT INTO `score` VALUES ('9', '99', '59', '1440121160', '10001001', '10001002', '2017-12-18 23:30:50', '第二学期');
INSERT INTO `score` VALUES ('10', '87', '23', '1440121156', '10001001', '10001002', '2017-12-14 00:00:00', '第一学期');
INSERT INTO `score` VALUES ('11', '97', '50', '1440121160', '10001003', '10001002', '2016-12-08 00:00:00', '第一学期');
INSERT INTO `score` VALUES ('13', '85', '16', '1440121156', '10001003', '10001002', '2018-01-30 00:00:00', '第一学期');

-- ----------------------------
-- Table structure for `student_score`
-- ----------------------------
DROP TABLE IF EXISTS `student_score`;
CREATE TABLE `student_score` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_number` int(20) NOT NULL,
  `student_name` varchar(20) NOT NULL,
  `teacher_number` int(11) NOT NULL,
  `remark` text NOT NULL,
  `student_lapse` varchar(2) NOT NULL,
  `student_lapse_time` datetime DEFAULT NULL,
  `class_name` varchar(100) NOT NULL,
  `student_grade_name` varchar(100) NOT NULL,
  PRIMARY KEY (`student_id`),
  KEY `student_number` (`student_number`),
  KEY `s_c_name` (`class_name`),
  KEY `s_t_number` (`teacher_number`),
  KEY `s_g_name` (`student_grade_name`),
  CONSTRAINT `s_c_name` FOREIGN KEY (`class_name`) REFERENCES `classtype` (`class_name`) ON UPDATE CASCADE,
  CONSTRAINT `s_g_name` FOREIGN KEY (`student_grade_name`) REFERENCES `grade` (`grade_name`) ON UPDATE CASCADE,
  CONSTRAINT `s_t_number` FOREIGN KEY (`teacher_number`) REFERENCES `teacher_score` (`teacher_number`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_score
-- ----------------------------
INSERT INTO `student_score` VALUES ('1', '1440121160', '陈少芬', '10001001', '', 'N', null, '软件工程一班', '大四');
INSERT INTO `student_score` VALUES ('2', '1440121156', '赖文旺', '10001002', '', 'N', null, '软件工程六班', '大四');

-- ----------------------------
-- Table structure for `subject`
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `subject_id` int(20) NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(100) NOT NULL,
  PRIMARY KEY (`subject_id`),
  KEY `subject_name` (`subject_name`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('23', 'C++语言程序设计I');
INSERT INTO `subject` VALUES ('37', 'C++语言程序设计II');
INSERT INTO `subject` VALUES ('11', 'java基础');
INSERT INTO `subject` VALUES ('51', 'JAVA虚拟机应用');
INSERT INTO `subject` VALUES ('10', 'Linux入门');
INSERT INTO `subject` VALUES ('52', 'WebLogic企业级运维与开发');
INSERT INTO `subject` VALUES ('12', 'web基础入门');
INSERT INTO `subject` VALUES ('50', 'XML企业级应用开发');
INSERT INTO `subject` VALUES ('16', '中国近现代史纲要');
INSERT INTO `subject` VALUES ('45', '企业级web应用开发');
INSERT INTO `subject` VALUES ('21', '军事教育');
INSERT INTO `subject` VALUES ('14', '办公软件');
INSERT INTO `subject` VALUES ('7', '化学');
INSERT INTO `subject` VALUES ('5', '历史');
INSERT INTO `subject` VALUES ('9', '地理');
INSERT INTO `subject` VALUES ('20', '大学体育I');
INSERT INTO `subject` VALUES ('31', '大学体育II');
INSERT INTO `subject` VALUES ('35', '大学体育III');
INSERT INTO `subject` VALUES ('59', '大学体育IV');
INSERT INTO `subject` VALUES ('19', '大学生心身健康教育 I');
INSERT INTO `subject` VALUES ('29', '大学生心身健康教育 II');
INSERT INTO `subject` VALUES ('34', '大学生心身健康教育 II');
INSERT INTO `subject` VALUES ('15', '大学英语 I');
INSERT INTO `subject` VALUES ('27', '大学英语 II');
INSERT INTO `subject` VALUES ('43', '大学英语 IV');
INSERT INTO `subject` VALUES ('56', '就业与创业指导');
INSERT INTO `subject` VALUES ('28', '形势与政策 I');
INSERT INTO `subject` VALUES ('32', '形势与政策 I');
INSERT INTO `subject` VALUES ('44', '形势与政策 II');
INSERT INTO `subject` VALUES ('48', '形势与政策 III');
INSERT INTO `subject` VALUES ('55', '形势与政策 IV');
INSERT INTO `subject` VALUES ('25', '思想道德修养与法律基础');
INSERT INTO `subject` VALUES ('47', '操作系统');
INSERT INTO `subject` VALUES ('4', '政治');
INSERT INTO `subject` VALUES ('2', '数学');
INSERT INTO `subject` VALUES ('38', '数据库系统原理');
INSERT INTO `subject` VALUES ('39', '数据结构与算法');
INSERT INTO `subject` VALUES ('42', '毛泽东思想与中国特色社会主义理论体系概论');
INSERT INTO `subject` VALUES ('8', '物理');
INSERT INTO `subject` VALUES ('6', '生物');
INSERT INTO `subject` VALUES ('30', '离散数学I');
INSERT INTO `subject` VALUES ('33', '离散数学II');
INSERT INTO `subject` VALUES ('46', '移动终端应用开发');
INSERT INTO `subject` VALUES ('26', '综合素质提升');
INSERT INTO `subject` VALUES ('36', '网络应用技术');
INSERT INTO `subject` VALUES ('24', '网页设计');
INSERT INTO `subject` VALUES ('17', '职业生涯规划');
INSERT INTO `subject` VALUES ('3', '英语');
INSERT INTO `subject` VALUES ('22', '计算机科学导论');
INSERT INTO `subject` VALUES ('49', '计算机组成原理');
INSERT INTO `subject` VALUES ('53', '设计模式解析');
INSERT INTO `subject` VALUES ('1', '语文');
INSERT INTO `subject` VALUES ('13', '软件工程');
INSERT INTO `subject` VALUES ('57', '软件工程毕业实习');
INSERT INTO `subject` VALUES ('58', '软件工程毕业设计');
INSERT INTO `subject` VALUES ('40', '软件测试基础');
INSERT INTO `subject` VALUES ('54', '轻量级应用框架与开发');
INSERT INTO `subject` VALUES ('41', '面向对象设计与编程');
INSERT INTO `subject` VALUES ('18', '高等数学I(理)');

-- ----------------------------
-- Table structure for `teacher_score`
-- ----------------------------
DROP TABLE IF EXISTS `teacher_score`;
CREATE TABLE `teacher_score` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_number` int(20) NOT NULL,
  `teacher_name` varchar(20) NOT NULL,
  `teaching_subject` varchar(100) NOT NULL,
  `teacher_phone` varchar(11) NOT NULL,
  `teacher_account_effect_time` datetime NOT NULL,
  `teacher_email` varchar(30) NOT NULL,
  `remark` text,
  `tacher_lapse` varchar(2) NOT NULL,
  `tacher_lapse_time` datetime DEFAULT NULL,
  `teacher_grade_name` varchar(100) NOT NULL,
  PRIMARY KEY (`teacher_id`),
  KEY `teacher_number` (`teacher_number`) USING BTREE,
  KEY `t_tsb` (`teaching_subject`),
  KEY `t_g_name` (`teacher_grade_name`),
  CONSTRAINT `t_g_name` FOREIGN KEY (`teacher_grade_name`) REFERENCES `grade` (`grade_name`) ON UPDATE CASCADE,
  CONSTRAINT `t_tsb` FOREIGN KEY (`teaching_subject`) REFERENCES `subject` (`subject_name`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_score
-- ----------------------------
INSERT INTO `teacher_score` VALUES ('1', '10001001', '杨薇', 'Linux入门', '15200000000', '2017-12-15 08:45:16', '15200000000@139.com', null, 'N', null, '大一');
INSERT INTO `teacher_score` VALUES ('2', '10001002', '陈坚强', 'C++语言程序设计I', '15200000000', '2017-12-15 08:46:20', '15200000000@139.com', null, 'N', null, '大一');
INSERT INTO `teacher_score` VALUES ('3', '10001003', '刘亚玲', 'C++语言程序设计II', '15200000000', '2017-12-15 08:47:46', '15200000000@139.com', null, 'N', null, '大二');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_number` int(20) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_position` int(20) NOT NULL,
  `user_password` varchar(30) NOT NULL,
  `user_phone` varchar(11) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `remark` text NOT NULL,
  `user_lapse` varchar(2) NOT NULL,
  `user_lapse_time` datetime DEFAULT NULL,
  `last_join_time` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_number` (`user_number`) USING BTREE,
  KEY `u_r_id` (`user_position`),
  CONSTRAINT `u_r_id` FOREIGN KEY (`user_position`) REFERENCES `role` (`role_group_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1440121160', '陈少芬', '1', 'JdVa0oOqQAr0ZMdtcTwHrQ==', '10000000000', '10000000000@139.com', '', 'N', null, '2017-12-15 22:46:51');
INSERT INTO `user` VALUES ('2', '1440121156', '赖文旺', '1', 'JdVa0oOqQAr0ZMdtcTwHrQ==', '10000000000', '10000000000@139.com', '', 'N', null, '2017-12-19 10:51:03');
INSERT INTO `user` VALUES ('3', '1440121155', '李倩', '4', 'JdVa0oOqQAr0ZMdtcTwHrQ==', '10000000000', '10000000000@139.com', '', 'N', null, '2017-12-17 23:56:45');
INSERT INTO `user` VALUES ('4', '1440121101', '苗芬', '2', 'JdVa0oOqQAr0ZMdtcTwHrQ==', '10000000000', '10000000000@139.com', '', 'N', null, '2017-12-19 17:13:18');
INSERT INTO `user` VALUES ('5', '1440112245', '林永德', '3', 'JdVa0oOqQAr0ZMdtcTwHrQ==', '10000000000', '10000000000@139.com', '', 'N', null, '2017-12-19 17:21:43');
INSERT INTO `user` VALUES ('6', '1440121102', '陈胜', '5', 'JdVa0oOqQAr0ZMdtcTwHrQ==', '10000000000', '10000000000@139.com', '', 'N', null, '2017-12-19 17:13:28');
DROP TRIGGER IF EXISTS `u_pers_insert`;
DELIMITER ;;
CREATE TRIGGER `u_pers_insert` AFTER INSERT ON `user` FOR EACH ROW begin
declare a int;
declare c int;
set c = (select  role_group_new_count from role where role_group_id=new.user_position);
set a =(select  role_group_max_count from role where role_group_id=new.user_position);
 if(a>c)
    then 
    update role set role_group_new_count = c + 1 where role_group_id=new.user_position;
end if;
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `u_pers_update`;
DELIMITER ;;
CREATE TRIGGER `u_pers_update` AFTER UPDATE ON `user` FOR EACH ROW begin
declare a int;
declare c int;
declare b int;
set c = (select  role_group_new_count from role where role_group_id=old.user_position);
set b = (select  role_group_new_count from role where role_group_id=new.user_position); 
set a =(select  role_group_max_count from role where role_group_id=new.user_position);
if(old.user_position!=new.user_position)
then
if(a>c)
    then 
    update role set role_group_new_count = c - 1 where role_group_id=old.user_position;
    update role set role_group_new_count = b + 1 where role_group_id=new.user_position;
end if;
end if;
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `u_pers_delete`;
DELIMITER ;;
CREATE TRIGGER `u_pers_delete` AFTER DELETE ON `user` FOR EACH ROW begin
declare a int;
set a = (select  role_group_new_count from role where role_group_id=old.user_position);
update role set role_group_new_count = a - 1 where role_group_id=old.user_position;
end
;;
DELIMITER ;
