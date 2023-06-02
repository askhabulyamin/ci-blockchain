/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100137
Source Host           : localhost:3306
Source Database       : ci-app

Target Server Type    : MYSQL
Target Server Version : 100137
File Encoding         : 65001

Date: 2023-06-02 11:24:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(50) NOT NULL,
  `type` varchar(15) NOT NULL,
  `role` int(11) NOT NULL,
  `sub_menuid` int(11) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `previous_blockchain` varchar(100) NOT NULL,
  `hash_bim` varchar(100) NOT NULL,
  `nonce` int(15) NOT NULL,
  `transaction` varchar(100) NOT NULL,
  `date_create` datetime NOT NULL,
  `create_by` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of project
-- ----------------------------

-- ----------------------------
-- Table structure for saldo
-- ----------------------------
DROP TABLE IF EXISTS `saldo`;
CREATE TABLE `saldo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(256) NOT NULL,
  `value` int(11) NOT NULL,
  `timedate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of saldo
-- ----------------------------
INSERT INTO `saldo` VALUES ('1', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '989000000', '2023-05-31 06:31:44');

-- ----------------------------
-- Table structure for transaction
-- ----------------------------
DROP TABLE IF EXISTS `transaction`;
CREATE TABLE `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_block` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `to_address` varchar(256) NOT NULL,
  `address` varchar(256) NOT NULL,
  `status` int(3) NOT NULL COMMENT '0= pending,1=success, 2=cancel',
  `date_create` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of transaction
-- ----------------------------
INSERT INTO `transaction` VALUES ('42', '0', '1000000', '4a1439818d6edb2d93d60038e89bd0d0cf3a4eb1c1587b6663609f6bcd985968804f5a72cf7f94c66f99d493a5752c81bb39dac15399c8da3a90e4439c601193Zyy3uZ+9mSnhHMrPXwANY9aMNIYptsiyniQd1UeZfjk=', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '0', '2023-05-29 09:06:36');
INSERT INTO `transaction` VALUES ('45', '0', '100000', '4a1439818d6edb2d93d60038e89bd0d0cf3a4eb1c1587b6663609f6bcd985968804f5a72cf7f94c66f99d493a5752c81bb39dac15399c8da3a90e4439c601193Zyy3uZ+9mSnhHMrPXwANY9aMNIYptsiyniQd1UeZfjk=', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '0', '2023-05-31 12:50:02');
INSERT INTO `transaction` VALUES ('46', '0', '900000', '4a1439818d6edb2d93d60038e89bd0d0cf3a4eb1c1587b6663609f6bcd985968804f5a72cf7f94c66f99d493a5752c81bb39dac15399c8da3a90e4439c601193Zyy3uZ+9mSnhHMrPXwANY9aMNIYptsiyniQd1UeZfjk=', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '0', '2023-05-31 12:53:52');
INSERT INTO `transaction` VALUES ('47', '0', '500000', '4f0abdf2e6c49a17468fbe79df1c11acf2fc340398a770beef75c40d378572f9b0311062932ba68f889545eec7a654beb2240c18dcfc82edca8afe6810abfd86eKwtyxr64kT9CxkQ3AZ3XT7uKmjEy9RU3fJuBk4K1JM=', '4a1439818d6edb2d93d60038e89bd0d0cf3a4eb1c1587b6663609f6bcd985968804f5a72cf7f94c66f99d493a5752c81bb39dac15399c8da3a90e4439c601193Zyy3uZ+9mSnhHMrPXwANY9aMNIYptsiyniQd1UeZfjk=', '0', '2023-05-31 13:00:37');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('22', 'admin', 'admin@gmail.com', 'default.jpg', '$2y$10$hAuramorUDe/f8bynX/olO40b/X3sfgjuut4U4VarSxBYvUQEHLn.', '1', '1', '1683793168');
INSERT INTO `user` VALUES ('23', 'Owner', 'owner@gmail.com', 'default.jpg', '$2y$10$vcuMTeh6Dkd1qTPInff/U.YxkeEh2GHbuwBVTqa9004PN1Vg5q7N.', '2', '1', '1685294798');
INSERT INTO `user` VALUES ('24', 'ContractionManagement', 'contraction_management@gmail.com', 'default.jpg', '$2y$10$.nouB57z/56/5h9e4zJqJe22r8TaQkfH4.zXBqY4.yHrwFQJC87xe', '2', '1', '1685365085');
INSERT INTO `user` VALUES ('25', 'Contractor', 'contractor@gmail.com', 'default.jpg', '$2y$10$orW4GiELuV8Sg31iM.ecP.D89Qmaef5dX/uj1gJwXZxvRWy.KGy4O', '5', '1', '1685528922');

