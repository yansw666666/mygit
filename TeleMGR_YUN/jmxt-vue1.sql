/*
 Navicat Premium Data Transfer

 Source Server         : 翠花
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : jmxt-vue1

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 31/07/2022 21:56:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `group_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `content_type_id` int(0) NOT NULL,
  `codename` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add Account', 7, 'add_account');
INSERT INTO `auth_permission` VALUES (26, 'Can change Account', 7, 'change_account');
INSERT INTO `auth_permission` VALUES (27, 'Can delete Account', 7, 'delete_account');
INSERT INTO `auth_permission` VALUES (28, 'Can view Account', 7, 'view_account');
INSERT INTO `auth_permission` VALUES (29, 'Can add 角色', 8, 'add_roles');
INSERT INTO `auth_permission` VALUES (30, 'Can change 角色', 8, 'change_roles');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 角色', 8, 'delete_roles');
INSERT INTO `auth_permission` VALUES (32, 'Can view 角色', 8, 'view_roles');
INSERT INTO `auth_permission` VALUES (33, 'Can add 权限', 9, 'add_permission');
INSERT INTO `auth_permission` VALUES (34, 'Can change 权限', 9, 'change_permission');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 权限', 9, 'delete_permission');
INSERT INTO `auth_permission` VALUES (36, 'Can view 权限', 9, 'view_permission');
INSERT INTO `auth_permission` VALUES (37, 'Can add 菜单', 10, 'add_menu');
INSERT INTO `auth_permission` VALUES (38, 'Can change 菜单', 10, 'change_menu');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 菜单', 10, 'delete_menu');
INSERT INTO `auth_permission` VALUES (40, 'Can view 菜单', 10, 'view_menu');
INSERT INTO `auth_permission` VALUES (41, 'Can add 调度交换配线', 11, 'add_ddjh_px');
INSERT INTO `auth_permission` VALUES (42, 'Can change 调度交换配线', 11, 'change_ddjh_px');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 调度交换配线', 11, 'delete_ddjh_px');
INSERT INTO `auth_permission` VALUES (44, 'Can view 调度交换配线', 11, 'view_ddjh_px');
INSERT INTO `auth_permission` VALUES (45, 'Can add 保护业务_光缆', 12, 'add_protection_gl');
INSERT INTO `auth_permission` VALUES (46, 'Can change 保护业务_光缆', 12, 'change_protection_gl');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 保护业务_光缆', 12, 'delete_protection_gl');
INSERT INTO `auth_permission` VALUES (48, 'Can view 保护业务_光缆', 12, 'view_protection_gl');
INSERT INTO `auth_permission` VALUES (49, 'Can add 所在区域', 13, 'add_region');
INSERT INTO `auth_permission` VALUES (50, 'Can change 所在区域', 13, 'change_region');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 所在区域', 13, 'delete_region');
INSERT INTO `auth_permission` VALUES (52, 'Can view 所在区域', 13, 'view_region');
INSERT INTO `auth_permission` VALUES (53, 'Can add 通信站点', 14, 'add_station');
INSERT INTO `auth_permission` VALUES (54, 'Can change 通信站点', 14, 'change_station');
INSERT INTO `auth_permission` VALUES (55, 'Can delete 通信站点', 14, 'delete_station');
INSERT INTO `auth_permission` VALUES (56, 'Can view 通信站点', 14, 'view_station');
INSERT INTO `auth_permission` VALUES (57, 'Can add 站点等级', 15, 'add_level');
INSERT INTO `auth_permission` VALUES (58, 'Can change 站点等级', 15, 'change_level');
INSERT INTO `auth_permission` VALUES (59, 'Can delete 站点等级', 15, 'delete_level');
INSERT INTO `auth_permission` VALUES (60, 'Can view 站点等级', 15, 'view_level');
INSERT INTO `auth_permission` VALUES (61, 'Can add 管理模式', 16, 'add_stationmodel');
INSERT INTO `auth_permission` VALUES (62, 'Can change 管理模式', 16, 'change_stationmodel');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 管理模式', 16, 'delete_stationmodel');
INSERT INTO `auth_permission` VALUES (64, 'Can view 管理模式', 16, 'view_stationmodel');
INSERT INTO `auth_permission` VALUES (65, 'Can add 设备分类', 17, 'add_shebei_class');
INSERT INTO `auth_permission` VALUES (66, 'Can change 设备分类', 17, 'change_shebei_class');
INSERT INTO `auth_permission` VALUES (67, 'Can delete 设备分类', 17, 'delete_shebei_class');
INSERT INTO `auth_permission` VALUES (68, 'Can view 设备分类', 17, 'view_shebei_class');
INSERT INTO `auth_permission` VALUES (69, 'Can add 设备图片', 18, 'add_stationimage');
INSERT INTO `auth_permission` VALUES (70, 'Can change 设备图片', 18, 'change_stationimage');
INSERT INTO `auth_permission` VALUES (71, 'Can delete 设备图片', 18, 'delete_stationimage');
INSERT INTO `auth_permission` VALUES (72, 'Can view 设备图片', 18, 'view_stationimage');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `email` varchar(254) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `group_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for ddjh_px
-- ----------------------------
DROP TABLE IF EXISTS `ddjh_px`;
CREATE TABLE `ddjh_px`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `station_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sb_moduleid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sb_modulepair` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wx_moduleid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wx_modulepair` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `rec_moduleid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `rec_modulepair` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nm_moduleid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nm_modulepair` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fy_moduleid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fy_modulepair` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `beizhu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `setup_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1755 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ddjh_px
-- ----------------------------
INSERT INTO `ddjh_px` VALUES (1655, '电调调度台1', '5000', '15', '1-1', '46', '1', '15', '5-1', '65', '4-2', '40', '1-6', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1656, '电调调度台1', '5000', '14', '9-1', '46', '2', '15', '5-2', '65', '7-4', '40', '1-7', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1657, '电调调度台2', '5000', '15', '1-2', '46', '3', '15', '5-3', '65', '4-4', '40', '1-4', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1658, '电调调度台2', '5000', '14', '9-2', '46', '4', '15', '5-4', '65', '4-5', '40', '1-5', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1659, '电调调度台3', '5000', '15', '1-3', '46', '5', '15', '5-5', '65', '7-1', '40', '4-3', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1660, '电调调度台3', '5000', '14', '9-3', '46', '6', '15', '5-6', '65', '4-7', '40', '4-4', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1661, '通调调度台1', '5009', '15', '1-4', '45', '32', '15', '6-5', '65', '1-1', '74', '11-1', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1662, '通调调度台2', '5009', '14', '9-4', '45', '35', '15', '6-6', '65', '1-2', '74', '11-2', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1663, '马家磅', '5011', '15', '9-1', '37', '39', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1664, '马家磅', '5012', '15', '9-2', '38', '87', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1665, '枣山', '5021', '15', '9-3', '39', '38', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1666, '枣山', '5022', '15', '9-4', '40', '91', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1667, '掇刀', '5023', '15', '9-5', '37', '61', '15', '-', '65', '-', '74', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1668, '掇刀', '5024', '15', '9-6', '37', '62', '15', '-', '65', '-', '74', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1669, '胡集', '5031', '14', '5-5', '37', '77', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1670, '胡集', '5032', '15', '9-7', '37', '88', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1671, '郢中', '5040', '15', '9-8', '37', '72', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1672, '郢中', '5041', '15', '10-1', '37', '89', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1673, '郢中', '5042', '15', '10-2', '37', '77', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1674, '丽山', '5051', '15', '10-3', '37', '44', '15', '-', '65', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1675, '丽山', '5052', '14', '5-6', '37', '67', '15', '6-2', '65', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1676, '长林', '5061', '15', '10-4', '37', '86', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1677, '长林', '5062', '15', '10-5', '37', '90', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1678, '南桥', '5071', '15', '10-6', '37', '92', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1679, '南桥', '5072', '15', '10-7', '37', '93', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1680, '雍冲', '5081', '15', '10-8', '37', '95', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1681, '雍冲', '5082', '15', '11-1', '37', '96', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1682, '柳河', '5091', '14', '5-7', '36', '87', '15', '6-3', '65', '-', '40', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1683, '柳河', '5092', '14', '5-7', '36', '88', '15', '6-4', '65', '-', '40', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1684, '枣山备调', '5110', '15', '11-3', '33', '12', '15', '6-7', '65', '-', '40', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1685, '枣山备调', '5111', '15', '11-4', '33', '13', '15', '6-8', '65', '-', '74', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1686, '五里变', '5120', '15', '11-5', '37', '23', '15', '7-1', '65', '-', '74', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1687, '五里变', '5121', '15', '11-6', '37', '26', '15', '7-2', '65', '-', '74', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1688, '普云变', '5130', '15', '11-7', '36', '53', '15', '7-3', '65', '-', '74', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1689, '普云变', '5131', '15', '11-8', '36', '54', '15', '7-4', '65', '-', '74', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1690, '青桥', '5140', '15', '12-1', '36', '32', '0', '-', '0', '-', '0', '-', '出线故障', NULL);
INSERT INTO `ddjh_px` VALUES (1691, '北牵', '5141', '15', '12-2', '36', '28', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1692, '沙洋县调', '5300', '15', '12-4', '37', '41', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1693, '钟祥县调', '5302', '15', '12-5', '37', '42', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1694, '京山县调', '5304', '15', '12-6', '37', '43', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1695, '童沙光伏', '5306', '15', '12-7', '37', '45', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1696, '铁合金', '5308', '15', '12-8', '37', '59', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1697, '盐池', '5310', '15', '13-1', '37', '47', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1698, '象山', '5312', '15', '13-2', '37', '09', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1699, '龙井', '5314', '15', '13-3', '0', '-', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1700, '马良变', '5316', '15', '13-4', '37', '94', '0', '-', '0', '-', '0', '-', '出线故障', NULL);
INSERT INTO `ddjh_px` VALUES (1701, '330水泥厂', '5318', '15', '13-5', '35', '71', '0', '-', '0', '-', '0', '-', '出线故障', NULL);
INSERT INTO `ddjh_px` VALUES (1702, '污水厂', '5320', '15', '13-6', '35', '79', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1703, '京山轻机', '5322', '15', '13-7', '35', '76', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1704, '钟厦水泥', '5324', '15', '13-8', '35', '77', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1705, '永兴', '5326', '15', '14-1', '35', '82', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1706, '永兴', '5328', '15', '14-2', '35', '85', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1707, '永兴', '5330', '15', '14-3', '37', '78', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1708, '华山关风厂', '5332', '15', '14-4', '36', '75', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1709, '宏图变', '5334', '15', '14-5', '28', '46', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1710, '永兴', '5336', '15', '14-6', '35', '83', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1711, '苏台', '5338', '15', '14-7', '37', '60', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1712, '东宝', '5340', '15', '14-8', '37', '61', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1713, '盐池', '5342', '15', '15-1', '37', '62', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1714, '栗溪', '5344', '14', '6-1', '37', '66', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1715, '响岭', '5346', '15', '15-2', '37', '63', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1716, '三三零', '5348', '14', '6-2', '37', '64', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1717, '95598', '5350', '15', '15-3', '37', '65', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1718, '惠山', '5352', '15', '15-4', '37', '18', '0', '-', '0', '-', '0', '-', '出线故障', NULL);
INSERT INTO `ddjh_px` VALUES (1719, '东堤', '5353', '15', '15-5', '36', '63', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1720, '楚星化工', '5354', '15', '15-6', '35', '72', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1721, '化工总降', '5356', '15', '15-7', '37', '69', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1722, '麻城', '5358', '15', '15-8', '37', '70', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1723, '炼油厂', '5361', '15', '16-1', '37', '75', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1724, '炼油厂', '5362', '15', '16-2', '37', '76', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1725, '洋丰变', '5363', '15', '16-3', '37', '81', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1726, '泽丰电厂', '5364', '15', '16-4', '37', '82', '0', '-', '0', '-', '0', '-', '出线故障', NULL);
INSERT INTO `ddjh_px` VALUES (1727, '泽丰电厂', '5365', '15', '16-5', '37', '83', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1728, '官垱光伏', '5366', '15', '16-6', '37', '84', '0', '-', '0', '-', '0', '-', '出线故障', NULL);
INSERT INTO `ddjh_px` VALUES (1729, '马良康桥风电', '5367', '15', '16-7', '37', '85', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1730, '何场变', '5368', '15', '16-8', '37', '97', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1731, '葛洲坝余热', '5369', '14', '1-1', '37', '98', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1732, '调控办公室', '5370', '14', '1-2', '23', '80', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1733, '调控办公室', '5371', '14', '1-3', '23', '81', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1734, '安能生物质电厂', '5372', '14', '1-4', '36', '94', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1735, '3度风电', '5373', '14', '1-5', '35', '56', '15', '-', '65', '-', '74', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1736, '晋煤电', '5374', '14', '1-6', '32', '52', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1737, '迎春变', '5375', '14', '1-7', '67', '01', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1738, '祥济变', '5376', '14', '1-8', '33', '14', '15', '-', '65', '-', '74', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1739, '胡家湾', '5380', '14', '2-1', '36', '69', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1740, '双喜', '5381', '14', '2-2', '36', '65', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1741, '绳动', '5382', '14', '2-3', '36', '31', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1742, '屈度', '5383', '14', '2-4', '36', '43', '15', '-', '65', '-', '74', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1743, '云岭风电', '5384', '14', '2-5', '36', '44', '15', '-', '65', '-', '74', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1744, '楚伏', '5385', '14', '2-6', '36', '46', '15', '-', '65', '-', '74', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1745, '苏台直通', '5402', '14', '4-5', '36', '73', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1746, '锅底坑', '5508', '14', '4-6', '37', '52', '0', '-', '0', '-', '0', '-', '出线故障', NULL);
INSERT INTO `ddjh_px` VALUES (1747, '锅底坑', '5509', '14', '4-7', '37', '53', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1748, '马河', '5510', '14', '4-8', '37', '54', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1749, '马河', '5511', '14', '5-1', '37', '55', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1750, '凯龙', '5512', '14', '5-2', '37', '56', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1751, '凯龙', '5513', '14', '5-3', '37', '57', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1752, '马河', '5514', '14', '5-4', '37', '58', '0', '-', '0', '-', '0', '-', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1753, '鄂中化工', '5515', '0', '-', '0', '-', '0', '-', '0', '-', '0', 'IAD', '-', NULL);
INSERT INTO `ddjh_px` VALUES (1754, '亿伟动力', '5516', '16', '6-4', '37', '16', '0', '-', '0', '-', '0', '-', '-', NULL);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET gbk COLLATE gbk_chinese_ci NULL,
  `object_repr` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `action_flag` smallint(0) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `content_type_id` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `model` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (15, 'basement', 'level');
INSERT INTO `django_content_type` VALUES (13, 'basement', 'region');
INSERT INTO `django_content_type` VALUES (17, 'basement', 'shebei_class');
INSERT INTO `django_content_type` VALUES (14, 'basement', 'station');
INSERT INTO `django_content_type` VALUES (18, 'basement', 'stationimage');
INSERT INTO `django_content_type` VALUES (16, 'basement', 'stationmodel');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (11, 'exchange', 'ddjh_px');
INSERT INTO `django_content_type` VALUES (12, 'protection', 'protection_gl');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (7, 'userweb', 'account');
INSERT INTO `django_content_type` VALUES (10, 'userweb', 'menu');
INSERT INTO `django_content_type` VALUES (9, 'userweb', 'permission');
INSERT INTO `django_content_type` VALUES (8, 'userweb', 'roles');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `name` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2022-07-13 02:55:41.311561');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2022-07-13 02:55:41.404622');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2022-07-13 02:55:41.646588');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2022-07-13 02:55:41.715908');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2022-07-13 02:55:41.722877');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2022-07-13 02:55:41.770005');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2022-07-13 02:55:41.805541');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2022-07-13 02:55:41.846188');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2022-07-13 02:55:41.853345');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2022-07-13 02:55:41.885780');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2022-07-13 02:55:41.888606');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2022-07-13 02:55:41.895585');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2022-07-13 02:55:41.932449');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2022-07-13 02:55:41.970798');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2022-07-13 02:55:42.007495');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2022-07-13 02:55:42.014301');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2022-07-13 02:55:42.051127');
INSERT INTO `django_migrations` VALUES (18, 'sessions', '0001_initial', '2022-07-13 02:55:42.066879');
INSERT INTO `django_migrations` VALUES (19, 'userweb', '0001_initial', '2022-07-13 02:55:42.097436');
INSERT INTO `django_migrations` VALUES (20, 'userweb', '0002_roles', '2022-07-17 19:52:01.929794');
INSERT INTO `django_migrations` VALUES (21, 'userweb', '0003_auto_20220717_2116', '2022-07-17 21:16:42.641631');
INSERT INTO `django_migrations` VALUES (22, 'userweb', '0004_menu_permission', '2022-07-19 19:46:56.198027');
INSERT INTO `django_migrations` VALUES (23, 'userweb', '0005_auto_20220720_1348', '2022-07-20 13:48:56.802579');
INSERT INTO `django_migrations` VALUES (24, 'exchange', '0001_initial', '2022-07-23 09:05:41.477075');
INSERT INTO `django_migrations` VALUES (25, 'exchange', '0002_auto_20220723_1117', '2022-07-23 11:17:40.261476');
INSERT INTO `django_migrations` VALUES (26, 'exchange', '0003_auto_20220723_1726', '2022-07-23 17:26:54.681394');
INSERT INTO `django_migrations` VALUES (27, 'protection', '0001_initial', '2022-07-23 17:26:54.715153');
INSERT INTO `django_migrations` VALUES (28, 'basement', '0001_initial', '2022-07-26 10:38:31.804609');
INSERT INTO `django_migrations` VALUES (29, 'basement', '0002_auto_20220727_1849', '2022-07-27 18:50:18.134886');
INSERT INTO `django_migrations` VALUES (30, 'basement', '0003_alter_stationimage_image_remark', '2022-07-27 20:43:10.604490');
INSERT INTO `django_migrations` VALUES (31, 'basement', '0004_auto_20220730_2357', '2022-07-30 23:58:12.948836');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `session_data` longtext CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('7zm6t4p4ten1m6wh0q1230d1ihuyy62g', '.eJw1jksOhCAQRK9iWI8TaECR1RzExKB2JiQifmBlvPu0Zuxd13up1MHyjhuzB5vi189-ZJYJzgV7sdkFpK_NCkG3WQ9CtLnSpiY24uK2FHBOt2FGADLAkdFwNGQscffJx_nfIPs21727ekPs_XQ1C2ma5yjH4Px0xSCVrmrzWdf3EAORye2pu_cRBg5Q8roEXghlgVvFSRk2dAm75O_NjyN0AdKCsLJi5_kDD2JCcA:1oE4t3:YU2YJZeZnYMTA_vtv9ogdE9AJJqmyZ--tkB9d_QF9xc', '2022-08-01 16:16:53.563981');
INSERT INTO `django_session` VALUES ('id8ysayzkhqckoqymltec4wbswy3dwux', '.eJyVVtlu4zoM_ZXCz82NrdXO0_2ECwzmaTooZC2JZhw74wXTBfn3S9pxLbnp1gejopQjHvKQ1HMydLZNds9J1ex97U2yS7I0zZLbpFZHC6u7gVnC7waus-xuEDyXsGfsSbX90db9eCI3hMAJouBEkdocTpyazve-qS8ItLwbZKkQ99iUvkLkjObF_Ad2e1S-QjOhjAuZ__vnzz-6OcJOpbr-fvQPtklKyCaVG0JvMr6jcpcROKJbq3p73_vR5_lMxm8I3ZFsR0VyBp9se_RdB17dV74D138k21Pb9Fajp9vK13YLWKGtO9jS-tF6tLb39R5M_uTryPTo69lkH_RB1Xu7NebXIbY8PF0sfavqzjXtcXsY1N8L_GJ8OjT1_gFxY7uz9f4wNJOLzV_bbven3_tg-VS5U7D8VZnHYFmqvrdtaBlO3bgqVWcxl9t99VTFlsehnh18sXXK2X7CQfFsldbNAPYXQ9tUtluW8KNhWS1JmEKoMHA_QRZw6t543aMYM_z0vq8uCnTGgPaIYqAiRSn8TxXq0OtRYU7dOLUBwYGGTmBuWoOizlIQxsFXprVw6sdzgvLObgNgaUuH8rUuvGQDWs5YAdsuFQA3tKjL11I5306Q5FOQeVlaAC5SeRVyVtr5JyiVrPlnCgEUAEjtsJascR_yJ9f409DZvNACSjYvMoTUOYbXusW_teZnxhkUWIhTSEc_gzMXykiSrkhaTK-ggnyJJL2a5JTEPHUK_nGrRHjP4t-qagOaLILJmcYeSN0HMFOpjyzZOpUkBSBX0C-xZG-w5KF7nDI7NlsV3rO497rvBETFbZQLYrAIJPsIKWhWAZiMKiJ1Br-i_AjspcONkeNx5CSnMIaELdIvRY6_Ebk80q8y-axf7tJ05E7DO4OaDVpvQLmIKAuH4jAM8UiKNZYxjKhmbo00de0FCQX9qio-hTQ1_AAp6nWgXfbCSIt0rFS2xniZEgFMUOrf__v2RidbJsqYPBEnj0sHopQ5S6d3AHzZ2FvfT564njway1447IuESey7DMPFxxfFxbXVeAuIxT3CmTEmY-agYaBYrb0CM8_EACjqErzMCxSQyFdc10DzIJ26IVvLneQ4OyiyKgw0xZxIso4YjtSN9q2u7KZZ4ibfiFtU5PBqE9g0nLzuZzzcA7YyHiGzb--gXF4EAUZULjk1Gj3h_B2M6RmxQLCoToRkOIEEXwsshAjfHhD08_l_hidqqw:1oFB9M:9Oidd4Zpf5njkDxnccy8P-saQtx5BzIvGjCRftyTSOc', '2022-08-04 17:10:16.691774');
INSERT INTO `django_session` VALUES ('ml8pnlh48oo0nd7s6m6mf93cqbup6ybn', '.eJw1jksOhCAQRK9iWI8TaESR1RyExKB2JiQifmBlvPu0Zuxd13up1MHyjhszB5vi189-ZIYJzgV7sdkFpM_mCkHZrAYhbK6VboiNuLgtBZzTbegRgAxwZLQcNRlL3H3ycf43yN7mpndXb4i9n65mIXX7HOUYnJ-uGGSl6kZ_1vU9xEBkcnvq7n2EgQOUvCkBCuCG10ZJUoYNXcIu-Xvz4whVgDQgjKzZef4AEIZCdw:1oErQl:BKzpf4_5dCvcCtFKIt6fljsEdNaPQ9gtk5n1iclPSS8', '2022-08-03 20:06:55.273764');
INSERT INTO `django_session` VALUES ('x961hfbzocc3y7g5iv05aoz324wyp8jp', '.eJyVVtuSozgM_ZUunjsbsI0NedpP2KqpeZqe6jJYTjxDIMOlpi-Vf18JkmDTSV_yQMXCHOtIR5Jfo6GDNtq8RlWzdbUz0SZK4jiJ7qNa7wFXD4MAlj4MaZkkD4NMM4XvDBx02--h7scdmWEMdzCNO_IYMtxxaDrXu6Y-IfDiYVCFJtx9U7iKkBOe5ecf2mGvXUVmxkUqVfbvnz__lM0e31S66x9H__A1ixlbxWrF5B1LNpxtOMctZQu6h8fejT6f9yTpHeMb2iajI_oE7d51HXr1WLkOXf8RrQ9t00NJnq4rV8MasXxbt4MC3GjdA_Su3qLJHVwdmJ5dfTbBU7nT9RbWxvzahZanl5Olb3Xd2abdr3eD_nuCn40vu6bePhFuaLdQb3dDM7nY_IV2vT383nrLl8oevOWvyjx7y0L3PbS-ZTh046rQHVAu1y-mP4SWrtdjHAKj2-sthKbnoT4Tmb_VFvrpPBLZWpdlM6D9YmibCrp5iR8N82pO1hRqTQH-ifLBXY_GlT2JNqFH7_rqpFRrDGqUaYFq05zjf65Jr64clWj1ndUrFCZq7YDmpjUk_iRGAe1cZVrAXT9eIyqD5N4DVlBYkjlY_5AVaj4ROb62sUS4oSX9vpXU8X6CZJ-CzIoCEDiP1VXIsyKPP1HRbMk_0QSgEUCVlmoOjP2QP7vGn_vOZnkpsbSzPCHIMqPwgp39W9bGmXGChejj5Mryz-CcC2okyRckgdIruWRfIsmvJjlmIc8yRv9S0NI_Z_ZvUd0eTRHAZKKkXsntBzBTSxhZimUqWYxANudfYilusEx991IuYGzK2j9ndu9tf_KIyvsgF8xQESjxEZLX1DwwFVREbA09ZfER2KUTjpFLw8iplOO4kpDHX4pceiNyWaBfbbKzflMbxyN37p_p1azXoj3KeUBZWhKHEYTHYqqxRFBES2GXSFN3n5FI0G-q4lNI02DwkIJeh9oVF0aljMdKFUuMyzTxYLxS__7ftxudbJ48Y_JkmLxUWRSlykQ83RfwKcbe-n7y5PXk8VD20lJfZEIhMQUpOQheVS7G4EwsDXqE0oZaflzQE8b8YeO-AnOZnR6SuOWQsokcBZ9cQToNXC_UYdeyJr74gi2MygfgCs55SntAoUNFlpOkZbaI_htqp9E-9WexLECWUVC4osFhsE1nTLFlDmnIr0rXlhWsmjmT6kYmg7aD901Jbcyq636G1w2PrQqH2tm3d1BOdxQPIyjgjJuSPEnTdzCmi80MIYLKlUrQTJTpUvI-hH8bwqAfj_8D52Wlhw:1oGL8X:YzkY8nZYZr8dr9vKxM0tTLRSL1jzpmdig8AoyBVaq2o', '2022-08-07 22:02:13.094380');

-- ----------------------------
-- Table structure for protection_gl
-- ----------------------------
DROP TABLE IF EXISTS `protection_gl`;
CREATE TABLE `protection_gl`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `diaodu_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `yunwei_dep` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `start_end` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `line_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `service_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `terminal_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `interface_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `channel_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `route_detail` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trans_sys` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `guanglan_inroad` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `method_page` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `beizhu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of protection_gl
-- ----------------------------
INSERT INTO `protection_gl` VALUES (1, '省调', '荆门', '220kV五里变-青桥牵引站', '220kV里青牵线', '保护', '长园深瑞PRS-753A', '单口', '专用纤芯', '220kV里青牵线OPGW光缆11、12芯', '无', '里青牵线-OPGW', '方式-2019-华中-湖北-0495', '-');
INSERT INTO `protection_gl` VALUES (2, '省调', '荆门', '220kV牌楼热电-220kV长林变', '220kV牌林线', '保护', '四方继保CSC103B', '单口', '专用光纤', '220kV牌林线OPGW光缆第15、16芯', '无', '牌林线-OPGW', '方式-2014-华中-湖北-0079', '-');
INSERT INTO `protection_gl` VALUES (3, '省调', '荆门', '220kV五里变-青桥牵引站', '220kV里青牵线', '保护', '许继电气WXH-803A', '单口', '复用2M', '青桥牵引站SDH（2-ET1-16）--省荆门2.5G中兴网--五里变SDH（2-EPE1-32）（迂回路由：青桥牵-长林变-枣山变-五里变）', '省荆门2.5G中兴网', '林青牵线-OPGW；枣林线-OPGW；里枣II回-OPGW', '方式-2019-华中-湖北-0506', '-');
INSERT INTO `protection_gl` VALUES (4, '省调', '荆门', '220kV胡集变-南漳牵引站', '220kV胡漳牵线', '保护', '许继电气WXH-803A', '单口', '复用2M', '省襄阳2.5G中兴网：南漳牵引站SDH（2-ET1-15）--水镜变SDH--顺安变SDH--汾阳变SDH（2-EPE1-30）--2M跳接--省10G网：汾阳变SDH（2-PQ1-62）（6槽）--（13槽）米庄变SDH--樊城变SDH--斗笠变SDH--团林变SDH--江陵变SDH--兴隆变SDH--周家岭变SDH--枣山变SDH（2-PQ1-29）--2M跳接--省荆门2.5G中兴网：枣山变SDH（2-EPE1-25）--掇刀变SDH--雍冲变SDH--南桥变SDH--胡集变SDH（2-EPE1-30）', '省襄阳2.5G中兴网、省华为10G网、省荆门2.5G中兴网', '掇枣I回线-OPGW；掇雍II回--OPGW；南雍线-OPGW；南满Ⅱ回\n-OPGW；胡满线-ADSS', '方式-2019-华中-湖北-0698', '-');
INSERT INTO `protection_gl` VALUES (5, '省调', '荆门', '220kV胡集变-南漳牵引站', '220kV胡漳牵线', '保护', '长园深瑞PRS-753A', '单口', '复用2M', '地襄阳10G中兴主城网：南漳牵引站SDH（2-ET1-16）--水镜变SDH--余岭变SDH（2-EPE1-29）-2M跳接--省2.5G华为网：余岭变SDH（1-PD1-28）--双河变SDH--胡集变SDH（1-PD1-30）', '地襄阳10G中兴主城网、省鄂西2.5G华为网', '胡双线-OPGW', '方式-2019-华中-湖北-0697', '-');
INSERT INTO `protection_gl` VALUES (6, '省调', '荆门', '220kV牌楼热电-220kV长林变', '220kV牌林线', '保护', '国电南自PSL603U', '单口', '复用2M', '省荆门2.5G中兴网牌楼热电SDH（2-EPE1-32）-----省荆门2.5G中兴网-----省荆门2.5G中兴网长林变SDH（2-EPE1-32）（迂回路由：牌楼热电-枣山变-长林变）', '省荆门2.5G中兴网', '牌枣线-OPGW；枣林线－OPGW；', '方式-2014-华中-湖北-0079', '-');
INSERT INTO `protection_gl` VALUES (7, '省调', '荆门', '220kV掇刀变-220kV枣山变', '220kV掇枣II回', '保护', '四方继保CSC101BE', '单口', '高频', 'B相：310k', '无', '无', '-', '-');
INSERT INTO `protection_gl` VALUES (8, '省调', '荆门', '220kV长林变－220kV潜江变', '220kV林潜线', '保护', '长园深瑞PRS-753', '单口', '复用2M', '省荆门2.5G中兴网：长林变SDH（2-EPE1-33）--五里变SDH（11槽）--光穿--地荆州10G中兴网：江陵变SDH（4-ET1-20）--2M跳接--省荆州2.5G华为网：江陵变SDH（1-PD1-23）--纪南变SDH--周家岭变SDH--潜江变SDH（1-PD1-24）', '省荆门2.5G中\n兴双网、地荆州10G中兴网、\n省荆州2.5G华为网', '林里线-OPGW', '方式-2019-华中-湖北-0680', '-');
INSERT INTO `protection_gl` VALUES (9, '省调', '荆门', '220kV掇刀变-220kV枣山变', '220kV掇枣II回', '保护', '许继电气WXH803B/G1/R1', '单口', '复用2M', '掇刀变SDH（2-EPE1-56）--省荆门2.5G中兴网--枣山变SDH（2-EPE1-27）（路由：直达）', '省荆门2.5G中兴网', '掇枣I回线-OPGW', '方式-2019-华中-湖北-0078', '-');
INSERT INTO `protection_gl` VALUES (10, '省调', '荆门', '220kV长林变－220kV潜江变', '220kV林潜线', '保护', '许继电气WXH-802Z', '单口', '高频', 'C相：保护频率  258k', '无', '无', '方式-2019-华中-湖北-0079', '-');
INSERT INTO `protection_gl` VALUES (11, '省调', '荆门', '220kV长林变-青桥牵引站', '220kV林青牵线', '保护', '长园深瑞PRS-753A', '单口', '专用纤芯', '220kV林青牵线OPGW光缆9、11芯', '无', '林青牵线-OPGW', '-', '-');
INSERT INTO `protection_gl` VALUES (12, '省调', '荆门', '220kV长林变-青桥牵引站', '220kV林青牵线', '保护', '许继电气WXH-803A', '单口', '复用2M', '青桥牵引站SDH（2-ET1-15）--省荆门2.5G中兴网--长林变SDH（2-EPE1-31）（迂回路由：青桥牵-五里变-枣山变-长林变）', '省荆门2.5G中兴网', '里青牵线-OPGW；里枣II回-OPGW；枣林线-OPGW\n', '方式-2019-华中-湖北-0738 ', '-');
INSERT INTO `protection_gl` VALUES (13, '省调', '荆门', '220kV掇刀变-220kV枣山变', '220kV掇枣I回', '保护', '许继电气WXH803B/G1/R1', '单口', '复用2M', '掇刀变SDH（2-EPE1-55）--省荆门2.5G中兴网--枣山变SDH（2-EPE1-26）（路由：直达）', '省荆门2.5G中兴网', '掇枣I回线-OPGW', '方式-2019-华中-湖北-0077', '-');
INSERT INTO `protection_gl` VALUES (14, '省调', '荆门', '220kV掇刀变-220kV枣山变', '220kV掇枣I回', '保护', '四方继保CSC101BE', '单口', '高频', 'C相：158k', '无', '无', '方式-2014-华中-湖北-0124', '-');
INSERT INTO `protection_gl` VALUES (15, '省调', '荆门', '220kV牌楼热电-220kV枣山变', '220kV牌枣线', '保护', '国电南自PSL603UI', '单口', '复用2M', '省荆门2.5G中兴网牌楼热电SDH（2-EPE1-31）-----省荆门2.5G中兴网-----省荆门2.5G中兴网枣山变SDH（2-EPE1-32）（迂回路由：牌楼热电-长林变-枣山变）', '省荆门2.5G中兴网', '牌林线-OPGW；枣林线-\nOPGW', '方式-2014-华中-湖北-0079', '-');
INSERT INTO `protection_gl` VALUES (16, '省调', '荆门', '220kV牌楼热电-220kV枣山变', '220kV牌枣线', '保护', '四方继保CSC-103B/E', '单口', '专用光纤', '220千伏牌枣线OPGW光缆第13、14芯', '无', '牌枣线-OPGW', '方式-2014-华中-湖北-0079', '-');
INSERT INTO `protection_gl` VALUES (17, '省调', '荆门', '220kV枣山变－220kV长林变', '220kV枣林线', '保护', '长园深瑞PRS-753A', '单口', '专用光纤', '220kV枣林线OPGW光缆07、08芯 ', '无', '枣林线-OPGW', '方式-2020-华中-湖北-0495', '-');
INSERT INTO `protection_gl` VALUES (18, '省调', '荆门', '220kV枣山变－220kV长林变', '220kV枣林线', '保护', '国电南自PSL-603UA', '单口', '复用2M', '省荆门2.5G中兴网：枣山变SDH（2-EPE1-31）--五里变SDH--长林变SDH（2-EPE1-30）', '省荆门2.5G中兴网', '里枣II回-OPGW；林里线-OPGW', '方式-2020-华中-湖北-0496', '-');
INSERT INTO `protection_gl` VALUES (19, '省调', '荆门', '220kV掇刀变－220kV雍冲变', '220kV掇雍I回', '保护', '国电南自PSL-603U', '单口', '专用光纤', '掇雍II回线OPGW光缆第23、24芯', '无', '掇雍II回--OPGW', '方式-2014-华中-湖北-0275', '-');
INSERT INTO `protection_gl` VALUES (20, '省调', '荆门', '220kV掇刀变－220kV雍冲变', '220kV掇雍I回', '保护', '四方继保CSC103B', '单口', '复用2M', '省荆门2.5G中兴网掇刀变SDH（EPE1[1-1-2][62]）-----省荆门2.5G中兴网-----省荆门2.5G中兴网雍冲变SDH（ET1[1-1-2][20]）（迂回路由：掇刀变-丽山变-双河变-南桥变-雍冲变）', '省荆门2.5G中兴网', '掇丽线-OPGW；丽双I回-OPGW；南双线-OPGW；南雍线-OPGW', '方式-2014-华中-湖北-0275', '-');
INSERT INTO `protection_gl` VALUES (21, '省调', '荆门', '220kV雍冲变－220kV南桥变', '220kV雍南线', '保护', '四方继保CSC101A', '单口', '高频', 'B相：保护频率  110 K', '无', '无', '-', '-');
INSERT INTO `protection_gl` VALUES (22, '省调', '荆门', '220kV雍冲变－220kV南桥变', '220kV雍南线', '保护', '南瑞继保RCS931AMMV', '单口', '专用光纤', '220kV雍南线OPGW光缆第23、24芯', '无', '南雍线-OPGW', '鄂通方字2011-040-03', '-');
INSERT INTO `protection_gl` VALUES (23, '省调', '荆门', '220kV郢中变－220kV马家塝变', '220kV郢家线', '保护', '南瑞继保RCS-931AM', '单口', '专用光纤', '郢家线OPGW光缆第13、14芯    \n', '无', '郢家线-OPGW', '-', '-');
INSERT INTO `protection_gl` VALUES (24, '省调', '荆门', '220kV郢中变－220kV马家塝变', '220kV郢家线', '保护', '四方继保CSC101A', '单口', '高频', 'B相：保护频率  190 K', '无', '无', '-', '-');
INSERT INTO `protection_gl` VALUES (25, '省调', '荆门', '500kV江陵换－220kV五里变', '220kV江里线', '保护', '许继电气WXH-803A-DA-G-R', '单口', '专用光纤', '220kV江里线OPGW光缆23、24芯', '无', '江里线-OPGW', '方式-2016-华中-湖北-0520', '-');
INSERT INTO `protection_gl` VALUES (26, '省调', '荆门', '500kV江陵换－220kV五里变', '220kV江里线', '保护', '四方继保CSC-103A-DA-G-R', '单口', '复用2M', '省荆门2.5G中兴网五里变SDH（2-EPE1-6）--省荆门2.5G中兴网枣山变SDH（2-EPE1-28）--2M转--省10G华为网枣山变SDH（2-PQ1-32）--省10G华为网双河变SDH--省10G华为网樊城变SDH--省10G华为网江陵换SDH（1-PQ1-51）', '省荆门2.5G中兴网、省10G华为网', '里枣II回-OPGW；掇枣I回线-OPGW；双掇II回-OPGW', '方式-2016-华中-湖北-0520', '-');
INSERT INTO `protection_gl` VALUES (27, '省调', '荆门', '220kV五里变－220kV枣山变', '220kV里枣线', '保护', '许继电气WXH-803A-DA-G-R', '单口', '专用光纤', '220kV里枣线右OPGW光缆23、24芯', '无', '里枣II回-OPGW', '方式-2016-华中-湖北-0519', '-');
INSERT INTO `protection_gl` VALUES (28, '省调', '荆门', '220kV五里变－220kV枣山变', '220kV里枣线', '保护', '四方继保CSC-103A-DA-G-R', '单口', '复用2M', '省荆门2.5G中兴网五里变SDH（2-EPE1-7）--省荆州2.5G中兴网江陵换SDH（ET1[1-1-4][19]）--2M转--省10G华为网江陵换SDH（1-PQ1-50）--省10G华为网斗笠变SDH--省10G华为网樊城变SDH--省10G华为网双河变SDH--省10G华为网枣山变SDH(2-PQ1-31)', '省荆门2.5G中兴网、省10G华为网', '江里线-OPGW；双掇II回-OPGW；掇枣I回线-OPGW', '方式-2016-华中-湖北-0519', '-');
INSERT INTO `protection_gl` VALUES (29, '省调', '荆门', '500kV双河变-220kV胡集变', '220kV胡双II回线', '保护', '长园深瑞PRS-753A-G', '单口', '专用纤芯', '220kV胡双线16芯OPGW光缆11、13芯', '无', '胡双线-OPGW', '方式-2019-华中-湖北-0237', '-');
INSERT INTO `protection_gl` VALUES (30, '省调', '荆门', '500kV双河变-220kV胡集变', '220kV胡双II回线', '保护', '许继电气WXH-803A-G', '单口', '复用2M', '省荆门2.5G中兴网：胡集变SDH（2-EPE1-32）--南桥变SDH--双河变SDH（2-EPE1-32）', '省荆门2.5G中兴网', '胡满线-ADSS；南满Ⅱ回-OPGW；南双线-OPGW', '方式-2019-华中-湖北-0238', '-');
INSERT INTO `protection_gl` VALUES (31, '省调', '荆门', '500kV双河变-220kV南桥变', '220kV南双线', '保护', '四方继保CSC101A', '单口', '高频', 'B相：保护频率  80 K', '无', '无', '-', '-');
INSERT INTO `protection_gl` VALUES (32, '省调', '荆门', '500kV双河变-220kV南桥变', '220kV南双线', '保护', '南瑞继保RCS-931AM', '单口', '专用光纤', '南双线OPGW光缆第23、24芯', '无', '南双线-OPGW', '-', '-');
INSERT INTO `protection_gl` VALUES (33, '省调', '荆门', '500kV双河变-220kV郢中变', '220kV双郢二回', '保护', '四方继保CSC101A', '单口', '高频', 'C相：保护频率  168 K', '无', '无', '-', '-');
INSERT INTO `protection_gl` VALUES (34, '省调', '荆门', '500kV双河变-220kV郢中变', '220kV双郢二回', '保护', '南瑞继保RCS902A', '单口', '高频', 'B相：保护频率  80 K', '无', '无', '-', '-');
INSERT INTO `protection_gl` VALUES (35, '省调', '荆门', '500kV双河变-220kV郢中变', '220kV双郢一回', '保护', '南瑞继保RCS902A', '单口', '高频', 'B相：保护频率  178 K', '无', '无', '-', '-');
INSERT INTO `protection_gl` VALUES (36, '省调', '荆门', '500kV双河变-220kV郢中变', '220kV双郢一回', '保护', '四方继保CSC101A', '单口', '高频', 'C相：保护频率  154 K', '无', '无', '-', '-');
INSERT INTO `protection_gl` VALUES (37, '省调', '荆门', '500kV双河变-220kV雍冲变', '220kV双雍线', '保护', '四方继保CSC101A', '单口', '高频', 'B相：保护频率  174 K', '无', '无', '-', '-');
INSERT INTO `protection_gl` VALUES (38, '省调', '荆门', '500kV双河变-220kV雍冲变', '220kV双雍线', '保护', '南瑞继保RCS931AMMV', '单口', '复用2M', '省荆门2.5G中兴网雍冲变SDH（2-ET1-3）-----省荆门2.5G中兴网-----省荆门2.5G中兴网双河变SDH（2-EPE1-2）（迂回路由：雍冲变-南桥变-双河变）', '省荆门2.5G中兴网', '南雍线-OPGW；南双线-OPGW', '-', '-');
INSERT INTO `protection_gl` VALUES (39, '省调', '荆门', '220kV牌楼热电-220kV普云变', '220kV牌云线', '保护', '许继电气WXH-803A-DA-G', '单口', '复用2M', '省荆门2.5G中兴网普云变SDH（2-EPE1-10）-----省荆门2.5G中兴网-----省荆门2.5G中兴网牌楼热电SDH（2-EPE1-10）', '省荆门2.5G中兴网', '牌云线-OPGW', '方式-2017-华中-湖北-0323', '-');
INSERT INTO `protection_gl` VALUES (40, '省调', '荆门', '220kV牌楼热电-220kV普云变', '220kV牌云线', '保护', '四方继保CSC-103A-DA-G', '单口', '复用2M', '地荆门10G华为主城网：普云变SDH（2-N2PQ1-10）--（跳110kV屈家岭）--（跳110kV七里湖）--长林变SDH--牌楼热电厂SDH（6-N2PQ1-32） ', '地荆门10G华为主城网', '云岭线-OPGW；七岭线-ADSS；林七线-ADSS；牌林线-OPGW', '方式-2017-华中-湖北-0323', '-');
INSERT INTO `protection_gl` VALUES (41, '省调', '荆门', '220kV普云变-220kV柳河变', '220kV云柳线', '保护', '长园深瑞PRS-753A-DA-G', '单口', '复用2M', '地荆门10G华为主城网:普云变SDH（2-N2PQ1-9）--柳河变SDH（2-N2PQ1-9）［路由：普云变-（跳永隆）-马家磅-柳河变］', '地荆门10G华为主城网', '云隆线-OPGW；家隆线-ADSS；家柳线-OPGW', '方式-2017-华中-湖北-0324', '-');
INSERT INTO `protection_gl` VALUES (42, '省调', '荆门', '220kV普云变-220kV柳河变', '220kV云柳线', '保护', '许继电气WXH-803A-DA-G', '单口', '复用2M', '省荆门2.5G中兴网普云变SDH（2-EPE1-9）-----省荆门2.5G中兴网-----省荆门2.5G中兴网柳河变SDH(2-EPE1-9)', '省荆门2.5G中兴网', '云柳线-OPGW', '方式-2017-华中-湖北-0324', '-');
INSERT INTO `protection_gl` VALUES (43, '省调', '荆门', '220kV马家塝变-220kV柳河变', '220kV家柳线', '保护', '南瑞继保PCS931GM', '单口', '复用2M', '省荆门2.5G中兴网柳河变SDH（2-EPE1-5）-----省荆门2.5G中兴网-----省荆门2.5G中兴网马家磅变SDH（2-ET1-5）', '省荆门2.5G中兴网', '家柳线-OPGW', '鄂通方字 2013-028', '-');
INSERT INTO `protection_gl` VALUES (44, '省调', '荆门', '220kV马家塝变-220kV柳河变', '220kV家柳线', '保护', '四方继保CSC103B', '单口', '复用2M', '地荆门中兴网柳河变SDH（2-EPE1-6）-----地荆门中兴网-----地荆门中兴网马家磅变SDH（2-EPE1-4）［路由：马家磅-（曹武）-柳河变］', '地荆门中兴网', '柳曹线-OPGW；家曹线-ADSS', '鄂通方字 2013-028', '-');
INSERT INTO `protection_gl` VALUES (45, '省调', '荆门', '220kV马家塝-220kV马河口变', '220kV家马线', '保护', '南瑞继保RCS902G', '单口', '高频', 'C相：保护频率 162 K', '无', '无', '-', '-');
INSERT INTO `protection_gl` VALUES (46, '省调', '荆门', '220kV马家塝-220kV马河口变', '220kV家马线', '保护', '四方继保CSC101B', '单口', '高频', 'B相：保护频率 118 K', '无', '无', '-', '-');
INSERT INTO `protection_gl` VALUES (47, '省调', '荆门', '220kV柳河变-220kV竟陵变', '220kV柳竟线', '保护', '南瑞继保PCS902G', '单口', '高频', 'C相：保护频率 130 K', '无', '无', '鄂通方字 2013-028', '-');
INSERT INTO `protection_gl` VALUES (48, '省调', '荆门', '220kV柳河变-220kV竟陵变', '220kV柳竟线', '保护', '四方继保CSC101BE', '单口', '高频', 'B相：保护频率 146 K', '无', '无', '鄂通方字 2013-028', '-');
INSERT INTO `protection_gl` VALUES (49, '省调', '荆门', '500kV双河变-220kV丽山变', '220kV丽双二回', '保护', '南瑞继保PCS-931GM-D', '单口', '专用光纤', '丽双一回OPGW光缆21、22芯', '无', '丽双I回-OPGW', '鄂通方字2012-107-03号', '-');
INSERT INTO `protection_gl` VALUES (50, '省调', '荆门', '500kV双河变-220kV丽山变', '220kV丽双二回', '保护', '四方继保CSC-103BE', '单口', '复用2M', '地荆门中兴网丽山变SDH（2-EPE1-7）-----地荆门中兴网-----地荆门中兴网双河变SDH（2-ET1-6）（迂回路由：丽山变-掇刀变-荆门电厂-双河变）', '地荆门中兴网', '掇丽线-OPGW；荆掇线-OPGW；荆双四回', '鄂通方字2012-107-03号', '-');
INSERT INTO `protection_gl` VALUES (51, '省调', '荆门', '500kV双河变-220kV丽山变', '220kV丽双一回', '保护', '南瑞继保PCS-931GM-D', '单口', '专用光纤', '220kV丽双一回OPGW光缆23、24芯(4.3kM)', '无', '丽双I回-OPGW', '鄂通方字2012-107-03号', '-');
INSERT INTO `protection_gl` VALUES (52, '省调', '荆门', '500kV双河变-220kV丽山变', '220kV丽双一回', '保护', '四方继保CSC-103BE', '单口', '复用2M', '地荆门中兴网丽山变SDH（2-EPE1-6）-----地荆门中兴网-----地荆门中兴网双河变SDH（2-ET1-5）（迂回路由：丽山变-掇刀变-荆门电厂-双河变）', '地荆门中兴网', '掇丽线-OPGW；荆掇线-OPGW；荆双四回', '鄂通方字2012-107-03号', '-');
INSERT INTO `protection_gl` VALUES (53, '省调', '荆门', '220kV掇刀变-荆门电厂', '220kV掇荆起备线', '保护', '四方继保CSC103B', '单口', '专用光纤', '荆掇普II回45、46芯', '无', '荆掇普II回普缆', '-', '-');
INSERT INTO `protection_gl` VALUES (54, '省调', '荆门', '220kV掇刀变-荆门电厂', '220kV掇荆起备线', '保护', '南瑞继保PCS-931GYM-D', '单口', '专用光纤', '荆掇线21、22芯', '无', '荆掇线-OPGW', '-', '-');
INSERT INTO `protection_gl` VALUES (55, '省调', '荆门', '500kV双河变-220kV胡集变', '220kV胡双线', '保护', '南瑞继保RCS931AMM', 'A/B口', '复用2M', 'A口：地荆门中兴网双河变SDH（2-ET1-2）-----地荆门中兴网-----地荆门中兴网胡集变SDH（2-ET1-5）\nB口：省荆门2.5G中兴网双河变SDH（EPE1[1-1-2][1]）-----省荆门2.5G中兴网-----省荆门2.5G中兴网胡集变SDH（EPE1[1-1-2][5]）', '地荆门中兴网、省荆门2.5G中兴网', '胡双线-OPGW', '鄂通方字2009-108', '-');
INSERT INTO `protection_gl` VALUES (56, '省调', '荆门', '500kV双河变-220kV胡集变', '220kV胡双线', '保护', '许继电气WXH-802A/B1/R1', '单口', '高频', 'B相：保护频率  74 K', '无', '无', '-', '-');
INSERT INTO `protection_gl` VALUES (57, '省调', '荆门', '220kV胡集变-荆门北牵引站', '220kV胡荆牵线', '保护', '国电南自PSL-603UA-G-RDY ', '单口', '复用2M', '省荆门2.5G中兴网：荆门北牵[2-ET1-8]-南桥-双河-胡集[2-EPE1-29]', '省荆门2.5G中兴网', '南荆牵线I回-OPGW；南双线-OPGW；胡双线-OPGW', '方式-2019-华中-湖北-0713', '-');
INSERT INTO `protection_gl` VALUES (58, '省调', '荆门', '220kV胡集变-荆门北牵引站', '220kV胡荆牵线', '保护', '四方继保CSC-103A-G-RDY', '单口', '复用2M', '地荆门中兴网：荆门北牵[2-ET1-8]-南桥-胡集[2-EPE1-20]', '地荆门中兴网', '南荆牵线II回-OPGW；南满Ⅱ回-OPGW；胡满线-ADSS', '方式-2019-华中-湖北-0714', '-');
INSERT INTO `protection_gl` VALUES (59, '省调', '荆门', '220kV掇刀变-220kV丽山变', '220kV掇丽线', '保护', '南瑞继保PCS-931GYM-D', '单口', '专用光纤', '掇丽线OPGW光缆第23、24芯', '无', '掇丽线-OPGW', '方式-2014-华中-湖北-0275', '-');
INSERT INTO `protection_gl` VALUES (60, '省调', '荆门', '220kV掇刀变-220kV丽山变', '220kV掇丽线', '保护', '四方继保CSC103B', '单口', '复用2M', '地荆门中兴网掇刀变SDH（EPE1[1-1-2][60]）-----地荆门中兴网-----地荆门中兴网丽山变SDH（ET1[1-1-2][8]）（迂回路由：掇刀变-荆门电厂-双河变-丽山变）', '地荆门中兴网', '荆掇线-OPGW；荆双四回；丽双I回-OPGW', '方式-2014-华中-湖北-0275', '-');
INSERT INTO `protection_gl` VALUES (61, '省调', '荆门', '220kV掇刀变-220kV雍冲变', '220kV掇雍II回', '保护', '国电南自PSL-603U-I', '单口', '专用光纤', '掇雍II回线OPGW光缆第47、48芯', '无', '掇雍II回--OPGW', '方式-2014-华中-湖北-0275', '-');
INSERT INTO `protection_gl` VALUES (62, '省调', '荆门', '220kV掇刀变-220kV雍冲变', '220kV掇雍II回', '保护 ', '四方继保CSC-103B', '单口', '复用2M', '省荆门2.5G中兴网掇刀变SDH（EPE1[1-1-2][63]）-----省荆门2.5G中兴网-----省荆门2.5G中兴网雍冲变SDH（ET1[1-1-2][21]）（迂回路由：掇刀变-丽山变-双河变-南桥变-雍冲变）', '省荆门2.5G中兴网', '掇丽线-OPGW；丽双I回-OPGW；南双线-OPGW；南雍线-OPGW', '方式-2014-华中-湖北-0275', '-');
INSERT INTO `protection_gl` VALUES (63, '省调', '荆门', '220kV掇刀变－荆门电厂', '220kV荆掇线', '保护', '南瑞继保PCS-931GYM-D', '单口', '专用光纤', '荆掇普1#普通光缆第47、48芯', '无', '荆掇普I回普缆', '方式-2015-华中-湖北-0035', '-');
INSERT INTO `protection_gl` VALUES (64, '省调', '荆门', '220kV掇刀变－荆门电厂', '220kV荆掇线', '保护', '四方继保CSC-103B', '单口', '复用2M', '地荆门中兴网掇刀变SDH（EPE1[1-1-2][59]）-----地荆门中兴网-----地荆门中兴网荆门电厂SDH（ET1[1-1-2][16]）', '地荆门中兴网', '荆掇线-OPGW', '方式-2014-华中-湖北-0275', '-');
INSERT INTO `protection_gl` VALUES (65, '省调', '荆门', '220kV掇刀变－220kV长坂坡', '220kV坡掇线', '保护', '南瑞继保PCS-931GYM-D', '单口', '复用2M', '地荆门622M中兴网掇刀变SDH（EPE1[1-1-2][55]）---地荆门中兴网---地荆门622M中兴网荆门电厂SDH（ET1[1-1-2][15]）--2M转接--荆门电厂华中马可尼 LTU（LTU13-06）---华中马可尼---双河变华中马可尼--斗笠变华中马可尼----江陵华中马可尼10G--江陵华中马可尼2.5G--安福寺华中马可尼 LTU（ltu12-01）---2M转接---宜昌中兴双网安福寺SDH（2-EPE1-1）----木店—宜昌中兴双网---长坂坡（2-EPE1-13）', '地荆门中兴网、华中马可尼、宜昌中兴双网', '荆掇线-OPGW', '方式-2014-华中-湖北-0275', '-');
INSERT INTO `protection_gl` VALUES (66, '省调', '荆门', '220kV掇刀变－220kV长坂坡', '220kV坡掇线', '保护', '四方继保CSC-103B', 'A/B口', '复用2M', '通道A：省荆门2.5G中兴网掇刀变SDH（EPE1[1-1-2][57]）-—省2.5G荆门中兴网-—省2.5G荆门中兴网枣山变（EPE1[1-1-2][29]）---2M跳接---省10G华为网枣山变（2-PQ1-1）——省10G华为网——周家岭---省10G华为网---（2-PQ1-1）猇亭（1-PD1-17）---宜昌华为地县网—---宜昌站----宜昌华为地县网----白家冲（跳纤）----宜昌华为地县网----桔城-—宜昌华为地县网---长坂坡（1-PD1-7）\n通道B：省荆门2.5G中兴网掇刀变SDH（EPE1[1-1-2][58]）——省2.5G荆门中兴网-—省2.5G荆门中兴网枣山变（EPE1[1-1-2][30]）--2M跳接--省10G华为网枣山变（2-PQ1-2）——省10G华为网——周家岭---省10G华为网---（2-PQ1-2）猇亭（1-PD1-18）---宜昌华为地县网—-顾家店----宜昌华为地县网----安福寺----宜昌华为地县网----木店------宜昌华为地县网----长坂坡（1-PD1-8）', '省荆门2.5G中兴网、省10G华为网、宜昌华为地县网', '掇枣I回线-OPGW', '方式-2014-华中-湖北-0275', '-');
INSERT INTO `protection_gl` VALUES (67, '省调', '荆门', '220kV胡集变－220kV水镜变', '220kV胡水线', '保护', '长园深瑞PRS-753A-G', '单口', '复用2M', '省荆门2.5G中兴网：胡集变SDH（2-EPE1-31）--双河变SDH（2-EPE1-31）--2M跳--省2.5G网：双河变SDH（1-PD1-22）--余岭变SDH（1-PD1-29）--2M跳--地襄阳10G中兴城网：余岭变SDH（2-EPE1-29）--水镜变SDH（2-EPE1-32）\n', '省荆门2.5G中兴网、省2.5G华为网、地襄阳10G中兴城网', '胡双线-OPGW', '方式-2019-华中-湖北-0235', '-');
INSERT INTO `protection_gl` VALUES (68, '省调', '荆门', '220kV胡集变－220kV水镜变', '220kV胡水线', '保护', '许继电气WXH-803A-G', '单口', '复用2M', '地荆门622M中兴网：胡集变SDH（2-ET1-21）--南桥变SDH--雍冲变SDH--掇刀变SDH--枣山变1SDH（2-ET1-21）--2M跳--省10G网：枣山变SDH（2-PQ1-30）--周家岭SDH--兴隆变SDH--江陵换SDH--团林换SDH--斗笠变SDH--樊城变SDH--米庄变SDH30槽--16槽汾阳变SDH（2-PQ1-62）--2M跳--省襄阳2.5G中兴网：汾阳变SDH（2-EPE1-17）--翁泉变SDH--水镜变SDH（2-EPE1-29）\n', '地荆门中兴网、省华为10G网、省襄阳2.5G中兴网', '胡满线-ADSS；南满Ⅱ回-OPGW；南雍线-OPGW；掇雍II回--OPGW；掇枣I回线-OPGW', '方式-2020-华中-湖北-0348', '-');
INSERT INTO `protection_gl` VALUES (69, '省调', '荆门', '220kV南桥变－荆门北牵引站', '220kV南荆牵线', '保护', '许继电气WXH-803A', '单口', '专用纤芯', '220kV南荆牵线左OPGW光缆23、24芯', '无', '南荆牵线I回-OPGW', '方式-2019-华中-湖北-0500', '-');
INSERT INTO `protection_gl` VALUES (70, '省调', '荆门', '220kV南桥变－荆门北牵引站', '220kV南荆牵线', '保护', '国电南自PSL-603U', '单口', '专用纤芯', '220kV南荆牵线右OPGW光缆23、24芯', '无', '南荆牵线II回-OPGW', '方式-2019-华中-湖北-0501', '-');

-- ----------------------------
-- Table structure for shebei_class
-- ----------------------------
DROP TABLE IF EXISTS `shebei_class`;
CREATE TABLE `shebei_class`  (
  `classid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `classname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`classid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shebei_class
-- ----------------------------
INSERT INTO `shebei_class` VALUES ('1001', '音频配线架');
INSERT INTO `shebei_class` VALUES ('1002', '数字配线架');
INSERT INTO `shebei_class` VALUES ('1003', '光纤配线架');
INSERT INTO `shebei_class` VALUES ('2001', '华为传输');
INSERT INTO `shebei_class` VALUES ('2002', '中兴传输');
INSERT INTO `shebei_class` VALUES ('2003', '烽火传输');
INSERT INTO `shebei_class` VALUES ('2004', 'OTN传输');
INSERT INTO `shebei_class` VALUES ('3001', '交流分配屏');
INSERT INTO `shebei_class` VALUES ('3002', '直流分配屏');
INSERT INTO `shebei_class` VALUES ('3003', '高频开关电源');
INSERT INTO `shebei_class` VALUES ('3004', '蓄电池组');
INSERT INTO `shebei_class` VALUES ('3005', 'UPS电源');
INSERT INTO `shebei_class` VALUES ('4001', '视频终端');
INSERT INTO `shebei_class` VALUES ('4002', '音频终端');
INSERT INTO `shebei_class` VALUES ('4003', 'PCM终端');
INSERT INTO `shebei_class` VALUES ('4004', 'IAD设备');
INSERT INTO `shebei_class` VALUES ('5001', '调度交换');
INSERT INTO `shebei_class` VALUES ('5002', '行政交换');
INSERT INTO `shebei_class` VALUES ('5003', '录音设备');
INSERT INTO `shebei_class` VALUES ('6001', '动环监控');
INSERT INTO `shebei_class` VALUES ('6002', '网管设备');
INSERT INTO `shebei_class` VALUES ('7001', '工业空调');
INSERT INTO `shebei_class` VALUES ('7002', '普通空调');
INSERT INTO `shebei_class` VALUES ('8001', '机柜现状');

-- ----------------------------
-- Table structure for station_level
-- ----------------------------
DROP TABLE IF EXISTS `station_level`;
CREATE TABLE `station_level`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `level_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of station_level
-- ----------------------------
INSERT INTO `station_level` VALUES (1, '220Kv站点');
INSERT INTO `station_level` VALUES (2, '110Kv站点');
INSERT INTO `station_level` VALUES (3, '35Kv站点');
INSERT INTO `station_level` VALUES (4, '通信枢纽站');
INSERT INTO `station_level` VALUES (5, '综合通信站');

-- ----------------------------
-- Table structure for station_model
-- ----------------------------
DROP TABLE IF EXISTS `station_model`;
CREATE TABLE `station_model`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `model_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of station_model
-- ----------------------------
INSERT INTO `station_model` VALUES (1, '一体化机房');
INSERT INTO `station_model` VALUES (2, '独立机房');

-- ----------------------------
-- Table structure for station_region
-- ----------------------------
DROP TABLE IF EXISTS `station_region`;
CREATE TABLE `station_region`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `region_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of station_region
-- ----------------------------
INSERT INTO `station_region` VALUES (1, '东宝区');
INSERT INTO `station_region` VALUES (2, '高新区');
INSERT INTO `station_region` VALUES (3, '钟祥市');
INSERT INTO `station_region` VALUES (4, '京山市');
INSERT INTO `station_region` VALUES (5, '沙洋县');

-- ----------------------------
-- Table structure for stationimage
-- ----------------------------
DROP TABLE IF EXISTS `stationimage`;
CREATE TABLE `stationimage`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `image_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image_remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `image_des` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `creat_date` datetime(6) NOT NULL,
  `image_shebei_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `image_station_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `stationimage_image_shebei_id_44287c4b_fk_shebei_class_classid`(`image_shebei_id`) USING BTREE,
  INDEX `stationimage_image_station_id_628be7d3_fk_tele_stat`(`image_station_id`) USING BTREE,
  CONSTRAINT `stationimage_image_shebei_id_44287c4b_fk_shebei_class_classid` FOREIGN KEY (`image_shebei_id`) REFERENCES `shebei_class` (`classid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `stationimage_image_station_id_628be7d3_fk_tele_stat` FOREIGN KEY (`image_station_id`) REFERENCES `tele_station` (`station_name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stationimage
-- ----------------------------
INSERT INTO `stationimage` VALUES (18, '202207302604.JPG', '直流分配屏01', '111', '2022-07-30 00:00:00.000000', '3002', '220Kv南桥变');
INSERT INTO `stationimage` VALUES (19, '202207304633.JPG', '直流分配屏02', '', '2022-07-30 00:00:00.000000', '3002', '220Kv南桥变');
INSERT INTO `stationimage` VALUES (20, '202207307756.JPG', '直流分配屏03', '', '2022-07-30 00:00:00.000000', '3002', '220Kv南桥变');
INSERT INTO `stationimage` VALUES (21, '202207304671.JPG', '交流分配屏01', '', '2022-07-30 00:00:00.000000', '3001', '220Kv南桥变');
INSERT INTO `stationimage` VALUES (22, '202207301141.JPG', '光纤配线柜01', '111', '2022-07-30 00:00:00.000000', '1003', '220Kv南桥变');
INSERT INTO `stationimage` VALUES (23, '202207305825.JPG', '光纤配线架02', '', '2022-07-30 00:00:00.000000', '1003', '220Kv南桥变');
INSERT INTO `stationimage` VALUES (24, '202207304339.JPG', '光纤配线架', '', '2022-07-30 00:00:00.000000', '1003', '220Kv南桥变');
INSERT INTO `stationimage` VALUES (25, '202207301340.JPG', '华为传输01', '', '2022-07-30 00:00:00.000000', '2001', '220Kv南桥变');
INSERT INTO `stationimage` VALUES (26, '202207303947.JPG', '华为传输02', '', '2022-07-30 00:00:00.000000', '2001', '220Kv南桥变');
INSERT INTO `stationimage` VALUES (27, '202207307753.JPG', '华为传输03', '', '2022-07-30 00:00:00.000000', '2001', '220Kv南桥变');
INSERT INTO `stationimage` VALUES (28, '202207305065.JPG', '数字配线架01', '', '2022-07-30 00:00:00.000000', '1002', '220Kv南桥变');
INSERT INTO `stationimage` VALUES (29, '202207301668.JPG', '华为传输05', '', '2022-07-30 00:00:00.000000', '2001', '220Kv南桥变');
INSERT INTO `stationimage` VALUES (30, '202207301254.JPG', '华为传输04', '', '2022-07-30 00:00:00.000000', '2001', '220Kv南桥变');
INSERT INTO `stationimage` VALUES (34, '202207307108.JPG', '机柜背面', '', '2022-07-30 00:00:00.000000', '8001', '220Kv五里变');
INSERT INTO `stationimage` VALUES (35, '202207309776.JPG', '机柜布局', '', '2022-07-30 00:00:00.000000', '8001', '220Kv南桥变');
INSERT INTO `stationimage` VALUES (41, '202207307115.JPG', '机柜03', '', '2022-07-30 00:00:00.000000', '8001', '220Kv南桥变');
INSERT INTO `stationimage` VALUES (47, '202207311284.JPG', '光纤配线架', '', '2022-07-31 00:00:00.000000', '1003', '220Kv南桥变');

-- ----------------------------
-- Table structure for tele_station
-- ----------------------------
DROP TABLE IF EXISTS `tele_station`;
CREATE TABLE `tele_station`  (
  `station_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `build_date` date NULL DEFAULT NULL,
  `station_level_id` bigint(0) NOT NULL,
  `station_model_id` bigint(0) NOT NULL,
  `station_region_id` bigint(0) NOT NULL,
  PRIMARY KEY (`station_name`) USING BTREE,
  INDEX `tele_station_station_level_id_5eb342ea_fk_station_level_id`(`station_level_id`) USING BTREE,
  INDEX `tele_station_station_model_id_2fbe6da2_fk_station_model_id`(`station_model_id`) USING BTREE,
  INDEX `tele_station_station_region_id_095df1f2_fk_station_region_id`(`station_region_id`) USING BTREE,
  CONSTRAINT `tele_station_station_level_id_5eb342ea_fk_station_level_id` FOREIGN KEY (`station_level_id`) REFERENCES `station_level` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tele_station_station_model_id_2fbe6da2_fk_station_model_id` FOREIGN KEY (`station_model_id`) REFERENCES `station_model` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tele_station_station_region_id_095df1f2_fk_station_region_id` FOREIGN KEY (`station_region_id`) REFERENCES `station_region` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tele_station
-- ----------------------------
INSERT INTO `tele_station` VALUES ('220Kv丽山变', '2000-12-12', 1, 1, 3);
INSERT INTO `tele_station` VALUES ('220Kv五里变', '1999-12-12', 1, 1, 5);
INSERT INTO `tele_station` VALUES ('220Kv南桥变', '1999-12-12', 1, 1, 1);
INSERT INTO `tele_station` VALUES ('220Kv掇刀变', '1999-12-12', 1, 1, 1);
INSERT INTO `tele_station` VALUES ('220Kv普云变', '1999-12-12', 1, 1, 4);
INSERT INTO `tele_station` VALUES ('220Kv枣山变', '1999-12-12', 1, 2, 1);
INSERT INTO `tele_station` VALUES ('220Kv柳河变', '1999-12-12', 1, 1, 4);
INSERT INTO `tele_station` VALUES ('220Kv爱飞客变', '1999-12-12', 1, 1, 1);
INSERT INTO `tele_station` VALUES ('220Kv胡集变', '1999-12-12', 1, 1, 3);
INSERT INTO `tele_station` VALUES ('220Kv郢中变', '1999-12-12', 1, 2, 3);
INSERT INTO `tele_station` VALUES ('220Kv长林变', '1999-12-12', 1, 2, 5);
INSERT INTO `tele_station` VALUES ('220Kv雍冲变', '1999-12-12', 1, 1, 1);
INSERT INTO `tele_station` VALUES ('220Kv马家磅变', '1999-12-12', 1, 2, 4);

-- ----------------------------
-- Table structure for user_account
-- ----------------------------
DROP TABLE IF EXISTS `user_account`;
CREATE TABLE `user_account`  (
  `loginid` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `loginpwd` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `name` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `department` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `position` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `mobile` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `edit_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`loginid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_account
-- ----------------------------
INSERT INTO `user_account` VALUES ('1001', '0ea666e2c3349e02236aa74b0890537c', '严少文', 1, '财务部', '主管', '138999999999', '12345678@qq.com', '2022-07-31 01:31:10.000000', '2022-07-15 23:21:36.000000', '2022-07-31 08:50:11.000000');
INSERT INTO `user_account` VALUES ('1002', '0ea666e2c3349e02236aa74b0890537c', '刘真', 1, '信息部', '主管', '13888888888', '12345678@qq.com', '2022-07-31 13:48:17.000000', '2022-07-15 23:22:28.000000', '2022-07-19 01:50:19.000000');
INSERT INTO `user_account` VALUES ('1003', '0ea666e2c3349e02236aa74b0890537c', '王凤敏', 1, '互联网部', '主管', '13888888888', '12345678@qq.com', '2022-07-23 12:37:11.000000', '2022-07-15 23:23:05.000000', '2022-07-19 01:50:46.000000');
INSERT INTO `user_account` VALUES ('1004', '0ea666e2c3349e02236aa74b0890537c', '刘蕾', 1, '数字化部', '主管', '13888888888', '12345678@qq.com', '2022-07-31 11:20:12.000000', '2022-07-15 23:24:09.000000', '2022-07-19 01:50:55.000000');
INSERT INTO `user_account` VALUES ('1005', '0ea666e2c3349e02236aa74b0890537c', '余邦权', 1, '运检部', '主管', '13888888888', '52345678@qq.com', '2022-07-23 12:39:42.000000', '2022-07-16 00:37:07.000000', '2022-07-23 12:39:03.000000');
INSERT INTO `user_account` VALUES ('1006', '0ea666e2c3349e02236aa74b0890537c', '张虎', 1, '安监部', '主管', '13888888888', '12345678@qq.com', '2022-07-17 23:43:53.000000', '2022-07-16 01:06:23.000000', '2022-07-19 07:55:05.000000');
INSERT INTO `user_account` VALUES ('1007', '0ea666e2c3349e02236aa74b0890537c', '秦振亮', 1, '配电部', '主管', '13888888888', '52345678@qq.com', '2022-07-16 08:09:44.000000', '2022-07-16 01:07:56.000000', '2022-07-20 21:46:24.000000');

-- ----------------------------
-- Table structure for user_menu
-- ----------------------------
DROP TABLE IF EXISTS `user_menu`;
CREATE TABLE `user_menu`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `order` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `title`(`title`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_menu
-- ----------------------------
INSERT INTO `user_menu` VALUES (1, '保护稳控', 'fa fa-sitemap', 10);
INSERT INTO `user_menu` VALUES (2, '会议系统', 'fa fa-sitemap', 20);
INSERT INTO `user_menu` VALUES (3, '交换系统', 'fa fa-sitemap', 30);
INSERT INTO `user_menu` VALUES (4, '传输系统', 'fa fa-sitemap', 40);
INSERT INTO `user_menu` VALUES (5, '电源系统', 'fa fa-sitemap', 50);
INSERT INTO `user_menu` VALUES (6, '基础管理', 'fa fa-sitemap', 60);
INSERT INTO `user_menu` VALUES (34, '用户角色', 'fa fa-user-circle-o', 70);

-- ----------------------------
-- Table structure for user_permission
-- ----------------------------
DROP TABLE IF EXISTS `user_permission`;
CREATE TABLE `user_permission`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `order` int(0) NULL DEFAULT NULL,
  `menu_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_Permission_order_72715058_uniq`(`order`) USING BTREE,
  INDEX `user_Permission_menu_id_2ede3c4e_fk_user_Menu_id`(`menu_id`) USING BTREE,
  CONSTRAINT `user_Permission_menu_id_2ede3c4e_fk_user_Menu_id` FOREIGN KEY (`menu_id`) REFERENCES `user_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1055 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_permission
-- ----------------------------
INSERT INTO `user_permission` VALUES (1, '线路保护-光缆', '/protection/line/', 1010, 1);
INSERT INTO `user_permission` VALUES (2, '线路保护-设备', '/protection/shebei/', 1020, 1);
INSERT INTO `user_permission` VALUES (3, '视频终端', '/meeting/shipin/', 2010, 2);
INSERT INTO `user_permission` VALUES (1022, '音频终端', '/meeting/yinpin/', 2020, 2);
INSERT INTO `user_permission` VALUES (1023, '调度交换', '/exchange/ddjh/', 3010, 3);
INSERT INTO `user_permission` VALUES (1024, '行政交换', '/exchange/xzjh/', 3020, 3);
INSERT INTO `user_permission` VALUES (1025, '华为传输', '/transform/huawei/', 4010, 4);
INSERT INTO `user_permission` VALUES (1026, '中兴传输', '/transform/zhongxing/', 4020, 4);
INSERT INTO `user_permission` VALUES (1027, '烽火传输', '/transform/fenghuo/', 4030, 4);
INSERT INTO `user_permission` VALUES (1028, '高频开关电源', '/power/gpkg/', 5010, 5);
INSERT INTO `user_permission` VALUES (1029, '直流分配屏', '/power/zlfp/', 5020, 5);
INSERT INTO `user_permission` VALUES (1030, '交流分配屏', '/power/jldy/', 5030, 5);
INSERT INTO `user_permission` VALUES (1031, '蓄电池组', '/power/battery/', 5040, 5);
INSERT INTO `user_permission` VALUES (1032, 'UPS设备', '/power/ups/', 5050, 5);
INSERT INTO `user_permission` VALUES (1033, '运维检修', '/basement/yunwei/', 6010, 6);
INSERT INTO `user_permission` VALUES (1034, '安全管理', '/basement/safety/', 6020, 6);
INSERT INTO `user_permission` VALUES (1036, '账号管理', '/user/account/', 3410, 34);
INSERT INTO `user_permission` VALUES (1037, '角色管理', '/user/roles/', 3420, 34);
INSERT INTO `user_permission` VALUES (1039, '菜单管理', '/user/menu/', 3430, 34);
INSERT INTO `user_permission` VALUES (1040, '权限管理', '/user/permission/', 3440, 34);
INSERT INTO `user_permission` VALUES (1053, '站点维护', '/basement/station/', 6006, 6);
INSERT INTO `user_permission` VALUES (1054, '图片编辑', '/basement/image/', 6007, 6);

-- ----------------------------
-- Table structure for user_permission_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_permission_roles`;
CREATE TABLE `user_permission_roles`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `permission_id` int(0) NOT NULL,
  `roles_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_Permission_roles_permission_id_roles_id_441073fd_uniq`(`permission_id`, `roles_id`) USING BTREE,
  INDEX `user_Permission_roles_roles_id_eb019eb2_fk_usr_Roles_id`(`roles_id`) USING BTREE,
  CONSTRAINT `user_Permission_role_permission_id_1157df4b_fk_user_Perm` FOREIGN KEY (`permission_id`) REFERENCES `user_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_Permission_roles_roles_id_eb019eb2_fk_usr_Roles_id` FOREIGN KEY (`roles_id`) REFERENCES `usr_roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 148 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_permission_roles
-- ----------------------------
INSERT INTO `user_permission_roles` VALUES (62, 1, 1);
INSERT INTO `user_permission_roles` VALUES (82, 1, 6);
INSERT INTO `user_permission_roles` VALUES (112, 1, 11);
INSERT INTO `user_permission_roles` VALUES (129, 1, 12);
INSERT INTO `user_permission_roles` VALUES (63, 2, 1);
INSERT INTO `user_permission_roles` VALUES (83, 2, 6);
INSERT INTO `user_permission_roles` VALUES (113, 2, 11);
INSERT INTO `user_permission_roles` VALUES (130, 2, 12);
INSERT INTO `user_permission_roles` VALUES (64, 3, 1);
INSERT INTO `user_permission_roles` VALUES (87, 3, 7);
INSERT INTO `user_permission_roles` VALUES (114, 3, 11);
INSERT INTO `user_permission_roles` VALUES (131, 3, 12);
INSERT INTO `user_permission_roles` VALUES (80, 1022, 1);
INSERT INTO `user_permission_roles` VALUES (91, 1022, 7);
INSERT INTO `user_permission_roles` VALUES (126, 1022, 11);
INSERT INTO `user_permission_roles` VALUES (143, 1022, 12);
INSERT INTO `user_permission_roles` VALUES (81, 1023, 1);
INSERT INTO `user_permission_roles` VALUES (96, 1023, 8);
INSERT INTO `user_permission_roles` VALUES (127, 1023, 11);
INSERT INTO `user_permission_roles` VALUES (144, 1023, 12);
INSERT INTO `user_permission_roles` VALUES (61, 1024, 1);
INSERT INTO `user_permission_roles` VALUES (111, 1024, 11);
INSERT INTO `user_permission_roles` VALUES (128, 1024, 12);
INSERT INTO `user_permission_roles` VALUES (65, 1025, 1);
INSERT INTO `user_permission_roles` VALUES (97, 1025, 9);
INSERT INTO `user_permission_roles` VALUES (115, 1025, 11);
INSERT INTO `user_permission_roles` VALUES (132, 1025, 12);
INSERT INTO `user_permission_roles` VALUES (66, 1026, 1);
INSERT INTO `user_permission_roles` VALUES (98, 1026, 9);
INSERT INTO `user_permission_roles` VALUES (116, 1026, 11);
INSERT INTO `user_permission_roles` VALUES (133, 1026, 12);
INSERT INTO `user_permission_roles` VALUES (67, 1027, 1);
INSERT INTO `user_permission_roles` VALUES (99, 1027, 9);
INSERT INTO `user_permission_roles` VALUES (117, 1027, 11);
INSERT INTO `user_permission_roles` VALUES (134, 1027, 12);
INSERT INTO `user_permission_roles` VALUES (68, 1028, 1);
INSERT INTO `user_permission_roles` VALUES (103, 1028, 10);
INSERT INTO `user_permission_roles` VALUES (118, 1028, 11);
INSERT INTO `user_permission_roles` VALUES (135, 1028, 12);
INSERT INTO `user_permission_roles` VALUES (69, 1029, 1);
INSERT INTO `user_permission_roles` VALUES (104, 1029, 10);
INSERT INTO `user_permission_roles` VALUES (119, 1029, 11);
INSERT INTO `user_permission_roles` VALUES (136, 1029, 12);
INSERT INTO `user_permission_roles` VALUES (70, 1030, 1);
INSERT INTO `user_permission_roles` VALUES (105, 1030, 10);
INSERT INTO `user_permission_roles` VALUES (120, 1030, 11);
INSERT INTO `user_permission_roles` VALUES (137, 1030, 12);
INSERT INTO `user_permission_roles` VALUES (71, 1031, 1);
INSERT INTO `user_permission_roles` VALUES (106, 1031, 10);
INSERT INTO `user_permission_roles` VALUES (121, 1031, 11);
INSERT INTO `user_permission_roles` VALUES (138, 1031, 12);
INSERT INTO `user_permission_roles` VALUES (72, 1032, 1);
INSERT INTO `user_permission_roles` VALUES (107, 1032, 10);
INSERT INTO `user_permission_roles` VALUES (122, 1032, 11);
INSERT INTO `user_permission_roles` VALUES (139, 1032, 12);
INSERT INTO `user_permission_roles` VALUES (73, 1033, 1);
INSERT INTO `user_permission_roles` VALUES (84, 1033, 6);
INSERT INTO `user_permission_roles` VALUES (88, 1033, 7);
INSERT INTO `user_permission_roles` VALUES (93, 1033, 8);
INSERT INTO `user_permission_roles` VALUES (100, 1033, 9);
INSERT INTO `user_permission_roles` VALUES (108, 1033, 10);
INSERT INTO `user_permission_roles` VALUES (123, 1033, 11);
INSERT INTO `user_permission_roles` VALUES (140, 1033, 12);
INSERT INTO `user_permission_roles` VALUES (74, 1034, 1);
INSERT INTO `user_permission_roles` VALUES (85, 1034, 6);
INSERT INTO `user_permission_roles` VALUES (89, 1034, 7);
INSERT INTO `user_permission_roles` VALUES (94, 1034, 8);
INSERT INTO `user_permission_roles` VALUES (101, 1034, 9);
INSERT INTO `user_permission_roles` VALUES (109, 1034, 10);
INSERT INTO `user_permission_roles` VALUES (124, 1034, 11);
INSERT INTO `user_permission_roles` VALUES (141, 1034, 12);
INSERT INTO `user_permission_roles` VALUES (76, 1036, 1);
INSERT INTO `user_permission_roles` VALUES (77, 1037, 1);
INSERT INTO `user_permission_roles` VALUES (78, 1039, 1);
INSERT INTO `user_permission_roles` VALUES (79, 1040, 1);
INSERT INTO `user_permission_roles` VALUES (145, 1053, 1);
INSERT INTO `user_permission_roles` VALUES (146, 1053, 11);
INSERT INTO `user_permission_roles` VALUES (147, 1054, 1);

-- ----------------------------
-- Table structure for usr_roles
-- ----------------------------
DROP TABLE IF EXISTS `usr_roles`;
CREATE TABLE `usr_roles`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usr_roles
-- ----------------------------
INSERT INTO `usr_roles` VALUES (1, '超级管理员', '查看和编辑系统所有模块信息，进行角色管理和权限分配。');
INSERT INTO `usr_roles` VALUES (6, ' 保护稳控专责', '查询和编辑承载线路保护业务的通信光缆、传输设备，对重载情况进行统计分析。');
INSERT INTO `usr_roles` VALUES (7, '会议系统专责', '查询和编辑视频会议值机以及会议系统设备设施相关信息。');
INSERT INTO `usr_roles` VALUES (8, '交换系统专责', '查询和编辑调度交换系统、行政软交换系统硬件设施和资源配置情况。');
INSERT INTO `usr_roles` VALUES (9, '传输系统专责', '查询和编辑华为传输系统、中兴传输系统、烽火传输系统相关资源信息。');
INSERT INTO `usr_roles` VALUES (10, '电源系统专责', '查询和编辑各类高频开关电源、直流分配屏、蓄电池组等相关设备信息。');
INSERT INTO `usr_roles` VALUES (11, '基础管理专责', '查询和编辑荆门电力通信网的网络架构、隐患缺陷、故障分析、安全管理、现场资料、规章制度等信息。');
INSERT INTO `usr_roles` VALUES (12, '管理员', '查看和编辑系统所有模块');

-- ----------------------------
-- Table structure for usr_roles_account
-- ----------------------------
DROP TABLE IF EXISTS `usr_roles_account`;
CREATE TABLE `usr_roles_account`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `roles_id` int(0) NOT NULL,
  `account_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `usr_Roles_account_roles_id_account_id_aac54860_uniq`(`roles_id`, `account_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usr_roles_account
-- ----------------------------
INSERT INTO `usr_roles_account` VALUES (40, 1, '1001');
INSERT INTO `usr_roles_account` VALUES (41, 1, '1002');
INSERT INTO `usr_roles_account` VALUES (50, 1, '1007');
INSERT INTO `usr_roles_account` VALUES (44, 7, '1005');
INSERT INTO `usr_roles_account` VALUES (43, 8, '1004');
INSERT INTO `usr_roles_account` VALUES (51, 8, '1005');
INSERT INTO `usr_roles_account` VALUES (45, 9, '1006');
INSERT INTO `usr_roles_account` VALUES (47, 9, '1007');
INSERT INTO `usr_roles_account` VALUES (46, 10, '1006');
INSERT INTO `usr_roles_account` VALUES (48, 10, '1007');
INSERT INTO `usr_roles_account` VALUES (42, 12, '1003');

SET FOREIGN_KEY_CHECKS = 1;
