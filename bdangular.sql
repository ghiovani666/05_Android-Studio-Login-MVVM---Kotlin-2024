/*
 Navicat Premium Data Transfer

 Source Server         : WorkBeanch MySQL 8
 Source Server Type    : MySQL
 Source Server Version : 80023 (8.0.23)
 Source Host           : localhost:3306
 Source Schema         : bdangular

 Target Server Type    : MySQL
 Target Server Version : 80023 (8.0.23)
 File Encoding         : 65001

 Date: 06/12/2024 16:09:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO `migrations` VALUES (3, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (5, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (6, '2023_10_06_183711_create_product_table', 1);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------
INSERT INTO `personal_access_tokens` VALUES (1, 'App\\Models\\User', 1, 'API TOKEN', '47b32bc6bf0bc5bfc63ee49e94c3f475b9105a5561f70105c63cb7c959817c76', '[\"*\"]', '2024-11-03 22:10:37', NULL, '2024-11-03 22:02:43', '2024-11-03 22:10:37');
INSERT INTO `personal_access_tokens` VALUES (2, 'App\\Models\\User', 1, 'API TOKEN', '0db9531549c6c8dab7e228a67c0197d10efda7171a8a419b743e707dc4524c3c', '[\"*\"]', '2024-11-04 01:38:12', NULL, '2024-11-03 22:12:51', '2024-11-04 01:38:12');
INSERT INTO `personal_access_tokens` VALUES (3, 'App\\Models\\User', 1, 'API TOKEN', '045de95c151689a7c97bfcb3f4308c06ebf6ae348f7c80795e6163fcaaf98281', '[\"*\"]', '2024-11-04 03:29:38', NULL, '2024-11-04 01:38:19', '2024-11-04 03:29:38');
INSERT INTO `personal_access_tokens` VALUES (4, 'App\\Models\\User', 1, 'API TOKEN', '3611009d28c5571fdbb171a75749e40d44750b4013809c4990982f76b90140d7', '[\"*\"]', '2024-11-04 04:10:58', NULL, '2024-11-04 03:30:23', '2024-11-04 04:10:58');
INSERT INTO `personal_access_tokens` VALUES (5, 'App\\Models\\User', 1, 'API TOKEN', '09dd01307cb6f4f1a7cb8457c0b32ef7f16811820c247229e00b4fa611c031cf', '[\"*\"]', NULL, NULL, '2024-11-04 04:18:24', '2024-11-04 04:18:24');
INSERT INTO `personal_access_tokens` VALUES (6, 'App\\Models\\User', 1, 'API TOKEN', 'd0c9d5c6cd51fc7be81f1b98b1e56cdd351a3249e6308e01ce06903f8d1ad5da', '[\"*\"]', '2024-11-04 04:30:05', NULL, '2024-11-04 04:29:42', '2024-11-04 04:30:05');
INSERT INTO `personal_access_tokens` VALUES (7, 'App\\Models\\User', 1, 'API TOKEN', 'ef05fe284e9c82b903188f2c6321f169b6748d8e11a4a3dcf53ba64022669052', '[\"*\"]', NULL, NULL, '2024-11-04 04:32:54', '2024-11-04 04:32:54');
INSERT INTO `personal_access_tokens` VALUES (8, 'App\\Models\\User', 1, 'API TOKEN', '75383431ac0d6dd4b10b49b0c6309f12576dfdb43056e2ffecdd3e92712380a6', '[\"*\"]', NULL, NULL, '2024-11-04 04:34:00', '2024-11-04 04:34:00');
INSERT INTO `personal_access_tokens` VALUES (9, 'App\\Models\\User', 1, 'API TOKEN', '392ae4d6754b815b7f72ce3e8cb5354c561ceeb5d928fd28b0f2cf02df8e3beb', '[\"*\"]', NULL, NULL, '2024-11-04 04:37:16', '2024-11-04 04:37:16');
INSERT INTO `personal_access_tokens` VALUES (10, 'App\\Models\\User', 1, 'API TOKEN', '58e0087ca78b963567ba417ab69e80f0d2319f51c6948b0df7d8c2925d5a0227', '[\"*\"]', NULL, NULL, '2024-11-04 04:38:27', '2024-11-04 04:38:27');
INSERT INTO `personal_access_tokens` VALUES (11, 'App\\Models\\User', 1, 'API TOKEN', 'b5ab339cf22950333a76babf09984568901254aba5277fde8c0469bc7c6a8a76', '[\"*\"]', '2024-11-04 05:07:01', NULL, '2024-11-04 04:41:28', '2024-11-04 05:07:01');
INSERT INTO `personal_access_tokens` VALUES (12, 'App\\Models\\User', 1, 'API TOKEN', 'a7c1133fd809d39a1df4bdcaef9a1b5e899c086efa61734f997723146eee90d9', '[\"*\"]', NULL, NULL, '2024-12-03 05:32:59', '2024-12-03 05:32:59');
INSERT INTO `personal_access_tokens` VALUES (13, 'App\\Models\\User', 1, 'API TOKEN', '84fa0a7e71d10400b71295a0ce87474447b631ea5274abd6426721681a6b9846', '[\"*\"]', NULL, NULL, '2024-12-03 05:33:22', '2024-12-03 05:33:22');
INSERT INTO `personal_access_tokens` VALUES (14, 'App\\Models\\User', 1, 'API TOKEN', 'd2e7ff07dac6354b1e3510b4e71e2f8d05d2b08156632158bb0ecaee831b2804', '[\"*\"]', NULL, NULL, '2024-12-03 05:34:01', '2024-12-03 05:34:01');
INSERT INTO `personal_access_tokens` VALUES (15, 'App\\Models\\User', 1, 'API TOKEN', 'a3ea113943e127eedebbb2f26267d74662fd08b39fd6bab00fd5f797a655a4aa', '[\"*\"]', NULL, NULL, '2024-12-03 05:47:28', '2024-12-03 05:47:28');
INSERT INTO `personal_access_tokens` VALUES (16, 'App\\Models\\User', 1, 'API TOKEN', '4ac2451dd1010188d415aaaac40e78a1b12c000a62de6fbb99cc236b3c1863a9', '[\"*\"]', NULL, NULL, '2024-12-03 05:48:29', '2024-12-03 05:48:29');
INSERT INTO `personal_access_tokens` VALUES (17, 'App\\Models\\User', 1, 'API TOKEN', '6e5a5ac20e7cf17f9207d8a7a8acfa0c5ae7177024e9be575914ef8f6fd78dff', '[\"*\"]', NULL, NULL, '2024-12-03 05:49:37', '2024-12-03 05:49:37');
INSERT INTO `personal_access_tokens` VALUES (18, 'App\\Models\\User', 1, 'API TOKEN', 'e85d54ddc2199f78a4dc97b116d088e4f92bc19601ae431365fe3bee2f909a4a', '[\"*\"]', NULL, NULL, '2024-12-03 05:52:35', '2024-12-03 05:52:35');
INSERT INTO `personal_access_tokens` VALUES (19, 'App\\Models\\User', 1, 'API TOKEN', 'e04a731185636afd29d4d5f2097c1e07b25cc4b11084abd7f8e293432e781cff', '[\"*\"]', NULL, NULL, '2024-12-03 05:58:53', '2024-12-03 05:58:53');
INSERT INTO `personal_access_tokens` VALUES (20, 'App\\Models\\User', 1, 'API TOKEN', 'b47f5ede1475a3089bef1303ecba3b0741df63c4051f3a7210c112d8693b172e', '[\"*\"]', NULL, NULL, '2024-12-03 05:59:33', '2024-12-03 05:59:33');
INSERT INTO `personal_access_tokens` VALUES (21, 'App\\Models\\User', 2, 'API TOKEN', 'ca14cb58705fddf3f003d1912c64471a347b60882d68dea7bffe289b2dbffbbf', '[\"*\"]', NULL, NULL, '2024-12-03 05:59:51', '2024-12-03 05:59:51');
INSERT INTO `personal_access_tokens` VALUES (22, 'App\\Models\\User', 1, 'API TOKEN', 'addb96c3b4bbdae7f76de7bc0917ef4a5fb122481eff9aa0c7af686f1127f5cb', '[\"*\"]', NULL, NULL, '2024-12-03 06:00:18', '2024-12-03 06:00:18');
INSERT INTO `personal_access_tokens` VALUES (23, 'App\\Models\\User', 1, 'API TOKEN', 'be86f2e26a0a567912ded957dfe7186d5b264d9bffcf8513ddb032776ff5f879', '[\"*\"]', NULL, NULL, '2024-12-03 06:00:19', '2024-12-03 06:00:19');
INSERT INTO `personal_access_tokens` VALUES (24, 'App\\Models\\User', 1, 'API TOKEN', 'a00085b89d7e96820679bf9c8fb8db0dacf749b3e4f4b897f0ab31cdbd634778', '[\"*\"]', NULL, NULL, '2024-12-03 06:01:09', '2024-12-03 06:01:09');
INSERT INTO `personal_access_tokens` VALUES (25, 'App\\Models\\User', 1, 'API TOKEN', 'f0bc49d13b21cc4bf9a90ddc9ece8be8777027bc0a68da4435b622147e4a0a88', '[\"*\"]', NULL, NULL, '2024-12-03 06:02:53', '2024-12-03 06:02:53');
INSERT INTO `personal_access_tokens` VALUES (26, 'App\\Models\\User', 1, 'API TOKEN', '268658f492385e412bacd2c9d7448da249b91b9760cce34ac47649aaee9120ef', '[\"*\"]', NULL, NULL, '2024-12-03 06:07:23', '2024-12-03 06:07:23');
INSERT INTO `personal_access_tokens` VALUES (27, 'App\\Models\\User', 1, 'API TOKEN', '4af16adbc358988dd76f414d0780b2e5cb2947fda410f337bc69d9121d7190d2', '[\"*\"]', NULL, NULL, '2024-12-03 06:07:52', '2024-12-03 06:07:52');
INSERT INTO `personal_access_tokens` VALUES (28, 'App\\Models\\User', 1, 'API TOKEN', '06aa95325f56fb038c52c5637149ece6bbdd23cdbb9591223fbc277219ddd0f1', '[\"*\"]', NULL, NULL, '2024-12-04 03:41:16', '2024-12-04 03:41:16');
INSERT INTO `personal_access_tokens` VALUES (29, 'App\\Models\\User', 1, 'API TOKEN', '22f34ccc16bfbb10ae7980f1e762604a98e95ff791b3c8d129830e7537bbbe28', '[\"*\"]', NULL, NULL, '2024-12-04 03:44:14', '2024-12-04 03:44:14');
INSERT INTO `personal_access_tokens` VALUES (30, 'App\\Models\\User', 1, 'API TOKEN', '9c1ebf7c66de0bb2c276d6a0c6d9bd8fd9cb1fa649fef110f0fce1ddd229f650', '[\"*\"]', NULL, NULL, '2024-12-04 04:33:34', '2024-12-04 04:33:34');
INSERT INTO `personal_access_tokens` VALUES (31, 'App\\Models\\User', 1, 'API TOKEN', '1dc2b00a71f77df7045d7c4e30a15fa61bbc78927c7efb7ad9d896ca56a80b82', '[\"*\"]', NULL, NULL, '2024-12-04 05:28:28', '2024-12-04 05:28:28');
INSERT INTO `personal_access_tokens` VALUES (32, 'App\\Models\\User', 1, 'API TOKEN', 'a270ab11d93806a0299a0b7e04cfbc0cc1d84cee7fc813b952ffd6324d9a8fde', '[\"*\"]', NULL, NULL, '2024-12-04 05:34:09', '2024-12-04 05:34:09');
INSERT INTO `personal_access_tokens` VALUES (33, 'App\\Models\\User', 1, 'API TOKEN', '1a4fa5a48cf280dd9434d9d60fb15b7d7b4c689911cbbf056ac9718bbcc52bb2', '[\"*\"]', NULL, NULL, '2024-12-04 05:34:13', '2024-12-04 05:34:13');
INSERT INTO `personal_access_tokens` VALUES (34, 'App\\Models\\User', 1, 'API TOKEN', '2305890d6485a8ca1f1b7334dc6ee03941a809778264fe6b7ed7557927ce4e9a', '[\"*\"]', NULL, NULL, '2024-12-04 06:03:46', '2024-12-04 06:03:46');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_user_id_foreign`(`user_id` ASC) USING BTREE,
  CONSTRAINT `product_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 'hola2222', '123456sss789', 1, '2024-11-03 06:34:31', '2024-11-04 04:03:25', '2024-11-03 06:34:33');
INSERT INTO `product` VALUES (2, '777', '234234234', 1, '2024-11-03 06:35:33', '2024-11-03 06:37:55', '2024-11-03 06:37:52');
INSERT INTO `product` VALUES (4, 'hola', '123456sss789', 1, '2024-11-04 02:55:48', '2024-11-04 02:55:48', NULL);
INSERT INTO `product` VALUES (5, 'hola', '123456sss789', 1, '2024-11-04 02:55:51', '2024-11-04 02:55:51', NULL);
INSERT INTO `product` VALUES (6, 'hola', '123456sss789', 1, '2024-11-04 03:29:38', '2024-11-04 03:29:38', NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'jorge', 'admin@gmail.com', NULL, '$2y$12$3lbCd2M4ICY6YoS9wIM0WOjpUnxNEnLCnql3.InV8Gua.PYwxkJ2u', NULL, '2024-11-03 11:35:05', '2024-11-03 11:35:05');

SET FOREIGN_KEY_CHECKS = 1;