-- ----------------------------
-- Table structure for user_access_menu
-- ----------------------------
DROP TABLE IF EXISTS `user_access_menu`;
CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user_access_menu
-- ----------------------------
INSERT INTO `user_access_menu` VALUES ('1', '1', '1');
INSERT INTO `user_access_menu` VALUES ('3', '2', '2');
INSERT INTO `user_access_menu` VALUES ('116', '1', '2');
INSERT INTO `user_access_menu` VALUES ('128', '1', '4');
INSERT INTO `user_access_menu` VALUES ('130', '2', '5');
INSERT INTO `user_access_menu` VALUES ('133', '1', '3');
INSERT INTO `user_access_menu` VALUES ('134', '2', '4');
INSERT INTO `user_access_menu` VALUES ('136', '4', '4');
INSERT INTO `user_access_menu` VALUES ('137', '5', '2');
INSERT INTO `user_access_menu` VALUES ('138', '5', '4');
INSERT INTO `user_access_menu` VALUES ('139', '6', '2');
INSERT INTO `user_access_menu` VALUES ('140', '6', '4');
INSERT INTO `user_access_menu` VALUES ('141', '7', '2');
INSERT INTO `user_access_menu` VALUES ('142', '7', '4');
INSERT INTO `user_access_menu` VALUES ('143', '8', '4');
INSERT INTO `user_access_menu` VALUES ('144', '8', '2');
INSERT INTO `user_access_menu` VALUES ('145', '9', '4');
INSERT INTO `user_access_menu` VALUES ('146', '9', '2');
INSERT INTO `user_access_menu` VALUES ('147', '1', '9');
INSERT INTO `user_access_menu` VALUES ('148', '4', '9');
INSERT INTO `user_access_menu` VALUES ('149', '5', '9');
INSERT INTO `user_access_menu` VALUES ('150', '7', '9');
INSERT INTO `user_access_menu` VALUES ('151', '9', '9');
INSERT INTO `user_access_menu` VALUES ('152', '1', '10');
INSERT INTO `user_access_menu` VALUES ('153', '1', '12');
INSERT INTO `user_access_menu` VALUES ('154', '4', '10');
INSERT INTO `user_access_menu` VALUES ('156', '6', '9');
INSERT INTO `user_access_menu` VALUES ('159', '4', '2');
INSERT INTO `user_access_menu` VALUES ('161', '2', '10');
INSERT INTO `user_access_menu` VALUES ('162', '2', '9');
INSERT INTO `user_access_menu` VALUES ('163', '2', '12');
INSERT INTO `user_access_menu` VALUES ('164', '5', '10');
INSERT INTO `user_access_menu` VALUES ('165', '5', '12');
INSERT INTO `user_access_menu` VALUES ('166', '8', '10');
INSERT INTO `user_access_menu` VALUES ('168', '1', '0');
INSERT INTO `user_access_menu` VALUES ('169', '2', '0');
INSERT INTO `user_access_menu` VALUES ('170', '4', '0');
INSERT INTO `user_access_menu` VALUES ('171', '5', '0');
INSERT INTO `user_access_menu` VALUES ('172', '7', '0');
INSERT INTO `user_access_menu` VALUES ('173', '9', '0');
INSERT INTO `user_access_menu` VALUES ('174', '8', '0');

-- ----------------------------
-- Table structure for user_menu
-- ----------------------------
DROP TABLE IF EXISTS `user_menu`;
CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(50) NOT NULL,
  `icon` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user_menu
-- ----------------------------
INSERT INTO `user_menu` VALUES ('0', 'Dashboard', '');
INSERT INTO `user_menu` VALUES ('1', 'Admin', null);
INSERT INTO `user_menu` VALUES ('2', 'User', null);
INSERT INTO `user_menu` VALUES ('3', 'Menu', null);
INSERT INTO `user_menu` VALUES ('9', 'Block 1 Planning', 'icon-1.jpg');
INSERT INTO `user_menu` VALUES ('10', 'Block 2 Construction', 'icon-2.jpg');
INSERT INTO `user_menu` VALUES ('12', 'Block 3 Smart Contract & Payment', 'icon-3.jpg');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', 'Administrator');
INSERT INTO `user_role` VALUES ('2', 'Owner');
INSERT INTO `user_role` VALUES ('4', 'Construction Management');
INSERT INTO `user_role` VALUES ('5', 'Contractor');
INSERT INTO `user_role` VALUES ('7', 'Engineer');
INSERT INTO `user_role` VALUES ('8', 'Quantity Surveyor');
INSERT INTO `user_role` VALUES ('9', 'Designer');

