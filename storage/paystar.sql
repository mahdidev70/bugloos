/*
 Navicat Premium Data Transfer

 Source Server         : MacDB
 Source Server Type    : MySQL
 Source Server Version : 100803 (10.8.3-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : paystar

 Target Server Type    : MySQL
 Target Server Version : 100803 (10.8.3-MariaDB)
 File Encoding         : 65001

 Date: 10/01/2023 19:53:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (12, '2023_01_10_065802_create_payments_table', 2);
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for payments
-- ----------------------------
DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `card_number` bigint(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `ref_num` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of payments
-- ----------------------------
BEGIN;
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (1, 1, 5000, 6037997469893185, 1, 'k0o4q4', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"JgeHLHIBMpFu9TjNT4fCKylF3FREWycp1aed9Idvj1RYOHss0xDMOQU3GqIG\",\"ref_num\":\"k0o4q4\",\"order_id\":\"1\",\"payment_amount\":5000}},\"payment\":{\"status\":\"1\",\"ref_num\":\"k0o4q4\",\"order_id\":\"1\",\"tracking_code\":\"311574965423\",\"card_number\":\"603799******3185\",\"transaction_id\":\"q9okk5\"}}', NULL, '2023-01-10 10:50:45', '2023-01-10 10:51:23');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (2, 1, 5000, 6037997469893185, 0, 'll1917', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"ru8YBC0OSTuIh0jdi2CqvnNbPOpC1I5bowY76471jH7FMKPBG646k1VubOEE\",\"ref_num\":\"ll1917\",\"order_id\":\"2\",\"payment_amount\":5000}},\"payment\":{\"status\":\"-98\",\"ref_num\":\"ll1917\",\"order_id\":\"2\",\"transaction_id\":\"ov3mm1\"}}', NULL, '2023-01-10 10:52:25', '2023-01-10 10:52:39');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (3, 1, 5000, 6037997469893185, 1, 'v37y74', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"cgJUWStJUMUoCeXbVvZoYjUdSLFEvUSQcLtBzjsk8EbLWMUbrl9AxLQEMYpw\",\"ref_num\":\"v37y74\",\"order_id\":\"3\",\"payment_amount\":5000}},\"payment\":{\"status\":\"1\",\"ref_num\":\"v37y74\",\"order_id\":\"3\",\"tracking_code\":\"411874172723\",\"card_number\":\"603799******3185\",\"transaction_id\":\"dkl88e\"}}', '2023-01-10 10:53:34', '2023-01-10 10:52:55', '2023-01-10 10:53:34');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (4, 1, 5000, 6037997469893185, 1, '9zxdky', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"f2LjnoPZkIj2YiKspn1M9QWxPAb84d7LalQxyDLU9hGg6kPaqt1I2AzpS6sc\",\"ref_num\":\"9zxdky\",\"order_id\":\"4\",\"payment_amount\":5000}},\"payment\":{\"status\":\"1\",\"ref_num\":\"9zxdky\",\"order_id\":\"4\",\"tracking_code\":\"311575019723\",\"card_number\":\"603799******3185\",\"transaction_id\":\"v350kl\"}}', '2023-01-10 11:03:44', '2023-01-10 11:02:59', '2023-01-10 11:03:44');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (5, 1, 5000, 6345435, 0, '7z9o8k', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"mfIhjrtNvgFjAZQHPOHdIHhAEsL5DqxbqrJNevvqyA5hexlAvdyd92BDPKLb\",\"ref_num\":\"7z9o8k\",\"order_id\":\"5\",\"payment_amount\":5000}},\"payment\":{\"status\":\"1\",\"ref_num\":\"7z9o8k\",\"order_id\":\"5\",\"tracking_code\":\"411874239923\",\"card_number\":\"603799******3185\",\"transaction_id\":\"9z8ozo\"}}', NULL, '2023-01-10 11:07:51', '2023-01-10 11:08:35');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (6, 1, 5000, 6037997469893185, 0, '8l911n', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"5cAgWDqIqLM0K9HCNeKNoyBOrOhyXUXQXWpcDa5M3toF0aCxjpt1mx31xAct\",\"ref_num\":\"8l911n\",\"order_id\":\"6\",\"payment_amount\":5000}},\"payment\":{\"status\":\"-98\",\"ref_num\":\"8l911n\",\"order_id\":\"6\",\"transaction_id\":\"8ldylw\"}}', NULL, '2023-01-10 11:09:16', '2023-01-10 11:10:20');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (7, 1, 5000, 6037997469893185, 1, 'dkyz3e', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"jEX9bhiGSpq1znlSwwkaDUX3jOxPddDy4e0IAYAATogxAdoW2oWB4M7jtmOP\",\"ref_num\":\"dkyz3e\",\"order_id\":\"7\",\"payment_amount\":5000}},\"payment\":{\"status\":\"1\",\"ref_num\":\"dkyz3e\",\"order_id\":\"7\",\"tracking_code\":\"202735635223\",\"card_number\":\"603799******3185\",\"transaction_id\":\"8ldyxw\"}}', '2023-01-10 11:12:41', '2023-01-10 11:12:00', '2023-01-10 11:12:41');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (8, 1, 5000, 603799746989318, 0, 'zkdlo8', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"K3suycCPC5c5spQgUdFNnye7i6TEmTjUg2NEie2uZF1O0fE8X1GcydrnfXQj\",\"ref_num\":\"zkdlo8\",\"order_id\":\"8\",\"payment_amount\":5000}},\"payment\":{\"status\":\"1\",\"ref_num\":\"zkdlo8\",\"order_id\":\"8\",\"tracking_code\":\"411874276023\",\"card_number\":\"603799******3185\",\"transaction_id\":\"9z8o52\"}}', NULL, '2023-01-10 11:16:08', '2023-01-10 11:17:10');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (9, 1, 5000, 603799746989318, 0, 'gz3ldd', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"5Unz0v2jMe71vGnCBGCSxl1yUmlHyAfyCmDKj9MFXpCqFrQpfbKE4UV22FsD\",\"ref_num\":\"gz3ldd\",\"order_id\":\"9\",\"payment_amount\":5000}},\"payment\":{\"status\":\"-98\",\"ref_num\":\"gz3ldd\",\"order_id\":\"9\",\"transaction_id\":\"xwyd5z\"}}', NULL, '2023-01-10 11:17:40', '2023-01-10 11:18:46');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (10, 1, 5000, 6037997469893185, 1, 'yk13v2', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"20cWsj2PIdWoin63zjECy53dX8hcaQyTaprE4Q82AyQO5bkGeGfEnE4X1j2x\",\"ref_num\":\"yk13v2\",\"order_id\":\"10\",\"payment_amount\":5000}},\"payment\":{\"status\":\"1\",\"ref_num\":\"yk13v2\",\"order_id\":\"10\",\"tracking_code\":\"202735672223\",\"card_number\":\"603799******3185\",\"transaction_id\":\"2lw3vl\"}}', '2023-01-10 11:20:52', '2023-01-10 11:20:17', '2023-01-10 11:20:52');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (11, 1, 5000, 6037997469893185, 0, 'xwon36', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"M93IjBM17Lj5hgMPoOrh0GuH0CPg4FQbgjH58Z3heYyQkIl4sOQIvBKxbf9Q\",\"ref_num\":\"xwon36\",\"order_id\":\"11\",\"payment_amount\":5000}}}', NULL, '2023-01-10 11:22:38', '2023-01-10 11:22:39');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (12, 1, 5000, 6037997469893185, 0, 'dky3q7', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"fV7OudaBLwyvNMOUz9TXAtohf1pqd03vEp7kqJfdbNnI59OvtIOFWTRMvDaK\",\"ref_num\":\"dky3q7\",\"order_id\":\"12\",\"payment_amount\":5000}}}', NULL, '2023-01-10 11:29:30', '2023-01-10 11:29:30');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (13, 1, 5000, 6037997469893185, 0, 'emzl3y', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"fidZJNeWbbfd7dbnuUC34UadIMbI21yGt24zmv7MKTGaKTcp9ZnY6B0dAFna\",\"ref_num\":\"emzl3y\",\"order_id\":\"13\",\"payment_amount\":5000}},\"payment\":{\"status\":\"-98\",\"ref_num\":\"emzl3y\",\"order_id\":\"13\",\"transaction_id\":\"ov3my7\"}}', NULL, '2023-01-10 11:31:07', '2023-01-10 11:31:32');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (14, 1, 5000, 6037997469893185, 0, '12mky9', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"1NpAvqnSx5mYHaRumLPoIPoZLl03JC63sygsuGOgecvjZUPfPpCmx8DnSivE\",\"ref_num\":\"12mky9\",\"order_id\":\"14\",\"payment_amount\":5000}}}', NULL, '2023-01-10 11:32:53', '2023-01-10 11:32:54');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (15, 1, 5000, 6037997469893185, 0, '9zxyg3', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"m6ku6wM8wrto4AgKH6PzhsSAkLyIGQOfmSiv46nDg6VNxLd9uoMvCT0JyQAj\",\"ref_num\":\"9zxyg3\",\"order_id\":\"15\",\"payment_amount\":5000}}}', NULL, '2023-01-10 11:35:26', '2023-01-10 11:35:27');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (16, 1, 5000, 6037997469893185, 0, 'll12l4', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"Hj7oCQLl2evLB6BWNbwdsfRv3ATEhOv6FHa9fe0edTvGKIeJw4EIOZO8TQVY\",\"ref_num\":\"ll12l4\",\"order_id\":\"16\",\"payment_amount\":5000}},\"payment\":{\"status\":\"-98\",\"ref_num\":\"ll12l4\",\"order_id\":\"16\",\"transaction_id\":\"ov3mnl\"}}', NULL, '2023-01-10 11:37:22', '2023-01-10 11:37:54');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (17, 1, 5000, 6037997469893185, 0, '64x84k', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"un7OrraPW2BR80sKVVBHogCygiKxYvnd19mLkcXRlQDcRv3bmR8HOZrp4OIN\",\"ref_num\":\"64x84k\",\"order_id\":\"17\",\"payment_amount\":5000}},\"payment\":{\"status\":\"1\",\"ref_num\":\"64x84k\",\"order_id\":\"17\",\"tracking_code\":\"202735751023\",\"card_number\":\"603799******3185\",\"transaction_id\":\"4zg38q\"}}', NULL, '2023-01-10 11:39:11', '2023-01-10 11:39:53');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (18, 1, 5000, 6037997469893185, 0, '4zm100', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"Uxt4ifx5fwLGZT3fWWOlWw3yHM19Yt9xgK1bQisWkbwD7IhUg6sxmvSCicJS\",\"ref_num\":\"4zm100\",\"order_id\":\"18\",\"payment_amount\":5000}}}', NULL, '2023-01-10 11:41:33', '2023-01-10 11:41:34');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (19, 1, 5000, 6037997469893185, 0, 'dky3ez', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"a7pchVPNtiMo8HECARXPX1yoBMP009pnSVu1JGcIOaYCoBn9gIx3GGJaNIPX\",\"ref_num\":\"dky3ez\",\"order_id\":\"19\",\"payment_amount\":5000}}}', NULL, '2023-01-10 11:44:19', '2023-01-10 11:44:20');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (20, 1, 5000, 6037997469893185, 0, 'm9dk05', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"QxODp4W0bhv2UmOTrB7zDWEmgKg9PdrO3mbOTgRSpbEDyxZYDNVW76L2Ca8k\",\"ref_num\":\"m9dk05\",\"order_id\":\"20\",\"payment_amount\":5000}}}', NULL, '2023-01-10 11:47:08', '2023-01-10 11:47:09');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (21, 1, 5000, 6037997469893185, 0, 'dky3w9', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"m2Xcv2XdZfoENKo9Y3myAlXSkDKDs57AJftxmWDqD0Phj8YqlzXiyaPJd7uX\",\"ref_num\":\"dky3w9\",\"order_id\":\"21\",\"payment_amount\":5000}},\"payment\":{\"status\":\"-98\",\"ref_num\":\"dky3w9\",\"order_id\":\"21\",\"transaction_id\":\"m9zxe1\"}}', NULL, '2023-01-10 11:48:52', '2023-01-10 11:49:20');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (22, 1, 5000, 6037997469893185, 0, '5zmdxk', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"L9WXwOSED4Wvpgu95SbVjagqg6CA5drYBXfCLah9SKrJLcZ5CGQ8K56luwqR\",\"ref_num\":\"5zmdxk\",\"order_id\":\"22\",\"payment_amount\":5000}}}', NULL, '2023-01-10 11:52:17', '2023-01-10 11:52:17');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (23, 1, 5000, 6037997469893185, 0, 'dky319', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"Ofhma5WimGD46c3yw7HyoyPWCBXeatUxNqFrxVZ1F2XLy9vGoS98QrxR0Lrn\",\"ref_num\":\"dky319\",\"order_id\":\"23\",\"payment_amount\":5000}}}', NULL, '2023-01-10 11:54:41', '2023-01-10 11:54:41');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (24, 1, 5000, 6037997469893185, 0, '9zxy68', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"WXKlrncSdHlHkOt8dnj5NBvdhMKHpGvKk47JINHVrs9ESD44xNUBGDB0Y9TQ\",\"ref_num\":\"9zxy68\",\"order_id\":\"24\",\"payment_amount\":5000}}}', NULL, '2023-01-10 11:56:58', '2023-01-10 11:57:00');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (25, 1, 5000, 6037997469893185, 0, 'emzl6z', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"mlazVrrSZ4WeeNTjoCPbtr0nMfSGEGeSiNDT0C8fyMcfyvLIUZnkfkmCoQig\",\"ref_num\":\"emzl6z\",\"order_id\":\"25\",\"payment_amount\":5000}}}', NULL, '2023-01-10 12:01:52', '2023-01-10 12:01:53');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (26, 1, 5000, 6037997469893185, 0, 'm9dkz8', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"sqYVxsOaOVTLiS7qiSr7qfRgNhRdHMkw4L1LbPl3HNtv6mOaA2TL921AQzbv\",\"ref_num\":\"m9dkz8\",\"order_id\":\"26\",\"payment_amount\":5000}},\"payment\":{\"status\":\"-98\",\"ref_num\":\"m9dkz8\",\"order_id\":\"26\",\"transaction_id\":\"w3q1w1\"}}', NULL, '2023-01-10 12:03:00', '2023-01-10 12:03:10');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (27, 1, 5000, 6037997469893185, 1, 'ov5o3l', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"mrRpXQqjtQJpH08VZyB5Qrxhh1V41ODHO399g6ZTuJswLXxNgn1MPFlCk4oT\",\"ref_num\":\"ov5o3l\",\"order_id\":\"27\",\"payment_amount\":5000}},\"payment\":{\"status\":\"1\",\"ref_num\":\"ov5o3l\",\"order_id\":\"27\",\"tracking_code\":\"202735826323\",\"card_number\":\"603799******3185\",\"transaction_id\":\"64oy25\"}}', '2023-01-10 12:04:29', '2023-01-10 12:03:49', '2023-01-10 12:04:29');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (28, 1, 5000, 603799746989318, 0, 'yk1l9n', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"9QHSsTsjl7qPTHnBdLwAVyRm6D9IAr5ne4Z6bbOnviWvVqxAdQ27UvrZrjqd\",\"ref_num\":\"yk1l9n\",\"order_id\":\"28\",\"payment_amount\":5000}},\"payment\":{\"status\":\"1\",\"ref_num\":\"yk1l9n\",\"order_id\":\"28\",\"tracking_code\":\"202735937323\",\"card_number\":\"603799******3185\",\"transaction_id\":\"5z6kzm\"}}', NULL, '2023-01-10 12:26:45', '2023-01-10 12:28:32');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (29, 1, 5000, 87, 0, 'xwoxnl', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"7A6orUwb6Knab7kpmSpZsdo3lGOujApkHlD7naAcmTsScSiwIBCXcw9bvAxP\",\"ref_num\":\"xwoxnl\",\"order_id\":\"29\",\"payment_amount\":5000}},\"payment\":{\"status\":\"-98\",\"ref_num\":\"xwoxnl\",\"order_id\":\"29\",\"transaction_id\":\"0wk9nq\"}}', NULL, '2023-01-10 12:29:20', '2023-01-10 12:29:30');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (30, 1, 5000, 657, 0, '12mkq0', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"0us3TayyI9qcXSnzEMZzvsYS6IqnisVzKkTxvlUjlR9TZZCSikDPVLCk1Wrc\",\"ref_num\":\"12mkq0\",\"order_id\":\"30\",\"payment_amount\":5000}},\"payment\":{\"status\":\"-98\",\"ref_num\":\"12mkq0\",\"order_id\":\"30\",\"transaction_id\":\"7z1413\"}}', NULL, '2023-01-10 12:48:06', '2023-01-10 12:48:16');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (31, 1, 5000, 879, 0, 'gz3dxk', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"KgyIsoOCzI1MeHAIHsI8tZRMHp2onw1IOHhlvWaNgVTpYnu3yOZIJsYNfgVP\",\"ref_num\":\"gz3dxk\",\"order_id\":\"31\",\"payment_amount\":5000}},\"payment\":{\"status\":\"-98\",\"ref_num\":\"gz3dxk\",\"order_id\":\"31\",\"transaction_id\":\"n4nvlo\"}}', NULL, '2023-01-10 13:07:18', '2023-01-10 13:07:38');
INSERT INTO `payments` (`id`, `user_id`, `amount`, `card_number`, `status`, `ref_num`, `message`, `verified_at`, `created_at`, `updated_at`) VALUES (32, 1, 5000, 4535, 0, 'yk16k7', '{\"create\":{\"status\":1,\"message\":\"\\u0645\\u0648\\u0641\\u0642\",\"data\":{\"token\":\"5ztgcJNhnqqNfrRisO6O5SMV5nkSzNwcZgaEZQe0KhWThtGeTcCsT33rmkAY\",\"ref_num\":\"yk16k7\",\"order_id\":\"32\",\"payment_amount\":5000}},\"payment\":{\"status\":\"-98\",\"ref_num\":\"yk16k7\",\"order_id\":\"32\",\"transaction_id\":\"n4nv6x\"}}', NULL, '2023-01-10 13:21:47', '2023-01-10 13:21:58');
COMMIT;

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (1, 'admin', 'admin@gmail.com', NULL, '$2y$10$JslhIdM4a.81ASVn.EJ91uHACX.jKEOOxQGj2XBt6uBPYeCZcJXYC', NULL, '2023-01-08 15:31:49', '2023-01-08 15:31:49');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
