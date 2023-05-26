/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100137
Source Host           : localhost:3306
Source Database       : ci-app

Target Server Type    : MYSQL
Target Server Version : 100137
File Encoding         : 65001

Date: 2023-05-26 23:07:38
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('6', 'dad', 'dasd', '1', '18', 'juknis.200612113552.pdf', '0', '0', '0', '0', '2023-05-19 17:55:08', '');
INSERT INTO `project` VALUES ('7', 'dasd', 'dad', '4', '16', 'Nomor Induk Siswa Nasional.pdf', '56f7ff9822d8917b032f5314ad361427fd86c56abe80fc765899bb71e085af46755fc4a871cb799b7546374df9ebfc46e904', '732a25f16debe3587356669b042051e0f5f3ddc5cc474d6d2db19e3ea23228b3621fbca8ce75fc96df119917f0ea9d12e997', '729', 'b131699bb180118505ea7df8795a21506f77aad6a4de315aacff274b0dd0d3c2a6a7bd53d64b2ea31bb55977af31dfaad903', '2023-05-19 17:59:00', '');
INSERT INTO `project` VALUES ('8', 'fsaf', 'fsaf', '1', '19', 'SURAT-PERNYATAAN.pdf', '82c5424f3705ba384a3e6228bd503fcca59a912168e809085208c168a531538b2b8ecfd317431820c89d8f95fe5cd6df3916', '94c8d12019ba2d0eea39e7086e26a52c319018268602790d85fac7b7da1118d3c1665fe2acdf7a233c01254c04f7cc8cb5da', '8', 'b7c18f96d2c2730c7e87d35f743a224c9b4bb7738ab64337372b85e5501f8b1f3168afab623903dbbe9af970dbaa161aa08c', '2023-05-19 18:04:09', 'ahmad.askhabulyamin@gmail.com');
INSERT INTO `project` VALUES ('9', 'dasdddda', 'gsdg', '5', '19', 'SURAT-PERNYATAAN.pdf', '8345dfba3c8e169b23c3378cf486666857d0d869a83eeae334f0ce4dbfb4063dbb72537051761ea39e9bbc050f87fe8f4227', '19138f812b5c938b6dda0c98e17d66da1ec529226b9f6767bfac8cd4abf0626f071945f7f13b20c803d22f54a1d655001ba6', '2147483647', 'ab913537b63ee03409280fd3e9c14553102fd475077d4df6c642f85ea330480623be33808ad783068f619336de06742bd2da', '2023-05-19 18:04:21', 'ahmad.askhabulyamin@gmail.com');
INSERT INTO `project` VALUES ('10', 'Brin Ancol', 'Gedung Kantor', '5', '19', 'ppdb_sptjm.pdf', 'e22c79e540b215a17f517b2c0066193d643a7167fd01db6da146375ada985c706cc13dcaa6c992d27472e4a8f0346a1d3096', '7f85270004582a70cf068fb3b36964950371ac2869fc520b64112d7f05bac294f8609ffaefa95cff992f32c1a18087dc6bc3', '1', 'f45e01f1e6c253b40da024063daa3890ecafa5fa653cefd9444a8b3f36775be091cc6c545b5f41cb4997c76f72aaa3adb7b2', '2023-05-20 08:28:38', 'ahmad.askhabulyamin@gmail.com');
INSERT INTO `project` VALUES ('11', 'BRIN Ancol', 'Permodelan BIM', '5', '19', 'ppdb_sptjm.pdf', '6465d2c65fcf69eab50adc2cfde10c8575dcda04afe9963fd987c4e90df9089fd37677fb2791d763ea6669ceae4418798b9c', '599c6c28e980ad3f5debc62937309d3785c3f2a3fd8f3922060092fa2c10b5879d3884d6974d9d9c1e8bd03d1823bac38743', '3', '4ce685b5676c5526c3148cbb74ce9732c12f4f5e20dc6598a3391a3ffc08f0e27aa31ee713d69c0b8784be289c58671891de', '2023-05-20 08:47:58', 'ahmad.askhabulyamin@gmail.com');
INSERT INTO `project` VALUES ('12', 'OKE', 'SIP', '1', '18', 'icon-41.jpg', '42bbf52ac796aa9bb486a56ffc539c440b8a64181833194b0300801a647ca27aaff31605a185f6ee1305dd11c5c8e4f80910', '02c597a8bc498c24cdf779df592a7354e09b284194d5262688250465f54d1424a3e51519516cad64d57f66da1405d04b0cc0', '2147483647', 'e415a1c9b9543a8b0b0a27b029b91f2b00abc945b20592d53734d1d599d1f75c20249d34c6455669488a6391f7f192617d7f', '2023-05-25 07:19:24', 'ahmad.askhabulyamin@gmail.com');

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('18', 'aqshalzakki', 'kecoatempur2@gmail.com', 'default.jpg', '$2y$10$sCiotAojcOrC6Q2y5rZHU.K7cxrGis1cl0fENCQ9eZqguF1AaFlFi', '1', '1', '1566659364');
INSERT INTO `user` VALUES ('21', 'jonitempur', 'jonitempur2@gmail.com', 'default.jpg', '$2y$10$LMQw8an68EttGvvNoyDdZOZBRA4lP5VnUEtKgWA28DnVM0phiXLQq', '2', '1', '1566659633');
INSERT INTO `user` VALUES ('22', 'yamin2w', 'ahmad.askhabulyamin@gmail.com', 'default.jpg', '$2y$10$hAuramorUDe/f8bynX/olO40b/X3sfgjuut4U4VarSxBYvUQEHLn.', '1', '1', '1683793168');

