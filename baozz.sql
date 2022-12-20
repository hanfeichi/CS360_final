/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50726 (5.7.26)
 Source Host           : 127.0.0.1:3306
 Source Schema         : baozz

 Target Server Type    : MySQL
 Target Server Version : 50726 (5.7.26)
 File Encoding         : 65001

 Date: 20/12/2022 20:20:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `goods_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `goods_category` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `rating` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `supplier_uid` int(11) NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 99 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, 'iPhone 12 Pro max', 'images/1.jpeg', 'phone', 1049.00, '4', 1, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (2, 'iPhone 13 Pro max', 'images/2.webp', 'phone', 1209.00, '4', 1, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (3, 'iPhone 14 ', 'images/3.webp', 'phone', 799.00, '3', 1, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (4, 'iPhone 14 pro', 'images/4.webp', 'phone', 1099.00, '5', 1, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (5, 'iPhone 14 Pro max', 'images/5.jpeg', 'phone', 1199.00, '5', 1, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (6, 'iPhone 14 Pro max', 'images/6.png', 'phone', 1399.00, '5', 1, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (7, 'Samsung Galaxy S22 Ultra', 'images/7.JPG', 'phone', 1369.00, '5', 1, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (8, 'Samsung Galaxy Z Flip4', 'images/8.JPG', 'phone', 1099.00, '3', 1, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (9, 'Samsung W23', 'images/9.JPG', 'phone', 2199.00, '5', 1, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (10, 'Samsung Galaxy Z Fold4', 'images/10.JPG', 'phone', 1799.00, '5', 1, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (11, 'HUAWEI Mate50 Pro ', 'images/11.jpg', 'phone', 939.00, '3', 1, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (12, 'HUAWEI Mate Xs 2', 'images/12.jpg', 'phone', 1799.00, '5', 2, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (13, 'HUAWEI P50 Pocket', 'images/13.jpg', 'phone', 1099.00, '4', 2, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (14, 'HUAWEI P50 Pro ', 'images/14.jpg', 'phone', 740.00, '3', 2, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (15, 'SONY Xperia 1 IV', 'images/15.jpg', 'phone', 969.00, '4', 2, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (16, 'SONY Xperia PRO-1', 'images/16.jpg', 'phone', 1199.00, '4', 2, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (17, 'Xiaomi 12S Ultra', 'images/17.jpg', 'phone', 999.00, '3', 2, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (18, 'Xiaomi Redmi K50', 'images/18.jpg', 'phone', 509.00, '2', 2, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (19, 'Samsung Odyssey_Neo G9', 'images/19.jpg', 'screen', 1799.00, '5', 2, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (20, 'Samsung J791 Series', 'images/20.jpg', 'screen', 599.00, '3', 2, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (21, 'Samsung SJ55W', 'images/21.jpg', 'screen', 288.00, '3', 2, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (22, 'Samsung S61B', 'images/22.jpg', 'screen', 249.00, '3', 2, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (23, 'iMac ', 'images/23.jpg', 'screen', 3679.00, '5', 2, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (24, 'HP 22f FHD Monitor', 'images/24.jpg', 'screen', 249.00, '3', 3, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (25, 'HP QHD Curved', 'images/25.jpg', 'screen', 199.00, '2', 3, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (26, 'HP FHD 60Hz Anti-Glare Monitor', 'images/26.jpg', 'screen', 199.00, '4', 3, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (27, 'ASUS VA24DQ 24\" IPS FHD', 'images/27.jpg', 'screen', 149.00, '3', 3, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (28, 'ASUS VG278QR 27\" Gaming Monitor', 'images/28.jpg', 'screen', 220.00, '4', 3, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (29, 'ASUS TUF Gaming 32\" Curved Monitor', 'images/29.jpg', 'screen', 329.00, '5', 3, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (30, 'LG 38WN95C-W Monitor', 'images/30.jpg', 'screen', 1149.00, '5', 3, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (31, 'LG 27MD5KL-B IPS', 'images/31.jpg', 'screen', 1232.00, '5', 3, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (32, 'LG 34GP950G-B Curved IPS G-sync Monitor', 'images/32.jpg', 'screen', 849.00, '4', 3, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (33, 'Dell S2721QS IPS Bezel Monitor', 'images/33.jpg', 'screen', 279.00, '3', 3, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (34, 'Dell P2422H IPS Computer Monitor', 'images/34.jpg', 'screen', 264.00, '3', 3, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (35, 'Dell 27\" Monitor FHD', 'images/35.jpg', 'screen', 143.00, '2', 3, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (36, 'Sony PlayStation 4 pro', 'images/36.jpg', 'Game Console', 1499.00, '5', 3, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (37, 'Sony PlayStation 3 Slim ', 'images/37.jpg', 'Game Console', 129.00, '3', 3, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (38, 'Sony PlayStation 5 Digital Edition PS5 Console', 'images/38.jpg', 'Game Console', 999.00, '5', 4, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (39, 'Sony PlayStation 4 ', 'images/39.jpg', 'Game Console', 682.00, '4', 4, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (40, 'Microsoft Xbox one X 1TB Console', 'images/40.jpg', 'Game Console', 299.00, '5', 4, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (41, 'Microsoft Xbox one S 1TB Console', 'images/41.jpg', 'Game Console', 690.00, '5', 4, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (42, 'Microsoft Xbox 360 Console 500GB', 'images/42.jpg', 'Game Console', 259.00, '3', 4, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (43, 'Xbox Core Wireless Controller', 'images/43.jpg', 'Game Controller', 49.00, '4', 4, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (44, 'Xbox Elite Wireless Controller Series 2 Core', 'images/44.jpg', 'Game Controller', 129.00, '5', 4, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (45, 'Original Xbox Wireless Controller Special Edition ', 'images/45.jpg', 'Game Controller', 134.00, '5', 4, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (46, 'Playstation DualSense Wireless Controller', 'images/46.jpg', 'Game Controller', 69.00, '5', 4, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (47, 'DualShock 4 Wireless Controller for PlayStation 4', 'images/47.jpg', 'Game Controller', 59.00, '4', 4, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (48, 'Playstation 3 Dualshock 3 Wireless Controller ', 'images/48.jpg', 'Game Controller', 55.00, '4', 4, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (49, 'AT&T 10Mb/s', 'images/49.png', 'Broadband', 10.00, '3', 4, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (50, 'AT&T 15Mb/s', 'images/49.png', 'Broadband', 13.00, '3', 5, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (51, 'AT&T 20Mb/s', 'images/49.png', 'Broadband', 15.00, '3', 5, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (52, 'AT&T 50Mb/s', 'images/49.png', 'Broadband', 20.00, '4', 5, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (53, 'AT&T 80Mb/s', 'images/49.png', 'Broadband', 25.00, '4', 5, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (54, 'AT&T 100Mb/s', 'images/49.png', 'Broadband', 30.00, '4', 5, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (55, 'AT&T 150Mb/s', 'images/49.png', 'Broadband', 40.00, '5', 5, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (56, 'AT&T 200Mb/s', 'images/49.png', 'Broadband', 60.00, '5', 5, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (57, 'T-Mobile 10Mb/s', 'images/50.jpeg', 'Broadband', 8.00, '3', 5, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (58, 'T-Mobile 15Mb/s', 'images/50.jpeg', 'Broadband', 10.00, '3', 5, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (59, 'T-Mobile 20Mb/s', 'images/50.jpeg', 'Broadband', 13.00, '4', 5, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (60, 'T-Mobile 50Mb/s', 'images/50.jpeg', 'Broadband', 18.00, '3', 5, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (61, 'T-Mobile 80Mb/s', 'images/50.jpeg', 'Broadband', 22.00, '4', 5, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (62, 'T-Mobile 100Mb/s', 'images/50.jpeg', 'Broadband', 33.00, '5', 5, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (63, 'T-Mobile 150Mb/s', 'images/50.jpeg', 'Broadband', 40.00, '5', 5, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (64, 'T-Mobile 200Mb/s', 'images/50.jpeg', 'Broadband', 55.00, '5', 5, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (65, 'Verizon 20Mb/s', 'images/51.jpeg', 'Broadband', 10.00, '2', 6, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (66, 'Verizon 50Mb/s', 'images/51.jpeg', 'Broadband', 25.00, '3', 6, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (67, 'Verizon 100Mb/s', 'images/51.jpeg', 'Broadband', 38.00, '3', 6, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (68, 'Verizon 150Mb/s', 'images/51.jpeg', 'Broadband', 42.00, '4', 6, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (69, 'Verizon 180Mb/s', 'images/51.jpeg', 'Broadband', 45.00, '5', 6, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (70, 'Verizon 200Mb/s', 'images/51.jpeg', 'Broadband', 52.00, '5', 6, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (71, 'AT&T 5GB', 'images/49.png', 'Data Package', 8.00, '4', 6, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (72, 'AT&T 10GB', 'images/49.png', 'Data Package', 10.00, '4', 6, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (73, 'AT&T 20GB', 'images/49.png', 'Data Package', 18.00, '4', 6, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (74, 'AT&T 50GB', 'images/49.png', 'Data Package', 36.00, '5', 6, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (75, 'AT&T 100GB', 'images/49.png', 'Data Package', 55.00, '4', 6, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (76, 'Cox 5GB', 'images/52.png', 'Data Package', 8.00, '5', 6, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (77, 'Cox 10GB', 'images/52.png', 'Data Package', 10.00, '4', 6, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (78, 'Cox 20GB', 'images/52.png', 'Data Package', 15.00, '5', 6, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (79, 'Cox 50GB', 'images/52.png', 'Data Package', 30.00, '5', 6, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (80, 'Cox 100GB', 'images/52.png', 'Data Package', 50.00, '5', 7, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (81, 'Xfinity 5GB', 'images/53.png', 'Data Package', 8.00, '5', 7, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (82, 'Xfinity 10GB', 'images/53.png', 'Data Package', 10.00, '5', 7, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (83, 'Xfinity 20GB', 'images/53.png', 'Data Package', 15.00, '4', 7, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (84, 'Xfinity 50GB', 'images/53.png', 'Data Package', 30.00, '5', 7, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (85, 'Xfinity 100GB', 'images/53.png', 'Data Package', 50.00, '5', 7, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (86, 'Game Plan1: Samsung Odyssey_Neo G9 + Sony PlayStation 5 Digital Edition PS5 Console + A89Playstation DualSense Wireless Controller +AT&T 200Mb/s', 'images/54.png', 'Game Plan', 2927.00, '5', 7, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (87, 'Game Plan2: HP 22f FHD Monitor + Microsoft Xbox one X 1TB Console + Xbox Elite Wireless Controller Series 2 Core + AT&T 150Mb/s', 'images/55.png', 'Game Plan', 717.00, '5', 7, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (88, 'Game Plan3: ASUS TUF Gaming 32\" Curved Monitor + Sony PlayStation 3 Slim + Playstation DualSense Wireless Controller + Xfinity 100GB', 'images/56.png', 'Game Plan', 577.00, '5', 7, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (89, 'Game Plan4: LG 27MD5KL-B IPS + Sony PlayStation 4 pro + DualShock 4 Wireless Controller for PlayStation 4 + Verizon 150Mb/s', 'images/57.png', 'Game Plan', 2832.00, '5', 7, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (90, 'Game Plan5: Dell S2721QS IPS Bezel Monitor + Microsoft Xbox 360 Console 500GB + Xbox Core Wireless Controller + T-Mobile 100Mb/s', 'images/58.png', 'Game Plan', 620.00, '4', 7, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (91, 'Family plan1: iPhone 12 Pro max + iPhone 13 Pro max + Verizon 180Mb/s', 'images/59.png', 'Family Plan', 2303.00, '5', 7, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (92, 'Family plan2: HUAWEI Mate Xs 2 + HUAWEI P50 Pro + T-Mobile 100Mb/s', 'images/60.png', 'Family Plan', 2572.00, '5', 8, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (93, 'Family plan3: Samsung Galaxy S22 Ultra + Samsung Galaxy Z Flip4 + Samsung W23 + AT&T 100GB + Cox 50GB + Xfinity 50GB', 'images/61.png', 'Family Plan', 4782.00, '5', 8, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (94, 'Family plan4: iPhone 14 Pro max+ Samsung W23 + HUAWEI Mate Xs 2 + T-Mobile 200Mb/s', 'images/62.png', 'Family Plan', 5452.00, '5', 8, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (95, 'Family plan5: SONY Xperia 1 IV+ Xiaomi 12S Ultra + AT&T 20GB + Cox 100GB', 'images/63.png', 'Family Plan', 2036.00, '5', 8, '2022-11-14 11:22:33', '2022-11-14 11:22:33');
INSERT INTO `goods` VALUES (98, '1', 'img/2022-12-04-07-22-28.png', 'phone', 1.00, '1', NULL, '2022-12-04 07:22:28', '2022-12-04 07:22:28');

-- ----------------------------
-- Table structure for goods_spec
-- ----------------------------
DROP TABLE IF EXISTS `goods_spec`;
CREATE TABLE `goods_spec`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spec_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of goods_spec
-- ----------------------------
INSERT INTO `goods_spec` VALUES (1, 'Brand');
INSERT INTO `goods_spec` VALUES (2, 'Model');
INSERT INTO `goods_spec` VALUES (3, 'Size');
INSERT INTO `goods_spec` VALUES (4, 'Carrier');
INSERT INTO `goods_spec` VALUES (5, 'Internet Speed');
INSERT INTO `goods_spec` VALUES (6, 'Plan');
INSERT INTO `goods_spec` VALUES (7, 'Memory');

-- ----------------------------
-- Table structure for goods_spec_sku
-- ----------------------------
DROP TABLE IF EXISTS `goods_spec_sku`;
CREATE TABLE `goods_spec_sku`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spec_id` int(11) NULL DEFAULT NULL,
  `goods_id` int(11) NULL DEFAULT NULL,
  `sku_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 209 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of goods_spec_sku
-- ----------------------------
INSERT INTO `goods_spec_sku` VALUES (1, 1, 1, 'Apple');
INSERT INTO `goods_spec_sku` VALUES (2, 2, 1, 'iPhone 12 Pro max');
INSERT INTO `goods_spec_sku` VALUES (3, 7, 1, '256GB');
INSERT INTO `goods_spec_sku` VALUES (4, 1, 2, 'Apple');
INSERT INTO `goods_spec_sku` VALUES (5, 2, 2, 'iPhone 13 Pro max');
INSERT INTO `goods_spec_sku` VALUES (6, 7, 2, '256GB');
INSERT INTO `goods_spec_sku` VALUES (7, 1, 3, 'Apple');
INSERT INTO `goods_spec_sku` VALUES (8, 2, 3, 'iPhone 14 ');
INSERT INTO `goods_spec_sku` VALUES (9, 7, 3, '128GB');
INSERT INTO `goods_spec_sku` VALUES (10, 1, 4, 'Apple');
INSERT INTO `goods_spec_sku` VALUES (11, 2, 4, 'iPhone 14 pro');
INSERT INTO `goods_spec_sku` VALUES (12, 7, 4, '256GB');
INSERT INTO `goods_spec_sku` VALUES (13, 1, 5, 'Apple');
INSERT INTO `goods_spec_sku` VALUES (14, 2, 5, 'iPhone 14 Pro max');
INSERT INTO `goods_spec_sku` VALUES (15, 7, 5, '128GB');
INSERT INTO `goods_spec_sku` VALUES (16, 1, 6, 'Apple');
INSERT INTO `goods_spec_sku` VALUES (17, 2, 6, 'iPhone 14 Pro max');
INSERT INTO `goods_spec_sku` VALUES (18, 7, 6, '256GB');
INSERT INTO `goods_spec_sku` VALUES (19, 1, 7, 'Samsung');
INSERT INTO `goods_spec_sku` VALUES (20, 2, 7, 'Samsung Galaxy S22 Ultra');
INSERT INTO `goods_spec_sku` VALUES (21, 7, 7, '512GB');
INSERT INTO `goods_spec_sku` VALUES (22, 1, 8, 'Samsung');
INSERT INTO `goods_spec_sku` VALUES (23, 2, 8, 'Samsung Galaxy Z Flip4');
INSERT INTO `goods_spec_sku` VALUES (24, 7, 8, '256GB');
INSERT INTO `goods_spec_sku` VALUES (25, 1, 9, 'Samsung');
INSERT INTO `goods_spec_sku` VALUES (26, 2, 9, 'Samsung W23');
INSERT INTO `goods_spec_sku` VALUES (27, 7, 9, '512GB');
INSERT INTO `goods_spec_sku` VALUES (28, 1, 10, 'Samsung');
INSERT INTO `goods_spec_sku` VALUES (29, 2, 10, 'Samsung Galaxy Z Fold4');
INSERT INTO `goods_spec_sku` VALUES (30, 7, 10, '256GB');
INSERT INTO `goods_spec_sku` VALUES (31, 1, 11, 'HUAWEI');
INSERT INTO `goods_spec_sku` VALUES (32, 2, 11, 'HUAWEI Mate50 Pro ');
INSERT INTO `goods_spec_sku` VALUES (33, 7, 11, '512GB');
INSERT INTO `goods_spec_sku` VALUES (34, 1, 12, 'HUAWEI');
INSERT INTO `goods_spec_sku` VALUES (35, 2, 12, 'HUAWEI Mate Xs 2');
INSERT INTO `goods_spec_sku` VALUES (36, 7, 12, '512GB');
INSERT INTO `goods_spec_sku` VALUES (37, 1, 13, 'HUAWEI');
INSERT INTO `goods_spec_sku` VALUES (38, 2, 13, 'HUAWEI P50 Pocket');
INSERT INTO `goods_spec_sku` VALUES (39, 7, 13, '256GB');
INSERT INTO `goods_spec_sku` VALUES (40, 1, 14, 'HUAWEI');
INSERT INTO `goods_spec_sku` VALUES (41, 2, 14, 'HUAWEI P50 Pro ');
INSERT INTO `goods_spec_sku` VALUES (42, 7, 14, '128GB');
INSERT INTO `goods_spec_sku` VALUES (43, 1, 15, 'SONY');
INSERT INTO `goods_spec_sku` VALUES (44, 2, 15, 'SONY Xperia 1 IV');
INSERT INTO `goods_spec_sku` VALUES (45, 7, 15, '256GB');
INSERT INTO `goods_spec_sku` VALUES (46, 1, 16, 'SONY');
INSERT INTO `goods_spec_sku` VALUES (47, 2, 16, 'SONY Xperia PRO-1');
INSERT INTO `goods_spec_sku` VALUES (48, 7, 16, '512GB');
INSERT INTO `goods_spec_sku` VALUES (49, 1, 17, 'Xiaomi');
INSERT INTO `goods_spec_sku` VALUES (50, 2, 17, 'Xiaomi 12S Ultra');
INSERT INTO `goods_spec_sku` VALUES (51, 7, 17, '512GB');
INSERT INTO `goods_spec_sku` VALUES (52, 1, 18, 'Xiaomi');
INSERT INTO `goods_spec_sku` VALUES (53, 2, 18, 'Xiaomi Redmi K50');
INSERT INTO `goods_spec_sku` VALUES (54, 7, 18, '512GB');
INSERT INTO `goods_spec_sku` VALUES (55, 1, 19, 'Samsung');
INSERT INTO `goods_spec_sku` VALUES (56, 2, 19, 'Samsung Odyssey_Neo G9');
INSERT INTO `goods_spec_sku` VALUES (57, 3, 19, '49inch');
INSERT INTO `goods_spec_sku` VALUES (58, 1, 20, 'Samsung');
INSERT INTO `goods_spec_sku` VALUES (59, 2, 20, 'Samsung J791 Series');
INSERT INTO `goods_spec_sku` VALUES (60, 3, 20, '34inch');
INSERT INTO `goods_spec_sku` VALUES (61, 1, 21, 'Samsung');
INSERT INTO `goods_spec_sku` VALUES (62, 2, 21, 'Samsung SJ55W');
INSERT INTO `goods_spec_sku` VALUES (63, 3, 21, '34inch');
INSERT INTO `goods_spec_sku` VALUES (64, 1, 22, 'Samsung');
INSERT INTO `goods_spec_sku` VALUES (65, 2, 22, 'Samsung S61B');
INSERT INTO `goods_spec_sku` VALUES (66, 3, 22, '27inch');
INSERT INTO `goods_spec_sku` VALUES (67, 1, 23, 'Apple');
INSERT INTO `goods_spec_sku` VALUES (68, 2, 23, 'iMac ');
INSERT INTO `goods_spec_sku` VALUES (69, 3, 23, '27inch');
INSERT INTO `goods_spec_sku` VALUES (70, 1, 24, 'HP');
INSERT INTO `goods_spec_sku` VALUES (71, 2, 24, 'HP 22f FHD Monitor');
INSERT INTO `goods_spec_sku` VALUES (72, 3, 24, '21.5inch');
INSERT INTO `goods_spec_sku` VALUES (73, 1, 25, 'HP');
INSERT INTO `goods_spec_sku` VALUES (74, 2, 25, 'HP QHD Curved');
INSERT INTO `goods_spec_sku` VALUES (75, 3, 25, '27inch');
INSERT INTO `goods_spec_sku` VALUES (76, 1, 26, 'HP');
INSERT INTO `goods_spec_sku` VALUES (77, 2, 26, 'HP FHD 60Hz Anti-Glare Monitor');
INSERT INTO `goods_spec_sku` VALUES (78, 3, 26, '27inch');
INSERT INTO `goods_spec_sku` VALUES (79, 1, 27, 'ASUS');
INSERT INTO `goods_spec_sku` VALUES (80, 2, 27, 'ASUS VA24DQ 24\" IPS FHD');
INSERT INTO `goods_spec_sku` VALUES (81, 3, 27, '24inch');
INSERT INTO `goods_spec_sku` VALUES (82, 1, 28, 'ASUS');
INSERT INTO `goods_spec_sku` VALUES (83, 2, 28, 'ASUS VG278QR 27\" Gaming Monitor');
INSERT INTO `goods_spec_sku` VALUES (84, 3, 28, '27inch');
INSERT INTO `goods_spec_sku` VALUES (85, 1, 29, 'ASUS');
INSERT INTO `goods_spec_sku` VALUES (86, 2, 29, 'ASUS TUF Gaming 32\" Curved Monitor');
INSERT INTO `goods_spec_sku` VALUES (87, 3, 29, '32inch');
INSERT INTO `goods_spec_sku` VALUES (88, 1, 30, 'LG');
INSERT INTO `goods_spec_sku` VALUES (89, 2, 30, 'LG 38WN95C-W Monitor');
INSERT INTO `goods_spec_sku` VALUES (90, 3, 30, '38inch');
INSERT INTO `goods_spec_sku` VALUES (91, 1, 31, 'LG');
INSERT INTO `goods_spec_sku` VALUES (92, 2, 31, 'LG 27MD5KL-B IPS');
INSERT INTO `goods_spec_sku` VALUES (93, 3, 31, '27inch');
INSERT INTO `goods_spec_sku` VALUES (94, 1, 32, 'LG');
INSERT INTO `goods_spec_sku` VALUES (95, 2, 32, 'LG 34GP950G-B Curved IPS G-sync Monitor');
INSERT INTO `goods_spec_sku` VALUES (96, 3, 32, '34inch');
INSERT INTO `goods_spec_sku` VALUES (97, 1, 33, 'Dell');
INSERT INTO `goods_spec_sku` VALUES (98, 2, 33, 'Dell S2721QS IPS Bezel Monitor');
INSERT INTO `goods_spec_sku` VALUES (99, 3, 33, '27inch');
INSERT INTO `goods_spec_sku` VALUES (100, 1, 34, 'Dell');
INSERT INTO `goods_spec_sku` VALUES (101, 2, 34, 'Dell P2422H IPS Computer Monitor');
INSERT INTO `goods_spec_sku` VALUES (102, 3, 34, '24inch');
INSERT INTO `goods_spec_sku` VALUES (103, 1, 35, 'Dell');
INSERT INTO `goods_spec_sku` VALUES (104, 2, 35, 'Dell 27\" Monitor FHD');
INSERT INTO `goods_spec_sku` VALUES (105, 3, 35, '27inch');
INSERT INTO `goods_spec_sku` VALUES (106, 1, 36, 'SONY');
INSERT INTO `goods_spec_sku` VALUES (107, 2, 36, 'Sony PlayStation 4 pro');
INSERT INTO `goods_spec_sku` VALUES (108, 1, 37, 'SONY');
INSERT INTO `goods_spec_sku` VALUES (109, 2, 37, 'Sony PlayStation 3 Slim ');
INSERT INTO `goods_spec_sku` VALUES (110, 1, 38, 'SONY');
INSERT INTO `goods_spec_sku` VALUES (111, 2, 38, 'Sony PlayStation 5 Digital Edition PS5 Console');
INSERT INTO `goods_spec_sku` VALUES (112, 1, 39, 'SONY');
INSERT INTO `goods_spec_sku` VALUES (113, 2, 39, 'Sony PlayStation 4 pro');
INSERT INTO `goods_spec_sku` VALUES (114, 1, 40, 'Microsoft');
INSERT INTO `goods_spec_sku` VALUES (115, 2, 40, 'Microsoft Xbox one X 1TB Console');
INSERT INTO `goods_spec_sku` VALUES (116, 1, 41, 'Microsoft');
INSERT INTO `goods_spec_sku` VALUES (117, 2, 41, 'Microsoft Xbox one S 1TB Console');
INSERT INTO `goods_spec_sku` VALUES (118, 1, 42, 'Microsoft');
INSERT INTO `goods_spec_sku` VALUES (119, 2, 42, 'Microsoft Xbox 360 Console 500GB');
INSERT INTO `goods_spec_sku` VALUES (120, 1, 43, 'Microsoft');
INSERT INTO `goods_spec_sku` VALUES (121, 2, 43, 'Xbox Core Wireless Controller');
INSERT INTO `goods_spec_sku` VALUES (122, 1, 44, 'Microsoft');
INSERT INTO `goods_spec_sku` VALUES (123, 2, 44, 'Xbox Elite Wireless Controller Series 2 Core');
INSERT INTO `goods_spec_sku` VALUES (124, 1, 45, 'Microsoft');
INSERT INTO `goods_spec_sku` VALUES (125, 2, 45, 'Original Xbox Wireless Controller Special Edition ');
INSERT INTO `goods_spec_sku` VALUES (126, 1, 46, 'SONY');
INSERT INTO `goods_spec_sku` VALUES (127, 2, 46, 'Playstation DualSense Wireless Controller');
INSERT INTO `goods_spec_sku` VALUES (128, 1, 47, 'SONY');
INSERT INTO `goods_spec_sku` VALUES (129, 2, 47, 'DualShock 4 Wireless Controller for PlayStation 4');
INSERT INTO `goods_spec_sku` VALUES (130, 1, 48, 'SONY');
INSERT INTO `goods_spec_sku` VALUES (131, 2, 48, 'Playstation 3 Dualshock 3 Wireless Controller ');
INSERT INTO `goods_spec_sku` VALUES (132, 4, 49, 'AT&T');
INSERT INTO `goods_spec_sku` VALUES (133, 5, 49, '10Mb/s');
INSERT INTO `goods_spec_sku` VALUES (134, 4, 50, 'AT&T');
INSERT INTO `goods_spec_sku` VALUES (135, 5, 50, '15Mb/s');
INSERT INTO `goods_spec_sku` VALUES (136, 4, 51, 'AT&T');
INSERT INTO `goods_spec_sku` VALUES (137, 5, 51, '20Mb/s');
INSERT INTO `goods_spec_sku` VALUES (138, 4, 52, 'AT&T');
INSERT INTO `goods_spec_sku` VALUES (139, 5, 52, '50Mb/s');
INSERT INTO `goods_spec_sku` VALUES (140, 4, 53, 'AT&T');
INSERT INTO `goods_spec_sku` VALUES (141, 5, 53, '80Mb/s');
INSERT INTO `goods_spec_sku` VALUES (142, 4, 54, 'AT&T');
INSERT INTO `goods_spec_sku` VALUES (143, 5, 54, '100Mb/s');
INSERT INTO `goods_spec_sku` VALUES (144, 4, 55, 'AT&T');
INSERT INTO `goods_spec_sku` VALUES (145, 5, 55, '150Mb/s');
INSERT INTO `goods_spec_sku` VALUES (146, 4, 56, 'AT&T');
INSERT INTO `goods_spec_sku` VALUES (147, 5, 56, '200Mb/s');
INSERT INTO `goods_spec_sku` VALUES (148, 4, 57, 'T-Mobile');
INSERT INTO `goods_spec_sku` VALUES (149, 5, 57, '10Mb/s');
INSERT INTO `goods_spec_sku` VALUES (150, 4, 58, 'T-Mobile');
INSERT INTO `goods_spec_sku` VALUES (151, 5, 58, '15Mb/s');
INSERT INTO `goods_spec_sku` VALUES (152, 4, 59, 'T-Mobile');
INSERT INTO `goods_spec_sku` VALUES (153, 5, 59, '20Mb/s');
INSERT INTO `goods_spec_sku` VALUES (154, 4, 60, 'T-Mobile');
INSERT INTO `goods_spec_sku` VALUES (155, 5, 60, '50Mb/s');
INSERT INTO `goods_spec_sku` VALUES (156, 4, 61, 'T-Mobile');
INSERT INTO `goods_spec_sku` VALUES (157, 5, 61, '80Mb/s');
INSERT INTO `goods_spec_sku` VALUES (158, 4, 62, 'T-Mobile');
INSERT INTO `goods_spec_sku` VALUES (159, 5, 62, '100Mb/s');
INSERT INTO `goods_spec_sku` VALUES (160, 4, 63, 'T-Mobile');
INSERT INTO `goods_spec_sku` VALUES (161, 5, 63, '150Mb/s');
INSERT INTO `goods_spec_sku` VALUES (162, 4, 64, 'T-Mobile');
INSERT INTO `goods_spec_sku` VALUES (163, 5, 64, '200Mb/s');
INSERT INTO `goods_spec_sku` VALUES (164, 4, 65, 'Verizon');
INSERT INTO `goods_spec_sku` VALUES (165, 5, 65, '20Mb/s');
INSERT INTO `goods_spec_sku` VALUES (166, 4, 66, 'Verizon');
INSERT INTO `goods_spec_sku` VALUES (167, 5, 66, '50Mb/s');
INSERT INTO `goods_spec_sku` VALUES (168, 4, 67, 'Verizon');
INSERT INTO `goods_spec_sku` VALUES (169, 5, 67, '100Mb/s');
INSERT INTO `goods_spec_sku` VALUES (170, 4, 68, 'Verizon');
INSERT INTO `goods_spec_sku` VALUES (171, 5, 68, '150Mb/s');
INSERT INTO `goods_spec_sku` VALUES (172, 4, 69, 'Verizon');
INSERT INTO `goods_spec_sku` VALUES (173, 5, 69, '180Mb/s');
INSERT INTO `goods_spec_sku` VALUES (174, 4, 70, 'Verizon');
INSERT INTO `goods_spec_sku` VALUES (175, 5, 70, '200Mb/s');
INSERT INTO `goods_spec_sku` VALUES (176, 4, 71, 'AT&T');
INSERT INTO `goods_spec_sku` VALUES (177, 6, 71, '5GB');
INSERT INTO `goods_spec_sku` VALUES (178, 4, 72, 'AT&T');
INSERT INTO `goods_spec_sku` VALUES (179, 6, 72, '10GB');
INSERT INTO `goods_spec_sku` VALUES (180, 4, 73, 'AT&T');
INSERT INTO `goods_spec_sku` VALUES (181, 6, 73, '20GB');
INSERT INTO `goods_spec_sku` VALUES (182, 4, 74, 'AT&T');
INSERT INTO `goods_spec_sku` VALUES (183, 6, 74, '50GB');
INSERT INTO `goods_spec_sku` VALUES (184, 4, 75, 'AT&T');
INSERT INTO `goods_spec_sku` VALUES (185, 6, 75, '100GB');
INSERT INTO `goods_spec_sku` VALUES (186, 4, 76, 'Cox');
INSERT INTO `goods_spec_sku` VALUES (187, 6, 76, '5GB');
INSERT INTO `goods_spec_sku` VALUES (188, 4, 77, 'Cox');
INSERT INTO `goods_spec_sku` VALUES (189, 6, 77, '10GB');
INSERT INTO `goods_spec_sku` VALUES (190, 4, 78, 'Cox');
INSERT INTO `goods_spec_sku` VALUES (191, 6, 78, '20GB');
INSERT INTO `goods_spec_sku` VALUES (192, 4, 79, 'Cox');
INSERT INTO `goods_spec_sku` VALUES (193, 6, 79, '50GB');
INSERT INTO `goods_spec_sku` VALUES (194, 4, 80, 'Cox');
INSERT INTO `goods_spec_sku` VALUES (195, 6, 80, '100GB');
INSERT INTO `goods_spec_sku` VALUES (196, 4, 81, 'Xfinity');
INSERT INTO `goods_spec_sku` VALUES (197, 6, 81, '5GB');
INSERT INTO `goods_spec_sku` VALUES (198, 4, 82, 'Xfinity');
INSERT INTO `goods_spec_sku` VALUES (199, 6, 82, '10GB');
INSERT INTO `goods_spec_sku` VALUES (200, 4, 83, 'Xfinity');
INSERT INTO `goods_spec_sku` VALUES (201, 6, 83, '20GB');
INSERT INTO `goods_spec_sku` VALUES (202, 4, 84, 'Xfinity');
INSERT INTO `goods_spec_sku` VALUES (203, 6, 84, '50GB');
INSERT INTO `goods_spec_sku` VALUES (204, 4, 85, 'Xfinity');
INSERT INTO `goods_spec_sku` VALUES (205, 6, 85, '100GB');
INSERT INTO `goods_spec_sku` VALUES (206, 1, 96, '123');
INSERT INTO `goods_spec_sku` VALUES (207, 1, 96, '123');
INSERT INTO `goods_spec_sku` VALUES (208, 1, 96, '123');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT NULL,
  `goods_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `goods_id` int(11) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `total_price` decimal(10, 2) NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `haggle` decimal(10, 2) NULL DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `card` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `card_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `damages` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `damages_percent` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `status` enum('pending','accepted','rejected','cancelled') CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'pending',
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (13, 11, 'AT&T 15Mb/s', 50, NULL, 13.52, '1', '1', '1', 13.00, '4', '1', '1', '1.35', '1', 'rejected', '2022-12-04 11:13:10', '2022-12-16 03:03:14');
INSERT INTO `order` VALUES (7, 11, 'iPhone 13 Pro max', 2, NULL, 1257.36, '123', '123', '123', 123123.00, '4', '123', '123', '12.57', '1', 'pending', '2022-12-02 06:43:11', '2022-12-02 06:43:11');
INSERT INTO `order` VALUES (8, 11, 'iPhone 13 Pro max', 2, NULL, 1257.36, '1', '2', '3', 4.00, '4', '5', '6', '12.57', '1', 'pending', '2022-12-02 06:45:11', '2022-12-04 07:37:05');
INSERT INTO `order` VALUES (9, 11, 'AT&T 20Mb/s', 51, 'C2YyO8rT0ygg', 15.60, '1', '1', '1', 12.00, '4', '1', '1', '1.56', '1', 'accepted', '2022-12-04 07:53:35', '2022-12-04 08:06:02');
INSERT INTO `order` VALUES (14, 11, 'AT&T 15Mb/s', 50, NULL, 13.52, '1', '1', '1', 13.00, '4', '1', '1', '1.35', '1', 'pending', '2022-12-04 11:13:10', '2022-12-04 11:13:10');
INSERT INTO `order` VALUES (18, 11, 'iPhone 13 Pro max', 2, NULL, 1257.36, '123', '123', '123', 1111.00, '4', '1', '1', '12.57', '1', 'accepted', '2022-12-16 03:08:30', '2022-12-16 03:09:07');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
INSERT INTO `password_resets` VALUES (2, 'yu-hy@qq.com', '29MzSN46hLGdiCJeDwM75rYm9YtIMFrOmyVLm5jyvQFc6AGJasOLm3ZGck5oCLAw', '2022-12-16 02:40:39');

-- ----------------------------
-- Table structure for register_users
-- ----------------------------
DROP TABLE IF EXISTS `register_users`;
CREATE TABLE `register_users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `identity` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `damages` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1',
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of register_users
-- ----------------------------
INSERT INTO `register_users` VALUES (1, 'Herbert', NULL, NULL, '$2y$10$DnVrKjvWqNKdHwGT7wAPrOzK14sQ8k/uzGgBny1.xZpOvcdlZczcK', 'abc1@zz.com', 'supplier', '1', '2022-11-03 18:51:08', '2022-11-03 18:51:08', NULL);
INSERT INTO `register_users` VALUES (2, 'Baron', NULL, NULL, '$2y$10$DnVrKjvWqNKdHwGT7wAPrOzK14sQ8k/uzGgBny1.xZpOvcdlZczcK', 'abc2@zz.com', 'supplier', '1', '2022-11-03 18:51:08', '2022-11-03 18:51:08', NULL);
INSERT INTO `register_users` VALUES (3, 'Theodore', NULL, NULL, '$2y$10$DnVrKjvWqNKdHwGT7wAPrOzK14sQ8k/uzGgBny1.xZpOvcdlZczcK', 'abc3@zz.com', 'supplier', '1', '2022-11-03 18:51:08', '2022-11-03 18:51:08', NULL);
INSERT INTO `register_users` VALUES (4, 'Darren', NULL, NULL, '$2y$10$DnVrKjvWqNKdHwGT7wAPrOzK14sQ8k/uzGgBny1.xZpOvcdlZczcK', 'abc4@zz.com', 'supplier', '1', '2022-11-03 18:51:08', '2022-11-03 18:51:08', NULL);
INSERT INTO `register_users` VALUES (5, 'Elijah', NULL, NULL, '$2y$10$DnVrKjvWqNKdHwGT7wAPrOzK14sQ8k/uzGgBny1.xZpOvcdlZczcK', 'abc5@zz.com', 'supplier', '1', '2022-11-03 18:51:08', '2022-12-04 10:42:15', NULL);
INSERT INTO `register_users` VALUES (6, 'August', NULL, NULL, '$2y$10$DnVrKjvWqNKdHwGT7wAPrOzK14sQ8k/uzGgBny1.xZpOvcdlZczcK', 'abc6@zz.com', 'supplier', '1', '2022-11-03 18:51:08', '2022-11-03 18:51:08', NULL);
INSERT INTO `register_users` VALUES (7, 'Philip', NULL, NULL, '$2y$10$DnVrKjvWqNKdHwGT7wAPrOzK14sQ8k/uzGgBny1.xZpOvcdlZczcK', 'abc7@zz.com', 'supplier', '1', '2022-11-03 18:51:08', '2022-11-03 18:51:08', NULL);
INSERT INTO `register_users` VALUES (11, 'user', '', '', '$2y$10$YRUq92mfUcYywxPRTMWft.719MZtFLLHQhLYolB3Q.vb/GBTKQaIC', '123@qwe.com', 'user', '1', '2022-11-12 06:55:46', '2022-11-12 06:55:46', NULL);
INSERT INTO `register_users` VALUES (8, 'kangaroo\'s shop ', '', '', '$2y$10$YRUq92mfUcYywxPRTMWft.719MZtFLLHQhLYolB3Q.vb/GBTKQaIC', 'yu-hy@qq.com', 'supplier', '1', '2022-11-12 06:55:46', '2022-11-12 06:55:46', NULL);

