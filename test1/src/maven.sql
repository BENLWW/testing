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
INSERT INTO `classtype` VALUES ('1', '�������һ��', 'SF1001');
INSERT INTO `classtype` VALUES ('2', '������̶���', 'SF1002');
INSERT INTO `classtype` VALUES ('3', '�����������', 'SF1003');
INSERT INTO `classtype` VALUES ('4', '��������İ�', 'SF1004');
INSERT INTO `classtype` VALUES ('5', '����������', 'SF1005');
INSERT INTO `classtype` VALUES ('6', '�����������', 'SF1006');
INSERT INTO `classtype` VALUES ('7', '��������߰�', 'SF1007');
INSERT INTO `classtype` VALUES ('8', '������̰˰�', 'SF1008');
INSERT INTO `classtype` VALUES ('9', '��Ϣ����һ��', 'IT1001');
INSERT INTO `classtype` VALUES ('10', '��Ϣ���̶���', 'IT1002');
INSERT INTO `classtype` VALUES ('11', '��Ϣ��������', 'IT1003');
INSERT INTO `classtype` VALUES ('12', '��Ϣ�����İ�', 'IT1004');
INSERT INTO `classtype` VALUES ('13', '��Ϣ�������', 'IT1005');
INSERT INTO `classtype` VALUES ('14', 'һ��', 'ONE');
INSERT INTO `classtype` VALUES ('15', '����', 'TWO');
INSERT INTO `classtype` VALUES ('16', '����', 'THREE');
INSERT INTO `classtype` VALUES ('17', '�İ�', 'FOUR');
INSERT INTO `classtype` VALUES ('18', '���', 'FIVE');
INSERT INTO `classtype` VALUES ('19', '����', 'SIX');
INSERT INTO `classtype` VALUES ('20', '�߰�', 'SEVEN');
INSERT INTO `classtype` VALUES ('21', '�˰�', 'EIGHT');
INSERT INTO `classtype` VALUES ('22', '�Ű�', 'NINE');

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
INSERT INTO `grade` VALUES ('5', 'һ�꼶');
INSERT INTO `grade` VALUES ('11', '���꼶');
INSERT INTO `grade` VALUES ('7', '���꼶');
INSERT INTO `grade` VALUES ('13', '���꼶');
INSERT INTO `grade` VALUES ('6', '���꼶');
INSERT INTO `grade` VALUES ('9', '���꼶');
INSERT INTO `grade` VALUES ('12', '���꼶');
INSERT INTO `grade` VALUES ('10', '���꼶');
INSERT INTO `grade` VALUES ('22', '��ʿ');
INSERT INTO `grade` VALUES ('23', '��ʿ��');
INSERT INTO `grade` VALUES ('8', '���꼶');
INSERT INTO `grade` VALUES ('17', '��һ');
INSERT INTO `grade` VALUES ('19', '����');
INSERT INTO `grade` VALUES ('18', '���');
INSERT INTO `grade` VALUES ('20', '����');
INSERT INTO `grade` VALUES ('4', 'ѧǰ��');
INSERT INTO `grade` VALUES ('2', '�׶�԰�а�');
INSERT INTO `grade` VALUES ('3', '�׶�԰���');
INSERT INTO `grade` VALUES ('1', '�׶�԰С��');
INSERT INTO `grade` VALUES ('21', '�о���');
INSERT INTO `grade` VALUES ('14', '��һ');
INSERT INTO `grade` VALUES ('16', '����');
INSERT INTO `grade` VALUES ('15', '�߶�');

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
INSERT INTO `menu` VALUES ('1001', 'Ȩ�޹���', '1', '0', 'Ȩ�޹���', 'null', 'N', 'N', 'Y', '2017-12-15 12:01:21', '2017-12-15 12:01:25', '2110-01-01 12:01:29');
INSERT INTO `menu` VALUES ('1002', '��Ϣ����', '1', '0', '��Ϣ����', 'null', 'N', 'N', 'Y', '2017-12-15 14:40:44', '2017-12-15 14:40:47', '2110-01-01 12:01:29');
INSERT INTO `menu` VALUES ('1003', '��Ч����', '1', '0', '��Ч����', 'null', 'N', 'Y', 'Y', '2017-12-17 08:57:58', '2017-12-17 08:58:07', '2110-01-01 12:01:29');
INSERT INTO `menu` VALUES ('1004', '��������', '1', '0', '��������', 'null', 'N', 'N', 'Y', '2017-12-17 09:02:07', '2017-12-17 09:02:12', '2110-01-01 12:01:29');
INSERT INTO `menu` VALUES ('1001001', '�û�Ȩ��', '2', '1001', 'Ȩ�޹���->�û�Ȩ��', 'null', 'Y', 'Y', 'Y', '2017-12-15 14:35:56', '2017-12-15 14:35:59', '2110-01-01 12:01:29');
INSERT INTO `menu` VALUES ('1001002', 'ҳ��Ȩ��', '2', '1001', 'Ȩ�޹���->ҳ��Ȩ��', 'null', 'Y', 'Y', 'Y', '2017-12-15 14:40:07', '2017-12-15 14:40:09', '2110-01-01 12:01:29');
INSERT INTO `menu` VALUES ('1001003', '��ťȨ��', '2', '1001', 'Ȩ�޹���->��ťȨ��', 'null', 'Y', 'Y', 'Y', '2017-12-17 09:00:18', '2017-12-17 09:00:23', '2110-01-01 12:01:29');
INSERT INTO `menu` VALUES ('1002001', '��ʦ��Ϣ', '2', '1002', '��Ϣ����->��ʦ��Ϣ', 'null', 'Y', 'N', 'Y', '2017-12-15 14:41:03', '2017-12-15 14:41:00', '2110-01-01 12:01:29');
INSERT INTO `menu` VALUES ('1002002', 'ѧ����Ϣ', '2', '1002', '��Ϣ����->ѧ����Ϣ', 'null', 'Y', 'Y', 'Y', '2017-12-15 14:41:38', '2017-12-15 14:41:41', '2110-01-01 12:01:29');
INSERT INTO `menu` VALUES ('1002003', '�����û���Ϣ', '2', '1002', '��Ϣ����->�����û���Ϣ', 'null', 'Y', 'Y', 'Y', '2017-12-15 14:41:53', '2017-12-15 14:41:50', '2110-01-01 12:01:29');
INSERT INTO `menu` VALUES ('1003001', '��ʦ�����ɼ�', '2', '1003', '��Ч����->��ʦ�����ɼ�', 'null', 'Y', 'N', 'Y', '2017-12-17 08:57:54', '2017-12-17 08:58:04', '2110-01-01 12:01:29');
INSERT INTO `menu` VALUES ('1003002', 'ѧ���ɼ�', '2', '1003', '��Ч����->ѧ���ɼ�', 'mainpage/studentsore', 'Y', 'Y', 'Y', '2017-12-17 08:55:54', '2017-12-17 08:56:03', '2110-01-01 12:01:29');
INSERT INTO `menu` VALUES ('1004001', 'ҳ������', '2', '1004', '��������->ҳ������', 'null', 'Y', 'Y', 'Y', '2017-12-17 10:24:53', '2017-12-17 10:24:55', '2017-12-21 10:24:59');

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
INSERT INTO `permissions_type` VALUES ('1', '��Ȩ', 'mKMVwPxxl6cIOO7rR0xaBg==');
INSERT INTO `permissions_type` VALUES ('2', '¼��', 'yVIRpUCgVw6MSwKCuE7lKA==');
INSERT INTO `permissions_type` VALUES ('3', '�޸�', 'g0epJ8CaTsL+RzsKk/Zn0A==');
INSERT INTO `permissions_type` VALUES ('4', '��ѯ', 'vukS157vtzNZiMSZeqkTjQ==');
INSERT INTO `permissions_type` VALUES ('5', 'ɾ��', 'L0qt3eM8m5PDb9JQPz0SKw==');

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
INSERT INTO `role` VALUES ('1', '��������Ա', 'ӵ������Ȩ��', '1,2,3,4,5', '2', '2');
INSERT INTO `role` VALUES ('2', 'һ������Ա', 'ӵ��¼�롢�޸ġ���ѯ��ɾ��Ȩ��', '2,3,4,5', '20', '1');
INSERT INTO `role` VALUES ('3', '��������Ա', 'ӵ���޸ġ���ѯ��ɾ��Ȩ��', '3,4,5', '50', '1');
INSERT INTO `role` VALUES ('4', '��������Ա', 'ӵ���޸ġ���ѯȨ��', '3,4', '2000', '1');
INSERT INTO `role` VALUES ('5', '�ļ�����Ա', 'ӵ�в�ѯȨ��', '4', '5000', '1');

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
  `score_team` enum('�ڶ�ѧ��','��һѧ��') NOT NULL,
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
INSERT INTO `score` VALUES ('1', '96', '37', '1440121160', '10001002', '10001003', '2017-12-16 20:53:45', '��һѧ��');
INSERT INTO `score` VALUES ('2', '99', '11', '1440121160', '10001001', '10001003', '2017-12-16 20:52:47', '��һѧ��');
INSERT INTO `score` VALUES ('3', '97', '23', '1440121160', '10001003', '10001001', '2017-12-16 20:53:09', '��һѧ��');
INSERT INTO `score` VALUES ('4', '85', '52', '1440121160', '10001002', '10001001', '2017-12-16 20:53:38', '��һѧ��');
INSERT INTO `score` VALUES ('7', '58', '11', '1440121156', '10001001', '10001002', '2017-12-18 23:29:59', '��һѧ��');
INSERT INTO `score` VALUES ('8', '78', '11', '1440121156', '10001002', '10001001', '2017-12-17 20:30:22', '�ڶ�ѧ��');
INSERT INTO `score` VALUES ('9', '99', '59', '1440121160', '10001001', '10001002', '2017-12-18 23:30:50', '�ڶ�ѧ��');
INSERT INTO `score` VALUES ('10', '87', '23', '1440121156', '10001001', '10001002', '2017-12-14 00:00:00', '��һѧ��');
INSERT INTO `score` VALUES ('11', '97', '50', '1440121160', '10001003', '10001002', '2016-12-08 00:00:00', '��һѧ��');
INSERT INTO `score` VALUES ('13', '85', '16', '1440121156', '10001003', '10001002', '2018-01-30 00:00:00', '��һѧ��');

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
INSERT INTO `student_score` VALUES ('1', '1440121160', '���ٷ�', '10001001', '', 'N', null, '�������һ��', '����');
INSERT INTO `student_score` VALUES ('2', '1440121156', '������', '10001002', '', 'N', null, '�����������', '����');

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
INSERT INTO `subject` VALUES ('23', 'C++���Գ������I');
INSERT INTO `subject` VALUES ('37', 'C++���Գ������II');
INSERT INTO `subject` VALUES ('11', 'java����');
INSERT INTO `subject` VALUES ('51', 'JAVA�����Ӧ��');
INSERT INTO `subject` VALUES ('10', 'Linux����');
INSERT INTO `subject` VALUES ('52', 'WebLogic��ҵ����ά�뿪��');
INSERT INTO `subject` VALUES ('12', 'web��������');
INSERT INTO `subject` VALUES ('50', 'XML��ҵ��Ӧ�ÿ���');
INSERT INTO `subject` VALUES ('16', '�й����ִ�ʷ��Ҫ');
INSERT INTO `subject` VALUES ('45', '��ҵ��webӦ�ÿ���');
INSERT INTO `subject` VALUES ('21', '���½���');
INSERT INTO `subject` VALUES ('14', '�칫���');
INSERT INTO `subject` VALUES ('7', '��ѧ');
INSERT INTO `subject` VALUES ('5', '��ʷ');
INSERT INTO `subject` VALUES ('9', '����');
INSERT INTO `subject` VALUES ('20', '��ѧ����I');
INSERT INTO `subject` VALUES ('31', '��ѧ����II');
INSERT INTO `subject` VALUES ('35', '��ѧ����III');
INSERT INTO `subject` VALUES ('59', '��ѧ����IV');
INSERT INTO `subject` VALUES ('19', '��ѧ������������ I');
INSERT INTO `subject` VALUES ('29', '��ѧ������������ II');
INSERT INTO `subject` VALUES ('34', '��ѧ������������ II');
INSERT INTO `subject` VALUES ('15', '��ѧӢ�� I');
INSERT INTO `subject` VALUES ('27', '��ѧӢ�� II');
INSERT INTO `subject` VALUES ('43', '��ѧӢ�� IV');
INSERT INTO `subject` VALUES ('56', '��ҵ�봴ҵָ��');
INSERT INTO `subject` VALUES ('28', '���������� I');
INSERT INTO `subject` VALUES ('32', '���������� I');
INSERT INTO `subject` VALUES ('44', '���������� II');
INSERT INTO `subject` VALUES ('48', '���������� III');
INSERT INTO `subject` VALUES ('55', '���������� IV');
INSERT INTO `subject` VALUES ('25', '˼����������뷨�ɻ���');
INSERT INTO `subject` VALUES ('47', '����ϵͳ');
INSERT INTO `subject` VALUES ('4', '����');
INSERT INTO `subject` VALUES ('2', '��ѧ');
INSERT INTO `subject` VALUES ('38', '���ݿ�ϵͳԭ��');
INSERT INTO `subject` VALUES ('39', '���ݽṹ���㷨');
INSERT INTO `subject` VALUES ('42', 'ë��˼�����й���ɫ�������������ϵ����');
INSERT INTO `subject` VALUES ('8', '����');
INSERT INTO `subject` VALUES ('6', '����');
INSERT INTO `subject` VALUES ('30', '��ɢ��ѧI');
INSERT INTO `subject` VALUES ('33', '��ɢ��ѧII');
INSERT INTO `subject` VALUES ('46', '�ƶ��ն�Ӧ�ÿ���');
INSERT INTO `subject` VALUES ('26', '�ۺ���������');
INSERT INTO `subject` VALUES ('36', '����Ӧ�ü���');
INSERT INTO `subject` VALUES ('24', '��ҳ���');
INSERT INTO `subject` VALUES ('17', 'ְҵ���Ĺ滮');
INSERT INTO `subject` VALUES ('3', 'Ӣ��');
INSERT INTO `subject` VALUES ('22', '�������ѧ����');
INSERT INTO `subject` VALUES ('49', '��������ԭ��');
INSERT INTO `subject` VALUES ('53', '���ģʽ����');
INSERT INTO `subject` VALUES ('1', '����');
INSERT INTO `subject` VALUES ('13', '�������');
INSERT INTO `subject` VALUES ('57', '������̱�ҵʵϰ');
INSERT INTO `subject` VALUES ('58', '������̱�ҵ���');
INSERT INTO `subject` VALUES ('40', '������Ի���');
INSERT INTO `subject` VALUES ('54', '������Ӧ�ÿ���뿪��');
INSERT INTO `subject` VALUES ('41', '��������������');
INSERT INTO `subject` VALUES ('18', '�ߵ���ѧI(��)');

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
INSERT INTO `teacher_score` VALUES ('1', '10001001', '��ޱ', 'Linux����', '15200000000', '2017-12-15 08:45:16', '15200000000@139.com', null, 'N', null, '��һ');
INSERT INTO `teacher_score` VALUES ('2', '10001002', '�¼�ǿ', 'C++���Գ������I', '15200000000', '2017-12-15 08:46:20', '15200000000@139.com', null, 'N', null, '��һ');
INSERT INTO `teacher_score` VALUES ('3', '10001003', '������', 'C++���Գ������II', '15200000000', '2017-12-15 08:47:46', '15200000000@139.com', null, 'N', null, '���');

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
INSERT INTO `user` VALUES ('1', '1440121160', '���ٷ�', '1', 'JdVa0oOqQAr0ZMdtcTwHrQ==', '10000000000', '10000000000@139.com', '', 'N', null, '2017-12-15 22:46:51');
INSERT INTO `user` VALUES ('2', '1440121156', '������', '1', 'JdVa0oOqQAr0ZMdtcTwHrQ==', '10000000000', '10000000000@139.com', '', 'N', null, '2017-12-19 10:51:03');
INSERT INTO `user` VALUES ('3', '1440121155', '��ٻ', '4', 'JdVa0oOqQAr0ZMdtcTwHrQ==', '10000000000', '10000000000@139.com', '', 'N', null, '2017-12-17 23:56:45');
INSERT INTO `user` VALUES ('4', '1440121101', '���', '2', 'JdVa0oOqQAr0ZMdtcTwHrQ==', '10000000000', '10000000000@139.com', '', 'N', null, '2017-12-19 17:13:18');
INSERT INTO `user` VALUES ('5', '1440112245', '������', '3', 'JdVa0oOqQAr0ZMdtcTwHrQ==', '10000000000', '10000000000@139.com', '', 'N', null, '2017-12-19 17:21:43');
INSERT INTO `user` VALUES ('6', '1440121102', '��ʤ', '5', 'JdVa0oOqQAr0ZMdtcTwHrQ==', '10000000000', '10000000000@139.com', '', 'N', null, '2017-12-19 17:13:28');
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
