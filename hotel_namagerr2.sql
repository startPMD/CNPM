/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 100424 (10.4.24-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : hotel_namagerr

 Target Server Type    : MySQL
 Target Server Version : 100424 (10.4.24-MariaDB)
 File Encoding         : 65001

 Date: 20/05/2023 11:07:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book_a_room
-- ----------------------------
DROP TABLE IF EXISTS `book_a_room`;
CREATE TABLE `book_a_room`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `room_id` int NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `check_in_time` datetime NULL DEFAULT NULL,
  `stay_duration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `num_guest` int NOT NULL,
  `payment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `state` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `customer_id`(`customer_id` ASC) USING BTREE,
  INDEX `room_id`(`room_id` ASC) USING BTREE,
  INDEX `bar_fk1`(`state` ASC) USING BTREE,
  CONSTRAINT `bar_fk1` FOREIGN KEY (`state`) REFERENCES `status_room` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 127 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_a_room
-- ----------------------------
INSERT INTO `book_a_room` VALUES (1, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (2, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (3, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (4, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (5, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (6, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (7, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (8, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (9, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (10, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (11, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (12, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (13, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (14, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (15, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (16, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (17, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (18, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (19, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (20, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (21, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (22, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (23, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (24, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (25, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (26, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (27, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (28, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (29, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (30, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (31, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (32, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (33, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (34, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (35, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (36, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (37, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (38, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (39, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (40, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (41, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (42, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (43, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 0, NULL, 6);
INSERT INTO `book_a_room` VALUES (87, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2 ngày', 2, 'Đã thanh toán', 6);
INSERT INTO `book_a_room` VALUES (88, 3, 1, '2023-05-07 21:43:27', '2023-05-08 21:43:27', '2023-05-07 21:43:27', '1 ngày', 2, 'Chưa thanh toán', 6);
INSERT INTO `book_a_room` VALUES (89, 1, 4, '2023-05-08 21:43:27', '2023-05-10 21:43:27', '2023-05-08 21:43:27', '1 ngày', 2, 'Chưa thanh toán', 6);
INSERT INTO `book_a_room` VALUES (90, 2, 2, '2023-05-08 21:43:27', '2023-05-10 21:43:27', '2023-05-08 21:43:27', '1 ngày', 2, 'Chưa thanh toán', 6);
INSERT INTO `book_a_room` VALUES (119, 76, 3, '2023-05-08 21:43:27', '2023-05-10 21:43:27', '2023-05-08 23:56:10', '1 ngày', 2, 'Chưa thanh toán', 6);
INSERT INTO `book_a_room` VALUES (120, 77, 16, '2023-05-10 11:44:38', '2023-05-11 11:44:38', '2023-05-10 11:44:38', '1 ngày', 2, 'Đã thanh toán', 6);
INSERT INTO `book_a_room` VALUES (121, 81, 3, '2023-05-11 03:14:51', '2023-05-18 03:14:20', '2023-05-18 03:14:20', NULL, 3, 'Chưa thanh toán', NULL);
INSERT INTO `book_a_room` VALUES (122, 82, 4, '2023-05-11 03:49:54', '2023-05-25 11:20:00', '2023-05-25 11:20:00', NULL, 2, 'Chưa thanh toán', NULL);
INSERT INTO `book_a_room` VALUES (123, 83, 5, '2023-05-11 03:58:47', '2023-05-25 20:30:00', '2023-05-25 20:30:00', NULL, 2, 'Chưa thanh toán', NULL);
INSERT INTO `book_a_room` VALUES (124, 84, 2, '2023-05-12 01:49:30', '2023-05-09 12:20:22', '2023-05-09 12:20:22', NULL, 2, 'Chưa thanh toán', 6);
INSERT INTO `book_a_room` VALUES (125, 85, 16, '2023-05-12 01:51:40', '2023-05-18 12:20:22', '2023-05-18 12:20:22', NULL, 1, 'Chưa thanh toán', NULL);
INSERT INTO `book_a_room` VALUES (126, 66, 7, '2023-05-12 02:05:39', '2023-05-23 02:05:23', '2023-05-23 02:05:23', NULL, 2, 'Chưa thanh toán', NULL);

-- ----------------------------
-- Table structure for book_a_room_payment
-- ----------------------------
DROP TABLE IF EXISTS `book_a_room_payment`;
CREATE TABLE `book_a_room_payment`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `book_a_room_id` int NOT NULL,
  `payment_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `book_a_room_id`(`book_a_room_id` ASC) USING BTREE,
  INDEX `payment_id`(`payment_id` ASC) USING BTREE,
  CONSTRAINT `book_a_room_payment_ibfk_1` FOREIGN KEY (`book_a_room_id`) REFERENCES `book_a_room` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `book_a_room_payment_ibfk_2` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_a_room_payment
-- ----------------------------
INSERT INTO `book_a_room_payment` VALUES (1, 1, 1);
INSERT INTO `book_a_room_payment` VALUES (2, 2, 2);
INSERT INTO `book_a_room_payment` VALUES (3, 3, 3);
INSERT INTO `book_a_room_payment` VALUES (4, 4, 4);
INSERT INTO `book_a_room_payment` VALUES (5, 5, 5);
INSERT INTO `book_a_room_payment` VALUES (6, 6, 6);
INSERT INTO `book_a_room_payment` VALUES (7, 7, 7);
INSERT INTO `book_a_room_payment` VALUES (8, 8, 8);
INSERT INTO `book_a_room_payment` VALUES (9, 9, 9);
INSERT INTO `book_a_room_payment` VALUES (10, 10, 10);
INSERT INTO `book_a_room_payment` VALUES (11, 11, 11);
INSERT INTO `book_a_room_payment` VALUES (12, 12, 12);
INSERT INTO `book_a_room_payment` VALUES (13, 13, 13);
INSERT INTO `book_a_room_payment` VALUES (14, 14, 14);
INSERT INTO `book_a_room_payment` VALUES (15, 15, 15);
INSERT INTO `book_a_room_payment` VALUES (16, 16, 16);
INSERT INTO `book_a_room_payment` VALUES (17, 17, 17);
INSERT INTO `book_a_room_payment` VALUES (18, 18, 18);
INSERT INTO `book_a_room_payment` VALUES (19, 19, 19);
INSERT INTO `book_a_room_payment` VALUES (20, 20, 20);

-- ----------------------------
-- Table structure for book_a_room_service
-- ----------------------------
DROP TABLE IF EXISTS `book_a_room_service`;
CREATE TABLE `book_a_room_service`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `book_a_room_id` int NOT NULL,
  `service_id` int NOT NULL,
  `customer_id` int NULL DEFAULT NULL,
  `request_date` datetime NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `book_a_room_id`(`book_a_room_id` ASC) USING BTREE,
  INDEX `service_id`(`service_id` ASC) USING BTREE,
  INDEX `book_a_room_service_ibfk_3`(`customer_id` ASC) USING BTREE,
  CONSTRAINT `book_a_room_service_ibfk_1` FOREIGN KEY (`book_a_room_id`) REFERENCES `book_a_room` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `book_a_room_service_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `book_a_room_service_ibfk_3` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_a_room_service
-- ----------------------------
INSERT INTO `book_a_room_service` VALUES (1, 89, 1, 1, '2023-05-08 21:43:27', 1, 0.00);
INSERT INTO `book_a_room_service` VALUES (2, 89, 2, 1, '2023-05-08 21:43:27', 1, 0.00);
INSERT INTO `book_a_room_service` VALUES (3, 89, 3, 1, '2023-05-08 21:43:27', 1, 0.00);
INSERT INTO `book_a_room_service` VALUES (4, 90, 2, 2, '2023-05-08 21:43:27', 1, 0.00);
INSERT INTO `book_a_room_service` VALUES (5, 90, 3, 2, '2023-05-08 21:43:27', 1, 0.00);
INSERT INTO `book_a_room_service` VALUES (6, 90, 4, 2, '2023-05-08 21:43:27', 1, 0.00);
INSERT INTO `book_a_room_service` VALUES (7, 119, 1, 3, '2023-05-08 21:43:27', 1, 0.00);
INSERT INTO `book_a_room_service` VALUES (8, 119, 4, 3, '2023-05-08 21:43:27', 1, 0.00);
INSERT INTO `book_a_room_service` VALUES (9, 119, 3, 3, '2023-05-08 21:43:27', 1, 0.00);
INSERT INTO `book_a_room_service` VALUES (10, 89, 4, 1, '2023-05-08 21:43:27', 1, 0.00);
INSERT INTO `book_a_room_service` VALUES (11, 89, 5, 1, '2023-05-08 21:43:27', 1, 0.00);
INSERT INTO `book_a_room_service` VALUES (12, 90, 1, 2, '2023-05-08 21:43:27', 1, 0.00);
INSERT INTO `book_a_room_service` VALUES (13, 5, 3, 1, '2023-05-08 21:43:27', 1, 0.00);
INSERT INTO `book_a_room_service` VALUES (14, 5, 5, 3, '2023-05-08 21:43:27', 1, 0.00);
INSERT INTO `book_a_room_service` VALUES (15, 6, 2, 3, '2023-05-08 21:43:27', 1, 0.00);
INSERT INTO `book_a_room_service` VALUES (16, 6, 4, 3, '2023-05-08 21:43:27', 1, 0.00);
INSERT INTO `book_a_room_service` VALUES (17, 6, 6, 3, '2023-05-08 21:43:27', 1, 0.00);
INSERT INTO `book_a_room_service` VALUES (18, 7, 3, 3, '2023-05-08 21:43:27', 1, 0.00);
INSERT INTO `book_a_room_service` VALUES (19, 7, 5, 3, '2023-05-08 21:43:27', 1, 0.00);
INSERT INTO `book_a_room_service` VALUES (20, 7, 7, 3, '2023-05-08 21:43:27', 1, 0.00);
INSERT INTO `book_a_room_service` VALUES (21, 8, 4, 5, '2023-05-08 21:43:27', 1, 0.00);
INSERT INTO `book_a_room_service` VALUES (22, 8, 6, 5, '2023-05-08 21:43:27', 1, 0.00);
INSERT INTO `book_a_room_service` VALUES (23, 8, 8, 5, '2023-05-08 21:43:27', 1, 0.00);
INSERT INTO `book_a_room_service` VALUES (24, 9, 5, 5, '2023-05-08 21:43:27', 1, 0.00);
INSERT INTO `book_a_room_service` VALUES (25, 9, 7, 5, '2023-05-08 21:43:27', 1, 0.00);
INSERT INTO `book_a_room_service` VALUES (26, 9, 9, 2, '2023-05-08 21:43:27', 1, 0.00);
INSERT INTO `book_a_room_service` VALUES (27, 10, 6, 2, '2023-05-04 21:43:27', 1, 0.00);
INSERT INTO `book_a_room_service` VALUES (28, 10, 8, 2, '2023-05-08 21:43:27', 1, 0.00);
INSERT INTO `book_a_room_service` VALUES (29, 10, 10, 2, '2023-05-08 21:43:27', 1, 0.00);
INSERT INTO `book_a_room_service` VALUES (57, 123, 12, 83, '2023-05-15 15:18:57', 2, 440000.00);
INSERT INTO `book_a_room_service` VALUES (58, 123, 5, 83, '2023-05-15 15:18:57', 1, 100000.00);
INSERT INTO `book_a_room_service` VALUES (59, 123, 11, 83, '2023-05-15 15:18:57', 1, 80000.00);
INSERT INTO `book_a_room_service` VALUES (60, 123, 7, 83, '2023-05-15 15:18:57', 1, 150000.00);

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `identity_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, 'Nguyễn Văn A', '0987654321', '123 Đường 1, Quận 2, TP.HCM', 'nguyenvana@gmail.com', 'ABC123', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (2, 'Trần Thị B', '0909090909', '456 Đường 2, Quận 3, TP.HCM', 'tranthib@gmail.com', 'XYZ456', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (3, 'Lê Minh C', '0123456789', '789 Đường 3, Quận 4, TP.HCM', 'leminhc@gmail.com', 'DEF789', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (4, 'Phạm Thanh D', '0888888888', '321 Đường 4, Quận 5, TP.HCM', 'phamthanhd@gmail.com', 'GHI012', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (5, 'Đỗ Hải E', '0333333333', '654 Đường 5, Quận 6, TP.HCM', 'dohaie@gmail.com', 'JKL345', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (6, 'Nguyễn Thị F', '0777777777', '987 Đường 6, Quận 7, TP.HCM', 'nguyenthif@gmail.com', 'MNO678', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (7, 'Trần Văn G', '0666666666', '258 Đường 7, Quận 8, TP.HCM', 'tranvang@gmail.com', 'PQR901', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (8, 'Lê Thị H', '0555555555', '369 Đường 8, Quận 9, TP.HCM', 'lethih@gmail.com', 'STU234', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (9, 'Phạm Hải I', '0444444444', '147 Đường 9, Quận 10, TP.HCM', 'phamhaii@gmail.com', 'VWX567', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (10, 'Đỗ Thị K', '0321654987', '258 Đường 10, Quận 11, TP.HCM', 'dothik@gmail.com', 'YZA890', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (11, 'Nguyễn Văn L', '0987654321', '123 Đường A, Quận B, Hà Nội', 'nguyenvanl@gmail.com', 'BCD123', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (12, 'Trần Thị M', '0909090909', '456 Đường B, Quận C, Hà Nội', 'tranthim@gmail.com', 'EFG456', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (13, 'Lê Minh N', '0123456789', '789 Đường C, Quận D, Hà Nội', 'leminhn@gmail.com', 'HIJ789', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (14, 'Phạm Thanh O', '0888888888', '321 Đường D, Quận E, Hà Nội', 'phamthanh@gmail.com', 'KLM012', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (15, 'Đỗ Hải P', '0333333333', '654 Đường E, Quận F, Hà Nội', 'dohaip@gmail.com', 'NOP345', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (16, 'Nguyễn Thị Q', '0777777777', '987 Đường F, Quận G, Hà Nội', 'nguyenthiq@gmail.com', 'QRS678', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (17, 'Trần Văn R', '0666666666', '258 Đường G, Quận H, Hà Nội', 'tranvanr@gmail.com', 'TUV901', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (18, 'Lê Thị S', '0555555555', '369 Đường H, Quận I, Hà Nội', 'lethis@gmail.com', 'WXY234', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (19, 'Phạm Hải T', '0444444444', '147 Đường I, Quận K, Hà Nội', 'phamhait@gmail.com', 'ZAB567', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (20, 'Đỗ Thị U', '0321654987', '258 Đường K, Quận L, Hà Nội', 'dothiu@gmail.com', 'CDE890', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (21, 'Nguyễn Văn V', '0987654321', '123 Đường L, Quận M, Đà Nẵng', 'nguyenvanv@gmail.com', 'EFG123', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (22, 'Trần Thị X', '0909090909', '456 Đường M, Quận N, Đà Nẵng', 'tranthix@gmail.com', 'HIJ456', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (23, 'Lê Minh Y', '0123456789', '789 Đường N, Quận P, Đà Nẵng', 'leminhy@gmail.com', 'KLM789', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (24, 'Phạm Thanh Z', '0888888888', '321 Đường P, Quận Q, Đà Nẵng', 'phamthanhz@gmail.com', 'NOP012', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (25, 'Đỗ Hải A', '0333333333', '654 Đường Q, Quận R, Đà Nẵng', 'dohaia@gmail.com', 'QRS345', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (26, 'Nguyễn Thị B', '0777777777', '987 Đường R, Quận S, Đà Nẵng', 'nguyenthib@gmail.com', 'TUV678', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (27, 'Trần Văn C', '0666666666', '258 Đường S, Quận T, Đà Nẵng', 'tranvanc@gmail.com', 'WXY901', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (28, 'Lê Thị D', '0555555555', '369 Đường T, Quận U, Đà Nẵng', 'lethid@gmail.com', 'ZAB234', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (29, 'Phạm Hải E', '0444444444', '147 Đường U, Quận V, Đà Nẵng', 'phamhaie@gmail.com', 'CDE567', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (30, 'Đỗ Thị F', '0321654987', '258 Đường V, Quận X, Đà Nẵng', 'dothif@gmail.com', 'FGH890', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (49, 'ndjawdjw', '213213', 'null', 'qưeqwe', '221', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (50, '', '', 'null', '', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (51, 'dasd', '23123', 'null', 'dwejfwej', '12321', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (52, 'qweqweqw', '1231231', 'null', 'qewqwe@', '21312321', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (53, 'qwewe', '12312', 'null', 'qeqwe@', '1233', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (54, 'qwe', '213', 'null', 'dqw', '11121', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (60, 'qeq', '123', 'null', 'qwe', '123', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (61, 'qweqwe', '1232', 'null', 'qwe', 'qweqw', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (62, 'qweq', '231', 'null', 'qweasd', 'eqw2', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (63, 'eeeeeeeeeeeeee', '111', 'null', 'qwe', '111', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (64, '1eeeeeeeeeeeeeeeeeeee', 'qwe', 'null', '123', 'qwe', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (65, 'qweeqweqweqwe', '11111111', 'null', 'qqweqweqw', '1111111111111', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (66, 'qưeqwe', '123312', 'null', 'qeqweqw', '12312', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES (67, 'qeqweqe', '3131231', 'null', '123123', '11111111111', '2023-05-08 17:36:25');
INSERT INTO `customer` VALUES (68, 'qưeqweqw', '12312313123', 'null', 'qưeqweqwe', '1312313123', '2023-05-08 17:41:50');
INSERT INTO `customer` VALUES (69, 'qưeqweqweqw', '211121212', 'null', '221qưe', '123233', '2023-05-08 17:44:34');
INSERT INTO `customer` VALUES (70, 'qưeqweqw', '2222', 'null', 'ewqeq', '2212', '2023-05-08 17:45:59');
INSERT INTO `customer` VALUES (71, 'qưeqweqwe', '1312', 'null', 'qưeqwe', '23131', '2023-05-08 17:52:47');
INSERT INTO `customer` VALUES (72, 'wwwwwwwwwwwww', '2331321', 'null', 'qưeqwe', '131232312', '2023-05-08 18:13:03');
INSERT INTO `customer` VALUES (73, 'nguyen', '00000', 'null', '1sdwwq', '00112', '2023-05-08 18:23:01');
INSERT INTO `customer` VALUES (74, 'đănnan', '123', 'null', 'qưeqe', 'ưeq23', '2023-05-08 18:28:44');
INSERT INTO `customer` VALUES (75, 'ngnggn', '19191991', 'null', 'qieqie', '191919', '2023-05-08 18:35:10');
INSERT INTO `customer` VALUES (76, 'nguyyen aa', '1231312', 'null', 'qưeqwe', '13123123', '2023-05-08 23:56:10');
INSERT INTO `customer` VALUES (77, 'nguen bbb', '123123', 'null', 'qwead@', '323232', '2023-05-10 11:44:38');
INSERT INTO `customer` VALUES (78, 'nguyen van bay', '0099099090', 'null', 'qdwj@gm', '99999999', '2023-05-11 02:55:12');
INSERT INTO `customer` VALUES (79, 'nguyen huy', '123213', 'null', 'qewqe@', '3323232', '2023-05-11 03:10:02');
INSERT INTO `customer` VALUES (80, 'nguenenne', '21321', 'null', 'qeqwewq', '321312313', '2023-05-11 03:12:55');
INSERT INTO `customer` VALUES (81, 'ngngngngn', '213213', 'null', 'qeqwe', '333323', '2023-05-11 03:14:51');
INSERT INTO `customer` VALUES (82, 'gnngng', '3123231', 'null', 'ewqeqw', '123132', '2023-05-11 03:49:54');
INSERT INTO `customer` VALUES (83, 'ưewqeqwe', '12312312', 'null', 'qưeqe', '21321321', '2023-05-11 03:58:47');
INSERT INTO `customer` VALUES (84, 'adasdasdasdsa', '312321', 'null', 'qeqweqwe', '123123', '2023-05-12 01:49:30');
INSERT INTO `customer` VALUES (85, 'qweqwe', '23123', 'null', 'qweqw@', '222', '2023-05-12 01:51:40');
INSERT INTO `customer` VALUES (86, 'qweqweqweqw', '123213', 'null', 'awea', '321313', '2023-05-12 01:57:42');
INSERT INTO `customer` VALUES (87, 'qeqeqeqweqwe', '123123', 'null', 'qweqwe', '321321', '2023-05-12 01:59:49');
INSERT INTO `customer` VALUES (88, 'qeqeqwqweq', '123123', 'null', '2waew', '3123', '2023-05-12 02:01:22');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `birthdate` date NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `salary` decimal(10, 2) NULL DEFAULT NULL,
  `date_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, 'Nguyễn Văn A', 'Nam', '1990-01-01', 'Hà Nội', '0987654321', 'nguyenvana@gmail.com', 'Nhân viên lễ tân', 10000000.00, '2023-05-19 00:00:00');
INSERT INTO `employee` VALUES (2, 'Trần Thị B', 'Nữ', '1995-03-15', 'Hải Phòng', '0912345678', 'tranthib@gmail.com', 'Nhân viên phục vụ', 8000000.00, '2023-05-19 00:00:00');
INSERT INTO `employee` VALUES (3, 'Lê Văn C', 'Nam', '1985-07-20', 'Tp. Hồ Chí Minh', '0901234567', 'levanc@gmail.com', 'Quản lý khách sạn', 20000000.00, '2023-05-19 00:00:00');
INSERT INTO `employee` VALUES (4, 'Phạm Thị D', 'Nữ', '1992-12-30', 'Hà Nội', '0123456789', 'phamthid@gmail.com', 'Nhân viên bảo vệ', 7000000.00, '2023-05-19 00:00:00');
INSERT INTO `employee` VALUES (6, 'Nguyễn Thị F', 'Nữ', '1990-10-10', 'Hải Phòng', '0912345678', 'nguyenthif@gmail.com', 'Nhân viên phục vụ', 8000000.00, '2023-05-19 00:00:00');
INSERT INTO `employee` VALUES (7, 'Lê Thị G', 'Nữ', '1993-02-18', 'Tp. Hồ Chí Minh', '0901234567', 'lethig@gmail.com', 'Nhân viên kế toán', 7000000.00, '2023-05-19 00:00:00');
INSERT INTO `employee` VALUES (8, 'Trần Văn H', 'Nam', '1980-11-11', 'Hà Nội', '0123456789', 'tranvanh@gmail.com', 'Giám đốc khách sạn', 50000000.00, '2023-05-19 00:00:00');
INSERT INTO `employee` VALUES (9, 'Nguyễn Thị I', 'Nữ', '1995-09-22', 'Đà Nẵng', '0987654321', 'nguyenthii@gmail.com', 'Nhân viên lễ tân', 9000000.00, '2023-05-19 00:00:00');
INSERT INTO `employee` VALUES (10, 'Lê Văn K', 'Nam', '1987-06-29', 'Hải Phòng', '0912345678', 'levank@gmail.com', 'Quản lý nhà hàng', 20000000.00, '2023-05-19 00:00:00');
INSERT INTO `employee` VALUES (11, 'Phạm Văn L', 'Nam', '1991-08-08', 'Tp. Hồ Chí Minh', '0901234567', 'phamvanl@gmail.com', 'Nhân viên phục vụ', 7000000.00, '2023-05-19 00:00:00');
INSERT INTO `employee` VALUES (12, 'Trần Thị M', 'Nữ', '1996-04-12', 'Hà Nội', '0123456789', 'tranthim@gmail.com', 'Nhân viên bảo vệ', 8000000.00, '2023-05-19 00:00:00');
INSERT INTO `employee` VALUES (13, 'Nguyễn Văn N', 'Nam', '1989-03-05', 'Đà Nẵng', '0987654321', 'nguyenvann@gmail.com', 'Nhân viên lễ tân', 9000000.00, '2023-05-19 00:00:00');
INSERT INTO `employee` VALUES (14, 'Lê Thị O', 'Nữ', '1992-01-23', 'Hải Phòng', '0912345678', 'lethio@gmail.com', 'Nhân viên phục vụ', 8000000.00, '2023-05-19 00:00:00');
INSERT INTO `employee` VALUES (15, 'Phạm Văn P', 'Nam', '1986-09-19', 'Tp. Hồ Chí Minh', '0901234567', 'phamvanp@gmail.com', 'Nhân viên bảo vệ', 7000000.00, '2023-05-19 00:00:00');
INSERT INTO `employee` VALUES (16, 'Trần Thị Q', 'Nữ', '1984-12-01', 'Hà Nội', '0123456789', 'tranthiq@gmail.com', 'Trưởng phòng nhân sự', 25000000.00, '2023-05-19 00:00:00');
INSERT INTO `employee` VALUES (17, 'Nguyễn Văn R', 'Nam', '1983-11-15', 'Đà Nẵng', '0987654321', 'nguyenvanr@gmail.com', 'Nhân viên lễ tân', 9000000.00, '2023-05-19 00:00:00');
INSERT INTO `employee` VALUES (18, 'Lê Thị S', 'Nữ', '1994-07-05', 'Hải Phòng', '0912345678', 'lethis@gmail.com', 'Nhân viên phục vụ', 8000000.00, '2023-05-19 00:00:00');
INSERT INTO `employee` VALUES (19, 'Phạm Văn T', 'Nam', '1990-02-17', 'Tp. Hồ Chí Minh', '0901234567', 'phamvant@gmail.com', 'Nhân viên kế toán', 7000000.00, '2023-05-19 00:00:00');
INSERT INTO `employee` VALUES (20, 'Trần Thị U', 'Nữ', '1981-06-23', 'Hà Nội', '0123456789', 'tranthiu@gmail.com', 'Giám đốc kinh doanh', 50000000.00, '2023-05-19 00:00:00');
INSERT INTO `employee` VALUES (21, 'Nguyễn Văn V', 'Nam', '1982-09-29', 'Đà Nẵng', '0987654321', 'nguyenvanv@gmail.com', 'Nhân viên lễ tân', 9000000.00, '2023-05-19 00:00:00');
INSERT INTO `employee` VALUES (22, 'Nguyễn Văn V', 'Nam', '1982-09-29', 'Tp. Hồ Chí Minh', '0987632421', 'nguyenvanv@gmail.com', 'Nhân viên lễ tân', 9000000.00, '2023-05-19 14:10:48');
INSERT INTO `employee` VALUES (23, 'Nguyễn Văn V', 'Nam', '1982-09-29', 'Đà Nẵng', '0912312321', 'nguyenvanv@gmail.com', 'Nhân viên lễ tân', 9000000.00, '2023-05-19 14:11:38');

-- ----------------------------
-- Table structure for housekeeper_room
-- ----------------------------
DROP TABLE IF EXISTS `housekeeper_room`;
CREATE TABLE `housekeeper_room`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `housekeeper_id` int NOT NULL,
  `room_id` int NOT NULL,
  `cleaning_time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `housekeeper_id`(`housekeeper_id` ASC) USING BTREE,
  INDEX `room_id`(`room_id` ASC) USING BTREE,
  CONSTRAINT `housekeeper_room_ibfk_1` FOREIGN KEY (`housekeeper_id`) REFERENCES `employee` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `housekeeper_room_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of housekeeper_room
-- ----------------------------
INSERT INTO `housekeeper_room` VALUES (1, 1, 1, '2022-01-01 08:00:00');
INSERT INTO `housekeeper_room` VALUES (2, 1, 1, '2022-01-01 09:00:00');
INSERT INTO `housekeeper_room` VALUES (3, 1, 3, '2022-01-01 10:00:00');
INSERT INTO `housekeeper_room` VALUES (4, 1, 3, '2022-01-02 08:00:00');
INSERT INTO `housekeeper_room` VALUES (5, 1, 4, '2022-01-02 09:00:00');
INSERT INTO `housekeeper_room` VALUES (6, 1, 5, '2022-01-02 10:00:00');
INSERT INTO `housekeeper_room` VALUES (7, 1, 5, '2022-01-03 08:00:00');
INSERT INTO `housekeeper_room` VALUES (8, 1, 5, '2022-01-03 09:00:00');
INSERT INTO `housekeeper_room` VALUES (9, 1, 6, '2022-01-03 10:00:00');
INSERT INTO `housekeeper_room` VALUES (10, 1, 7, '2022-01-04 08:00:00');
INSERT INTO `housekeeper_room` VALUES (11, 1, 7, '2022-01-04 09:00:00');
INSERT INTO `housekeeper_room` VALUES (12, 2, 8, '2022-01-04 10:00:00');

-- ----------------------------
-- Table structure for payment
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `book_a_room_id` int NOT NULL,
  `payment_date` datetime NOT NULL,
  `total_amount` decimal(10, 2) NOT NULL,
  `payment_method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `customer_id`(`customer_id` ASC) USING BTREE,
  INDEX `book_a_room_id`(`book_a_room_id` ASC) USING BTREE,
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`book_a_room_id`) REFERENCES `book_a_room` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payment
-- ----------------------------
INSERT INTO `payment` VALUES (1, 1, 1, '2022-01-01 00:00:00', 5000000.00, 'Visa');
INSERT INTO `payment` VALUES (2, 1, 2, '2022-01-02 00:00:00', 6000000.00, 'Mastercard');
INSERT INTO `payment` VALUES (3, 3, 3, '2022-01-03 00:00:00', 7000000.00, 'Visa');
INSERT INTO `payment` VALUES (4, 4, 4, '2022-01-04 00:00:00', 8000000.00, 'Mastercard');
INSERT INTO `payment` VALUES (5, 5, 5, '2022-01-05 00:00:00', 9000000.00, 'Visa');
INSERT INTO `payment` VALUES (6, 6, 6, '2022-01-06 00:00:00', 10000000.00, 'Mastercard');
INSERT INTO `payment` VALUES (7, 7, 7, '2022-01-07 00:00:00', 11000000.00, 'Visa');
INSERT INTO `payment` VALUES (8, 8, 8, '2022-01-08 00:00:00', 12000000.00, 'Mastercard');
INSERT INTO `payment` VALUES (9, 9, 9, '2022-01-09 00:00:00', 13000000.00, 'Visa');
INSERT INTO `payment` VALUES (10, 10, 10, '2022-01-10 00:00:00', 14000000.00, 'Mastercard');
INSERT INTO `payment` VALUES (11, 11, 11, '2022-01-11 00:00:00', 15000000.00, 'Visa');
INSERT INTO `payment` VALUES (12, 12, 12, '2022-01-12 00:00:00', 16000000.00, 'Mastercard');
INSERT INTO `payment` VALUES (13, 13, 13, '2022-01-13 00:00:00', 17000000.00, 'Visa');
INSERT INTO `payment` VALUES (14, 14, 14, '2022-01-14 00:00:00', 18000000.00, 'Mastercard');
INSERT INTO `payment` VALUES (15, 15, 15, '2022-01-15 00:00:00', 19000000.00, 'Visa');
INSERT INTO `payment` VALUES (16, 16, 16, '2022-01-16 00:00:00', 20000000.00, 'Mastercard');
INSERT INTO `payment` VALUES (17, 17, 17, '2022-01-17 00:00:00', 21000000.00, 'Visa');
INSERT INTO `payment` VALUES (18, 18, 18, '2022-01-18 00:00:00', 22000000.00, 'Mastercard');
INSERT INTO `payment` VALUES (19, 19, 19, '2022-01-19 00:00:00', 23000000.00, 'Visa');
INSERT INTO `payment` VALUES (20, 20, 20, '2022-01-20 00:00:00', 24000000.00, 'Mastercard');
INSERT INTO `payment` VALUES (21, 1, 1, '2023-05-06 14:33:45', 3000.00, NULL);
INSERT INTO `payment` VALUES (22, 49, 87, '2023-05-06 14:36:56', 1600000.00, NULL);
INSERT INTO `payment` VALUES (23, 77, 120, '2023-05-10 11:44:38', 1500000.00, NULL);

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `room_number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type_room_id` int NOT NULL,
  `status` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `location` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `constraint_room_number`(`room_number` ASC) USING BTREE,
  INDEX `type_room_id`(`type_room_id` ASC) USING BTREE,
  INDEX `fk_status_id`(`status` ASC) USING BTREE,
  CONSTRAINT `fk_status_id` FOREIGN KEY (`status`) REFERENCES `status_room` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `room_ibfk_1` FOREIGN KEY (`type_room_id`) REFERENCES `room_types` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES (1, '101', 1, 1, NULL, 'Tầng 1');
INSERT INTO `room` VALUES (2, '102', 1, 1, NULL, 'Tầng 1');
INSERT INTO `room` VALUES (3, '103', 1, 2, NULL, 'Tầng 1');
INSERT INTO `room` VALUES (4, '104', 1, 2, '', 'Tầng 1');
INSERT INTO `room` VALUES (5, '105', 1, 3, '', 'Tầng 1');
INSERT INTO `room` VALUES (6, '106', 1, 1, '', 'Tầng 1');
INSERT INTO `room` VALUES (7, '107', 1, 2, '', 'Tầng 1');
INSERT INTO `room` VALUES (8, '108', 1, 1, '', 'Tầng 2');
INSERT INTO `room` VALUES (9, '109', 1, 1, '', 'Tầng 2');
INSERT INTO `room` VALUES (10, '110', 1, 1, '', 'Tầng 2');
INSERT INTO `room` VALUES (11, '201', 1, 1, NULL, 'Tầng 2');
INSERT INTO `room` VALUES (12, '202', 1, 1, NULL, 'Tầng 2');
INSERT INTO `room` VALUES (13, '203', 1, 1, NULL, 'Tầng 2');
INSERT INTO `room` VALUES (14, '204', 1, 1, NULL, 'Tầng 2');
INSERT INTO `room` VALUES (15, '205', 2, 1, NULL, 'Tầng 3');
INSERT INTO `room` VALUES (16, '206', 2, 3, NULL, 'Tầng 3');
INSERT INTO `room` VALUES (17, '207', 2, 1, NULL, 'Tầng 3');
INSERT INTO `room` VALUES (18, '208', 2, 1, NULL, 'Tầng 3');
INSERT INTO `room` VALUES (19, '209', 2, 1, NULL, 'Tầng 3');
INSERT INTO `room` VALUES (20, '210', 2, 1, NULL, 'Tầng 3');
INSERT INTO `room` VALUES (21, '301', 2, 1, NULL, 'Tầng 3');
INSERT INTO `room` VALUES (22, '302', 2, 1, NULL, 'Tầng 4');
INSERT INTO `room` VALUES (23, '303', 2, 1, NULL, 'Tầng 4');
INSERT INTO `room` VALUES (24, '304', 2, 1, NULL, 'Tầng 4');
INSERT INTO `room` VALUES (25, '305', 2, 1, NULL, 'Tầng 4');
INSERT INTO `room` VALUES (26, '306', 2, 1, NULL, 'Tầng 4');
INSERT INTO `room` VALUES (27, '307', 2, 1, NULL, 'Tầng 4');
INSERT INTO `room` VALUES (28, '308', 2, 1, NULL, 'Tầng 4');
INSERT INTO `room` VALUES (29, '309', 3, 1, NULL, 'Tầng 5');
INSERT INTO `room` VALUES (30, '310', 3, 1, NULL, 'Tầng 5');
INSERT INTO `room` VALUES (31, '401', 3, 1, NULL, 'Tầng 5');
INSERT INTO `room` VALUES (32, '402', 3, 1, NULL, 'Tầng 5');
INSERT INTO `room` VALUES (33, '403', 3, 1, NULL, 'Tầng 5');
INSERT INTO `room` VALUES (34, '404', 3, 1, NULL, 'Tầng 5');
INSERT INTO `room` VALUES (35, '405', 3, 1, NULL, 'Tầng 5');
INSERT INTO `room` VALUES (36, '406', 3, 1, NULL, 'Tầng 5');
INSERT INTO `room` VALUES (37, '407', 3, 1, NULL, 'Tầng 6');
INSERT INTO `room` VALUES (38, '408', 3, 1, NULL, 'Tầng 6');
INSERT INTO `room` VALUES (39, '409', 3, 1, NULL, 'Tầng 6');
INSERT INTO `room` VALUES (40, '410', 3, 1, NULL, 'Tầng 6');
INSERT INTO `room` VALUES (41, '501', 3, 1, NULL, 'Tầng 6');
INSERT INTO `room` VALUES (42, '502', 3, 1, NULL, 'Tầng 6');
INSERT INTO `room` VALUES (43, '503', 3, 1, NULL, 'Tầng 6');
INSERT INTO `room` VALUES (45, '504', 4, 1, NULL, 'Tầng 7');
INSERT INTO `room` VALUES (46, '505', 4, 1, NULL, 'Tầng 7');
INSERT INTO `room` VALUES (47, '506', 4, 5, NULL, 'Tầng 7');
INSERT INTO `room` VALUES (48, '507', 4, 5, NULL, 'Tầng 7');
INSERT INTO `room` VALUES (49, '508', 4, 5, NULL, 'Tầng 7');
INSERT INTO `room` VALUES (50, '509', 4, 1, NULL, 'Tầng 7');
INSERT INTO `room` VALUES (51, '510', 4, 1, NULL, 'Tầng 7');

-- ----------------------------
-- Table structure for room_types
-- ----------------------------
DROP TABLE IF EXISTS `room_types`;
CREATE TABLE `room_types`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `price` decimal(10, 2) NOT NULL,
  `location` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `num_guest` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room_types
-- ----------------------------
INSERT INTO `room_types` VALUES (1, 'Standard', 'Phòng có đầy đủ các tiện nghi cơ bản như giường, tủ quần áo, bàn làm việc, TV, điện thoại, tủ lạnh và đôi khi cả máy điều hòa', 800000.00, 'Tầng 1 -> 3', 4);
INSERT INTO `room_types` VALUES (2, 'Deluxe', 'Phòng có nhiều tiện nghi như máy pha cà phê, một khu vực ghế ngồi, giường lớn hơn', 1500000.00, 'Tầng 4-> 6', 4);
INSERT INTO `room_types` VALUES (3, 'Family', 'Phòng được trang bị thêm giường phụ hoặc sofa giường để đáp ứng nhu cầu của khách hàng', 2000000.00, 'Tầng 7 -> 8', 5);
INSERT INTO `room_types` VALUES (4, 'Suite', 'Phòng có phòng khách riêng, phòng ngủ riêng, phòng tắm với bồn tắm đứng, máy chiếu, đầu đĩa DVD, khu vực ăn uống và đôi khi cả bể sục nước nóng', 2500000.00, 'Tầng 8 -> 10', 3);

-- ----------------------------
-- Table structure for service
-- ----------------------------
DROP TABLE IF EXISTS `service`;
CREATE TABLE `service`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `type_service_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk`(`type_service_id` ASC) USING BTREE,
  CONSTRAINT `fk` FOREIGN KEY (`type_service_id`) REFERENCES `type_service` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of service
-- ----------------------------
INSERT INTO `service` VALUES (1, 'Bánh mì', '', 20000.00, 2);
INSERT INTO `service` VALUES (2, 'Bánh ngọt', '', 25000.00, 2);
INSERT INTO `service` VALUES (3, 'Bánh mì nướng', '', 20000.00, 2);
INSERT INTO `service` VALUES (4, 'Trứng', '', 15000.00, 2);
INSERT INTO `service` VALUES (5, 'Thịt xông khói', '', 100000.00, 2);
INSERT INTO `service` VALUES (6, 'Phô mai', '', 75000.00, 2);
INSERT INTO `service` VALUES (7, 'Thịt đùi heo', '', 150000.00, 2);
INSERT INTO `service` VALUES (8, 'Xúc xích', '', 30000.00, 2);
INSERT INTO `service` VALUES (9, 'Salad', '', 50000.00, 2);
INSERT INTO `service` VALUES (10, 'Mì Ý', '', 90000.00, 2);
INSERT INTO `service` VALUES (11, 'Pizza', '', 80000.00, 2);
INSERT INTO `service` VALUES (12, 'Sushi', '', 110000.00, 2);
INSERT INTO `service` VALUES (13, ' Thịt nướng', '', 99000.00, 2);
INSERT INTO `service` VALUES (14, 'Coca Cola', '', 25000.00, 3);
INSERT INTO `service` VALUES (15, 'Pepsi', '', 25000.00, 3);
INSERT INTO `service` VALUES (16, 'Sprite', '', 25000.00, 3);
INSERT INTO `service` VALUES (17, 'Fanta', '', 25000.00, 3);
INSERT INTO `service` VALUES (18, 'Nước suối đóng chai', '', 15000.00, 3);
INSERT INTO `service` VALUES (19, 'Nước cam', '', 30000.00, 3);
INSERT INTO `service` VALUES (20, 'Nước táo', '', 35000.00, 3);
INSERT INTO `service` VALUES (21, 'Cà phê đen', '', 30000.00, 3);
INSERT INTO `service` VALUES (22, 'Cà phê sữa', '', 33000.00, 3);
INSERT INTO `service` VALUES (23, 'Trà đen', '', 45000.00, 3);
INSERT INTO `service` VALUES (24, 'Trà xanh', '', 45000.00, 3);
INSERT INTO `service` VALUES (25, 'Trà hoa quả', '', 45000.00, 3);
INSERT INTO `service` VALUES (26, 'Giặt ủi', '', 40000.00, 1);
INSERT INTO `service` VALUES (27, 'Dọn phòng, thay ga trải giường', '', 60000.00, 1);
INSERT INTO `service` VALUES (28, 'Đưa đón sân bay', '', 200000.00, 1);
INSERT INTO `service` VALUES (29, 'Tour du lịch', '', 1000000.00, 1);
INSERT INTO `service` VALUES (30, 'Massage', '', 150000.00, 1);
INSERT INTO `service` VALUES (31, 'Xông hơi', '', 250000.00, 1);

-- ----------------------------
-- Table structure for status_room
-- ----------------------------
DROP TABLE IF EXISTS `status_room`;
CREATE TABLE `status_room`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of status_room
-- ----------------------------
INSERT INTO `status_room` VALUES (1, 'Trống', 'Phòng đang trống');
INSERT INTO `status_room` VALUES (2, 'Đang sử dụng', 'Phòng đang được sử dụng bởi khách hàng');
INSERT INTO `status_room` VALUES (3, 'Đang được đặt', 'Phòng đã được đặt nhưng chưa sử dụng');
INSERT INTO `status_room` VALUES (4, 'Đang dọn dẹp', 'Phòng đang được dọn dẹp');
INSERT INTO `status_room` VALUES (5, 'Đang bảo trì', 'Phòng đang được bảo trì');
INSERT INTO `status_room` VALUES (6, 'Đã trả phòng', 'Phòng được khách hàng thanh toán,và trả');

-- ----------------------------
-- Table structure for type_service
-- ----------------------------
DROP TABLE IF EXISTS `type_service`;
CREATE TABLE `type_service`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type_service
-- ----------------------------
INSERT INTO `type_service` VALUES (1, 'Dịch vụ');
INSERT INTO `type_service` VALUES (2, 'Đồ ăn');
INSERT INTO `type_service` VALUES (3, 'Nước uống');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `active_account` int NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `employee_id` int NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE,
  INDEX `fk_employee_id`(`employee_id` ASC) USING BTREE,
  CONSTRAINT `fk_da` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 1, 'user1', 'pw', '2023-05-16 18:16:55', '2023-05-16 18:26:24', 1);
INSERT INTO `users` VALUES (4, 0, 'user4', 'pw', '2023-05-16 18:16:55', '2023-05-16 18:26:24', 4);
INSERT INTO `users` VALUES (6, 1, 'user6', 'pw', '2023-05-16 18:16:55', '2023-05-16 19:00:56', 6);
INSERT INTO `users` VALUES (7, 1, 'user7', 'pw', '2023-05-16 18:16:55', '2023-05-16 19:00:56', 7);
INSERT INTO `users` VALUES (8, 0, 'user8', 'pw', '2023-05-16 18:16:55', '2023-05-16 18:26:24', 8);
INSERT INTO `users` VALUES (9, 0, 'user9', 'pw', '2023-05-16 18:16:55', '2023-05-16 18:26:24', 9);

-- ----------------------------
-- Triggers structure for table employee
-- ----------------------------
DROP TRIGGER IF EXISTS `trigger_employee`;
delimiter ;;
CREATE TRIGGER `trigger_employee` BEFORE INSERT ON `employee` FOR EACH ROW SET NEW.date_at = NOW()
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
