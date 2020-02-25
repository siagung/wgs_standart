/*
 Navicat Premium Data Transfer

 Source Server         : m11
 Source Server Type    : MySQL
 Source Server Version : 50644
 Source Host           : localhost:3311
 Source Schema         : db_wgsv01

 Target Server Type    : MySQL
 Target Server Version : 50644
 File Encoding         : 65001

 Date: 25/02/2020 15:24:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_role
-- ----------------------------
DROP TABLE IF EXISTS `auth_role`;
CREATE TABLE `auth_role`  (
  `roleId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`roleId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_role
-- ----------------------------
INSERT INTO `auth_role` VALUES (1, 'Administrator');
INSERT INTO `auth_role` VALUES (2, 'User');

-- ----------------------------
-- Table structure for auth_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_role_permission`;
CREATE TABLE `auth_role_permission`  (
  `roleId` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_role_permission
-- ----------------------------
INSERT INTO `auth_role_permission` VALUES ('1', 'admin:*');
INSERT INTO `auth_role_permission` VALUES ('2', 'user:read');

-- ----------------------------
-- Table structure for auth_users
-- ----------------------------
DROP TABLE IF EXISTS `auth_users`;
CREATE TABLE `auth_users`  (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_users
-- ----------------------------
INSERT INTO `auth_users` VALUES (1, 'admin', 'admin');
INSERT INTO `auth_users` VALUES (2, 'user', '123');

-- ----------------------------
-- Table structure for auth_users_roles
-- ----------------------------
DROP TABLE IF EXISTS `auth_users_roles`;
CREATE TABLE `auth_users_roles`  (
  `userId` int(11) NULL DEFAULT NULL,
  `roleId` int(11) NULL DEFAULT NULL,
  `roleName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_users_roles
-- ----------------------------
INSERT INTO `auth_users_roles` VALUES (1, 1, 'Administrator');
INSERT INTO `auth_users_roles` VALUES (2, 2, 'User');

-- ----------------------------
-- Table structure for authgroup
-- ----------------------------
DROP TABLE IF EXISTS `authgroup`;
CREATE TABLE `authgroup`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `prod_tambah` tinyint(1) UNSIGNED NULL DEFAULT 0,
  `prod_ubah` tinyint(1) UNSIGNED NULL DEFAULT 0,
  `prod_hapus` tinyint(1) UNSIGNED NULL DEFAULT 0,
  `prod_detail` tinyint(1) UNSIGNED NULL DEFAULT 0,
  `cust_tambah` tinyint(1) UNSIGNED NULL DEFAULT 0,
  `cust_ubah` tinyint(1) UNSIGNED NULL DEFAULT 0,
  `cust_hapus` tinyint(1) UNSIGNED NULL DEFAULT 0,
  `cust_detail` tinyint(1) UNSIGNED NULL DEFAULT 0,
  `trans_tambah` tinyint(1) UNSIGNED NULL DEFAULT 0,
  `trans_ubah` tinyint(1) UNSIGNED NULL DEFAULT 0,
  `trans_hapus` tinyint(1) UNSIGNED NULL DEFAULT 0,
  `trans_detail` tinyint(1) UNSIGNED NULL DEFAULT 0,
  `settings` tinyint(1) UNSIGNED NULL DEFAULT 0,
  `reports` tinyint(1) UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of authgroup
-- ----------------------------
INSERT INTO `authgroup` VALUES (1, 'Administrator', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `authgroup` VALUES (2, 'User', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs`  (
  `thread_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tanggal` datetime(0) NULL DEFAULT NULL,
  `kelas` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pesan` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of logs
-- ----------------------------
INSERT INTO `logs` VALUES ('', '2014-01-26 08:00:09', 'com.mdstore.app.controllers.MainController:113', 'ERROR', 'im doing something - error -', 1);

-- ----------------------------
-- Table structure for tb_barang
-- ----------------------------
DROP TABLE IF EXISTS `tb_barang`;
CREATE TABLE `tb_barang`  (
  `id` int(18) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cbarang` char(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `vnama_barang` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `banalisa` tinyint(1) NOT NULL DEFAULT 0,
  `breduct` tinyint(1) NOT NULL DEFAULT 0,
  `breg` tinyint(1) NOT NULL DEFAULT 0,
  `baktif` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_barang
-- ----------------------------
INSERT INTO `tb_barang` VALUES (1, 'TBS', 'Tandan Buah Segar ff', 0, 1, 0, 1);

-- ----------------------------
-- Table structure for tb_contract
-- ----------------------------
DROP TABLE IF EXISTS `tb_contract`;
CREATE TABLE `tb_contract`  (
  `id` int(18) UNSIGNED NOT NULL AUTO_INCREMENT,
  `vno_kontrak` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_cust` int(18) NOT NULL,
  `ccode_cust` char(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_barang` int(18) NOT NULL,
  `ccode_barang` char(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nton` double NOT NULL DEFAULT 0,
  `tgl_mulai` date NULL DEFAULT NULL,
  `tgl_selesai` date NULL DEFAULT NULL,
  `vremarks` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `dsisa` double NOT NULL DEFAULT 0,
  `date_created` datetime(0) NULL DEFAULT NULL,
  `date_updated` datetime(0) NULL DEFAULT NULL,
  `user_update` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_cust
-- ----------------------------
DROP TABLE IF EXISTS `tb_cust`;
CREATE TABLE `tb_cust`  (
  `id` int(18) NOT NULL AUTO_INCREMENT,
  `ccode_cust` char(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `vnama_customer` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `vkota` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `vtelephone` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_barang` int(18) NULL DEFAULT 0,
  `cbarang` char(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_estate
-- ----------------------------
DROP TABLE IF EXISTS `tb_estate`;
CREATE TABLE `tb_estate`  (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `cced` char(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_mobil
-- ----------------------------
DROP TABLE IF EXISTS `tb_mobil`;
CREATE TABLE `tb_mobil`  (
  `id` int(18) NOT NULL AUTO_INCREMENT,
  `vbk` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ndelay` int(11) NOT NULL DEFAULT 0,
  `ddiff` double NOT NULL DEFAULT 0,
  `dtare` double NOT NULL DEFAULT 0,
  `tgl_expire` date NULL DEFAULT NULL,
  `dmin_tare` double NOT NULL DEFAULT 0,
  `dmax_tare` double NOT NULL DEFAULT 0,
  `dmin_nett` double NOT NULL DEFAULT 0,
  `dmax_nett` double NOT NULL DEFAULT 0,
  `csource` char(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_preview
-- ----------------------------
DROP TABLE IF EXISTS `tb_preview`;
CREATE TABLE `tb_preview`  (
  `FCCOLOR` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FCCONT` varchar(254) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_seller
-- ----------------------------
DROP TABLE IF EXISTS `tb_seller`;
CREATE TABLE `tb_seller`  (
  `FCCUST` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FCNAMA` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FCALAMAT` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FCKET` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FCKOTA` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FCTEL` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FCPROD` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_timbang
-- ----------------------------
DROP TABLE IF EXISTS `tb_timbang`;
CREATE TABLE `tb_timbang`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tbtype` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `serialid` smallint(4) UNSIGNED NULL DEFAULT 0,
  `serialno` bigint(14) UNSIGNED NULL DEFAULT NULL,
  `tgltimbang` date NULL DEFAULT NULL,
  `nobk` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_supir` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nosim` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_dopo` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_kontrak` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `supp_weight` double(8, 4) UNSIGNED NULL DEFAULT 0.0000,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `status_timbang` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '0: belum timbang\r\n1: timbang 1\r\n2: timbang 2',
  `timbang1` double(19, 2) UNSIGNED NULL DEFAULT 0.00,
  `timbang1_date` datetime(0) NULL DEFAULT NULL,
  `timbang1_user` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `timbang1_userid` int(11) UNSIGNED NULL DEFAULT NULL,
  `timbang2` double(19, 2) UNSIGNED NULL DEFAULT 0.00,
  `timbang2_date` datetime(0) NULL DEFAULT NULL,
  `timbang2_user` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `timbang2_userid` int(11) UNSIGNED NULL DEFAULT NULL,
  `cust_id` int(18) UNSIGNED NULL DEFAULT NULL,
  `barang_id` int(18) UNSIGNED NOT NULL,
  `transp_id` int(18) UNSIGNED NULL DEFAULT NULL,
  `deduct_type` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '0: kg\r\n1: persen',
  `deduct_n` double(19, 2) UNSIGNED NULL DEFAULT 0.00,
  `timbang_gross` double(19, 0) UNSIGNED NULL DEFAULT 0,
  `timbang_deduction` double(19, 0) UNSIGNED NULL DEFAULT 0,
  `timbang_netto` double(19, 0) UNSIGNED NULL DEFAULT 0,
  `timbangstatus` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '0: lum timbang/ gagal timbang\r\n1: mau timbang 1\r\n2: sudah timbang 1\r\n3: sudah timbang 2',
  `timbang_update_count` int(11) UNSIGNED NULL DEFAULT 0,
  `timbang_update_userid` int(11) UNSIGNED NULL DEFAULT NULL,
  `del_sts` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '0: belum dihapus\r\n1: diubah/ diganti ke timbang lain\r\n2: dihapus',
  `del_username` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `del_tgl` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_timbang
-- ----------------------------
INSERT INTO `tb_timbang` VALUES (1, 1, 1, 191004000001, '2019-10-04', 'BK9191XN', ' ', '-', '-', '-', 0.0000, '', 2, 26340.00, '2019-10-04 01:01:00', 'arfah', NULL, 7050.00, '2019-10-04 01:54:00', 'arfah', NULL, 4, 1, 4, 2, 770.00, 19290, 770, 18520, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (2, 1, 2, 191004000002, '2019-10-04', 'BK9480PH', ' ', '-', '-', '-', 0.0000, '', 2, 13710.00, '2019-10-04 01:03:00', 'arfah', NULL, 3710.00, '2019-10-04 01:55:00', 'arfah', NULL, 14, 1, 1, 2, 300.00, 10000, 300, 9700, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (3, 1, 3, 191004000003, '2019-10-04', 'BK9278GY', ' ', '-', '-', '-', 0.0000, '', 2, 13310.00, '2019-10-04 01:04:00', 'arfah', NULL, 4280.00, '2019-10-04 01:49:00', 'arfah', NULL, 4, 1, 1, 2, 450.00, 9030, 450, 8580, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (4, 1, 4, 191004000004, '2019-10-04', 'BK9484CU', ' ', '-', '-', '-', 0.0000, '', 2, 10370.00, '2019-10-04 01:06:00', 'arfah', NULL, 3870.00, '2019-10-04 01:58:00', 'arfah', NULL, 4, 1, 1, 2, 290.00, 6500, 290, 6210, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (5, 1, 5, 191004000005, '2019-10-04', 'BK9578LR', ' ', '-', '-', '-', 0.0000, '', 2, 13500.00, '2019-10-04 01:08:00', 'arfah', NULL, 3350.00, '2019-10-04 01:52:00', 'arfah', NULL, 43, 1, 1, 2, 360.00, 10150, 360, 9790, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (6, 1, 6, 191004000006, '2019-10-04', 'BK8047CH', ' ', '-', '-', '-', 0.0000, '', 2, 12670.00, '2019-10-04 01:09:00', 'arfah', NULL, 3940.00, '2019-10-04 02:11:00', 'arfah', NULL, 4, 1, 1, 2, 390.00, 8730, 390, 8340, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (7, 1, 7, 191004000007, '2019-10-04', 'BK8229RB', ' ', '-', '-', '-', 0.0000, '', 2, 14460.00, '2019-10-04 01:10:00', 'arfah', NULL, 3660.00, '2019-10-04 02:03:00', 'arfah', NULL, 33, 1, 1, 2, 330.00, 10800, 330, 10470, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (8, 1, 8, 191004000008, '2019-10-04', 'BK9979CQ', ' ', '-', '-', '-', 0.0000, '', 2, 14530.00, '2019-10-04 01:10:00', 'arfah', NULL, 3720.00, '2019-10-04 01:47:00', 'arfah', NULL, 4, 1, 1, 2, 430.00, 10810, 430, 10380, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (9, 1, 9, 191004000009, '2019-10-04', 'BK8625BK', ' ', '-', '-', '-', 0.0000, '', 2, 11020.00, '2019-10-04 01:11:00', 'arfah', NULL, 3710.00, '2019-10-04 02:02:00', 'arfah', NULL, 31, 1, 1, 2, 220.00, 7310, 220, 7090, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (10, 1, 10, 191004000010, '2019-10-04', 'BK9949RD', ' ', '-', '-', '-', 0.0000, '', 2, 12770.00, '2019-10-04 01:12:00', 'arfah', NULL, 3980.00, '2019-10-04 02:35:00', 'arfah', NULL, 27, 1, 1, 2, 340.00, 8790, 340, 8450, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (11, 1, 11, 191004000011, '2019-10-04', 'BK9018TD', ' ', '-', '-', '-', 0.0000, '', 2, 23470.00, '2019-10-04 01:13:00', 'arfah', NULL, 6660.00, '2019-10-04 02:00:00', 'arfah', NULL, 27, 1, 4, 2, 590.00, 16810, 590, 16220, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (12, 1, 12, 191004000012, '2019-10-04', 'BK9608LR', ' ', '-', '-', '-', 0.0000, '', 2, 24210.00, '2019-10-04 01:14:00', 'arfah', NULL, 6780.00, '2019-10-04 02:06:00', 'arfah', NULL, 29, 1, 4, 2, 700.00, 17430, 700, 16730, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (13, 1, 13, 191004000013, '2019-10-04', 'BK9714RA', ' ', '-', '-', '-', 0.0000, '', 2, 12200.00, '2019-10-04 01:15:00', 'arfah', NULL, 3230.00, '2019-10-04 02:28:00', 'arfah', NULL, 39, 1, 1, 2, 270.00, 8970, 270, 8700, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (14, 1, 14, 191004000014, '2019-10-04', 'BL8772KU', ' ', '-', '-', '-', 0.0000, '', 2, 13710.00, '2019-10-04 01:16:00', 'arfah', NULL, 4220.00, '2019-10-04 02:48:00', 'arfah', NULL, 17, 1, 1, 2, 370.00, 9490, 370, 9120, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (15, 1, 15, 191004000015, '2019-10-04', 'BK9256CT', ' ', '-', '-', '-', 0.0000, '', 2, 14730.00, '2019-10-04 01:17:00', 'arfah', NULL, 4020.00, '2019-10-04 01:57:00', 'arfah', NULL, 30, 1, 1, 2, 430.00, 10710, 430, 10280, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (16, 1, 16, 191004000016, '2019-10-04', 'BK8429DD', ' ', '-', '-', '-', 0.0000, '', 2, 14980.00, '2019-10-04 01:18:00', 'arfah', NULL, 4150.00, '2019-10-04 01:51:00', 'arfah', NULL, 4, 1, 1, 2, 540.00, 10830, 540, 10290, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (17, 1, 17, 191004000017, '2019-10-04', 'BK8940RE', ' ', '-', '-', '-', 0.0000, '', 2, 13830.00, '2019-10-04 01:19:00', 'arfah', NULL, 4070.00, '2019-10-04 02:21:00', 'arfah', NULL, 30, 1, 1, 2, 290.00, 9760, 290, 9470, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (18, 1, 18, 191004000018, '2019-10-04', 'BK8057MS', ' ', '-', '-', '-', 0.0000, '', 2, 13920.00, '2019-10-04 01:20:00', 'arfah', NULL, 3420.00, '2019-10-04 02:53:00', 'arfah', NULL, 30, 1, 1, 2, 420.00, 10500, 420, 10080, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (19, 1, 19, 191004000019, '2019-10-04', 'BK8653RB', ' ', '-', '-', '-', 0.0000, '', 2, 15520.00, '2019-10-04 01:21:00', 'arfah', NULL, 4650.00, '2019-10-04 02:57:00', 'arfah', NULL, 38, 1, 1, 2, 340.00, 10870, 340, 10530, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (20, 1, 20, 191004000020, '2019-10-04', 'BK8504PH', ' ', '-', '-', '-', 0.0000, '', 2, 12270.00, '2019-10-04 01:22:00', 'arfah', NULL, 3450.00, '2019-10-04 03:07:00', 'arfah', NULL, 28, 1, 1, 2, 270.00, 8820, 270, 8550, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (21, 1, 21, 191004000021, '2019-10-04', 'BK9722RC', ' ', '-', '-', '-', 0.0000, '', 2, 10940.00, '2019-10-04 01:23:00', 'arfah', NULL, 3560.00, '2019-10-04 03:10:00', 'arfah', NULL, 34, 1, 1, 2, 260.00, 7380, 260, 7120, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (22, 1, 22, 191004000022, '2019-10-04', 'BK8083SG', ' ', '-', '-', '-', 0.0000, '', 2, 13330.00, '2019-10-04 01:24:00', 'arfah', NULL, 3970.00, '2019-10-04 03:16:00', 'arfah', NULL, 46, 1, 1, 2, 280.00, 9360, 280, 9080, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (23, 1, 23, 191004000023, '2019-10-04', 'BK9584ML', ' ', '-', '-', '-', 0.0000, '', 2, 9510.00, '2019-10-04 01:25:00', 'arfah', NULL, 3440.00, '2019-10-04 03:17:00', 'arfah', NULL, 36, 1, 1, 2, 190.00, 6070, 190, 5880, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (24, 1, 24, 191004000024, '2019-10-04', 'BK9447CO', ' ', '-', '-', '-', 0.0000, '', 2, 12450.00, '2019-10-04 01:26:00', 'arfah', NULL, 3520.00, '2019-10-04 03:26:00', 'arfah', NULL, 42, 1, 1, 2, 270.00, 8930, 270, 8660, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (25, 1, 25, 191004000025, '2019-10-04', 'BK8805CB', ' ', '-', '-', '-', 0.0000, '', 2, 14140.00, '2019-10-04 01:27:00', 'arfah', NULL, 3680.00, '2019-10-04 03:35:00', 'arfah', NULL, 42, 1, 1, 2, 370.00, 10460, 370, 10090, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (26, 1, 26, 191004000026, '2019-10-04', 'BK8737CV', ' ', '-', '-', '-', 0.0000, '', 2, 13710.00, '2019-10-04 01:29:00', 'arfah', NULL, 3740.00, '2019-10-04 03:39:00', 'arfah', NULL, 32, 1, 1, 2, 290.00, 9970, 290, 9680, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (27, 1, 27, 191004000027, '2019-10-04', 'BK8381SE', ' ', '-', '-', '-', 0.0000, '', 2, 12780.00, '2019-10-04 01:30:00', 'arfah', NULL, 3670.00, '2019-10-04 03:47:00', 'arfah', NULL, 18, 1, 1, 2, 320.00, 9110, 320, 8790, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (28, 1, 28, 191004000028, '2019-10-04', 'BK8950KY', ' ', '-', '-', '-', 0.0000, '', 2, 13290.00, '2019-10-04 01:31:00', 'arfah', NULL, 4010.00, '2019-10-04 03:55:00', 'arfah', NULL, 20, 1, 1, 2, 280.00, 9280, 280, 9000, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (29, 1, 29, 191004000029, '2019-10-04', 'BK8359BS', ' ', '-', '-', '-', 0.0000, '', 2, 12950.00, '2019-10-04 01:32:00', 'arfah', NULL, 3530.00, '2019-10-04 03:56:00', 'arfah', NULL, 47, 1, 1, 2, 330.00, 9420, 330, 9090, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (30, 1, 30, 191004000030, '2019-10-04', 'BK8425RB', ' ', '-', '-', '-', 0.0000, '', 2, 11720.00, '2019-10-04 01:34:00', 'arfah', NULL, 3720.00, '2019-10-04 04:00:00', 'arfah', NULL, 40, 1, 1, 2, 280.00, 8000, 280, 7720, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (31, 1, 31, 191004000031, '2019-10-04', 'BM8305DN', ' ', '-', '-', '-', 0.0000, '', 2, 9740.00, '2019-10-04 01:35:00', 'arfah', NULL, 3770.00, '2019-10-04 03:53:00', 'arfah', NULL, 32, 1, 1, 2, 210.00, 5970, 210, 5760, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (32, 1, 32, 191004000032, '2019-10-04', 'BK8181XR', ' ', '-', '-', '-', 0.0000, '', 2, 13660.00, '2019-10-04 01:36:00', 'arfah', NULL, 3470.00, '2019-10-04 04:14:00', 'arfah', NULL, 37, 1, 1, 2, 360.00, 10190, 360, 9830, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (33, 1, 33, 191004000033, '2019-10-04', 'BK9163CJ', ' ', '-', '-', '-', 0.0000, '', 2, 14350.00, '2019-10-04 01:37:00', 'arfah', NULL, 4000.00, '2019-10-04 04:18:00', 'arfah', NULL, 16, 1, 1, 2, 310.00, 10350, 310, 10040, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (34, 1, 34, 191004000034, '2019-10-04', 'BK8987TN', ' ', '-', '-', '-', 0.0000, '', 2, 13280.00, '2019-10-04 01:38:00', 'arfah', NULL, 4310.00, '2019-10-04 04:26:00', 'arfah', NULL, 16, 1, 1, 2, 310.00, 8970, 310, 8660, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (35, 1, 35, 191004000035, '2019-10-04', 'BK8595MD', ' ', '-', '-', '-', 0.0000, '', 2, 10620.00, '2019-10-04 01:40:00', 'arfah', NULL, 3320.00, '2019-10-04 04:12:00', 'arfah', NULL, 35, 1, 1, 2, 290.00, 7300, 290, 7010, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (36, 1, 36, 191004000036, '2019-10-04', 'BK8050SG', ' ', '-', '-', '-', 0.0000, '', 2, 8200.00, '2019-10-04 01:41:00', 'arfah', NULL, 3330.00, '2019-10-04 04:05:00', 'arfah', NULL, 4, 1, 1, 2, 170.00, 4870, 170, 4700, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (37, 1, 37, 191004000037, '2019-10-04', 'BK9800SE', ' ', '-', '-', '-', 0.0000, '', 2, 20780.00, '2019-10-04 01:42:00', 'arfah', NULL, 6940.00, '2019-10-04 02:46:00', 'arfah', NULL, 41, 1, 1, 2, 700.00, 13840, 700, 13140, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (38, 1, 38, 191004000038, '2019-10-04', 'BK8726PI', ' ', '-', '-', '-', 0.0000, '', 2, 8370.00, '2019-10-04 01:43:00', 'arfah', NULL, 4390.00, '2019-10-04 02:08:00', 'arfah', NULL, 4, 1, 1, 2, 360.00, 3980, 360, 3620, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (39, 1, 39, 191004000039, '2019-10-04', 'BK9739LU', ' ', '-', '-', '-', 0.0000, '', 2, 21090.00, '2019-10-04 01:44:00', 'arfah', NULL, 6210.00, '2019-10-04 02:33:00', 'arfah', NULL, 15, 1, 4, 2, 600.00, 14880, 600, 14280, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (40, 1, 40, 191004000040, '2019-10-04', 'BK9586JY', ' ', '-', '-', '-', 0.0000, '', 2, 26290.00, '2019-10-04 01:46:00', 'arfah', NULL, 7580.00, '2019-10-04 03:28:00', 'arfah', NULL, 19, 1, 4, 2, 650.00, 18710, 650, 18060, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (41, 1, 41, 191004000041, '2019-10-04', 'BK9677LR', ' ', '-', '-', '-', 0.0000, '', 2, 10490.00, '2019-10-04 02:51:00', 'arfah', NULL, 3640.00, '2019-10-04 04:28:00', 'arfah', NULL, 4, 1, 1, 2, 310.00, 6850, 310, 6540, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (42, 1, 42, 191004000042, '2019-10-04', 'BB8206FA', ' ', '-', '-', '-', 0.0000, '', 2, 6320.00, '2019-10-04 03:14:00', 'arfah', NULL, 3740.00, '2019-10-04 03:19:00', 'arfah', NULL, 12, 1, 3, 2, 20.00, 2580, 20, 2560, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (43, 1, 43, 191004000043, '2019-10-04', 'BK8982SI', ' ', '-', '-', '-', 0.0000, '', 2, 24500.00, '2019-10-04 04:07:00', 'arfah', NULL, 6410.00, '2019-10-04 04:41:00', 'arfah', NULL, 31, 1, 4, 2, 540.00, 18090, 540, 17550, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (44, 1, 44, 191004000044, '2019-10-04', 'BK8063YE', ' ', '-', '-', '-', 0.0000, '', 2, 11110.00, '2019-10-04 04:23:00', 'arfah', NULL, 3230.00, '2019-10-04 04:42:00', 'arfah', NULL, 27, 1, 1, 2, 200.00, 7880, 200, 7680, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (45, 1, 45, 191004000045, '2019-10-04', 'BK8002XP', ' ', '-', '-', '-', 0.0000, '', 2, 10450.00, '2019-10-04 07:02:00', 'arfah', NULL, 3990.00, '2019-10-04 07:16:00', 'arfah', NULL, 8, 1, 1, 2, 200.00, 6460, 200, 6260, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (46, 1, 46, 191004000046, '2019-10-04', 'BK8291RA', ' ', '-', '-', '-', 0.0000, '', 2, 9960.00, '2019-10-04 07:03:00', 'arfah', NULL, 3270.00, '2019-10-04 07:21:00', 'arfah', NULL, 8, 1, 1, 2, 200.00, 6690, 200, 6490, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (47, 1, 47, 191004000047, '2019-10-04', 'BK9443LR', ' ', '-', '-', '-', 0.0000, '', 2, 3240.00, '2019-10-04 07:04:00', 'arfah', NULL, 1600.00, '2019-10-04 07:14:00', 'arfah', NULL, 11, 1, 6, 2, 60.00, 1640, 60, 1580, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (48, 1, 48, 191004000048, '2019-10-04', 'BK8112FS', ' ', '-', '-', '-', 0.0000, '', 2, 26230.00, '2019-10-04 07:05:00', 'arfah', NULL, 7030.00, '2019-10-04 07:49:00', 'arfah', NULL, 44, 1, 4, 2, 480.00, 19200, 480, 18720, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (49, 1, 49, 191004000049, '2019-10-04', 'BK9383SG', ' ', '-', '-', '-', 0.0000, '', 2, 11760.00, '2019-10-04 07:11:00', 'arfah', NULL, 3690.00, '2019-10-04 07:38:00', 'arfah', NULL, 14, 1, 1, 2, 240.00, 8070, 240, 7830, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (50, 1, 50, 191004000050, '2019-10-04', 'BK8784YE', ' ', '-', '-', '-', 0.0000, '', 2, 12000.00, '2019-10-04 07:13:00', 'arfah', NULL, 4000.00, '2019-10-04 07:40:00', 'arfah', NULL, 43, 1, 1, 2, 240.00, 8000, 240, 7760, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (51, 1, 51, 191004000051, '2019-10-04', 'BK9168PK', ' ', '-', '-', '-', 0.0000, '', 2, 1930.00, '2019-10-04 07:20:00', 'arfah', NULL, 890.00, '2019-10-04 07:30:00', 'arfah', NULL, 10, 1, 6, 2, 40.00, 1040, 40, 1000, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (52, 1, 52, 191004000052, '2019-10-04', 'BK8575LK', ' ', '-', '-', '-', 0.0000, '', 2, 5660.00, '2019-10-04 07:23:00', 'arfah', NULL, 3160.00, '2019-10-04 07:34:00', 'arfah', NULL, 4, 1, 1, 2, 90.00, 2500, 90, 2410, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (53, 1, 53, 191004000053, '2019-10-04', 'BK8178LR', ' ', '-', '-', '-', 0.0000, '', 2, 7380.00, '2019-10-04 07:29:00', 'arfah', NULL, 3000.00, '2019-10-04 07:42:00', 'arfah', NULL, 4, 1, 3, 2, 160.00, 4380, 160, 4220, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (54, 1, 0, NULL, '2019-10-04', 'BK9842BY', ' ', '-', '-', '-', 0.0000, '', 0, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, 4, 1, 1, 2, 0.00, 0, 0, 0, 1, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (55, 1, 54, 191004000054, '2019-10-04', 'BK9842BY', ' ', '-', '-', '-', 0.0000, '', 2, 7860.00, '2019-10-04 07:32:00', 'arfah', NULL, 3340.00, '2019-10-04 07:48:00', 'arfah', NULL, 4, 1, 1, 2, 180.00, 4520, 180, 4340, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (56, 1, 55, 191004000055, '2019-10-04', 'BK8960MA', ' ', '-', '-', '-', 0.0000, '', 2, 4820.00, '2019-10-04 07:46:00', 'arfah', NULL, 1500.00, '2019-10-04 07:59:00', 'arfah', NULL, 11, 1, 6, 2, 120.00, 3320, 120, 3200, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (57, 1, 56, 191004000056, '2019-10-04', 'BK9029CB', ' ', '-', '-', '-', 0.0000, '', 2, 12590.00, '2019-10-04 08:05:00', 'arfah', NULL, 3620.00, '2019-10-04 08:26:00', 'arfah', NULL, 11, 1, 3, 2, 310.00, 8970, 310, 8660, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (58, 1, 57, 191004000057, '2019-10-04', 'BK8264XR', ' ', '-', '-', '-', 0.0000, '', 2, 12070.00, '2019-10-04 08:13:00', 'arfah', NULL, 3710.00, '2019-10-04 08:36:00', 'arfah', NULL, 6, 1, 1, 2, 290.00, 8360, 290, 8070, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (59, 1, 58, 191004000058, '2019-10-04', 'BK8867RB', ' ', '-', '-', '-', 0.0000, '', 2, 7410.00, '2019-10-04 08:14:00', 'arfah', NULL, 3540.00, '2019-10-04 08:29:00', 'arfah', NULL, 4, 1, 1, 2, 150.00, 3870, 150, 3720, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (60, 1, 59, 191004000059, '2019-10-04', 'BK8429DD', ' ', '-', '-', '-', 0.0000, '', 2, 10380.00, '2019-10-04 08:14:00', 'arfah', NULL, 4140.00, '2019-10-04 08:28:00', 'arfah', NULL, 4, 1, 1, 2, 280.00, 6240, 280, 5960, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (61, 1, 60, 191004000060, '2019-10-04', 'BK8858LR', ' ', '-', '-', '-', 0.0000, '', 2, 7670.00, '2019-10-04 08:21:00', 'arfah', NULL, 3360.00, '2019-10-04 08:35:00', 'arfah', NULL, 4, 1, 1, 2, 150.00, 4310, 150, 4160, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (62, 1, 0, NULL, '2019-10-04', 'BK9395RA', ' ', '-', '-', '-', 0.0000, '', 0, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, 11, 1, 1, 2, 0.00, 0, 0, 0, 1, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (63, 1, 61, 191004000061, '2019-10-04', 'BK9395RA', ' ', '-', '-', '-', 0.0000, '', 2, 6430.00, '2019-10-04 08:23:00', 'arfah', NULL, 3190.00, '2019-10-04 08:41:00', 'arfah', NULL, 4, 1, 3, 2, 120.00, 3240, 120, 3120, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (64, 1, 62, 191004000062, '2019-10-04', 'BK9458LR', ' ', '-', '-', '-', 0.0000, '', 2, 6610.00, '2019-10-04 08:25:00', 'arfah', NULL, 2950.00, '2019-10-04 08:39:00', 'arfah', NULL, 4, 1, 1, 2, 130.00, 3660, 130, 3530, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (65, 1, 63, 191004000063, '2019-10-04', 'BK8107RF', ' ', '-', '-', '-', 0.0000, '', 2, 9870.00, '2019-10-04 08:32:00', 'arfah', NULL, 4050.00, '2019-10-04 08:43:00', 'arfah', NULL, 4, 1, 1, 2, 170.00, 5820, 170, 5650, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (66, 1, 64, 191004000064, '2019-10-04', 'BK8644AQ', ' ', '-', '-', '-', 0.0000, '', 2, 12930.00, '2019-10-04 08:33:00', 'arfah', NULL, 3940.00, '2019-10-04 08:56:00', 'arfah', NULL, 4, 1, 1, 2, 320.00, 8990, 320, 8670, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (67, 1, 65, 191004000065, '2019-10-04', 'BK9168PK', ' ', '-', '-', '-', 0.0000, '', 2, 1760.00, '2019-10-04 08:44:00', 'arfah', NULL, 890.00, '2019-10-04 08:52:00', 'arfah', NULL, 10, 1, 6, 2, 40.00, 870, 40, 830, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (68, 1, 66, 191004000066, '2019-10-04', 'BK9379LR', ' ', '-', '-', '-', 0.0000, '', 2, 4010.00, '2019-10-04 08:48:00', 'arfah', NULL, 1450.00, '2019-10-04 08:59:00', 'arfah', NULL, 10, 1, 6, 2, 90.00, 2560, 90, 2470, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (69, 1, 67, 191004000067, '2019-10-04', 'BK9376RA', ' ', '-', '-', '-', 0.0000, '', 2, 15060.00, '2019-10-04 08:51:00', 'arfah', NULL, 5460.00, '2019-10-04 09:12:00', 'arfah', NULL, 4, 1, 4, 2, 340.00, 9600, 340, 9260, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (71, 1, 69, 191004000069, '2019-10-04', 'BK8418RD', ' ', '-', '-', '-', 0.0000, '', 2, 9720.00, '2019-10-04 09:01:00', 'arfah', NULL, 3430.00, '2019-10-04 09:15:00', 'arfah', NULL, 4, 1, 1, 2, 190.00, 6290, 190, 6100, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (72, 1, 70, 191004000070, '2019-10-04', 'BK8064LL', ' ', '-', '-', '-', 0.0000, '', 2, 11250.00, '2019-10-04 09:24:00', 'arfah', NULL, 3360.00, '2019-10-04 09:39:00', 'arfah', NULL, 4, 1, 1, 2, 280.00, 7890, 280, 7610, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (73, 1, 71, 191004000071, '2019-10-04', 'BK8102DV', ' ', '-', '-', '-', 0.0000, '', 2, 13600.00, '2019-10-04 09:26:00', 'arfah', NULL, 3690.00, '2019-10-04 09:45:00', 'arfah', NULL, 4, 1, 1, 2, 350.00, 9910, 350, 9560, 3, 0, NULL, 0, NULL, NULL);
INSERT INTO `tb_timbang` VALUES (74, 1, 72, 191004000072, '2019-10-04', 'BK9690BN', ' ', '-', '-', '-', 0.0000, '', 2, 12720.00, '2019-10-04 09:29:00', 'arfah', NULL, 3720.00, '2019-10-04 09:49:00', 'arfah', NULL, 11, 1, 3, 2, 320.00, 9000, 320, 8680, 3, 0, NULL, 0, NULL, NULL);

-- ----------------------------
-- Table structure for tb_trans
-- ----------------------------
DROP TABLE IF EXISTS `tb_trans`;
CREATE TABLE `tb_trans`  (
  `id` int(18) NOT NULL AUTO_INCREMENT,
  `vnoserial` mediumint(7) NOT NULL,
  `FCCODE` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FCBYTO` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FCSELLER` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FCSPBDO` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FCKONTRAK` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FNKUAN` int(11) NULL DEFAULT NULL,
  `FNJANSEG` double NULL DEFAULT NULL,
  `FCPTANG` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FCSUPIR` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FCSIM` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FDTGL` date NULL DEFAULT NULL,
  `FDTGL2` date NULL DEFAULT NULL,
  `FCTIMEIN` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FCTIMEOUT` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FCBK` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FCSOURCE` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FNBRUTO` int(11) NULL DEFAULT NULL,
  `FNTARRA` int(11) NULL DEFAULT NULL,
  `FNPOT` int(11) NULL DEFAULT NULL,
  `FCFFA` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FCVM` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FCDV` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FCLOCIS` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FCDD1` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FNDD1` double NULL DEFAULT NULL,
  `FCDD2` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FNDD2` double NULL DEFAULT NULL,
  `FCDD3` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FNDD3` double NULL DEFAULT NULL,
  `FCDD4` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FNDD4` double NULL DEFAULT NULL,
  `FCDD5` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FNDD5` double NULL DEFAULT NULL,
  `FCDD6` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FNDD6` double NULL DEFAULT NULL,
  `FCDD7` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FNDD7` double NULL DEFAULT NULL,
  `FNBRON` double NULL DEFAULT NULL,
  `FNGRADE` int(11) NULL DEFAULT NULL,
  `FNNETTO` int(11) NULL DEFAULT NULL,
  `FCMARK` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FNSISA` int(11) NULL DEFAULT NULL,
  `FCRED` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FCGRADER` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FNMARK` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_transp
-- ----------------------------
DROP TABLE IF EXISTS `tb_transp`;
CREATE TABLE `tb_transp`  (
  `id` int(18) NOT NULL AUTO_INCREMENT,
  `ccode` char(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `vnama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_transp
-- ----------------------------
INSERT INTO `tb_transp` VALUES (1, 'CL', 'COLD DIESEL', NULL);
INSERT INTO `tb_transp` VALUES (2, 'DT', 'DUMP TRUCK', NULL);
INSERT INTO `tb_transp` VALUES (3, 'DY', 'DYNA', NULL);
INSERT INTO `tb_transp` VALUES (4, 'FS', 'FUSO', NULL);
INSERT INTO `tb_transp` VALUES (5, 'IC', 'INTER CULLER', NULL);
INSERT INTO `tb_transp` VALUES (6, 'PU', 'PICK UP', '');
INSERT INTO `tb_transp` VALUES (7, 'TK', 'TANGKI', NULL);
INSERT INTO `tb_transp` VALUES (8, 'TR', 'TRONTON', NULL);

-- ----------------------------
-- Table structure for tbl_tara
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tara`;
CREATE TABLE `tbl_tara`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nobk` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgltimbang` date NULL DEFAULT NULL,
  `tara` double(11, 0) UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for testing
-- ----------------------------
DROP TABLE IF EXISTS `testing`;
CREATE TABLE `testing`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tgl` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of testing
-- ----------------------------
INSERT INTO `testing` VALUES (1, 'DDD', 'medan', '2013-12-23 22:29:08');
INSERT INTO `testing` VALUES (2, 'DDD', 'medan', '2013-12-23 22:29:13');
INSERT INTO `testing` VALUES (3, 'DDD', 'medan', '2013-12-23 22:29:51');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(9) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nama` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `password` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `kelas` varchar(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `kelamin` enum('Pria','Wanita') CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nilai` int(9) NULL DEFAULT NULL,
  `type` enum('admin','spv','opr') CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'opr',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'Administrator', '8SFvAagVSFR4jQFTvB2F1tmCp/hHo0eEwHpT6fiEcqF2FaB0TvqcUkVcMKbQXoDy', NULL, NULL, NULL, 'admin');
INSERT INTO `users` VALUES (2, 'spv', 'Supervisor', 'n98GBOitrKmFUvULFSQgVXl2vvuEBhy8bhNbyraFklHLwCkFI1LzLIfZS8KFPC3R', NULL, NULL, NULL, 'spv');
INSERT INTO `users` VALUES (15, 'operator', 'Operator Satu', 'kDsHmGx5jArg/YjoChB4Ojk/iNAgr634khBEb1hTcUt3oNA3qHH6OlP9AjhzRBSl', NULL, NULL, NULL, 'opr');
INSERT INTO `users` VALUES (17, 'retno', 'retno', 'y/C2LuSS3mo/l4YmGx+EpkFicfME+Mwy1Y0v5ZMjWGeefScaR/TvosjcJaqqEYJe', NULL, NULL, NULL, 'opr');
INSERT INTO `users` VALUES (18, 'agung', 'agung', 'q7x0Jugv1y7pmezu6g2z8+lP5dLgF+jizl4lJ17T3DiWP/60O7Kubng5eb+TE0Rd', NULL, NULL, NULL, 'opr');

-- ----------------------------
-- Triggers structure for table tb_timbang
-- ----------------------------
DROP TRIGGER IF EXISTS `tbl_timbang_serialno`;
delimiter ;;
CREATE TRIGGER `tbl_timbang_serialno` BEFORE UPDATE ON `tb_timbang` FOR EACH ROW BEGIN
DECLARE vserialid integer;
DECLARE vserialno BIGINT;
DECLARE vdate date default CURDATE();

IF (OLD.timbangstatus = 1 AND NEW.timbangstatus = 2) THEN
SET @vdate     := NEW.tgltimbang;
SET @vserialid := (select coalesce(max(t.serialid),0)+1 from tb_timbang t where t.tgltimbang=@vdate);
SET @vserialno := (CONCAT(REPLACE(DATE_FORMAT(@vdate, '%y-%m-%d'),'-',''),LPAD(@vserialid,4,'0') ));
-- SET NEW.tgltimbang = CURDATE();
SET NEW.serialid = @vserialid;
SET NEW.serialno = @vserialno;
END IF;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