-- ----------------------------
-- Table structure for taxations
-- ----------------------------
DROP TABLE IF EXISTS `taxations`;
CREATE TABLE `taxations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `rate` double(10, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of taxations
-- ----------------------------
INSERT INTO `taxations` VALUES (1, 'Alabama', 4.000);
INSERT INTO `taxations` VALUES (2, 'Alaska', 0.000);
INSERT INTO `taxations` VALUES (3, 'Arizona', 5.600);
INSERT INTO `taxations` VALUES (4, 'Arkansas', 6.500);
INSERT INTO `taxations` VALUES (5, 'California 3', 7.500);
INSERT INTO `taxations` VALUES (6, 'Colorado', 2.900);
INSERT INTO `taxations` VALUES (7, 'Connecticut ', 6.350);
INSERT INTO `taxations` VALUES (8, 'Delaware', 0.000);
INSERT INTO `taxations` VALUES (9, 'District of Columbia ', 5.750);
INSERT INTO `taxations` VALUES (10, 'Florida', 6.000);
INSERT INTO `taxations` VALUES (11, 'Georgia', 4.000);
INSERT INTO `taxations` VALUES (12, 'Hawaii', 4.000);
INSERT INTO `taxations` VALUES (13, 'Idaho', 6.000);
INSERT INTO `taxations` VALUES (14, 'Illinois', 6.250);
INSERT INTO `taxations` VALUES (15, 'Indiana ', 7.000);
INSERT INTO `taxations` VALUES (16, 'Iowa', 6.000);
INSERT INTO `taxations` VALUES (17, 'Kansas', 6.150);
INSERT INTO `taxations` VALUES (18, 'Kentucky', 6.000);
INSERT INTO `taxations` VALUES (19, 'Louisiana', 4.000);
INSERT INTO `taxations` VALUES (20, 'Maine ', 5.500);
INSERT INTO `taxations` VALUES (21, 'Maryland ', 6.000);
INSERT INTO `taxations` VALUES (22, 'Massachusetts ', 6.250);
INSERT INTO `taxations` VALUES (23, 'Michigan ', 6.000);
INSERT INTO `taxations` VALUES (24, 'Minnesota', 6.875);
INSERT INTO `taxations` VALUES (25, 'Mississippi ', 7.000);
INSERT INTO `taxations` VALUES (26, 'Missouri ', 4.225);
INSERT INTO `taxations` VALUES (27, 'Montana', 0.000);
INSERT INTO `taxations` VALUES (28, 'Nebraska', 5.500);
INSERT INTO `taxations` VALUES (29, 'Nevada', 6.850);
INSERT INTO `taxations` VALUES (30, 'New Hampshire', 0.000);
INSERT INTO `taxations` VALUES (31, 'New Jersey ', 7.000);
INSERT INTO `taxations` VALUES (32, 'New Mexico', 5.125);
INSERT INTO `taxations` VALUES (33, 'New York', 4.000);
INSERT INTO `taxations` VALUES (34, 'North Carolina', 4.750);
INSERT INTO `taxations` VALUES (35, 'North Dakota', 5.000);
INSERT INTO `taxations` VALUES (36, 'Ohio', 5.750);
INSERT INTO `taxations` VALUES (37, 'Oklahoma', 4.500);
INSERT INTO `taxations` VALUES (38, 'Oregon', 0.000);
INSERT INTO `taxations` VALUES (39, 'Pennsylvania', 6.000);
INSERT INTO `taxations` VALUES (40, 'Rhode Island ', 7.000);
INSERT INTO `taxations` VALUES (41, 'South Carolina ', 6.000);
INSERT INTO `taxations` VALUES (42, 'South Dakota', 4.000);
INSERT INTO `taxations` VALUES (43, 'Tennessee', 7.000);
INSERT INTO `taxations` VALUES (44, 'Texas', 6.250);
INSERT INTO `taxations` VALUES (45, 'Utah', 5.950);
INSERT INTO `taxations` VALUES (46, 'Vermont', 6.000);
INSERT INTO `taxations` VALUES (47, 'Virginia', 5.300);
INSERT INTO `taxations` VALUES (48, 'Washington', 6.500);
INSERT INTO `taxations` VALUES (49, 'West Virginia ', 6.000);
INSERT INTO `taxations` VALUES (50, 'Wisconsin', 5.000);
INSERT INTO `taxations` VALUES (51, 'Wyoming', 4.000);

SET FOREIGN_KEY_CHECKS = 1;