-- ----------------------------
-- Table structure for user_access_menu
-- ----------------------------
DROP TABLE IF EXISTS `user_access_menu`;
CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

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
INSERT INTO `user_access_menu` VALUES ('135', '4', '2');
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
INSERT INTO `user_access_menu` VALUES ('155', '4', '12');
INSERT INTO `user_access_menu` VALUES ('156', '6', '9');
INSERT INTO `user_access_menu` VALUES ('157', '6', '10');
INSERT INTO `user_access_menu` VALUES ('158', '6', '12');

-- ----------------------------
-- Table structure for user_menu
-- ----------------------------
DROP TABLE IF EXISTS `user_menu`;
CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(50) NOT NULL,
  `icon` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user_menu
-- ----------------------------
INSERT INTO `user_menu` VALUES ('1', 'Admin', null);
INSERT INTO `user_menu` VALUES ('2', 'User', null);
INSERT INTO `user_menu` VALUES ('3', 'Menu', null);
INSERT INTO `user_menu` VALUES ('9', 'Block 1 Perencanaan', 'icon-1.jpg');
INSERT INTO `user_menu` VALUES ('10', 'Block 2 Progress', 'icon-2.jpg');
INSERT INTO `user_menu` VALUES ('12', 'Block 3 Smart Contract Payment', 'icon-3.jpg');

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
INSERT INTO `user_role` VALUES ('2', 'Member');
INSERT INTO `user_role` VALUES ('4', 'Operator Manager');
INSERT INTO `user_role` VALUES ('5', 'Owner');
INSERT INTO `user_role` VALUES ('6', 'Architect');
INSERT INTO `user_role` VALUES ('7', 'Engineer');
INSERT INTO `user_role` VALUES ('8', 'Surveyor');
INSERT INTO `user_role` VALUES ('9', 'Contractor');

-- ----------------------------
-- Table structure for user_sub_menu
-- ----------------------------
DROP TABLE IF EXISTS `user_sub_menu`;
CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `icon_file` varchar(50) DEFAULT NULL,
  `icon` varchar(50) NOT NULL,
  `is_active` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user_sub_menu
-- ----------------------------
INSERT INTO `user_sub_menu` VALUES ('1', '9', 'Dashboard', 'admin', null, 'fas fa-fw fa-tachometer-alt', '1');
INSERT INTO `user_sub_menu` VALUES ('2', '2', 'My Profile', 'user', null, 'fas fa-fw fa-user', '1');
INSERT INTO `user_sub_menu` VALUES ('3', '2', 'Edit Profile', 'user/edit', null, 'fas fa-fw fa-user-edit', '1');
INSERT INTO `user_sub_menu` VALUES ('5', '3', 'Submenu Management', 'menu/subMenu', null, 'fas fa-fw fa-folder-open', '1');
INSERT INTO `user_sub_menu` VALUES ('8', '3', 'Menu Management', 'menu', null, 'fas fa-fw fa-folder', '1');
INSERT INTO `user_sub_menu` VALUES ('9', '1', 'Role', 'admin/role', null, 'fas fa-fw fa-user-tie', '1');
INSERT INTO `user_sub_menu` VALUES ('10', '2', 'Change Password', 'user/changepassword', null, 'fas fw fa-key', '1');
INSERT INTO `user_sub_menu` VALUES ('13', '4', 'Block Project', 'block', null, 'fas fa-project-diagram', '1');
INSERT INTO `user_sub_menu` VALUES ('16', '4', 'Validation', 'block/validation', null, 'fas fa-project-diagram', '1');
INSERT INTO `user_sub_menu` VALUES ('17', '4', 'Verification', 'block/verification', null, 'fas fa-project-diagram', '1');
INSERT INTO `user_sub_menu` VALUES ('18', '9', 'Design', 'block', 'icon-folder.jpeg', 'fas fa-fw fa-folder', '1');
INSERT INTO `user_sub_menu` VALUES ('19', '9', 'Drawing 3D', 'block', 'icon-folder-1.jpeg', 'fas fa-fw fa-folder', '1');
INSERT INTO `user_sub_menu` VALUES ('20', '10', 'test', 'block', null, 'fas fa-fw fa-folder', '1');

-- ----------------------------
-- Table structure for user_token
-- ----------------------------
DROP TABLE IF EXISTS `user_token`;
CREATE TABLE `user_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(60) NOT NULL,
  `token` varchar(60) NOT NULL,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user_token
-- ----------------------------
INSERT INTO `user_token` VALUES ('27', 'ahmad.askhabulyamin@gmail.com', 'EiaXLLHDqF/56vHLIbm7qSIgyOCVEwVj5byX2N4++Sw=', '1683793168');