-- ----------------------------
-- Table structure for user_sub_menu
-- ----------------------------
DROP TABLE IF EXISTS `user_sub_menu`;
CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `icon_file` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `is_active` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user_sub_menu
-- ----------------------------
INSERT INTO `user_sub_menu` VALUES ('1', '0', 'Dashboard', 'Dashboard', '', 'fas fa-fw fa-tachometer-alt', '1');
INSERT INTO `user_sub_menu` VALUES ('2', '2', 'My Profile', 'user', '', 'fas fa-fw fa-user', '1');
INSERT INTO `user_sub_menu` VALUES ('3', '2', 'Edit Profile', 'user/edit', '', 'fas fa-fw fa-user-edit', '1');
INSERT INTO `user_sub_menu` VALUES ('5', '3', 'Submenu Management', 'menu/subMenu', '', 'fas fa-fw fa-folder-open', '1');
INSERT INTO `user_sub_menu` VALUES ('8', '3', 'Menu Management', 'menu', '', 'fas fa-fw fa-folder', '1');
INSERT INTO `user_sub_menu` VALUES ('9', '1', 'Role', 'admin/role', '', 'fas fa-fw fa-user-tie', '1');
INSERT INTO `user_sub_menu` VALUES ('10', '2', 'Change Password', 'user/changepassword', '', 'fas fw fa-key', '1');
INSERT INTO `user_sub_menu` VALUES ('13', '4', 'Block Project', 'block', '', 'fas fa-project-diagram', '1');
INSERT INTO `user_sub_menu` VALUES ('16', '4', 'Validation', 'block/validation', '', 'fas fa-project-diagram', '1');
INSERT INTO `user_sub_menu` VALUES ('17', '4', 'Verification', 'block/verification', '', 'fas fa-project-diagram', '1');
INSERT INTO `user_sub_menu` VALUES ('18', '9', 'Design', 'block', 'icon-folder.jpeg', 'fas fa-fw fa-folder', '1');
INSERT INTO `user_sub_menu` VALUES ('19', '9', 'Drawing 3D', 'block', 'icon-folder-1.jpeg', 'fas fa-fw fa-folder', '1');
INSERT INTO `user_sub_menu` VALUES ('21', '12', 'Payment', 'block/transaction', 'icon-folder-2.jpeg', 'fas fa-dollar-sign', '1');
INSERT INTO `user_sub_menu` VALUES ('22', '9', 'Engineering', 'block', 'icon-folder-2.jpeg', 'fas fa-fw fa-folder', '1');
INSERT INTO `user_sub_menu` VALUES ('23', '10', 'Shop Drawing', 'block', 'icon-folder.jpeg', 'fas fa-fw fa-folder', '1');
INSERT INTO `user_sub_menu` VALUES ('24', '10', 'Progress', 'block', 'icon-folder-2.jpeg', 'fas fa-fw fa-folder', '1');
INSERT INTO `user_sub_menu` VALUES ('25', '10', 'Quantity', 'block', 'icon-folder-1.jpeg', 'fas fa-fw fa-folder', '1');
INSERT INTO `user_sub_menu` VALUES ('26', '10', 'Schedule', 'block', 'icon-folder-2.jpeg', 'fas fa-fw fa-folder', '1');
INSERT INTO `user_sub_menu` VALUES ('27', '12', 'Smart Contract', 'block/smartcontract', 'icon-folder.jpeg', 'fas fa-project-diagram', '1');

-- ----------------------------
-- Table structure for user_token
-- ----------------------------
DROP TABLE IF EXISTS `user_token`;
CREATE TABLE `user_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(60) NOT NULL,
  `token` varchar(256) NOT NULL,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user_token
-- ----------------------------
INSERT INTO `user_token` VALUES ('27', 'admin@gmail.com', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '1683793168');
INSERT INTO `user_token` VALUES ('28', 'owner@gmail.com', '4a1439818d6edb2d93d60038e89bd0d0cf3a4eb1c1587b6663609f6bcd985968804f5a72cf7f94c66f99d493a5752c81bb39dac15399c8da3a90e4439c601193Zyy3uZ+9mSnhHMrPXwANY9aMNIYptsiyniQd1UeZfjk=', '1685294798');
INSERT INTO `user_token` VALUES ('29', '', 'ba56e1d8dff622e5f1fc51eef2fea0a9ef90caf2e884e04e3d49cad1d8b5d246a27100ffc4794ced9113a0520767edb482283ec265607ec468d26620e4afecd5hR2ukHUw0l0TiGd927aWA4sfSJjp1ctARlfAtqj689XP7eStEeDSWCtRUnXRcIEa', '1685365085');
INSERT INTO `user_token` VALUES ('30', 'contractor@gmail.com', '4f0abdf2e6c49a17468fbe79df1c11acf2fc340398a770beef75c40d378572f9b0311062932ba68f889545eec7a654beb2240c18dcfc82edca8afe6810abfd86eKwtyxr64kT9CxkQ3AZ3XT7uKmjEy9RU3fJuBk4K1JM=', '1685528923');
