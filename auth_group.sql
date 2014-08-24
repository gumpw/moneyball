/*
Navicat MySQL Data Transfer

Source Server         : erp
Source Server Version : 50614
Source Host           : localhost:3306
Source Database       : moneyball

Target Server Type    : MYSQL
Target Server Version : 50614
File Encoding         : 65001

Date: 2014-08-17 14:41:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_copy`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_copy`;
CREATE TABLE `auth_group_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_copy
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions_copy`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions_copy`;
CREATE TABLE `auth_group_permissions_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `auth_group_permissions_copy_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissions_copy_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions_copy
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');

-- ----------------------------
-- Table structure for `auth_permission_copy`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission_copy`;
CREATE TABLE `auth_permission_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`),
  CONSTRAINT `auth_permission_copy_ibfk_1` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission_copy
-- ----------------------------
INSERT INTO `auth_permission_copy` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission_copy` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission_copy` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission_copy` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission_copy` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission_copy` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission_copy` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission_copy` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission_copy` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission_copy` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission_copy` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission_copy` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission_copy` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission_copy` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission_copy` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission_copy` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission_copy` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission_copy` VALUES ('18', 'Can delete session', '6', 'delete_session');

-- ----------------------------
-- Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$12000$XK3GfPkhRoOA$tXAKRmJl+JZL/RjkqznszOwcy/d/Id3dJSehYcglnMA=', '2014-07-29 13:24:51', '1', 'root', '', '', 'out_lier@126.com', '1', '1', '2014-07-29 13:24:51');

-- ----------------------------
-- Table structure for `auth_user_copy`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_copy`;
CREATE TABLE `auth_user_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_copy
-- ----------------------------
INSERT INTO `auth_user_copy` VALUES ('1', 'pbkdf2_sha256$12000$XK3GfPkhRoOA$tXAKRmJl+JZL/RjkqznszOwcy/d/Id3dJSehYcglnMA=', '2014-07-29 13:24:51', '1', 'root', '', '', 'out_lier@126.com', '1', '1', '2014-07-29 13:24:51');

-- ----------------------------
-- Table structure for `auth_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`),
  CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'log entry', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('2', 'permission', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('3', 'group', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('4', 'user', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'content type', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('6', 'session', 'sessions', 'session');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('lfbttbno6j389yi7h960nx8ttq0ifs1t', 'MmNjYjUzOWE0MTRlZTA1ZTczMTE1MWFmOWFlNjAzMDUyNzkzMmE1Mjp7ImVtYWlsIjoib3V0X2xpZXJAMTI2LmNvbSJ9', '2014-08-30 14:29:39');

-- ----------------------------
-- Table structure for `moneyball_account`
-- ----------------------------
DROP TABLE IF EXISTS `moneyball_account`;
CREATE TABLE `moneyball_account` (
  `id` int(11) NOT NULL,
  `userid` int(7) DEFAULT NULL,
  `account_type` varchar(10) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `init` double(30,0) DEFAULT NULL,
  `account_name` varchar(10) DEFAULT NULL,
  `bank` varchar(20) DEFAULT NULL,
  `suffix4` varchar(30) DEFAULT NULL,
  `deposit_type` int(1) DEFAULT NULL COMMENT '0,活期，1,定期',
  `note` varchar(100) DEFAULT NULL,
  `yield_rate` double(10,0) DEFAULT NULL,
  `limit` double(20,0) DEFAULT NULL COMMENT '欠款',
  `arrears` double(20,0) DEFAULT NULL,
  `has_fee` int(1) DEFAULT NULL COMMENT '0无，1有',
  `annualfee` int(5) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `repayment_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moneyball_account
-- ----------------------------

-- ----------------------------
-- Table structure for `moneyball_accounttype`
-- ----------------------------
DROP TABLE IF EXISTS `moneyball_accounttype`;
CREATE TABLE `moneyball_accounttype` (
  `id` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moneyball_accounttype
-- ----------------------------
INSERT INTO `moneyball_accounttype` VALUES ('1', '现金账户', 'cash');
INSERT INTO `moneyball_accounttype` VALUES ('2', '银行卡', 'dc');
INSERT INTO `moneyball_accounttype` VALUES ('3', '信用卡', 'cc');
INSERT INTO `moneyball_accounttype` VALUES ('4', '电子账户', 'e');
INSERT INTO `moneyball_accounttype` VALUES ('5', '投资账户', 'invest');

-- ----------------------------
-- Table structure for `moneyball_bank`
-- ----------------------------
DROP TABLE IF EXISTS `moneyball_bank`;
CREATE TABLE `moneyball_bank` (
  `code` varchar(10) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moneyball_bank
-- ----------------------------
INSERT INTO `moneyball_bank` VALUES ('ABC', '农业银行');
INSERT INTO `moneyball_bank` VALUES ('BCCB', '北京银行');
INSERT INTO `moneyball_bank` VALUES ('BJRCB', '北京农商行');
INSERT INTO `moneyball_bank` VALUES ('BOC', '中国银行');
INSERT INTO `moneyball_bank` VALUES ('BOS', '上海银行');
INSERT INTO `moneyball_bank` VALUES ('CBHB', '渤海银行');
INSERT INTO `moneyball_bank` VALUES ('CCB', '建设银行');
INSERT INTO `moneyball_bank` VALUES ('CEB', '光大银行');
INSERT INTO `moneyball_bank` VALUES ('CIB', '兴业银行');
INSERT INTO `moneyball_bank` VALUES ('CITIC', '中信银行');
INSERT INTO `moneyball_bank` VALUES ('CMB', '招商银行');
INSERT INTO `moneyball_bank` VALUES ('CMBC', '民生银行');
INSERT INTO `moneyball_bank` VALUES ('COMM', '交通银行');
INSERT INTO `moneyball_bank` VALUES ('CSCB', '长沙银行');
INSERT INTO `moneyball_bank` VALUES ('CZB', '浙商银行');
INSERT INTO `moneyball_bank` VALUES ('GDB', '广东发展银行');
INSERT INTO `moneyball_bank` VALUES ('GZCB', '广州市商业银行');
INSERT INTO `moneyball_bank` VALUES ('HCCB', '杭州银行');
INSERT INTO `moneyball_bank` VALUES ('HKBCHINA', '汉口银行');
INSERT INTO `moneyball_bank` VALUES ('HKBEA', '东亚银行');
INSERT INTO `moneyball_bank` VALUES ('HXB', '华夏银行');
INSERT INTO `moneyball_bank` VALUES ('ICBC', '工商银行');
INSERT INTO `moneyball_bank` VALUES ('NBCB', '宁波银行');
INSERT INTO `moneyball_bank` VALUES ('NJCB', '南京银行');
INSERT INTO `moneyball_bank` VALUES ('PSBC', '中国邮储银行');
INSERT INTO `moneyball_bank` VALUES ('SDB', '深圳发展银行');
INSERT INTO `moneyball_bank` VALUES ('SHRCB', '上海农村商业银行');
INSERT INTO `moneyball_bank` VALUES ('SNXS', '深圳农村商业银行');
INSERT INTO `moneyball_bank` VALUES ('SPDB', '浦发银行');
INSERT INTO `moneyball_bank` VALUES ('SZPAB', '平安银行');

-- ----------------------------
-- Table structure for `moneyball_billrecord`
-- ----------------------------
DROP TABLE IF EXISTS `moneyball_billrecord`;
CREATE TABLE `moneyball_billrecord` (
  `id` int(11) NOT NULL,
  `userid` int(7) DEFAULT NULL,
  `record_date` date DEFAULT NULL COMMENT '支出，收入，转账/存取，借款/报销，信用卡还款',
  `name` varchar(100) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `money` double(20,0) DEFAULT NULL,
  `type` int(1) DEFAULT NULL COMMENT '支出，收入，转账/存取，借款/报销，信用卡还款',
  `note` varchar(100) DEFAULT NULL,
  `auto_record` int(1) DEFAULT NULL COMMENT '开启，关闭',
  `in_account` int(11) DEFAULT NULL,
  `out_account` int(11) DEFAULT NULL,
  `credit_card` varchar(30) DEFAULT NULL,
  `repayment_id` int(11) DEFAULT NULL,
  `clear` int(1) DEFAULT NULL,
  `pay_account` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moneyball_billrecord
-- ----------------------------

-- ----------------------------
-- Table structure for `moneyball_city`
-- ----------------------------
DROP TABLE IF EXISTS `moneyball_city`;
CREATE TABLE `moneyball_city` (
  `CityID` int(11) NOT NULL AUTO_INCREMENT,
  `CityName` varchar(50) NOT NULL,
  `ProID` int(11) DEFAULT NULL,
  `CitySort` int(11) DEFAULT NULL,
  `Initial` varchar(2) DEFAULT NULL,
  `WeaId` int(11) DEFAULT NULL,
  `lng` varchar(30) DEFAULT NULL,
  `lat` varchar(30) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `visibleFlag` char(1) NOT NULL COMMENT '显示标示',
  PRIMARY KEY (`CityID`)
) ENGINE=InnoDB AUTO_INCREMENT=372 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moneyball_city
-- ----------------------------
INSERT INTO `moneyball_city` VALUES ('1', '北京市', '1', '1', 'B', '101010100', '116.404', '39.915', '0', '1');
INSERT INTO `moneyball_city` VALUES ('2', '天津市', '2', '2', 'T', '101030100', '117.404', '33.869', '1', '0');
INSERT INTO `moneyball_city` VALUES ('3', '上海市', '9', '3', 'S', '101020100', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('4', '重庆市', '27', '4', 'C', '101040100', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('5', '邯郸市', '3', '34', 'H', '101091001', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('6', '石家庄市', '3', '45', 'S', '101090101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('7', '保定市', '3', '33', 'B', '101090201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('8', '张家口市', '3', '45', 'Z', '101090301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('9', '承德市', '3', '44', 'C', '101090402', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('10', '唐山市', '3', '23', 'T', '101090501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('11', '廊坊市', '3', '54', 'L', '101090601', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('12', '沧州市', '3', '65', 'C', '101090701', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('13', '衡水市', '3', '23', 'H', '101090801', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('14', '邢台市', '3', '45', 'X', '101090901', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('15', '秦皇岛市', '3', '23', 'Q', '101091101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('16', '朔州市', '4', '16', 'S', '101100901', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('17', '忻州市', '4', '17', 'X', '101101001', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('18', '太原市', '4', '18', 'T', '101100101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('19', '大同市', '4', '19', 'D', '101100201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('20', '阳泉市', '4', '20', 'Y', '101100301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('21', '晋中市', '4', '21', 'J', '101100401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('22', '长治市', '4', '22', 'C', '101100501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('23', '晋城市', '4', '23', 'J', '101100601', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('24', '临汾市', '4', '24', 'L', '101100701', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('25', '吕梁市', '4', '25', 'L', '101101100', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('26', '运城市', '4', '26', 'Y', '101100801', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('27', '沈阳市', '6', '27', 'S', '101070101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('28', '铁岭市', '6', '28', 'T', '101071101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('29', '大连市', '6', '29', 'D', '101070201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('30', '鞍山市', '6', '30', 'A', '101070301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('31', '抚顺市', '6', '31', 'F', '101070401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('32', '本溪市', '6', '32', 'B', '101070501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('33', '丹东市', '6', '33', 'D', '101070601', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('34', '锦州市', '6', '34', 'J', '101070701', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('35', '营口市', '6', '35', 'Y', '101070801', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('36', '阜新市', '6', '36', 'F', '101070901', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('37', '辽阳市', '6', '37', 'L', '101071001', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('38', '朝阳市', '6', '38', 'C', '101071201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('39', '盘锦市', '6', '39', 'P', '101071301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('40', '葫芦岛市', '6', '40', 'H', '101071401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('41', '长春市', '7', '41', 'C', '101060101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('42', '吉林市', '7', '42', 'J', '101060201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('43', '延边朝鲜族自治州', '7', '43', 'Y', '101060301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('44', '四平市', '7', '44', 'S', '101060401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('45', '通化市', '7', '45', 'T', '101060501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('46', '白城市', '7', '46', 'B', '101060601', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('47', '辽源市', '7', '47', 'L', '101060701', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('48', '松原市', '7', '48', 'S', '101060801', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('49', '白山市', '7', '49', 'B', '101060901', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('50', '哈尔滨市', '8', '50', 'H', '101050101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('51', '齐齐哈尔市', '8', '51', 'Q', '101050201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('52', '鸡西市', '8', '52', 'J', '101051101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('53', '牡丹江市', '8', '53', 'M', '101050301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('54', '七台河市', '8', '54', 'Q', '101051002', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('55', '佳木斯市', '8', '55', 'J', '101050401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('56', '鹤岗市', '8', '56', 'H', '101051201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('57', '双鸭山市', '8', '57', 'S', '101051301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('58', '绥化市', '8', '58', 'S', '101050501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('59', '黑河市', '8', '59', 'H', '101050601', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('60', '大兴安岭地区', '8', '60', 'D', '101050701', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('61', '伊春市', '8', '61', 'Y', '101050801', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('62', '大庆市', '8', '62', 'D', '101050901', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('63', '南京市', '10', '4', 'N', '101190101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('64', '无锡市', '10', '11', 'W', '101190201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('65', '镇江市', '10', '65', 'Z', '101190301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('66', '苏州市', '10', '10', 'S', '101190401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('67', '南通市', '10', '67', 'N', '101190501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('68', '扬州市', '10', '68', 'Y', '101190601', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('69', '盐城市', '10', '69', 'Y', '101190701', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('70', '徐州市', '10', '70', 'X', '101190801', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('71', '淮安市', '10', '71', 'H', '101190901', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('72', '连云港市', '10', '72', 'L', '101191001', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('73', '常州市', '10', '73', 'C', '101191101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('74', '泰州市', '10', '74', 'T', '101191201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('75', '宿迁市', '10', '75', 'S', '101191301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('76', '舟山市', '11', '76', 'Z', '101211101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('77', '衢州市', '11', '77', 'Q', '101211001', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('78', '杭州市', '11', '5', 'H', '101210101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('79', '湖州市', '11', '79', 'H', '101210201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('80', '嘉兴市', '11', '80', 'J', '101210301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('81', '宁波市', '11', '81', 'N', '101210401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('82', '绍兴市', '11', '82', 'S', '101210501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('83', '温州市', '11', '83', 'W', '101210701', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('84', '丽水市', '11', '84', 'L', '101210801', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('85', '金华市', '11', '85', 'J', '101210901', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('86', '台州市', '11', '86', 'T', '101210601', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('87', '合肥市', '12', '6', 'H', '101220101', '117.299', '31.869', '0', '1');
INSERT INTO `moneyball_city` VALUES ('88', '芜湖市', '12', '88', 'W', '101220301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('89', '蚌埠市', '12', '89', 'B', '101220201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('90', '淮南市', '12', '90', 'H', '101220401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('91', '马鞍山市', '12', '91', 'M', '101220501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('92', '淮北市', '12', '92', 'H', '101221201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('93', '铜陵市', '12', '93', 'T', '101221301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('94', '安庆市', '12', '94', 'A', '101220601', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('95', '黄山市', '12', '95', 'H', '101221001', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('96', '滁州市', '12', '96', 'C', '101221101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('97', '阜阳市', '12', '97', 'F', '101220801', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('98', '宿州市', '12', '98', 'S', '101220701', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('99', '巢湖市', '12', '99', 'C', '101221601', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('100', '六安市', '12', '100', 'L', '101221501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('101', '亳州市', '12', '101', 'B', '101220901', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('102', '池州市', '12', '102', 'C', '101221701', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('103', '宣城市', '12', '103', 'X', '101221401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('104', '福州市', '13', '13', 'F', '101230101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('105', '厦门市', '13', '105', 'X', '101230201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('106', '宁德市', '13', '106', 'N', '101230301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('107', '莆田市', '13', '107', 'P', '101230401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('108', '泉州市', '13', '108', 'Q', '101230501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('109', '漳州市', '13', '109', 'Z', '101230601', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('110', '龙岩市', '13', '110', 'L', '101230701', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('111', '三明市', '13', '111', 'S', '101230801', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('112', '南平市', '13', '112', 'N', '101230901', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('113', '鹰潭市', '14', '113', 'Y', '101241101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('114', '新余市', '14', '114', 'X', '101241001', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('115', '南昌市', '14', '115', 'N', '101240101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('116', '九江市', '14', '116', 'J', '101240201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('117', '上饶市', '14', '117', 'S', '101240301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('118', '抚州市', '14', '118', 'F', '101240401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('119', '宜春市', '14', '119', 'Y', '101240501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('120', '吉安市', '14', '120', 'J', '101240601', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('121', '赣州市', '14', '121', 'G', '101240701', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('122', '景德镇市', '14', '122', 'J', '101240801', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('123', '萍乡市', '14', '123', 'P', '101240901', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('124', '菏泽市', '15', '124', 'H', '101121001', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('125', '济南市', '15', '125', 'J', '101120101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('126', '青岛市', '15', '8', 'Q', '101120201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('127', '淄博市', '15', '127', 'Z', '101120301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('128', '德州市', '15', '128', 'D', '101120401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('129', '烟台市', '15', '129', 'Y', '101120501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('130', '潍坊市', '15', '130', 'W', '101120601', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('131', '济宁市', '15', '131', 'J', '101120701', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('132', '泰安市', '15', '132', 'T', '101120801', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('133', '临沂市', '15', '133', 'L', '101120901', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('134', '滨州市', '15', '134', 'B', '101121101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('135', '东营市', '15', '135', 'D', '101121201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('136', '威海市', '15', '136', 'W', '101121301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('137', '枣庄市', '15', '137', 'Z', '101121401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('138', '日照市', '15', '138', 'R', '101121501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('139', '莱芜市', '15', '139', 'L', '101121601', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('140', '聊城市', '15', '140', 'L', '101121701', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('141', '商丘市', '16', '141', 'S', '101181001', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('142', '郑州市', '16', '142', 'Z', '101180101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('143', '安阳市', '16', '143', 'A', '101180201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('144', '新乡市', '16', '144', 'X', '101180301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('145', '许昌市', '16', '145', 'X', '101180401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('146', '平顶山市', '16', '146', 'P', '101180501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('147', '信阳市', '16', '147', 'X', '101180601', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('148', '南阳市', '16', '148', 'N', '101180701', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('149', '开封市', '16', '149', 'K', '101180801', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('150', '洛阳市', '16', '150', 'L', '101180901', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('151', '济源市', '16', '151', 'J', '101181801', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('152', '焦作市', '16', '152', 'J', '101181101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('153', '鹤壁市', '16', '153', 'H', '101181201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('154', '濮阳市', '16', '154', 'P', '101181301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('155', '周口市', '16', '155', 'Z', '101181401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('156', '漯河市', '16', '156', 'L', '101181501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('157', '驻马店市', '16', '157', 'Z', '101181601', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('158', '三门峡市', '16', '158', 'S', '101181701', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('159', '武汉市', '17', '9', 'W', '101200101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('160', '襄樊市', '17', '160', 'X', '101200201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('161', '鄂州市', '17', '161', 'E', '101200301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('162', '孝感市', '17', '162', 'X', '101200401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('163', '黄冈市', '17', '163', 'H', '101200501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('164', '黄石市', '17', '164', 'H', '101200601', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('165', '咸宁市', '17', '165', 'X', '101200701', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('166', '荆州市', '17', '166', 'J', '101200801', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('167', '宜昌市', '17', '167', 'Y', '101200901', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('168', '恩施土家族苗族自治州', '17', '168', 'E', '101201001', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('169', '神农架林区', '17', '169', 'S', '101201201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('170', '十堰市', '17', '170', 'S', '101201101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('171', '随州市', '17', '171', 'S', '101201301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('172', '荆门市', '17', '172', 'J', '101200801', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('173', '仙桃市', '17', '173', 'T', '101201601', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('174', '天门市', '17', '174', 'T', '101201501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('175', '潜江市', '17', '175', 'Q', '101201701', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('176', '岳阳市', '18', '176', 'Y', '101251001', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('177', '长沙市', '18', '177', 'C', '101250101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('178', '湘潭市', '18', '178', 'X', '101250201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('179', '株洲市', '18', '179', 'Z', '101250301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('180', '衡阳市', '18', '180', 'H', '101250401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('181', '郴州市', '18', '181', 'C', '101250501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('182', '常德市', '18', '182', 'C', '101250601', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('183', '益阳市', '18', '183', 'Y', '101250700', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('184', '娄底市', '18', '184', 'L', '101250801', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('185', '邵阳市', '18', '185', 'S', '101250901', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('186', '湘西土家族苗族自治州', '18', '186', 'X', '101251501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('187', '张家界市', '18', '187', 'Z', '101251101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('188', '怀化市', '18', '188', 'H', '101251201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('189', '永州市', '18', '189', 'Y', '101251401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('190', '广州市', '19', '190', 'G', '101280101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('191', '汕尾市', '19', '191', 'C', '101282101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('192', '阳江市', '19', '192', 'Y', '101281801', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('193', '揭阳市', '19', '193', 'J', '101281901', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('194', '茂名市', '19', '194', 'M', '101282001', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('195', '惠州市', '19', '195', 'H', '101280301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('196', '江门市', '19', '196', 'J', '101281101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('197', '韶关市', '19', '197', 'S', '101280201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('198', '梅州市', '19', '198', 'M', '101280401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('199', '汕头市', '19', '199', 'S', '101280501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('200', '深圳市', '19', '200', 'S', '101280601', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('201', '珠海市', '19', '201', 'Z', '101280701', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('202', '佛山市', '19', '202', 'F', '101280800', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('203', '肇庆市', '19', '203', 'Z', '101280901', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('204', '湛江市', '19', '204', 'Z', '101281001', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('205', '中山市', '19', '205', 'Z', '101281701', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('206', '河源市', '19', '206', 'H', '101281201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('207', '清远市', '19', '207', 'Q', '101281301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('208', '云浮市', '19', '208', 'Y', '101281401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('209', '潮州市', '19', '209', 'C', '101281501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('210', '东莞市', '19', '210', 'D', '101281601', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('211', '兰州市', '22', '211', 'L', '101160101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('212', '金昌市', '22', '212', 'J', '101160601', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('213', '白银市', '22', '213', 'B', '101161301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('214', '天水市', '22', '214', 'T', '101160901', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('215', '嘉峪关市', '22', '215', 'J', '101161401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('216', '武威市', '22', '216', 'W', '101160501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('217', '张掖市', '22', '217', 'Z', '101160701', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('218', '平凉市', '22', '218', 'P', '101160301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('219', '酒泉市', '22', '219', 'J', '101160801', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('220', '庆阳市', '22', '220', 'Q', '101160401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('221', '定西市', '22', '221', 'D', '101160201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('222', '陇南市', '22', '222', 'L', '101161001', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('223', '临夏回族自治州', '22', '223', 'L', '101161101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('224', '甘南藏族自治州', '22', '224', 'G', '101161201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('225', '成都市', '28', '225', 'C', '101270101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('226', '攀枝花市', '28', '226', 'P', '101270201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('227', '自贡市', '28', '227', 'Z', '101270301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('228', '绵阳市', '28', '228', 'M', '101270401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('229', '南充市', '28', '229', 'N', '101270501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('230', '达州市', '28', '230', 'D', '101270601', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('231', '遂宁市', '28', '231', 'S', '101270701', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('232', '广安市', '28', '232', 'G', '101270801', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('233', '巴中市', '28', '233', 'B', '101270901', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('234', '泸州市', '28', '234', 'L', '101271001', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('235', '宜宾市', '28', '235', 'Y', '101271101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('236', '资阳市', '28', '236', 'Z', '101271301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('237', '内江市', '28', '237', 'N', '101271201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('238', '乐山市', '28', '238', 'L', '101271401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('239', '眉山市', '28', '239', 'M', '101271501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('240', '凉山彝族自治州', '28', '240', 'L', '101271601', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('241', '雅安市', '28', '241', 'Y', '101271701', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('242', '甘孜藏族自治州', '28', '242', 'G', '101271801', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('243', '阿坝藏族羌族自治州', '28', '243', 'A', '101271901', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('244', '德阳市', '28', '244', 'D', '101272001', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('245', '广元市', '28', '245', 'G', '101272101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('246', '贵阳市', '29', '246', 'G', '101260101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('247', '遵义市', '29', '247', 'Z', '101260201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('248', '安顺市', '29', '248', 'A', '101260201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('249', '黔南布依族苗族自治州', '29', '249', 'Q', '101260401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('250', '黔东南苗族侗族自治州', '29', '250', 'Q', '101260501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('251', '铜仁地区', '29', '251', 'T', '101260601', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('252', '毕节地区', '29', '252', 'B', '101260701', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('253', '六盘水市', '29', '253', 'L', '101260801', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('254', '黔西南布依族苗族自治州', '29', '254', 'Q', '101260906', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('255', '海口市', '20', '255', 'H', '101310101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('256', '三亚市', '20', '256', 'S', '101310201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('257', '五指山市', '20', '257', 'W', '101310222', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('258', '琼海市', '20', '258', 'Q', '101310211', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('259', '儋州市', '20', '259', 'D', '101310205', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('260', '文昌市', '20', '260', 'W', '101310212', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('261', '万宁市', '20', '261', 'W', '101310215', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('262', '东方市', '20', '262', 'D', '101310202', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('263', '澄迈县', '20', '263', 'C', '101310204', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('264', '定安县', '20', '264', 'D', '101310209', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('265', '屯昌县', '20', '265', 'T', '101310210', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('266', '临高县', '20', '266', 'L', '101310203', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('267', '白沙黎族自治县', '20', '267', 'B', null, null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('268', '昌江黎族自治县', '20', '268', 'C', null, null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('269', '乐东黎族自治县', '20', '269', 'L', null, null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('270', '陵水黎族自治县', '20', '270', 'L', null, null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('271', '保亭黎族苗族自治县', '20', '271', 'B', null, null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('272', '琼中黎族苗族自治县', '20', '272', 'Q', null, null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('273', '西双版纳傣族自治州', '30', '273', 'X', null, null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('274', '德宏傣族景颇族自治州', '30', '274', 'D', null, null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('275', '昭通市', '30', '275', 'Z', null, null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('276', '昆明市', '30', '276', 'K', '101290101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('277', '大理白族自治州', '30', '277', 'D', '101290201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('278', '红河哈尼族彝族自治州', '30', '278', 'H', '101290301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('279', '曲靖市', '30', '279', 'Q', '101290401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('280', '保山市', '30', '280', 'B', '101290501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('281', '文山壮族苗族自治州', '30', '281', 'W', '101290601', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('282', '玉溪市', '30', '282', 'Y', '101290701', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('283', '楚雄彝族自治州', '30', '283', 'C', '101290801', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('284', '普洱市', '30', '284', 'P', '101290901', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('285', '临沧市', '30', '285', 'L', '101291101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('286', '怒江傈傈族自治州', '30', '286', 'N', '101291201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('287', '迪庆藏族自治州', '30', '287', 'D', null, null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('288', '丽江市', '30', '288', 'L', '101291401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('289', '海北藏族自治州', '25', '289', 'H', null, null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('290', '西宁市', '25', '290', 'X', '101150101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('291', '海东地区', '25', '291', 'H', '101150201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('292', '黄南藏族自治州', '25', '292', 'H', '101150301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('293', '海南藏族自治州', '25', '293', 'H', '101150401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('294', '果洛藏族自治州', '25', '294', 'G', '101150501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('295', '玉树藏族自治州', '25', '295', 'Y', '101150601', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('296', '海西蒙古族藏族自治州', '25', '296', 'H', '101150701', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('297', '西安市', '23', '297', 'X', '101110101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('298', '咸阳市', '23', '298', 'X', '101110200', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('299', '延安市', '23', '299', 'Y', '101110300', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('300', '榆林市', '23', '300', 'Y', '101110401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('301', '渭南市', '23', '301', 'W', '101110501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('302', '商洛市', '23', '302', 'S', '101110601', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('303', '安康市', '23', '303', 'A', '101110701', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('304', '汉中市', '23', '304', 'H', '101110801', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('305', '宝鸡市', '23', '305', 'B', '101110901', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('306', '铜川市', '23', '306', 'T', '101111001', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('307', '防城港市', '21', '307', 'F', '101301401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('308', '南宁市', '21', '308', 'N', '101300101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('309', '崇左市', '21', '309', 'C', '101300201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('310', '来宾市', '21', '310', 'L', '101300401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('311', '柳州市', '21', '311', 'L', '101300301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('312', '桂林市', '21', '312', 'G', '101300501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('313', '梧州市', '21', '313', 'W', '101300601', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('314', '贺州市', '21', '314', 'H', '101300701', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('315', '贵港市', '21', '315', 'G', '101300801', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('316', '玉林市', '21', '316', 'Y', '101300901', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('317', '百色市', '21', '317', 'B', '101301001', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('318', '钦州市', '21', '318', 'Q', '101301101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('319', '河池市', '21', '319', 'H', '101301201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('320', '北海市', '21', '320', 'B', '101301301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('321', '拉萨市', '31', '321', 'L', '101140101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('322', '日喀则地区', '31', '322', 'R', '101140201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('323', '山南地区', '31', '323', 'S', '101140301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('324', '林芝地区', '31', '324', 'L', '101140401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('325', '昌都地区', '31', '325', 'C', '101140501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('326', '那曲地区', '31', '326', 'N', '101140601', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('327', '阿里地区', '31', '327', 'A', '101140701', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('328', '银川市', '26', '328', 'Y', '101170101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('329', '石嘴山市', '26', '329', 'S', '101170201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('330', '吴忠市', '26', '330', 'W', '101170301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('331', '固原市', '26', '331', 'G', '101170401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('332', '中卫市', '26', '332', 'Z', '101170501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('333', '塔城地区', '24', '333', 'T', '101131101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('334', '哈密地区', '24', '334', 'H', '101131201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('335', '和田地区', '24', '335', 'H', '101131301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('336', '阿勒泰地区', '24', '336', 'A', '101131401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('337', '克孜勒苏柯尔克孜自治州', '24', '337', 'K', null, null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('338', '博尔塔拉蒙古自治州', '24', '338', 'B', null, null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('339', '克拉玛依市', '24', '339', 'K', '101130201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('340', '乌鲁木齐市', '24', '340', 'W', '101130101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('341', '石河子市', '24', '341', 'S', '101130301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('342', '昌吉回族自治州', '24', '342', 'C', '101130401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('343', '五家渠市', '24', '343', 'W', null, null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('344', '吐鲁番地区', '24', '344', 'T', '101130501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('345', '巴音郭楞蒙古自治州', '24', '345', 'B', null, null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('346', '阿克苏地区', '24', '346', 'A', '101130801', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('347', '阿拉尔市', '24', '347', 'A', '101130701', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('348', '喀什地区', '24', '348', 'G', '101130901', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('349', '图木舒克市', '24', '349', 'T', null, null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('350', '伊犁哈萨克自治州', '24', '350', 'Y', null, null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('351', '呼伦贝尔市', '5', '351', 'H', '101081000', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('352', '呼和浩特市', '5', '352', 'H', '101080101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('353', '包头市', '5', '353', 'B', '101080201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('354', '乌海市', '5', '354', 'W', '101080301', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('355', '乌兰察布市', '5', '355', 'W', null, null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('356', '通辽市', '5', '356', 'T', '101080501', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('357', '赤峰市', '5', '357', 'C', '101080601', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('358', '鄂尔多斯市', '5', '358', 'E', '101080701', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('359', '巴彦淖尔市', '5', '359', 'B', null, null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('360', '锡林郭勒盟', '5', '360', 'X', null, null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('361', '兴安盟', '5', '361', 'X', null, null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('362', '阿拉善盟', '5', '362', 'A', null, null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('363', '台北市', '32', '363', 'T', '101340101', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('364', '高雄市', '32', '364', 'G', '101340201', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('365', '基隆市', '32', '365', 'J', null, null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('366', '台中市', '32', '366', 'T', '101340401', null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('367', '台南市', '32', '367', 'T', null, null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('368', '新竹市', '32', '368', 'X', null, null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('369', '嘉义市', '32', '369', 'J', null, null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('370', '澳门特别行政区', '33', '370', 'A', null, null, null, '1', '0');
INSERT INTO `moneyball_city` VALUES ('371', '香港特别行政区', '34', '371', 'X', null, null, null, '1', '0');

-- ----------------------------
-- Table structure for `moneyball_description`
-- ----------------------------
DROP TABLE IF EXISTS `moneyball_description`;
CREATE TABLE `moneyball_description` (
  `id` varchar(10) NOT NULL DEFAULT '',
  `detail` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moneyball_description
-- ----------------------------
INSERT INTO `moneyball_description` VALUES ('aggrement', '<div style=\"margin:40px;\">\r\n			<h1 style=\"text-align:center;margin-bottom:40px;\">火球网用户服务协议</h1>\r\n			<div><p class=\"MsoNormal\" align=\"left\">\r\n	本网站由北京玄铁科技有限公司负责运营（以下“本网站”均指网站及北京玄铁科技有限公司）。在您注册成为本网站用户前请务必仔细阅读以下条款。若您一旦注册，则表示您同意接受本网站的服务并受以下条款的约束。若您不接受以下条款，请您立即停止注册或主动停止使用本网站的服务。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	<strong>一、 本协议的签署和修订</strong><span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	1.1\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	本网站只接受持有中国有效身份证明的<span>18</span>周岁以上具有完全民事行为能力的自然人成为网站用户。如您不符合资格，请勿注册，否则本网站有权随时中止或终止您的用户资格。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	1.2\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	本协议内容包括以下条款及本网站已经发布的或将来可能发布的各类规则。所有规则为本协议不可分割的一部分，与协议正文具有同等法律效力。本协议是您与本网站共同签订的，适用于您在本网站的全部活动。在您注册成为用户时，您已经阅读、理解并接受本协议的全部条款及各类规则，并承诺遵守中国的各类法律规定，如有违反而导致任何法律后果的发生，您将以自己的名义独立承担所有相应的法律责任。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	1.3\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	本网站有权根据需要不时地修改本协议或根据本协议制定、修改各类具体规则并在本网站相关系统板块发布，无需另行单独通知您。您应不时地注意本协议及具体规则的变更，若您在本协议及具体规则内容公告变更后继续使用本服务的，表示您已充分阅读、理解并接受修改后的协议和具体规则内容，也将遵循修改后的协议和具体规则使用本网站的服务；同时就您在协议和具体规则修订前通过本网站进行的交易及其效力，视为您已同意并已按照本协议及有关规则进行了相应的授权和追认。若您不同意修改后的协议内容，您应停止使用本网站的服务。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	1.4\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	您通过自行或授权有关方根据本协议及本网站有关规则、说明操作确认本协议后，本协议即在您和本网站之间产生法律效力。本协议不涉及您与本网站的其他用户之间因网上交易而产生的法律关系或法律纠纷，但您在此同意将全面接受和履行与本网站其他用户在本网站签订的任何电子法律文本，并承诺按该等法律文本享有和<span>/</span>或放弃相应的权利、承担和<span>/</span>或豁免相应的义务。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	<strong>二、 服务的提供</strong><span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	2.1\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	本网站提供的服务包括但不限于：P2P理财搜索、网贷产品智能打分、原创理财攻略、提供火球计划债权转让服务等，具体详情以本网站当时提供的服务内容为准。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	2.2\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	基于运行和交易安全的需要，本网站可以暂时停止提供、限制或改变本网站服务的部分功能，或提供新的功能。在任何功能减少、增加或者变化时，只要您仍然使用本网站的服务，表示您仍然同意本协议或者变更后的协议。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	2.3\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	您确认，您在本网站上按本网站服务流程所确认的交易状态将成为本网站为您进行相关交易或操作（包括但不限于冻结资金、代为支付或收取款项、订立合同等）的明确指令。您同意本网站有权按相关指令依据本协议和<span>/</span>或有关文件和规则对相关事项进行处理。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	2.4\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	您未能及时对交易状态进行修改或确认或未能提交相关申请所引起的任何纠纷或损失由您本人负责，本网站不承担任何责任。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	<strong>三、 火球计划管理及费用</strong><span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	3.1\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	在您成功注册后，您可以自行或授权您的代理人根据本网站有关规则和说明，通过本网站确认签署有关协议并经本网站审核通过后<span class=\"msoIns\">加入</span><span class=\"msoIns\">火球计划</span>。详细操作规则及方式请见有关协议及本网站相关页面的规则和说明。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	3.2\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	本网站将为您<span class=\"msoIns\">加入、退出火球计划</span>或债权的转让、回收等交易提供服务，并在服务过程中根据有关文件、协议和<span>/</span>或本网站页面的相关规则、说明等收取必要的服务或管理费用，其具体内容、比例、金额等事项请参见有关文件及本网站相关页面的规则和说明。您同意，本网站有权不时调整前述服务或管理费用的类型或金额等具体事项并根据本协议和相关规则进行公告、修改。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	<strong>四、 火球计划资金管理</strong><span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	4.1\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	就您在本网站<span class=\"msoIns\">加入或退出火球计划</span>，本网站和<span>/</span>或本网站委托的第三方机构将为您提供“资金管理服务”，主要包括但不限于：资金的流出、收回、代收、代付、查询等。您可以通过本网站有关页面的具体规则或说明详细了解。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	4.2\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	您了解，上述服务涉及本网站与第三方支付机构或金融机构的合作。您同意：<span>(a) </span>受第三方支付机构或金融机构可能仅在工作日进行资金代扣及划转的现状等各种原因所限，本网站不对前述服务的资金到账时间做任何承诺，也不承担与此相关的责任，包括但不限于由此产生的利息、货币贬值等损失；<span>(b) </span>一经您使用前述服务，即表示您不可撤销地授权本网站进行相关操作，且该等操作是不可逆转的，您不能以任何理由拒绝付款或要求取消交易。就前述服务，您应按照有关文件及第三方支付机构或金融机构的规定支付第三方的费用，您与第三方之间就费用支付事项产生的争议或纠纷，与本网站无关。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	4.3\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	您保证并承诺您通过本网站平台进行交易的资金来源合法。您同意，本公司有权按照包括但不限于公安机关、检察机关、法院等司法机关、行政机关、军事机关的要求协助对您的账户及资金等进行查询、冻结或扣划等操作。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	4.4\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	本网站有权基于交易安全等方面的考虑不时设定涉及交易的相关事项，包括但不限于交易限额、交易次数等。您了解，本网站的前述设定可能会对您的交易造成一定不便，您对此没有异议。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	4.5\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	如果本网站发现了因系统故障或其他原因导致的处理错误，无论有利于本网站还是有利于您，本网站都有权在根据本协议规定通知您后纠正该错误。如果该错误导致您实际收到的金额少于您应获得的金额，则本网站在确认该处理错误后会尽快将您应收金额与实收金额之间的差额存入您的用户账户。如果该错误导致您实际收到的金额多于您应获得的金额，则无论错误的性质和原因为何，您都应及时根据本网站向您发出的有关纠正错误的通知的具体要求返还多收的款项或进行其他操作。您理解并同意，您因前述处理错误而多付或少付的款项均不计利息，本网站不承担因前述处理错误而导致的任何损失或责任（包括您可能因前述错误导致的利息、汇率等损失），但因本网站恶意而导致的处理错误除外。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	4.6\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	在任何情况下，对于您使用本网站服务过程中涉及由第三方提供相关服务的责任由该第三方承担，本网站不承担该等责任。因您自身的原因导致本网站服务无法提供或提供时发生任何错误而产生的任何损失或责任，由您自行负责，本网站不承担责任。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	<strong>五、 电子合同</strong><span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	5.1\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	在本网站平台交易需订立的协议采用电子合同方式，可以有一份或者多份并且每一份具有同等法律效力。您或您的代理人根据有关协议及本网站的相关规则在本网站确认签署的电子合同即视为您本人真实意愿并以您本人名义签署的合同，具有法律效力。您应妥善保管自己的账户密码等账户信息，您通过前述方式订立的电子合同对合同各方具有法律约束力，您不得以账户密码等账户信息被盗用或其他理由否认已订立的合同的效力或不按照该等合同履行相关义务。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	5.2\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	您根据本协议以及本网站的相关规则签署电子合同后，不得擅自修改该合同。本网站向您提供电子合同的保管查询、核对等服务，如对电子合同真伪或电子合同的内容有任何疑问，您可通过本网站的相关系统板块查阅有关合同并进行核对。如对此有任何争议，应以本网站记录的合同为准。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	<strong>六、 用户信息及隐私权保护</strong><span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	6.1\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	用户信息的提供、搜集及核实<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	6.1.1\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	您有义务在注册时提供自己的真实资料，并保证诸如电子邮件地址、联系电话、联系地址、邮政编码等内容的有效性、安全性和及时更新，以便本网站为您提供服务并与您进行及时、有效的联系。您应完全独自承担因通过这些联系方式无法与您取得联系而导致的您在使用本服务过程中遭受的任何损失或增加任何费用等不利后果。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	6.1.2\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	本网站可能自公开及私人资料来源收集您的额外资料，以更好地了解本网站用户，并为其度身订造本网站服务、解决争议和确保在网站进行交易的安全性。本网站仅收集本网站认为就此目的及达成该目的所必须的关于您的个人资料。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	6.1.3\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	您同意本网站可以自行或通过合作的第三方机构对您提交或本网站搜集的用户信息（包括但不限于您的个人身份证信息等）进行核实，并对获得的核实结果根据本协议及有关文件进行查看、使用和留存等操作。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	6.1.4\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	本网站按照您在本网站上的行为自动追踪关于您的某些资料。本网站利用这些资料进行有关本网站之用户的人口统计、兴趣及行为的内部研究，以更好地了解您以便向您和本网站的其他用户提供更好的服务。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	6.1.5\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	本网站在本网站的某些网页上使用诸如“<span>Cookies</span>”的资料收集装置。“<span>Cookies</span>”是设置在您的硬盘上的小档案，以协助本网站为您提供度身订造的服务。本网站亦提供某些只能通过使用“<span>Cookies</span>”才可得到的功能。本网站还利用“<span>Cookies</span>”使您能够在某段期间内减少输入密码的次数。“<span>Cookies</span>”还可以协助本网站提供专门针对您的兴趣而提供的资料。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	6.1.6\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	如果您将个人通讯信息（例如：手机短信、电邮或信件）交付给本网站，或如果其他用户或第三方向本网站发出关于您在本网站上的活动或登录事项的通讯信息，本网站可以将这些资料收集在您的专门档案中。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	6.2\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	用户信息的使用和披露<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	6.2.1\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	您同意本网站可使用关于您的个人资料（包括但不限于本网站持有的有关您的档案中的资料，及本网站从您目前及以前在本网站上的活动所获取的其他资料）以解决争议、对纠纷进行调停、确保在本网站进行安全交易，并执行本网站的服务协议及相关规则。本网站有时候可能调查多个用户以识别问题或解决争议，特别是本网站可审查您的资料以区分使用多个用户名或别名的用户。为限制在网站上的欺诈、非法或其他刑事犯罪活动，使本网站免受其害，您同意本网站可通过人工或自动程序对您的个人资料进行评价。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	6.2.2\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	您同意本网站可以使用您的个人资料以改进本网站的推广和促销工作、分析网站的使用率、改善本网站的内容和产品推广形式，并使本网站的网站内容、设计和服务更能符合用户的要求。这些使用能改善本网站的网页，以调整本网站的网页使其更能符合您的需求，从而使您在使用本网站服务时得到更为顺利、有效、安全及度身订造的交易体验。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	6.2.3\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	您同意本网站利用您的资料与您联络并（在某些情况下）向您传递针对您的兴趣而提供的信息，例如：有针对性的广告条、行政管理方面的通知、产品提供以及有关您使用本网站的通讯。您接受本协议即视为您同意收取这些资料。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	6.2.4\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	您注册成功后应妥善保管您的用户名和密码。您确认，无论是您还是您的代理人，用您的用户名和密码登录本网站后在本网站的一切行为均代表您并由您承担相应的法律后果。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	6.2.5\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	本网站对于您提供的、自行收集到的、经认证的个人信息将按照本协议及有关规则予以保护、使用或者披露。本网站将采用行业标准惯例以保护您的个人资料，但鉴于技术限制，本网站不能确保您的全部私人通讯及其他个人资料不会通过本协议中未列明的途径泄露出去。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	6.2.6\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	您使用本网站服务进行交易时，您即授权本公司将您的包括但不限于真实姓名、联系方式、信用状况等必要的个人信息和交易信息披露给与您交易的另一方或本网站的合作机构（仅限于本网站为完成拟向您提供的服务而合作的机构）。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	6.2.7\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	本网站有义务根据有关法律要求向司法机关和政府部门提供您的个人资料。在您未能按照与本协议、本网站有关规则或者与本网站其他用户签订的有关协议的约定履行自己应尽的义务时（包括但不限于当您作为借款人借款逾期或有其他违约时），本网站有权根据自己的判断、有关协议和规则、国家生效裁决文书或者与该笔交易有关的其他用户的合理请求披露您的个人资料（包括但不限于在本网站及互联网络上公布您的违法、违约行为，并有关将该内容记入任何与您相关的信用资料、档案或数据库），并且作为出借人的其他用户可以采取发布您的个人信息的方式追索债权或通过司法部门要求本网站提供相关资料，本网站对此不承担任何责任。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	6.3\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	您对其他用户信息的使用<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	6.3.1\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	在本网站提供的交易活动中，您无权要求本网站提供其他用户的个人资料，除非符合以下条件：<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	（<span>1</span>） 您已向法院起诉其他用户的在本网站活动中的违约行为；\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	（<span><span class=\"msoIns\">2</span></span>） 本网站被吊销营业执照、解散、清算、宣告破产或者其他有碍于您收回<span class=\"msoIns\">投入火球计划中的本金和</span>收益的情形。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	6.3.2\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	如您通过签署有关协议等方式获得其他用户的个人信息，您同意不将该等个人信息用于除向债权转让人追索债权以外的其他任何用途，除非该等信息根据适用的法律规定、被有管辖权的法院或政府部门要求披露。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	<strong>七、 不保证及使用限制</strong><span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	7.1\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	不保证<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	7.1.1\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	在任何情况下，本网站及其股东、创建人、高级职员、董事、代理人、关联公司、母公司、子公司和雇员（以下称“本网站方”）均不以任何明示或默示的方式对您使用本网站服务而产生的任何形式的直接或间接损失承担法律责任，包括但不限于资金损失、利润损失、营业中断损失等，无论您通过本网站形成的借贷关系是否适用本网站的风险备用金规则或者是否存在第三方担保，并且本网站方不保证网站内容的真实性、充分性、及时性、可靠性、完整性和有效性，并且免除任何由此引起的法律责任。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	7.1.2\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	本网站不能保证也没有义务保证第三方网站上的信息的真实性和有效性。您应按照第三方网站的服务协议使用第三方网站，而不是按照本协议。第三方网站的内容、产品、广告和其他任何信息均由您自行判断并承担风险，而与本网站无关。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	7.1.3\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	因为本网站或者涉及的第三方网站的设备、系统存在缺陷、黑客攻击、网络故障、电力中断、计算机病毒或其他不可抗力因素造成的损失，本网站均不负责赔偿，您的补救措施只能是与本网站协商终止本协议并停止使用本网站。但是，中国现行法律、法规另有规定的除外。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	7.2\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	使用限制<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	7.2.1\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	您承诺合法使用本网站提供的服务及网站内容。您不得利用本服务从事侵害他人合法权益之行为，不得在本网站从事任何可能违反中国的法律、法规、规章和政府规范性文件的行为或者任何未经授权的行为，如擅自进入本网站的未公开的系统、不正当的使用账号密码和网站的任何内容等。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	7.2.2\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	您不得使用本网站提供的服务或其他电子邮件转发服务发出垃圾邮件或其他可能违反本协议的内容。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	7.2.3\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	本网站没有义务监测网站内容，但是您确认并同意本网站有权不时地根据法律、法规、政府要求透露、修改或者删除必要的信息，以便更好地运营本网站并保护自身及本网站的其他合法用户。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	7.2.4\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	本网站中全部内容的版权均属于本网站所有，该等内容包括但不限于文本、数据、文章、设计、源代码、软件、图片、照片及其他全部信息（以下称“网站内容”）。网站内容受中华人民共和国著作权法及各国际版权公约的保护。未经本网站事先书面同意，您承诺不以任何方式、不以任何形式复制、模仿、传播、出版、公布、展示网站内容，包括但不限于电子的、机械的、复印的、录音录像的方式和形式等。您承认网站内容是属于本网站的财产。未经本网站书面同意，您亦不得将本网站包含的资料等任何内容镜像到任何其他网站或者服务器。任何未经授权对网站内容的使用均属于违法行为，本网站将追究您的法律责任。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	7.2.5\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	由于您违反本协议或任何法律、法规或侵害第三方的权利，而引起第三方对本网站提出的任何形式的索赔、要求、诉讼，本网站有权向您追偿相关损失，包括但不限于本网站的法律费用、名誉损失、及向第三方支付的补偿金等。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	八、 协议终止及账户的暂停、注销或终止<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	8.1\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	除非本网站终止本协议或者您申请终止本协议且经本网站同意，否则本协议始终有效。在您违反了本协议、相关规则，或在相关法律法规、政府部门的要求下，本网站有权通过站内信、电子邮件通知等方式终止本协议、关闭您的账户或者限制您使用本网站。但本网站的终止行为不能免除您根据本协议或在本网站生成的其他协议项下的还未履行完毕的义务。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	8.2\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	您若发现有第三人冒用或盗用您的用户账户及密码，或其他任何未经合法授权的情形，应立即以有效方式通知本网站，要求本网站暂停相关服务，否则由此产生的一切责任由您本人承担。同时，您理解本网站对您的请求采取行动需要合理期限，在此之前，本网站对第三人使用该服务所导致的损失不承担任何责任。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	8.3\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	您决定不再使用用户账户时，应首先清偿火球计划账户中所有应付款项（包括但不限于罚息、违约金、服务费、管理费等），再将用户账户中的可用款项（如有）全部提现或者向本网站发出其它合法的支付指令，并向本网站申请注销该用户账户，经本网站审核同意后可正式注销用户账户。会员死亡或被宣告死亡的，其在本协议项下的各项权利义务由其继承人承担。若会员丧失全部或部分民事权利能力或民事行为能力，本网站有权根据有效法律文书（包括但不限于生效的法院判决等）或其法定监护人的指示处置与用户账户相关的款项。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	8.4\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	本网站有权基于单方独立判断，在认为可能发生危害交易安全等情形时，不经通知而先行暂停、中断或终止向您提供本协议项下的全部或部分会员服务，并将注册资料移除或删除，且无需对您或任何第三方承担任何责任。前述情形包括但不限于：<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	（<span>1</span>） 本网站认为您提供的个人资料不具有真实性、有效性或完整性；<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	（<span>2</span>） 本网站发现异常交易或有疑义或有违法之虞时；<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	（<span>3</span>） 本网站认为您的账户涉嫌洗钱、套现、传销、被冒用或其他本网站认为有风险之情形；<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	（<span>4</span>） 本网站认为您已经违反本协议中规定的各类规则及精神；<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	（<span>5</span>） 本网站基于交易安全等原因，根据其单独判断需先行暂停、中断或终止向您提供本协议项下的全部或部分会员服务，并将注册资料移除或删除的其他情形。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	8.5\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	您同意在必要时，本网站无需进行事先通知即有权终止提供用户账户服务，并可能立即暂停、关闭或删除您的用户账户及该用户账户中的所有相关资料及档案，并将您滞留在这些账户的全部合法资金退回到您的银行账户。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	8.6\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	您同意，用户账户的暂停、中断或终止不代表您责任的终止，您仍应对您使用本网站服务期间的行为承担可能的违约或损害赔偿责任，同时本网站仍可保有您的相关信息。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	8.7\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	若您使用第三方网站账号注册本网站用户账户，则您应对您本网站用户账户所对应的第三方网站账号拥有合法的使用权，如您因故对该第三方网站账号丧失使用权的，则本网站可停止为您的该用户账户提供服务。但如该用户账户尚存有余额的，本网站将会为您妥善保管。此时，如您欲取回其原有余额，本网站将提供更换本网站账户名的服务，即您可把您原本网站账户下余额转移到您另外合法注册的本网站账户中；如因故无法自助完成更换账户名，您可以向本网站提出以银行账户接受原有资金的请求，经核验属实后，本网站可配合您将原有资金转移到以您真实姓名登记的银行账户下。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	九、 通知<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	本协议项下的通知如以公示方式作出，一经在本网站公示即视为已经送达。除此之外，其他向您个人发布的具有专属性的通知将由本网站向您在注册时提供的电子邮箱，或本网站在您的个人账户中为您设置的站内消息系统栏，或您在注册后在本网站绑定的手机发送，一经发送即视为已经送达。请您密切关注您的电子邮箱\r\n、站内消息系统栏中的邮件、信息及手机中的短信信息。您同意本网站出于向您提供服务之目的，可以向您的电子邮箱、站内消息系统栏和手机发送有关通知或提醒；若您不愿意接收，请在本网站相应系统板块进行设置。但您同时同意并确认，若您设置了不接收有关通知或提醒，则您有可能收不到该等通知信息，您不得以您未收到或未阅读该等通知信息主张相关通知未送达于您。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	十、 适用法律和管辖<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	因本网站所提供服务而产生的争议均适用中华人民共和国法律，并由本网站住所地的人民法院管辖。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	十一、 其他<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	本网站对本协议拥有最终的解释权。本协议及本网站有关页面的相关名词可互相引用参照，如有不同理解，则以本协议条款为准。此外，若本协议的部分条款被认定为无效或者无法实施时，本协议中的其他条款仍然有效。<span></span>\r\n</p></div>\r\n		</div>');

-- ----------------------------
-- Table structure for `moneyball_inoutcome`
-- ----------------------------
DROP TABLE IF EXISTS `moneyball_inoutcome`;
CREATE TABLE `moneyball_inoutcome` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `refer` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moneyball_inoutcome
-- ----------------------------
INSERT INTO `moneyball_inoutcome` VALUES ('1', '基本生活', '0', null);
INSERT INTO `moneyball_inoutcome` VALUES ('2', '餐饮饮食', '1', '1');
INSERT INTO `moneyball_inoutcome` VALUES ('3', '水果零食', '1', '1');
INSERT INTO `moneyball_inoutcome` VALUES ('4', '日常用品', '1', '1');
INSERT INTO `moneyball_inoutcome` VALUES ('5', '柴米油盐', '1', '1');
INSERT INTO `moneyball_inoutcome` VALUES ('6', '物业水电', '1', '1');
INSERT INTO `moneyball_inoutcome` VALUES ('7', '医药保健', '1', '1');
INSERT INTO `moneyball_inoutcome` VALUES ('8', '交通通讯', '0', null);
INSERT INTO `moneyball_inoutcome` VALUES ('9', '交通费', '1', '8');
INSERT INTO `moneyball_inoutcome` VALUES ('10', '话费网费', '1', '8');
INSERT INTO `moneyball_inoutcome` VALUES ('11', '养车费', '1', '8');
INSERT INTO `moneyball_inoutcome` VALUES ('12', '文化娱乐', '0', null);
INSERT INTO `moneyball_inoutcome` VALUES ('13', '旅游娱乐', '1', '12');
INSERT INTO `moneyball_inoutcome` VALUES ('14', '博彩彩票', '1', '12');
INSERT INTO `moneyball_inoutcome` VALUES ('15', '书报音像', '1', '12');
INSERT INTO `moneyball_inoutcome` VALUES ('16', '数码产品', '1', '12');
INSERT INTO `moneyball_inoutcome` VALUES ('17', '教育培训', '1', '12');
INSERT INTO `moneyball_inoutcome` VALUES ('18', '美容装扮', '0', null);
INSERT INTO `moneyball_inoutcome` VALUES ('19', '服务装扮', '1', '18');
INSERT INTO `moneyball_inoutcome` VALUES ('20', '化妆品美容', '1', '18');
INSERT INTO `moneyball_inoutcome` VALUES ('21', '人情往来', '0', null);
INSERT INTO `moneyball_inoutcome` VALUES ('22', '人际往来', '1', '21');
INSERT INTO `moneyball_inoutcome` VALUES ('23', '礼品礼金', '1', '21');
INSERT INTO `moneyball_inoutcome` VALUES ('24', '孝敬长辈', '1', '21');
INSERT INTO `moneyball_inoutcome` VALUES ('25', '其它支出', '0', null);
INSERT INTO `moneyball_inoutcome` VALUES ('26', '房产车产', '1', '25');
INSERT INTO `moneyball_inoutcome` VALUES ('27', '投资亏损', '1', '25');
INSERT INTO `moneyball_inoutcome` VALUES ('28', '电器家居', '1', '25');
INSERT INTO `moneyball_inoutcome` VALUES ('29', '其它杂项', '1', '25');
INSERT INTO `moneyball_inoutcome` VALUES ('30', '收入', '0', null);
INSERT INTO `moneyball_inoutcome` VALUES ('31', '工资', '1', '30');
INSERT INTO `moneyball_inoutcome` VALUES ('32', '奖金', '1', '30');
INSERT INTO `moneyball_inoutcome` VALUES ('33', '补助津贴', '1', '30');
INSERT INTO `moneyball_inoutcome` VALUES ('34', '公务报销', '1', '30');
INSERT INTO `moneyball_inoutcome` VALUES ('35', '投资收益', '1', '30');
INSERT INTO `moneyball_inoutcome` VALUES ('36', '其它收入', '1', '30');
INSERT INTO `moneyball_inoutcome` VALUES ('37', '利息收入', '1', '30');
INSERT INTO `moneyball_inoutcome` VALUES ('38', '债务往来', '0', null);
INSERT INTO `moneyball_inoutcome` VALUES ('39', '借出', '1', '38');
INSERT INTO `moneyball_inoutcome` VALUES ('40', '借入', '1', '38');
INSERT INTO `moneyball_inoutcome` VALUES ('41', '收款', '1', '38');
INSERT INTO `moneyball_inoutcome` VALUES ('42', '还款', '1', '38');
INSERT INTO `moneyball_inoutcome` VALUES ('43', '转账', '1', '38');

-- ----------------------------
-- Table structure for `moneyball_occupation`
-- ----------------------------
DROP TABLE IF EXISTS `moneyball_occupation`;
CREATE TABLE `moneyball_occupation` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `type` int(1) unsigned zerofill DEFAULT NULL COMMENT '0表示上层，1表示下层',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moneyball_occupation
-- ----------------------------
INSERT INTO `moneyball_occupation` VALUES ('1', '高新科技', '0');
INSERT INTO `moneyball_occupation` VALUES ('2', '互联网', '1');
INSERT INTO `moneyball_occupation` VALUES ('3', '电子商务', '1');
INSERT INTO `moneyball_occupation` VALUES ('4', '电子游戏', '1');
INSERT INTO `moneyball_occupation` VALUES ('5', '计算机软件', '1');
INSERT INTO `moneyball_occupation` VALUES ('6', '计算机硬件', '1');
INSERT INTO `moneyball_occupation` VALUES ('7', '信息传媒', '0');
INSERT INTO `moneyball_occupation` VALUES ('8', '出版业', '1');
INSERT INTO `moneyball_occupation` VALUES ('9', '电影录音', '1');
INSERT INTO `moneyball_occupation` VALUES ('10', '广播电视', '1');
INSERT INTO `moneyball_occupation` VALUES ('11', '通信', '1');
INSERT INTO `moneyball_occupation` VALUES ('12', '金融', '0');
INSERT INTO `moneyball_occupation` VALUES ('13', '银行', '1');
INSERT INTO `moneyball_occupation` VALUES ('14', '资本投资', '1');
INSERT INTO `moneyball_occupation` VALUES ('15', '证券投资', '1');
INSERT INTO `moneyball_occupation` VALUES ('16', '保险', '1');
INSERT INTO `moneyball_occupation` VALUES ('17', '信贷', '1');
INSERT INTO `moneyball_occupation` VALUES ('18', '财务', '1');
INSERT INTO `moneyball_occupation` VALUES ('19', '审计', '1');
INSERT INTO `moneyball_occupation` VALUES ('20', '服务业', '0');
INSERT INTO `moneyball_occupation` VALUES ('21', '法律', '1');
INSERT INTO `moneyball_occupation` VALUES ('22', '餐饮', '1');
INSERT INTO `moneyball_occupation` VALUES ('23', '酒店', '1');
INSERT INTO `moneyball_occupation` VALUES ('24', '旅游', '1');
INSERT INTO `moneyball_occupation` VALUES ('25', '广告', '1');
INSERT INTO `moneyball_occupation` VALUES ('26', '公关', '1');
INSERT INTO `moneyball_occupation` VALUES ('27', '景观', '1');
INSERT INTO `moneyball_occupation` VALUES ('28', '咨询分析', '1');
INSERT INTO `moneyball_occupation` VALUES ('29', '市场推广', '1');
INSERT INTO `moneyball_occupation` VALUES ('30', '人力资源', '1');
INSERT INTO `moneyball_occupation` VALUES ('31', '社工服务', '1');
INSERT INTO `moneyball_occupation` VALUES ('32', '养老服务', '1');
INSERT INTO `moneyball_occupation` VALUES ('33', '教育', '0');
INSERT INTO `moneyball_occupation` VALUES ('34', '高等教育', '1');
INSERT INTO `moneyball_occupation` VALUES ('35', '基础教育', '1');
INSERT INTO `moneyball_occupation` VALUES ('36', '职业教育', '1');
INSERT INTO `moneyball_occupation` VALUES ('37', '幼儿教育', '1');
INSERT INTO `moneyball_occupation` VALUES ('38', '特殊教育', '1');
INSERT INTO `moneyball_occupation` VALUES ('39', '培训', '1');
INSERT INTO `moneyball_occupation` VALUES ('40', '医疗服务', '0');
INSERT INTO `moneyball_occupation` VALUES ('41', '临床医疗', '1');
INSERT INTO `moneyball_occupation` VALUES ('42', '制药', '1');
INSERT INTO `moneyball_occupation` VALUES ('43', '保健', '1');
INSERT INTO `moneyball_occupation` VALUES ('44', '美容', '1');
INSERT INTO `moneyball_occupation` VALUES ('45', '医疗器材', '1');
INSERT INTO `moneyball_occupation` VALUES ('46', '生物工程', '1');
INSERT INTO `moneyball_occupation` VALUES ('47', '疗养服务', '1');
INSERT INTO `moneyball_occupation` VALUES ('48', '护理服务', '1');
INSERT INTO `moneyball_occupation` VALUES ('49', '艺术娱乐', '0');
INSERT INTO `moneyball_occupation` VALUES ('50', '创意艺术', '1');
INSERT INTO `moneyball_occupation` VALUES ('51', '体育健身', '1');
INSERT INTO `moneyball_occupation` VALUES ('52', '娱乐休闲', '1');
INSERT INTO `moneyball_occupation` VALUES ('53', '图书馆', '1');
INSERT INTO `moneyball_occupation` VALUES ('54', '博物馆', '1');
INSERT INTO `moneyball_occupation` VALUES ('55', '策展', '1');
INSERT INTO `moneyball_occupation` VALUES ('56', '博彩', '1');
INSERT INTO `moneyball_occupation` VALUES ('57', '制造加工', '0');
INSERT INTO `moneyball_occupation` VALUES ('58', '食品饮料业', '1');
INSERT INTO `moneyball_occupation` VALUES ('59', '纺织皮革业', '1');
INSERT INTO `moneyball_occupation` VALUES ('60', '服装业', '1');
INSERT INTO `moneyball_occupation` VALUES ('61', '烟草业', '1');
INSERT INTO `moneyball_occupation` VALUES ('62', '造纸业', '1');
INSERT INTO `moneyball_occupation` VALUES ('63', '印刷业', '1');
INSERT INTO `moneyball_occupation` VALUES ('64', '化工业', '1');
INSERT INTO `moneyball_occupation` VALUES ('65', '汽车', '1');
INSERT INTO `moneyball_occupation` VALUES ('66', '家具', '1');
INSERT INTO `moneyball_occupation` VALUES ('67', '电子电器', '1');
INSERT INTO `moneyball_occupation` VALUES ('68', '机械设备', '1');
INSERT INTO `moneyball_occupation` VALUES ('69', '塑料工业', '1');
INSERT INTO `moneyball_occupation` VALUES ('70', '金属加工', '1');
INSERT INTO `moneyball_occupation` VALUES ('71', '军火', '1');
INSERT INTO `moneyball_occupation` VALUES ('72', '地产建筑', '0');
INSERT INTO `moneyball_occupation` VALUES ('73', '房地产', '1');
INSERT INTO `moneyball_occupation` VALUES ('74', '装饰装潢', '1');
INSERT INTO `moneyball_occupation` VALUES ('75', '物业服务', '1');
INSERT INTO `moneyball_occupation` VALUES ('76', '特殊建造', '1');
INSERT INTO `moneyball_occupation` VALUES ('77', '建筑设备', '1');
INSERT INTO `moneyball_occupation` VALUES ('78', '贸易零售', '0');
INSERT INTO `moneyball_occupation` VALUES ('79', '零售', '1');
INSERT INTO `moneyball_occupation` VALUES ('80', '大宗交易', '1');
INSERT INTO `moneyball_occupation` VALUES ('81', '进出口贸易', '1');
INSERT INTO `moneyball_occupation` VALUES ('82', '公共服务', '0');
INSERT INTO `moneyball_occupation` VALUES ('83', '政府', '1');
INSERT INTO `moneyball_occupation` VALUES ('84', '国防军事', '1');
INSERT INTO `moneyball_occupation` VALUES ('85', '航天', '1');
INSERT INTO `moneyball_occupation` VALUES ('86', '科研', '1');
INSERT INTO `moneyball_occupation` VALUES ('87', '给排水', '1');
INSERT INTO `moneyball_occupation` VALUES ('88', '水利能源', '1');
INSERT INTO `moneyball_occupation` VALUES ('89', '电力电网', '1');
INSERT INTO `moneyball_occupation` VALUES ('90', '公共管理', '1');
INSERT INTO `moneyball_occupation` VALUES ('91', '环境保护', '1');
INSERT INTO `moneyball_occupation` VALUES ('92', '非盈利组织', '1');
INSERT INTO `moneyball_occupation` VALUES ('93', '开采冶金', '0');
INSERT INTO `moneyball_occupation` VALUES ('94', '煤炭工业', '1');
INSERT INTO `moneyball_occupation` VALUES ('95', '石油工业', '1');
INSERT INTO `moneyball_occupation` VALUES ('96', '黑色金属', '1');
INSERT INTO `moneyball_occupation` VALUES ('97', '有色金属', '1');
INSERT INTO `moneyball_occupation` VALUES ('98', '土砂石开采', '1');
INSERT INTO `moneyball_occupation` VALUES ('99', '地热开采', '1');
INSERT INTO `moneyball_occupation` VALUES ('100', '交通仓储', '0');
INSERT INTO `moneyball_occupation` VALUES ('101', '邮政', '1');
INSERT INTO `moneyball_occupation` VALUES ('102', '物流递送', '1');
INSERT INTO `moneyball_occupation` VALUES ('103', '地面运输', '1');
INSERT INTO `moneyball_occupation` VALUES ('104', '铁路运输', '1');
INSERT INTO `moneyball_occupation` VALUES ('105', '管线运输', '1');
INSERT INTO `moneyball_occupation` VALUES ('106', '航运业', '1');
INSERT INTO `moneyball_occupation` VALUES ('107', '民用航空业', '1');
INSERT INTO `moneyball_occupation` VALUES ('108', '农林牧渔', '0');
INSERT INTO `moneyball_occupation` VALUES ('109', '种植业', '1');
INSERT INTO `moneyball_occupation` VALUES ('110', '畜牧养殖业', '1');
INSERT INTO `moneyball_occupation` VALUES ('111', '林业', '1');
INSERT INTO `moneyball_occupation` VALUES ('112', '渔业', '1');

-- ----------------------------
-- Table structure for `moneyball_province`
-- ----------------------------
DROP TABLE IF EXISTS `moneyball_province`;
CREATE TABLE `moneyball_province` (
  `ProID` int(11) NOT NULL AUTO_INCREMENT,
  `ProName` varchar(50) NOT NULL,
  `ProSort` int(11) DEFAULT NULL,
  `ProRemark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ProID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moneyball_province
-- ----------------------------
INSERT INTO `moneyball_province` VALUES ('1', '北京市', '1', '直辖市');
INSERT INTO `moneyball_province` VALUES ('2', '天津市', '2', '直辖市');
INSERT INTO `moneyball_province` VALUES ('3', '河北省', '5', '省份');
INSERT INTO `moneyball_province` VALUES ('4', '山西省', '6', '省份');
INSERT INTO `moneyball_province` VALUES ('5', '内蒙古自治区', '32', '自治区');
INSERT INTO `moneyball_province` VALUES ('6', '辽宁省', '8', '省份');
INSERT INTO `moneyball_province` VALUES ('7', '吉林省', '9', '省份');
INSERT INTO `moneyball_province` VALUES ('8', '黑龙江省', '10', '省份');
INSERT INTO `moneyball_province` VALUES ('9', '上海市', '3', '直辖市');
INSERT INTO `moneyball_province` VALUES ('10', '江苏省', '11', '省份');
INSERT INTO `moneyball_province` VALUES ('11', '浙江省', '12', '省份');
INSERT INTO `moneyball_province` VALUES ('12', '安徽省', '13', '省份');
INSERT INTO `moneyball_province` VALUES ('13', '福建省', '14', '省份');
INSERT INTO `moneyball_province` VALUES ('14', '江西省', '15', '省份');
INSERT INTO `moneyball_province` VALUES ('15', '山东省', '16', '省份');
INSERT INTO `moneyball_province` VALUES ('16', '河南省', '17', '省份');
INSERT INTO `moneyball_province` VALUES ('17', '湖北省', '18', '省份');
INSERT INTO `moneyball_province` VALUES ('18', '湖南省', '19', '省份');
INSERT INTO `moneyball_province` VALUES ('19', '广东省', '20', '省份');
INSERT INTO `moneyball_province` VALUES ('20', '海南省', '24', '省份');
INSERT INTO `moneyball_province` VALUES ('21', '广西壮族自治区', '28', '自治区');
INSERT INTO `moneyball_province` VALUES ('22', '甘肃省', '21', '省份');
INSERT INTO `moneyball_province` VALUES ('23', '陕西省', '27', '省份');
INSERT INTO `moneyball_province` VALUES ('24', '新 疆维吾尔自治区', '31', '自治区');
INSERT INTO `moneyball_province` VALUES ('25', '青海省', '26', '省份');
INSERT INTO `moneyball_province` VALUES ('26', '宁夏回族自治区', '30', '自治区');
INSERT INTO `moneyball_province` VALUES ('27', '重庆市', '4', '直辖市');
INSERT INTO `moneyball_province` VALUES ('28', '四川省', '22', '省份');
INSERT INTO `moneyball_province` VALUES ('29', '贵州省', '23', '省份');
INSERT INTO `moneyball_province` VALUES ('30', '云南省', '25', '省份');
INSERT INTO `moneyball_province` VALUES ('31', '西藏自治区', '29', '自治区');
INSERT INTO `moneyball_province` VALUES ('32', '台湾省', '7', '省份');
INSERT INTO `moneyball_province` VALUES ('33', '澳门特别行政区', '33', '特别行政区');
INSERT INTO `moneyball_province` VALUES ('34', '香港特别行政区', '34', '特别行政区');

-- ----------------------------
-- Table structure for `moneyball_user`
-- ----------------------------
DROP TABLE IF EXISTS `moneyball_user`;
CREATE TABLE `moneyball_user` (
  `id` int(7) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `source` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  `nickname` varchar(30) DEFAULT NULL,
  `job` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `province` varchar(30) DEFAULT NULL,
  `head` varchar(30) DEFAULT NULL,
  `switch` int(1) unsigned zerofill DEFAULT NULL COMMENT '0为关闭，1为开启，默认为0',
  `birthday` date DEFAULT NULL,
  `sex` int(1) unsigned zerofill DEFAULT NULL COMMENT '0为未知，1为男，2为女',
  `income` int(1) unsigned zerofill DEFAULT NULL COMMENT '0为未知，1为2000元以下，2为2000~5000,3为5000~10000,4为10000~20000,5为20000+',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moneyball_user
-- ----------------------------
INSERT INTO `moneyball_user` VALUES ('0000001', '', 'pbkdf2_sha256$12000$GN2pURabI0uT$Fk0OJrfDpeXc7aImtpJ7wiZryF+yoX3SsUvAUH1npeY=', '', 'out_lier@126.com', '15901845510', '', '', '', '', '', '', null, null, null, null);
