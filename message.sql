/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : message

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 22/05/2020 17:03:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, 1, 'Index', 'feather icon-bar-chart-2', '/', '2020-05-13 06:09:44', NULL);
INSERT INTO `admin_menu` VALUES (2, 0, 8, 'Admin', 'feather icon-settings', '', '2020-05-13 06:09:44', '2020-05-22 15:57:05');
INSERT INTO `admin_menu` VALUES (3, 2, 9, 'Users', '', 'auth/users', '2020-05-13 06:09:44', '2020-05-22 15:57:05');
INSERT INTO `admin_menu` VALUES (4, 2, 10, 'Roles', '', 'auth/roles', '2020-05-13 06:09:44', '2020-05-22 15:57:05');
INSERT INTO `admin_menu` VALUES (5, 2, 11, 'Permission', '', 'auth/permissions', '2020-05-13 06:09:44', '2020-05-22 15:57:05');
INSERT INTO `admin_menu` VALUES (6, 2, 12, 'Menu', '', 'auth/menu', '2020-05-13 06:09:44', '2020-05-22 15:57:05');
INSERT INTO `admin_menu` VALUES (7, 2, 13, 'Operation log', '', 'auth/logs', '2020-05-13 06:09:44', '2020-05-22 15:57:05');
INSERT INTO `admin_menu` VALUES (8, 0, 2, '国家管理', 'fa-adjust', 'countries', '2020-05-15 15:20:56', '2020-05-22 15:54:24');
INSERT INTO `admin_menu` VALUES (9, 0, 3, '项目管理', 'fa-amazon', 'project', '2020-05-15 16:05:36', '2020-05-22 15:54:24');
INSERT INTO `admin_menu` VALUES (10, 0, 4, '用户管理', 'fa-user-circle', 'user', '2020-05-15 16:17:20', '2020-05-22 15:54:24');
INSERT INTO `admin_menu` VALUES (11, 0, 6, '充值明细', 'fa-apple', 'rechargeDetail', '2020-05-15 16:23:14', '2020-05-22 15:57:05');
INSERT INTO `admin_menu` VALUES (12, 0, 7, '接码记录', 'fa-bars', 'codeReceivingRecord', '2020-05-15 16:27:38', '2020-05-22 15:57:05');
INSERT INTO `admin_menu` VALUES (13, 0, 5, '充值', 'fa-500px', 'addUserMoney', '2020-05-22 15:57:00', '2020-05-22 15:57:05');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 464 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-13 06:10:43', '2020-05-13 06:10:43');
INSERT INTO `admin_operation_log` VALUES (2, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-13 06:10:44', '2020-05-13 06:10:44');
INSERT INTO `admin_operation_log` VALUES (3, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"AoIzBnLxwTclcNskOoFOA97eYTPz1UfFMHarK6I8\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-05-13 06:10:52', '2020-05-13 06:10:52');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-13 06:10:52', '2020-05-13 06:10:52');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-13 06:10:57', '2020-05-13 06:10:57');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2020-05-13 06:11:02', '2020-05-13 06:11:02');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-13 06:11:03', '2020-05-13 06:11:03');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-13 06:11:06', '2020-05-13 06:11:06');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-05-13 06:11:14', '2020-05-13 06:11:14');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-13 06:11:15', '2020-05-13 06:11:15');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-13 06:11:16', '2020-05-13 06:11:16');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-13 06:11:23', '2020-05-13 06:11:23');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '[]', '2020-05-13 06:11:27', '2020-05-13 06:11:27');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-13 06:11:28', '2020-05-13 06:11:28');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-13 06:11:30', '2020-05-13 06:11:30');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-05-13 06:11:30', '2020-05-13 06:11:30');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-13 06:11:31', '2020-05-13 06:11:31');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin/helpers/icons', 'GET', '127.0.0.1', '[]', '2020-05-13 06:11:35', '2020-05-13 06:11:35');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin/helpers/icons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-13 06:11:36', '2020-05-13 06:11:36');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin/helpers/icons', 'GET', '127.0.0.1', '[]', '2020-05-13 14:12:38', '2020-05-13 14:12:38');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-13 14:12:38', '2020-05-13 14:12:38');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-13 14:13:43', '2020-05-13 14:13:43');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-13 14:13:48', '2020-05-13 14:13:48');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-05-13 14:13:49', '2020-05-13 14:13:49');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-13 14:13:49', '2020-05-13 14:13:49');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-05-13 14:14:11', '2020-05-13 14:14:11');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-13 14:14:14', '2020-05-13 14:14:14');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-13 14:14:15', '2020-05-13 14:14:15');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-13 14:14:18', '2020-05-13 14:14:18');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-13 14:14:18', '2020-05-13 14:14:18');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-13 14:14:19', '2020-05-13 14:14:19');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-13 14:14:19', '2020-05-13 14:14:19');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-13 14:14:19', '2020-05-13 14:14:19');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-13 14:14:36', '2020-05-13 14:14:36');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-13 14:14:39', '2020-05-13 14:14:39');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-13 14:15:03', '2020-05-13 14:15:03');
INSERT INTO `admin_operation_log` VALUES (37, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-13 14:15:07', '2020-05-13 14:15:07');
INSERT INTO `admin_operation_log` VALUES (38, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-13 14:15:13', '2020-05-13 14:15:13');
INSERT INTO `admin_operation_log` VALUES (39, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-13 14:15:15', '2020-05-13 14:15:15');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-13 14:15:16', '2020-05-13 14:15:16');
INSERT INTO `admin_operation_log` VALUES (41, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-15 15:18:16', '2020-05-15 15:18:16');
INSERT INTO `admin_operation_log` VALUES (42, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"FAyKm5mDyQLQT4jAcjRFyYafdMwChDeEkLQ5v9Yf\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-05-15 15:18:21', '2020-05-15 15:18:21');
INSERT INTO `admin_operation_log` VALUES (43, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-15 15:18:21', '2020-05-15 15:18:21');
INSERT INTO `admin_operation_log` VALUES (44, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '[]', '2020-05-15 15:18:24', '2020-05-15 15:18:24');
INSERT INTO `admin_operation_log` VALUES (45, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 15:18:24', '2020-05-15 15:18:24');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-05-15 15:18:25', '2020-05-15 15:18:25');
INSERT INTO `admin_operation_log` VALUES (47, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 15:18:26', '2020-05-15 15:18:26');
INSERT INTO `admin_operation_log` VALUES (48, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"message\",\"tb\":\"countries\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\"}', '2020-05-15 15:18:38', '2020-05-15 15:18:38');
INSERT INTO `admin_operation_log` VALUES (49, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"countries\"}', '2020-05-15 15:18:39', '2020-05-15 15:18:39');
INSERT INTO `admin_operation_log` VALUES (50, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"countries\",\"exist-table\":\"message|countries\",\"model_name\":\"App\\\\Models\\\\Country\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\CountryController\",\"create\":[\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"icon\",\"translation\":\"\\u56fe\\u6807\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"number\",\"translation\":\"\\u7f16\\u53f7\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u7f16\\u53f7\"},{\"name\":\"name\",\"translation\":\"\\u56fd\\u5bb6\\u540d\\u79f0\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\"}', '2020-05-15 15:19:53', '2020-05-15 15:19:53');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-05-15 15:19:54', '2020-05-15 15:19:54');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-05-15 15:20:40', '2020-05-15 15:20:40');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 15:20:41', '2020-05-15 15:20:41');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-15 15:20:41', '2020-05-15 15:20:41');
INSERT INTO `admin_operation_log` VALUES (55, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u56fd\\u5bb6\\u7ba1\\u7406\",\"icon\":\"fa-adjust\",\"uri\":\"countries\",\"roles\":[\"1\",null],\"permissions\":\"2,3,4,5,6\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\"}', '2020-05-15 15:20:56', '2020-05-15 15:20:56');
INSERT INTO `admin_operation_log` VALUES (56, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 15:20:56', '2020-05-15 15:20:56');
INSERT INTO `admin_operation_log` VALUES (57, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-15 15:20:57', '2020-05-15 15:20:57');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'admin/countries', 'GET', '127.0.0.1', '[]', '2020-05-15 15:21:00', '2020-05-15 15:21:00');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'admin/countries', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 15:21:02', '2020-05-15 15:21:02');
INSERT INTO `admin_operation_log` VALUES (60, 1, 'admin/countries/create', 'GET', '127.0.0.1', '[]', '2020-05-15 15:21:04', '2020-05-15 15:21:04');
INSERT INTO `admin_operation_log` VALUES (61, 1, 'admin/countries/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 15:21:05', '2020-05-15 15:21:05');
INSERT INTO `admin_operation_log` VALUES (62, 1, 'admin/countries', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 15:21:16', '2020-05-15 15:21:16');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'admin/countries/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 15:21:17', '2020-05-15 15:21:17');
INSERT INTO `admin_operation_log` VALUES (64, 1, 'admin/countries', 'POST', '127.0.0.1', '{\"icon\":null,\"file-icon\":null,\"_file_\":null,\"number\":\"0\",\"name\":\"\\u4fc4\\u7f57\\u65af\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\",\"_previous_\":\"http:\\/\\/message.test:8080\\/admin\\/countries\"}', '2020-05-15 15:21:52', '2020-05-15 15:21:52');
INSERT INTO `admin_operation_log` VALUES (65, 1, 'admin/countries', 'POST', '127.0.0.1', '{\"icon\":null,\"file-icon\":null,\"_file_\":null,\"number\":\"0\",\"name\":\"\\u4fc4\\u7f57\\u65af\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\",\"_previous_\":\"http:\\/\\/message.test:8080\\/admin\\/countries\"}', '2020-05-15 15:21:58', '2020-05-15 15:21:58');
INSERT INTO `admin_operation_log` VALUES (66, 1, 'admin/countries/create', 'GET', '127.0.0.1', '[]', '2020-05-15 15:23:05', '2020-05-15 15:23:05');
INSERT INTO `admin_operation_log` VALUES (67, 1, 'admin/countries', 'POST', '127.0.0.1', '{\"icon\":null,\"file-icon\":null,\"_file_\":null,\"number\":\"0\",\"name\":\"\\u4fc4\\u7f57\\u65af\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\"}', '2020-05-15 15:23:14', '2020-05-15 15:23:14');
INSERT INTO `admin_operation_log` VALUES (68, 1, 'admin/countries', 'POST', '127.0.0.1', '{\"icon\":null,\"file-icon\":null,\"_file_\":null,\"number\":\"0\",\"name\":\"\\u4fc4\\u7f57\\u65af\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\"}', '2020-05-15 15:24:23', '2020-05-15 15:24:23');
INSERT INTO `admin_operation_log` VALUES (69, 1, 'admin/countries/create', 'GET', '127.0.0.1', '[]', '2020-05-15 15:24:34', '2020-05-15 15:24:34');
INSERT INTO `admin_operation_log` VALUES (70, 1, 'admin/countries', 'POST', '127.0.0.1', '{\"icon\":null,\"file-icon\":null,\"_file_\":null,\"number\":\"0\",\"name\":\"\\u4fc4\\u7f57\\u65af\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\"}', '2020-05-15 15:24:50', '2020-05-15 15:24:50');
INSERT INTO `admin_operation_log` VALUES (71, 1, 'admin/countries', 'POST', '127.0.0.1', '{\"icon\":null,\"file-icon\":null,\"_file_\":null,\"number\":\"0\",\"name\":\"\\u4fc4\\u7f57\\u65af\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\"}', '2020-05-15 15:25:20', '2020-05-15 15:25:20');
INSERT INTO `admin_operation_log` VALUES (72, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 15:25:57', '2020-05-15 15:25:57');
INSERT INTO `admin_operation_log` VALUES (73, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 15:26:00', '2020-05-15 15:26:00');
INSERT INTO `admin_operation_log` VALUES (74, 1, 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"admin\",\"name\":\"Administrator\",\"avatar\":null,\"file-avatar\":null,\"_file_\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[\"1\",null],\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/message.test:8080\\/admin\\/auth\\/users\"}', '2020-05-15 15:26:07', '2020-05-15 15:26:07');
INSERT INTO `admin_operation_log` VALUES (75, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 15:26:07', '2020-05-15 15:26:07');
INSERT INTO `admin_operation_log` VALUES (76, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 15:26:12', '2020-05-15 15:26:12');
INSERT INTO `admin_operation_log` VALUES (77, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-15 15:26:14', '2020-05-15 15:26:14');
INSERT INTO `admin_operation_log` VALUES (78, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2020-05-15 15:26:19', '2020-05-15 15:26:19');
INSERT INTO `admin_operation_log` VALUES (79, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 15:26:20', '2020-05-15 15:26:20');
INSERT INTO `admin_operation_log` VALUES (80, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"avatar\":null,\"file-avatar\":null,\"_file_\":null,\"old_password\":null,\"password\":null,\"password_confirmation\":null,\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/message.test:8080\\/admin\\/auth\\/users\\/1\\/edit\"}', '2020-05-15 15:26:28', '2020-05-15 15:26:28');
INSERT INTO `admin_operation_log` VALUES (81, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 15:26:28', '2020-05-15 15:26:28');
INSERT INTO `admin_operation_log` VALUES (82, 1, 'admin/countries', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 15:29:14', '2020-05-15 15:29:14');
INSERT INTO `admin_operation_log` VALUES (83, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-15 15:35:22', '2020-05-15 15:35:22');
INSERT INTO `admin_operation_log` VALUES (84, 1, 'admin/countries', 'GET', '127.0.0.1', '[]', '2020-05-15 15:35:24', '2020-05-15 15:35:24');
INSERT INTO `admin_operation_log` VALUES (85, 1, 'admin/countries', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 15:35:24', '2020-05-15 15:35:24');
INSERT INTO `admin_operation_log` VALUES (86, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-15 15:39:42', '2020-05-15 15:39:42');
INSERT INTO `admin_operation_log` VALUES (87, 1, 'admin/countries', 'GET', '127.0.0.1', '[]', '2020-05-15 15:39:44', '2020-05-15 15:39:44');
INSERT INTO `admin_operation_log` VALUES (88, 1, 'admin/countries', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 15:39:44', '2020-05-15 15:39:44');
INSERT INTO `admin_operation_log` VALUES (89, 1, 'admin/countries/create', 'GET', '127.0.0.1', '[]', '2020-05-15 15:39:45', '2020-05-15 15:39:45');
INSERT INTO `admin_operation_log` VALUES (90, 1, 'admin/countries/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 15:39:46', '2020-05-15 15:39:46');
INSERT INTO `admin_operation_log` VALUES (91, 1, 'admin/countries', 'POST', '127.0.0.1', '{\"icon\":null,\"file-icon\":null,\"_file_\":null,\"number\":\"0\",\"name\":\"1\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\"}', '2020-05-15 15:40:02', '2020-05-15 15:40:02');
INSERT INTO `admin_operation_log` VALUES (92, 1, 'admin/countries', 'POST', '127.0.0.1', '{\"icon\":null,\"file-icon\":null,\"_file_\":null,\"number\":\"0\",\"name\":\"1\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\"}', '2020-05-15 15:40:08', '2020-05-15 15:40:08');
INSERT INTO `admin_operation_log` VALUES (93, 1, 'admin/countries/create', 'GET', '127.0.0.1', '[]', '2020-05-15 15:40:46', '2020-05-15 15:40:46');
INSERT INTO `admin_operation_log` VALUES (94, 1, 'admin/countries', 'POST', '127.0.0.1', '{\"icon\":null,\"file-icon\":null,\"_file_\":null,\"number\":\"1\",\"name\":\"1\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\"}', '2020-05-15 15:40:53', '2020-05-15 15:40:53');
INSERT INTO `admin_operation_log` VALUES (95, 1, 'admin/countries/create', 'GET', '127.0.0.1', '[]', '2020-05-15 15:42:22', '2020-05-15 15:42:22');
INSERT INTO `admin_operation_log` VALUES (96, 1, 'admin/countries/create', 'GET', '127.0.0.1', '[]', '2020-05-15 15:42:31', '2020-05-15 15:42:31');
INSERT INTO `admin_operation_log` VALUES (97, 1, 'admin/countries', 'POST', '127.0.0.1', '{\"icon\":null,\"file-icon\":null,\"_file_\":null,\"number\":\"0\",\"name\":\"1\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\"}', '2020-05-15 15:42:38', '2020-05-15 15:42:38');
INSERT INTO `admin_operation_log` VALUES (98, 1, 'admin/countries', 'POST', '127.0.0.1', '{\"icon\":null,\"file-icon\":null,\"_file_\":null,\"number\":\"0\",\"name\":\"1\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\"}', '2020-05-15 15:45:36', '2020-05-15 15:45:36');
INSERT INTO `admin_operation_log` VALUES (99, 1, 'admin/countries', 'POST', '127.0.0.1', '{\"_id\":\"MD2dA2krBBTv5Kcn\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\",\"upload_column\":\"icon\",\"id\":\"WU_FILE_1\",\"name\":\"QQ\\u622a\\u56fe20200515154529.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Fri May 15 2020 15:45:31 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"77769\"}', '2020-05-15 15:46:25', '2020-05-15 15:46:25');
INSERT INTO `admin_operation_log` VALUES (100, 1, 'admin/countries', 'POST', '127.0.0.1', '{\"icon\":\"images\\/QQ\\u622a\\u56fe20200515154529.png\",\"file-icon\":null,\"_file_\":null,\"number\":\"0\",\"name\":\"1\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\"}', '2020-05-15 15:46:27', '2020-05-15 15:46:27');
INSERT INTO `admin_operation_log` VALUES (101, 1, 'admin/countries', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 15:46:27', '2020-05-15 15:46:27');
INSERT INTO `admin_operation_log` VALUES (102, 1, 'admin/countries/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 15:46:34', '2020-05-15 15:46:34');
INSERT INTO `admin_operation_log` VALUES (103, 1, 'admin/countries', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 15:47:11', '2020-05-15 15:47:11');
INSERT INTO `admin_operation_log` VALUES (104, 1, 'admin/countries/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\"}', '2020-05-15 15:47:16', '2020-05-15 15:47:16');
INSERT INTO `admin_operation_log` VALUES (105, 1, 'admin/countries', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 15:47:16', '2020-05-15 15:47:16');
INSERT INTO `admin_operation_log` VALUES (106, 1, 'admin/countries/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 15:47:41', '2020-05-15 15:47:41');
INSERT INTO `admin_operation_log` VALUES (107, 1, 'admin/countries', 'POST', '127.0.0.1', '{\"icon\":null,\"file-icon\":null,\"_file_\":null,\"number\":\"0\",\"name\":\"\\u4fc4\\u7f57\\u65af\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\",\"_previous_\":\"http:\\/\\/message.test:8080\\/admin\\/countries\"}', '2020-05-15 15:47:50', '2020-05-15 15:47:50');
INSERT INTO `admin_operation_log` VALUES (108, 1, 'admin/countries', 'POST', '127.0.0.1', '{\"_id\":\"UDJbV2StsQuInGX6\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\",\"upload_column\":\"icon\",\"id\":\"WU_FILE_1\",\"name\":\"0.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Fri May 15 2020 15:21:46 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"2829\"}', '2020-05-15 15:47:52', '2020-05-15 15:47:52');
INSERT INTO `admin_operation_log` VALUES (109, 1, 'admin/countries', 'POST', '127.0.0.1', '{\"icon\":\"images\\/0.png\",\"file-icon\":null,\"_file_\":null,\"number\":\"0\",\"name\":\"\\u4fc4\\u7f57\\u65af\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\",\"_previous_\":\"http:\\/\\/message.test:8080\\/admin\\/countries\"}', '2020-05-15 15:47:53', '2020-05-15 15:47:53');
INSERT INTO `admin_operation_log` VALUES (110, 1, 'admin/countries', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 15:47:54', '2020-05-15 15:47:54');
INSERT INTO `admin_operation_log` VALUES (111, 1, 'admin/countries', 'GET', '127.0.0.1', '[]', '2020-05-15 15:48:11', '2020-05-15 15:48:11');
INSERT INTO `admin_operation_log` VALUES (112, 1, 'admin/countries', 'GET', '127.0.0.1', '[]', '2020-05-15 15:56:46', '2020-05-15 15:56:46');
INSERT INTO `admin_operation_log` VALUES (113, 1, 'admin/countries/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 15:56:58', '2020-05-15 15:56:58');
INSERT INTO `admin_operation_log` VALUES (114, 1, 'admin/countries', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 15:57:00', '2020-05-15 15:57:00');
INSERT INTO `admin_operation_log` VALUES (115, 1, 'admin/countries', 'GET', '127.0.0.1', '[]', '2020-05-15 16:01:15', '2020-05-15 16:01:15');
INSERT INTO `admin_operation_log` VALUES (116, 1, 'admin/countries/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:01:17', '2020-05-15 16:01:17');
INSERT INTO `admin_operation_log` VALUES (117, 1, 'admin/countries', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:01:19', '2020-05-15 16:01:19');
INSERT INTO `admin_operation_log` VALUES (118, 1, 'admin/countries', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2020-05-15 16:01:23', '2020-05-15 16:01:23');
INSERT INTO `admin_operation_log` VALUES (119, 1, 'admin/countries', 'GET', '127.0.0.1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:02:59', '2020-05-15 16:02:59');
INSERT INTO `admin_operation_log` VALUES (120, 1, 'admin/countries', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-05-15 16:04:00', '2020-05-15 16:04:00');
INSERT INTO `admin_operation_log` VALUES (121, 1, 'admin/countries', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:04:03', '2020-05-15 16:04:03');
INSERT INTO `admin_operation_log` VALUES (122, 1, 'admin/countries', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"number\":\"10\",\"id\":null}', '2020-05-15 16:04:09', '2020-05-15 16:04:09');
INSERT INTO `admin_operation_log` VALUES (123, 1, 'admin/countries', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:04:11', '2020-05-15 16:04:11');
INSERT INTO `admin_operation_log` VALUES (124, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '[]', '2020-05-15 16:04:27', '2020-05-15 16:04:27');
INSERT INTO `admin_operation_log` VALUES (125, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-05-15 16:04:28', '2020-05-15 16:04:28');
INSERT INTO `admin_operation_log` VALUES (126, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:04:28', '2020-05-15 16:04:28');
INSERT INTO `admin_operation_log` VALUES (127, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"message\",\"tb\":\"projects\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\"}', '2020-05-15 16:04:32', '2020-05-15 16:04:32');
INSERT INTO `admin_operation_log` VALUES (128, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"projects\"}', '2020-05-15 16:04:33', '2020-05-15 16:04:33');
INSERT INTO `admin_operation_log` VALUES (129, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"projects\",\"exist-table\":\"message|projects\",\"model_name\":\"App\\\\Models\\\\Project\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ProjectController\",\"create\":[\"repository\",\"controller\"],\"fields\":[{\"name\":\"icon\",\"translation\":\"\\u56fe\\u6807\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u56fe\\u6807\"},{\"name\":\"number\",\"translation\":\"\\u7f16\\u53f7\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u7f16\\u53f7\"},{\"name\":\"name\",\"translation\":\"\\u9879\\u76ee\\u540d\\u79f0\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u9879\\u76ee\\u540d\\u79f0\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\"}', '2020-05-15 16:04:59', '2020-05-15 16:04:59');
INSERT INTO `admin_operation_log` VALUES (130, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-05-15 16:05:00', '2020-05-15 16:05:00');
INSERT INTO `admin_operation_log` VALUES (131, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-05-15 16:05:19', '2020-05-15 16:05:19');
INSERT INTO `admin_operation_log` VALUES (132, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:05:20', '2020-05-15 16:05:20');
INSERT INTO `admin_operation_log` VALUES (133, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u9879\\u76ee\\u7ba1\\u7406\",\"icon\":\"fa-amazon\",\"uri\":\"project\",\"roles\":[\"1\",null],\"permissions\":\"2,3,4,5,6\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\"}', '2020-05-15 16:05:36', '2020-05-15 16:05:36');
INSERT INTO `admin_operation_log` VALUES (134, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:05:37', '2020-05-15 16:05:37');
INSERT INTO `admin_operation_log` VALUES (135, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-15 16:05:37', '2020-05-15 16:05:37');
INSERT INTO `admin_operation_log` VALUES (136, 1, 'admin/project', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:05:39', '2020-05-15 16:05:39');
INSERT INTO `admin_operation_log` VALUES (137, 1, 'admin/project', 'GET', '127.0.0.1', '[]', '2020-05-15 16:05:39', '2020-05-15 16:05:39');
INSERT INTO `admin_operation_log` VALUES (138, 1, 'admin/project/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:05:44', '2020-05-15 16:05:44');
INSERT INTO `admin_operation_log` VALUES (139, 1, 'admin/project/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-15 16:06:18', '2020-05-15 16:06:18');
INSERT INTO `admin_operation_log` VALUES (140, 1, 'admin/project/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-15 16:06:45', '2020-05-15 16:06:45');
INSERT INTO `admin_operation_log` VALUES (141, 1, 'admin/project/1', 'GET', '127.0.0.1', '[]', '2020-05-15 16:06:47', '2020-05-15 16:06:47');
INSERT INTO `admin_operation_log` VALUES (142, 1, 'admin/project', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:06:47', '2020-05-15 16:06:47');
INSERT INTO `admin_operation_log` VALUES (143, 1, 'admin/project/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:09:00', '2020-05-15 16:09:00');
INSERT INTO `admin_operation_log` VALUES (144, 1, 'admin/project', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:09:02', '2020-05-15 16:09:02');
INSERT INTO `admin_operation_log` VALUES (145, 1, 'admin/project', 'GET', '127.0.0.1', '[]', '2020-05-15 16:15:34', '2020-05-15 16:15:34');
INSERT INTO `admin_operation_log` VALUES (146, 1, 'admin/project/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:15:38', '2020-05-15 16:15:38');
INSERT INTO `admin_operation_log` VALUES (147, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-15 16:15:39', '2020-05-15 16:15:39');
INSERT INTO `admin_operation_log` VALUES (148, 1, 'admin/project', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:15:40', '2020-05-15 16:15:40');
INSERT INTO `admin_operation_log` VALUES (149, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:16:04', '2020-05-15 16:16:04');
INSERT INTO `admin_operation_log` VALUES (150, 1, 'admin/helpers/icons', 'GET', '127.0.0.1', '[]', '2020-05-15 16:16:07', '2020-05-15 16:16:07');
INSERT INTO `admin_operation_log` VALUES (151, 1, 'admin/helpers/icons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:16:07', '2020-05-15 16:16:07');
INSERT INTO `admin_operation_log` VALUES (152, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:16:08', '2020-05-15 16:16:08');
INSERT INTO `admin_operation_log` VALUES (153, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"message\",\"tb\":\"users\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\"}', '2020-05-15 16:16:12', '2020-05-15 16:16:12');
INSERT INTO `admin_operation_log` VALUES (154, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"users\"}', '2020-05-15 16:16:12', '2020-05-15 16:16:12');
INSERT INTO `admin_operation_log` VALUES (155, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"users\",\"exist-table\":\"message|users\",\"model_name\":\"App\\\\Models\\\\User\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\UserController\",\"create\":[\"repository\",\"controller\"],\"fields\":[{\"name\":\"name\",\"translation\":\"\\u7528\\u6237\\u540d\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email\",\"translation\":\"\\u90ae\\u7bb1\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email_verified_at\",\"translation\":\"\\u90ae\\u7bb1\\u9a8c\\u8bc1\",\"type\":\"timestamp\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"password\",\"translation\":\"\\u5bc6\\u7801\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"phone\",\"translation\":\"\\u624b\\u673a\\u53f7\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"remember_token\",\"translation\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\"}', '2020-05-15 16:16:43', '2020-05-15 16:16:43');
INSERT INTO `admin_operation_log` VALUES (156, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-05-15 16:16:43', '2020-05-15 16:16:43');
INSERT INTO `admin_operation_log` VALUES (157, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-05-15 16:16:59', '2020-05-15 16:16:59');
INSERT INTO `admin_operation_log` VALUES (158, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:17:00', '2020-05-15 16:17:00');
INSERT INTO `admin_operation_log` VALUES (159, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-user-circle\",\"uri\":\"user\",\"roles\":[\"1\",null],\"permissions\":\"2,3,4,5,6\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\"}', '2020-05-15 16:17:20', '2020-05-15 16:17:20');
INSERT INTO `admin_operation_log` VALUES (160, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:17:20', '2020-05-15 16:17:20');
INSERT INTO `admin_operation_log` VALUES (161, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-15 16:17:21', '2020-05-15 16:17:21');
INSERT INTO `admin_operation_log` VALUES (162, 1, 'admin/user', 'GET', '127.0.0.1', '[]', '2020-05-15 16:17:22', '2020-05-15 16:17:22');
INSERT INTO `admin_operation_log` VALUES (163, 1, 'admin/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:17:22', '2020-05-15 16:17:22');
INSERT INTO `admin_operation_log` VALUES (164, 1, 'admin/user', 'GET', '127.0.0.1', '[]', '2020-05-15 16:17:40', '2020-05-15 16:17:40');
INSERT INTO `admin_operation_log` VALUES (165, 1, 'admin/user', 'GET', '127.0.0.1', '[]', '2020-05-15 16:17:44', '2020-05-15 16:17:44');
INSERT INTO `admin_operation_log` VALUES (166, 1, 'admin/user', 'GET', '127.0.0.1', '[]', '2020-05-15 16:17:50', '2020-05-15 16:17:50');
INSERT INTO `admin_operation_log` VALUES (167, 1, 'admin/user', 'GET', '127.0.0.1', '[]', '2020-05-15 16:19:10', '2020-05-15 16:19:10');
INSERT INTO `admin_operation_log` VALUES (168, 1, 'admin/user', 'GET', '127.0.0.1', '[]', '2020-05-15 16:19:37', '2020-05-15 16:19:37');
INSERT INTO `admin_operation_log` VALUES (169, 1, 'admin/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:19:42', '2020-05-15 16:19:42');
INSERT INTO `admin_operation_log` VALUES (170, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:19:44', '2020-05-15 16:19:44');
INSERT INTO `admin_operation_log` VALUES (171, 1, 'admin/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:19:47', '2020-05-15 16:19:47');
INSERT INTO `admin_operation_log` VALUES (172, 1, 'admin/user', 'GET', '127.0.0.1', '[]', '2020-05-15 16:20:47', '2020-05-15 16:20:47');
INSERT INTO `admin_operation_log` VALUES (173, 1, 'admin/user', 'GET', '127.0.0.1', '[]', '2020-05-15 16:21:07', '2020-05-15 16:21:07');
INSERT INTO `admin_operation_log` VALUES (174, 1, 'admin/user', 'GET', '127.0.0.1', '[]', '2020-05-15 16:21:32', '2020-05-15 16:21:32');
INSERT INTO `admin_operation_log` VALUES (175, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:21:42', '2020-05-15 16:21:42');
INSERT INTO `admin_operation_log` VALUES (176, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"message\",\"tb\":\"recharge_details\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\"}', '2020-05-15 16:21:48', '2020-05-15 16:21:48');
INSERT INTO `admin_operation_log` VALUES (177, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"recharge_details\"}', '2020-05-15 16:21:48', '2020-05-15 16:21:48');
INSERT INTO `admin_operation_log` VALUES (178, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"recharge_details\",\"exist-table\":\"message|recharge_details\",\"model_name\":\"App\\\\Models\\\\RechargeDetail\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\RechargeDetailController\",\"create\":[\"repository\",\"controller\"],\"fields\":[{\"name\":\"admin_user_id\",\"translation\":\"\\u7ba1\\u7406\\u5458\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"user_id\",\"translation\":\"\\u7528\\u6237\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"amount\",\"translation\":\"\\u5145\\u503c\\u91d1\\u989d\",\"type\":\"decimal\",\"key\":null,\"default\":null,\"comment\":\"\\u5145\\u503c\\u91d1\\u989d\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\"}', '2020-05-15 16:22:29', '2020-05-15 16:22:29');
INSERT INTO `admin_operation_log` VALUES (179, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-05-15 16:22:30', '2020-05-15 16:22:30');
INSERT INTO `admin_operation_log` VALUES (180, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:22:56', '2020-05-15 16:22:56');
INSERT INTO `admin_operation_log` VALUES (181, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u5145\\u503c\\u660e\\u7ec6\",\"icon\":\"fa-apple\",\"uri\":\"rechargeDetail\",\"roles\":[\"1\",null],\"permissions\":\"2,3,4,5,6\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\"}', '2020-05-15 16:23:14', '2020-05-15 16:23:14');
INSERT INTO `admin_operation_log` VALUES (182, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:23:14', '2020-05-15 16:23:14');
INSERT INTO `admin_operation_log` VALUES (183, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-15 16:23:15', '2020-05-15 16:23:15');
INSERT INTO `admin_operation_log` VALUES (184, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '[]', '2020-05-15 16:23:16', '2020-05-15 16:23:16');
INSERT INTO `admin_operation_log` VALUES (185, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:23:16', '2020-05-15 16:23:16');
INSERT INTO `admin_operation_log` VALUES (186, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:23:21', '2020-05-15 16:23:21');
INSERT INTO `admin_operation_log` VALUES (187, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '[]', '2020-05-15 16:23:46', '2020-05-15 16:23:46');
INSERT INTO `admin_operation_log` VALUES (188, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '[]', '2020-05-15 16:23:57', '2020-05-15 16:23:57');
INSERT INTO `admin_operation_log` VALUES (189, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '[]', '2020-05-15 16:24:46', '2020-05-15 16:24:46');
INSERT INTO `admin_operation_log` VALUES (190, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '[]', '2020-05-15 16:25:06', '2020-05-15 16:25:06');
INSERT INTO `admin_operation_log` VALUES (191, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '[]', '2020-05-15 16:25:15', '2020-05-15 16:25:15');
INSERT INTO `admin_operation_log` VALUES (192, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '[]', '2020-05-15 16:25:38', '2020-05-15 16:25:38');
INSERT INTO `admin_operation_log` VALUES (193, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '[]', '2020-05-15 16:25:59', '2020-05-15 16:25:59');
INSERT INTO `admin_operation_log` VALUES (194, 1, 'admin/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:26:00', '2020-05-15 16:26:00');
INSERT INTO `admin_operation_log` VALUES (195, 1, 'admin/project', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:26:01', '2020-05-15 16:26:01');
INSERT INTO `admin_operation_log` VALUES (196, 1, 'admin/countries', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:26:02', '2020-05-15 16:26:02');
INSERT INTO `admin_operation_log` VALUES (197, 1, 'admin/countries', 'GET', '127.0.0.1', '[]', '2020-05-15 16:26:12', '2020-05-15 16:26:12');
INSERT INTO `admin_operation_log` VALUES (198, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:26:27', '2020-05-15 16:26:27');
INSERT INTO `admin_operation_log` VALUES (199, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:26:29', '2020-05-15 16:26:29');
INSERT INTO `admin_operation_log` VALUES (200, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"message\",\"tb\":\"code_receiving_records\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\"}', '2020-05-15 16:26:33', '2020-05-15 16:26:33');
INSERT INTO `admin_operation_log` VALUES (201, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"code_receiving_records\"}', '2020-05-15 16:26:34', '2020-05-15 16:26:34');
INSERT INTO `admin_operation_log` VALUES (202, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"code_receiving_records\",\"exist-table\":\"message|code_receiving_records\",\"model_name\":\"App\\\\Models\\\\CodeReceivingRecord\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\CodeReceivingRecordController\",\"create\":[\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"project_id\",\"translation\":\"\\u9879\\u76ee\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"phone\",\"translation\":\"\\u63a5\\u7801\\u624b\\u673a\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u63a5\\u7801\\u624b\\u673a\"},{\"name\":\"country_id\",\"translation\":\"\\u56fd\\u5bb6\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u56fd\\u5bb6id\"},{\"name\":\"amount\",\"translation\":\"\\u4ef7\\u683c\",\"type\":\"decimal\",\"key\":null,\"default\":null,\"comment\":\"\\u4ef7\\u683c\"},{\"name\":\"content\",\"translation\":\"\\u77ed\\u4fe1\\u5185\\u5bb9\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u77ed\\u4fe1\\u5185\\u5bb9\"},{\"name\":\"status\",\"translation\":\"\\u72b6\\u6001\",\"type\":\"tinyInteger\",\"key\":null,\"default\":null,\"comment\":\"\\u72b6\\u6001\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\"}', '2020-05-15 16:26:51', '2020-05-15 16:26:51');
INSERT INTO `admin_operation_log` VALUES (203, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-05-15 16:26:51', '2020-05-15 16:26:51');
INSERT INTO `admin_operation_log` VALUES (204, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"code_receiving_records\",\"exist-table\":\"0\",\"model_name\":\"App\\\\Models\\\\CodeReceivingRecord\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\CodeReceivingRecordController\",\"create\":[\"repository\",\"controller\"],\"fields\":[{\"name\":\"project_id\",\"translation\":\"\\u9879\\u76ee\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"phone\",\"translation\":\"\\u63a5\\u7801\\u624b\\u673a\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u63a5\\u7801\\u624b\\u673a\"},{\"name\":\"country_id\",\"translation\":\"\\u56fd\\u5bb6\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u56fd\\u5bb6id\"},{\"name\":\"amount\",\"translation\":\"\\u4ef7\\u683c\",\"type\":\"decimal\",\"key\":null,\"default\":null,\"comment\":\"\\u4ef7\\u683c\"},{\"name\":\"content\",\"translation\":\"\\u77ed\\u4fe1\\u5185\\u5bb9\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u77ed\\u4fe1\\u5185\\u5bb9\"},{\"name\":\"status\",\"translation\":\"\\u72b6\\u6001\",\"type\":\"tinyInteger\",\"key\":null,\"default\":null,\"comment\":\"\\u72b6\\u6001\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\"}', '2020-05-15 16:26:58', '2020-05-15 16:26:58');
INSERT INTO `admin_operation_log` VALUES (205, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-05-15 16:26:58', '2020-05-15 16:26:58');
INSERT INTO `admin_operation_log` VALUES (206, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:27:20', '2020-05-15 16:27:20');
INSERT INTO `admin_operation_log` VALUES (207, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u63a5\\u7801\\u8bb0\\u5f55\",\"icon\":\"fa-bars\",\"uri\":\"codeReceivingRecord\",\"roles\":[\"1\",null],\"permissions\":\"2,3,4,5,6\",\"_token\":\"gflKs2dNWor4lsYukjTFnT9pjMM2ewC0xxTtWXi0\"}', '2020-05-15 16:27:38', '2020-05-15 16:27:38');
INSERT INTO `admin_operation_log` VALUES (208, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:27:38', '2020-05-15 16:27:38');
INSERT INTO `admin_operation_log` VALUES (209, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-15 16:27:39', '2020-05-15 16:27:39');
INSERT INTO `admin_operation_log` VALUES (210, 1, 'admin/codeReceivingRecord', 'GET', '127.0.0.1', '[]', '2020-05-15 16:27:40', '2020-05-15 16:27:40');
INSERT INTO `admin_operation_log` VALUES (211, 1, 'admin/codeReceivingRecord', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:27:40', '2020-05-15 16:27:40');
INSERT INTO `admin_operation_log` VALUES (212, 1, 'admin/codeReceivingRecord', 'GET', '127.0.0.1', '[]', '2020-05-15 16:28:54', '2020-05-15 16:28:54');
INSERT INTO `admin_operation_log` VALUES (213, 1, 'admin/codeReceivingRecord', 'GET', '127.0.0.1', '[]', '2020-05-15 16:29:03', '2020-05-15 16:29:03');
INSERT INTO `admin_operation_log` VALUES (214, 1, 'admin/codeReceivingRecord', 'GET', '127.0.0.1', '[]', '2020-05-15 16:29:22', '2020-05-15 16:29:22');
INSERT INTO `admin_operation_log` VALUES (215, 1, 'admin/codeReceivingRecord', 'GET', '127.0.0.1', '[]', '2020-05-15 16:29:33', '2020-05-15 16:29:33');
INSERT INTO `admin_operation_log` VALUES (216, 1, 'admin/codeReceivingRecord/create', 'GET', '127.0.0.1', '[]', '2020-05-15 16:29:35', '2020-05-15 16:29:35');
INSERT INTO `admin_operation_log` VALUES (217, 1, 'admin/codeReceivingRecord/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:29:35', '2020-05-15 16:29:35');
INSERT INTO `admin_operation_log` VALUES (218, 1, 'admin/codeReceivingRecord', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:29:37', '2020-05-15 16:29:37');
INSERT INTO `admin_operation_log` VALUES (219, 1, 'admin/project', 'GET', '127.0.0.1', '[]', '2020-05-15 16:29:42', '2020-05-15 16:29:42');
INSERT INTO `admin_operation_log` VALUES (220, 1, 'admin/project', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:29:42', '2020-05-15 16:29:42');
INSERT INTO `admin_operation_log` VALUES (221, 1, 'admin/user', 'GET', '127.0.0.1', '[]', '2020-05-15 16:29:43', '2020-05-15 16:29:43');
INSERT INTO `admin_operation_log` VALUES (222, 1, 'admin/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:29:43', '2020-05-15 16:29:43');
INSERT INTO `admin_operation_log` VALUES (223, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-15 16:29:52', '2020-05-15 16:29:52');
INSERT INTO `admin_operation_log` VALUES (224, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:29:52', '2020-05-15 16:29:52');
INSERT INTO `admin_operation_log` VALUES (225, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-15 16:44:30', '2020-05-15 16:44:30');
INSERT INTO `admin_operation_log` VALUES (226, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"ZnXSMA0rfJcmkFhmlPq89EsDBwFOoPpUJjfnmAqT\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-05-15 16:44:36', '2020-05-15 16:44:36');
INSERT INTO `admin_operation_log` VALUES (227, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-15 16:44:36', '2020-05-15 16:44:36');
INSERT INTO `admin_operation_log` VALUES (228, 1, 'admin/user', 'GET', '127.0.0.1', '[]', '2020-05-15 16:44:38', '2020-05-15 16:44:38');
INSERT INTO `admin_operation_log` VALUES (229, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:44:39', '2020-05-15 16:44:39');
INSERT INTO `admin_operation_log` VALUES (230, 1, 'admin/project', 'GET', '127.0.0.1', '[]', '2020-05-15 16:44:39', '2020-05-15 16:44:39');
INSERT INTO `admin_operation_log` VALUES (231, 1, 'admin/countries', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:44:40', '2020-05-15 16:44:40');
INSERT INTO `admin_operation_log` VALUES (232, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:44:41', '2020-05-15 16:44:41');
INSERT INTO `admin_operation_log` VALUES (233, 1, 'admin/codeReceivingRecord', 'GET', '127.0.0.1', '[]', '2020-05-15 16:44:42', '2020-05-15 16:44:42');
INSERT INTO `admin_operation_log` VALUES (234, 1, 'admin/codeReceivingRecord', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:44:42', '2020-05-15 16:44:42');
INSERT INTO `admin_operation_log` VALUES (235, 1, 'admin/project', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:44:44', '2020-05-15 16:44:44');
INSERT INTO `admin_operation_log` VALUES (236, 1, 'admin/project/create', 'GET', '127.0.0.1', '[]', '2020-05-15 16:44:48', '2020-05-15 16:44:48');
INSERT INTO `admin_operation_log` VALUES (237, 1, 'admin/project/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:44:48', '2020-05-15 16:44:48');
INSERT INTO `admin_operation_log` VALUES (238, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:45:32', '2020-05-15 16:45:32');
INSERT INTO `admin_operation_log` VALUES (239, 1, 'admin/codeReceivingRecord', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:45:33', '2020-05-15 16:45:33');
INSERT INTO `admin_operation_log` VALUES (240, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '[]', '2020-05-15 16:45:35', '2020-05-15 16:45:35');
INSERT INTO `admin_operation_log` VALUES (241, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:45:35', '2020-05-15 16:45:35');
INSERT INTO `admin_operation_log` VALUES (242, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:45:36', '2020-05-15 16:45:36');
INSERT INTO `admin_operation_log` VALUES (243, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:45:37', '2020-05-15 16:45:37');
INSERT INTO `admin_operation_log` VALUES (244, 1, 'admin/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:47:10', '2020-05-15 16:47:10');
INSERT INTO `admin_operation_log` VALUES (245, 1, 'admin/user', 'GET', '127.0.0.1', '[]', '2020-05-15 16:47:28', '2020-05-15 16:47:28');
INSERT INTO `admin_operation_log` VALUES (246, 1, 'admin/user', 'GET', '127.0.0.1', '[]', '2020-05-15 16:50:26', '2020-05-15 16:50:26');
INSERT INTO `admin_operation_log` VALUES (247, 1, 'admin/user', 'GET', '127.0.0.1', '[]', '2020-05-15 16:50:26', '2020-05-15 16:50:26');
INSERT INTO `admin_operation_log` VALUES (248, 1, 'admin/user', 'GET', '127.0.0.1', '[]', '2020-05-15 16:50:28', '2020-05-15 16:50:28');
INSERT INTO `admin_operation_log` VALUES (249, 1, 'admin/user', 'GET', '127.0.0.1', '[]', '2020-05-15 16:50:38', '2020-05-15 16:50:38');
INSERT INTO `admin_operation_log` VALUES (250, 1, 'admin/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:57:13', '2020-05-15 16:57:13');
INSERT INTO `admin_operation_log` VALUES (251, 1, 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"_token\":\"RY2t1NvOD4dril5SSh8fm06M9MLVzuicrgrqV6Oy\",\"_action\":\"App_Admin_Actions_Grid_AddUserMoneyAction\",\"_key\":\"1\"}', '2020-05-15 16:57:16', '2020-05-15 16:57:16');
INSERT INTO `admin_operation_log` VALUES (252, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:57:16', '2020-05-15 16:57:16');
INSERT INTO `admin_operation_log` VALUES (253, 1, 'admin/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 16:57:23', '2020-05-15 16:57:23');
INSERT INTO `admin_operation_log` VALUES (254, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-15 17:00:28', '2020-05-15 17:00:28');
INSERT INTO `admin_operation_log` VALUES (255, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-20 19:27:19', '2020-05-20 19:27:19');
INSERT INTO `admin_operation_log` VALUES (256, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"lZKQP5XBOYOMSWW73oIZI5HwkSilafvGMnVNTNtI\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-05-20 19:27:24', '2020-05-20 19:27:24');
INSERT INTO `admin_operation_log` VALUES (257, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-20 19:27:24', '2020-05-20 19:27:24');
INSERT INTO `admin_operation_log` VALUES (258, 1, 'admin/codeReceivingRecord', 'GET', '127.0.0.1', '[]', '2020-05-20 19:27:26', '2020-05-20 19:27:26');
INSERT INTO `admin_operation_log` VALUES (259, 1, 'admin/codeReceivingRecord', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 19:27:27', '2020-05-20 19:27:27');
INSERT INTO `admin_operation_log` VALUES (260, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '[]', '2020-05-20 19:27:27', '2020-05-20 19:27:27');
INSERT INTO `admin_operation_log` VALUES (261, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 19:27:28', '2020-05-20 19:27:28');
INSERT INTO `admin_operation_log` VALUES (262, 1, 'admin/user', 'GET', '127.0.0.1', '[]', '2020-05-20 19:27:28', '2020-05-20 19:27:28');
INSERT INTO `admin_operation_log` VALUES (263, 1, 'admin/project', 'GET', '127.0.0.1', '[]', '2020-05-20 19:27:31', '2020-05-20 19:27:31');
INSERT INTO `admin_operation_log` VALUES (264, 1, 'admin/project', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 19:27:31', '2020-05-20 19:27:31');
INSERT INTO `admin_operation_log` VALUES (265, 1, 'admin/countries', 'GET', '127.0.0.1', '[]', '2020-05-20 19:27:32', '2020-05-20 19:27:32');
INSERT INTO `admin_operation_log` VALUES (266, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-22 10:22:17', '2020-05-22 10:22:17');
INSERT INTO `admin_operation_log` VALUES (267, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"PcyZRP87FstRGE8NVNAUxkuAJ3JKeffwDkuQyIeV\",\"username\":\"admin\",\"password\":\"adm******\",\"remember\":\"1\"}', '2020-05-22 10:22:22', '2020-05-22 10:22:22');
INSERT INTO `admin_operation_log` VALUES (268, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-22 10:22:23', '2020-05-22 10:22:23');
INSERT INTO `admin_operation_log` VALUES (269, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '[]', '2020-05-22 10:22:24', '2020-05-22 10:22:24');
INSERT INTO `admin_operation_log` VALUES (270, 1, 'admin/codeReceivingRecord', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 10:22:25', '2020-05-22 10:22:25');
INSERT INTO `admin_operation_log` VALUES (271, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 10:22:25', '2020-05-22 10:22:25');
INSERT INTO `admin_operation_log` VALUES (272, 1, 'admin/user', 'GET', '127.0.0.1', '[]', '2020-05-22 10:22:26', '2020-05-22 10:22:26');
INSERT INTO `admin_operation_log` VALUES (273, 1, 'admin/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 10:22:26', '2020-05-22 10:22:26');
INSERT INTO `admin_operation_log` VALUES (274, 1, 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"_token\":\"jInLHBozknTCKjQxbV32shWiUdZE63NA5kDZmadE\",\"_action\":\"App_Admin_Actions_Grid_AddUserMoneyAction\",\"_key\":\"4\"}', '2020-05-22 10:22:30', '2020-05-22 10:22:30');
INSERT INTO `admin_operation_log` VALUES (275, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 10:22:30', '2020-05-22 10:22:30');
INSERT INTO `admin_operation_log` VALUES (276, 1, 'admin/project', 'GET', '127.0.0.1', '[]', '2020-05-22 10:22:33', '2020-05-22 10:22:33');
INSERT INTO `admin_operation_log` VALUES (277, 1, 'admin/countries', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 10:22:33', '2020-05-22 10:22:33');
INSERT INTO `admin_operation_log` VALUES (278, 1, 'admin/countries', 'GET', '127.0.0.1', '[]', '2020-05-22 10:22:45', '2020-05-22 10:22:45');
INSERT INTO `admin_operation_log` VALUES (279, 1, 'admin/project', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 10:22:46', '2020-05-22 10:22:46');
INSERT INTO `admin_operation_log` VALUES (280, 1, 'admin/project', 'GET', '127.0.0.1', '[]', '2020-05-22 10:22:53', '2020-05-22 10:22:53');
INSERT INTO `admin_operation_log` VALUES (281, 1, 'admin/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 10:22:54', '2020-05-22 10:22:54');
INSERT INTO `admin_operation_log` VALUES (282, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 10:22:56', '2020-05-22 10:22:56');
INSERT INTO `admin_operation_log` VALUES (283, 1, 'admin/codeReceivingRecord', 'GET', '127.0.0.1', '[]', '2020-05-22 10:22:57', '2020-05-22 10:22:57');
INSERT INTO `admin_operation_log` VALUES (284, 1, 'admin/codeReceivingRecord', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 10:22:57', '2020-05-22 10:22:57');
INSERT INTO `admin_operation_log` VALUES (285, 1, 'admin/project', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 10:22:59', '2020-05-22 10:22:59');
INSERT INTO `admin_operation_log` VALUES (286, 1, 'admin/countries', 'GET', '127.0.0.1', '[]', '2020-05-22 10:22:59', '2020-05-22 10:22:59');
INSERT INTO `admin_operation_log` VALUES (287, 1, 'admin/countries', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 10:22:59', '2020-05-22 10:22:59');
INSERT INTO `admin_operation_log` VALUES (288, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-22 15:38:13', '2020-05-22 15:38:13');
INSERT INTO `admin_operation_log` VALUES (289, 1, 'admin/user', 'GET', '127.0.0.1', '[]', '2020-05-22 15:38:15', '2020-05-22 15:38:15');
INSERT INTO `admin_operation_log` VALUES (290, 1, 'admin/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:38:16', '2020-05-22 15:38:16');
INSERT INTO `admin_operation_log` VALUES (291, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '[]', '2020-05-22 15:38:17', '2020-05-22 15:38:17');
INSERT INTO `admin_operation_log` VALUES (292, 1, 'admin/user', 'GET', '127.0.0.1', '[]', '2020-05-22 15:39:49', '2020-05-22 15:39:49');
INSERT INTO `admin_operation_log` VALUES (293, 1, 'admin/user', 'GET', '127.0.0.1', '[]', '2020-05-22 15:42:13', '2020-05-22 15:42:13');
INSERT INTO `admin_operation_log` VALUES (294, 1, 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\",\"_action\":\"App_Admin_Actions_Grid_AddUserMoneyAction\",\"_key\":\"4\"}', '2020-05-22 15:42:15', '2020-05-22 15:42:15');
INSERT INTO `admin_operation_log` VALUES (295, 1, 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\",\"_action\":\"App_Admin_Actions_Grid_AddUserMoneyAction\",\"_key\":\"4\"}', '2020-05-22 15:42:49', '2020-05-22 15:42:49');
INSERT INTO `admin_operation_log` VALUES (296, 1, 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\",\"_action\":\"App_Admin_Actions_Grid_AddUserMoneyAction\",\"_key\":\"4\"}', '2020-05-22 15:43:09', '2020-05-22 15:43:09');
INSERT INTO `admin_operation_log` VALUES (297, 1, 'admin/user', 'GET', '127.0.0.1', '[]', '2020-05-22 15:43:32', '2020-05-22 15:43:32');
INSERT INTO `admin_operation_log` VALUES (298, 1, 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\",\"_action\":\"App_Admin_Actions_Grid_AddUserMoneyAction\",\"_key\":\"4\"}', '2020-05-22 15:43:35', '2020-05-22 15:43:35');
INSERT INTO `admin_operation_log` VALUES (299, 1, 'admin/user', 'GET', '127.0.0.1', '[]', '2020-05-22 15:44:25', '2020-05-22 15:44:25');
INSERT INTO `admin_operation_log` VALUES (300, 1, 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\",\"_action\":\"App_Admin_Actions_Grid_AddUserMoneyAction\",\"_key\":\"4\"}', '2020-05-22 15:44:27', '2020-05-22 15:44:27');
INSERT INTO `admin_operation_log` VALUES (301, 1, 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\",\"_action\":\"App_Admin_Actions_Grid_AddUserMoneyAction\",\"_key\":\"4\"}', '2020-05-22 15:45:51', '2020-05-22 15:45:51');
INSERT INTO `admin_operation_log` VALUES (302, 1, 'admin/user', 'GET', '127.0.0.1', '[]', '2020-05-22 15:50:10', '2020-05-22 15:50:10');
INSERT INTO `admin_operation_log` VALUES (303, 1, 'admin/user', 'GET', '127.0.0.1', '[]', '2020-05-22 15:51:01', '2020-05-22 15:51:01');
INSERT INTO `admin_operation_log` VALUES (304, 1, 'admin/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:52:36', '2020-05-22 15:52:36');
INSERT INTO `admin_operation_log` VALUES (305, 1, 'admin/project', 'GET', '127.0.0.1', '[]', '2020-05-22 15:52:42', '2020-05-22 15:52:42');
INSERT INTO `admin_operation_log` VALUES (306, 1, 'admin/countries', 'GET', '127.0.0.1', '[]', '2020-05-22 15:52:42', '2020-05-22 15:52:42');
INSERT INTO `admin_operation_log` VALUES (307, 1, 'admin/countries', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:52:44', '2020-05-22 15:52:44');
INSERT INTO `admin_operation_log` VALUES (308, 1, 'admin/codeReceivingRecord', 'GET', '127.0.0.1', '[]', '2020-05-22 15:52:45', '2020-05-22 15:52:45');
INSERT INTO `admin_operation_log` VALUES (309, 1, 'admin/codeReceivingRecord', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:52:45', '2020-05-22 15:52:45');
INSERT INTO `admin_operation_log` VALUES (310, 1, 'admin/codeReceivingRecord', 'GET', '127.0.0.1', '[]', '2020-05-22 15:52:53', '2020-05-22 15:52:53');
INSERT INTO `admin_operation_log` VALUES (311, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-22 15:52:53', '2020-05-22 15:52:53');
INSERT INTO `admin_operation_log` VALUES (312, 1, 'admin/countries', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:52:55', '2020-05-22 15:52:55');
INSERT INTO `admin_operation_log` VALUES (313, 1, 'admin/project', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:52:56', '2020-05-22 15:52:56');
INSERT INTO `admin_operation_log` VALUES (314, 1, 'admin/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:52:56', '2020-05-22 15:52:56');
INSERT INTO `admin_operation_log` VALUES (315, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:52:57', '2020-05-22 15:52:57');
INSERT INTO `admin_operation_log` VALUES (316, 1, 'admin/codeReceivingRecord', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:52:58', '2020-05-22 15:52:58');
INSERT INTO `admin_operation_log` VALUES (317, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '[]', '2020-05-22 15:53:00', '2020-05-22 15:53:00');
INSERT INTO `admin_operation_log` VALUES (318, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:53:01', '2020-05-22 15:53:01');
INSERT INTO `admin_operation_log` VALUES (319, 1, 'admin/countries', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:53:02', '2020-05-22 15:53:02');
INSERT INTO `admin_operation_log` VALUES (320, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-05-22 15:53:47', '2020-05-22 15:53:47');
INSERT INTO `admin_operation_log` VALUES (321, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:53:47', '2020-05-22 15:53:47');
INSERT INTO `admin_operation_log` VALUES (322, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:54:00', '2020-05-22 15:54:00');
INSERT INTO `admin_operation_log` VALUES (323, 1, 'admin/codeReceivingRecord', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:54:01', '2020-05-22 15:54:01');
INSERT INTO `admin_operation_log` VALUES (324, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:54:01', '2020-05-22 15:54:01');
INSERT INTO `admin_operation_log` VALUES (325, 1, 'admin/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:54:02', '2020-05-22 15:54:02');
INSERT INTO `admin_operation_log` VALUES (326, 1, 'admin/countries', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:54:03', '2020-05-22 15:54:03');
INSERT INTO `admin_operation_log` VALUES (327, 1, 'admin/project', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:54:05', '2020-05-22 15:54:05');
INSERT INTO `admin_operation_log` VALUES (328, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-05-22 15:54:14', '2020-05-22 15:54:14');
INSERT INTO `admin_operation_log` VALUES (329, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:54:15', '2020-05-22 15:54:15');
INSERT INTO `admin_operation_log` VALUES (330, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-05-22 15:54:18', '2020-05-22 15:54:18');
INSERT INTO `admin_operation_log` VALUES (331, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-05-22 15:54:24', '2020-05-22 15:54:24');
INSERT INTO `admin_operation_log` VALUES (332, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:54:24', '2020-05-22 15:54:24');
INSERT INTO `admin_operation_log` VALUES (333, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-22 15:54:25', '2020-05-22 15:54:25');
INSERT INTO `admin_operation_log` VALUES (334, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:54:33', '2020-05-22 15:54:33');
INSERT INTO `admin_operation_log` VALUES (335, 1, 'admin/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:54:39', '2020-05-22 15:54:39');
INSERT INTO `admin_operation_log` VALUES (336, 1, 'admin/codeReceivingRecord', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:54:41', '2020-05-22 15:54:41');
INSERT INTO `admin_operation_log` VALUES (337, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:54:44', '2020-05-22 15:54:44');
INSERT INTO `admin_operation_log` VALUES (338, 1, 'admin/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:54:45', '2020-05-22 15:54:45');
INSERT INTO `admin_operation_log` VALUES (339, 1, 'admin/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:54:46', '2020-05-22 15:54:46');
INSERT INTO `admin_operation_log` VALUES (340, 1, 'admin/project', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:54:47', '2020-05-22 15:54:47');
INSERT INTO `admin_operation_log` VALUES (341, 1, 'admin/countries', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:54:48', '2020-05-22 15:54:48');
INSERT INTO `admin_operation_log` VALUES (342, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:54:50', '2020-05-22 15:54:50');
INSERT INTO `admin_operation_log` VALUES (343, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:56:45', '2020-05-22 15:56:45');
INSERT INTO `admin_operation_log` VALUES (344, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u5145\\u503c\",\"icon\":\"fa-500px\",\"uri\":\"addUserMoney\",\"roles\":[\"1\",null],\"permissions\":\"2,3,4,5,6\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 15:57:00', '2020-05-22 15:57:00');
INSERT INTO `admin_operation_log` VALUES (345, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:57:01', '2020-05-22 15:57:01');
INSERT INTO `admin_operation_log` VALUES (346, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":13},{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-05-22 15:57:05', '2020-05-22 15:57:05');
INSERT INTO `admin_operation_log` VALUES (347, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:57:05', '2020-05-22 15:57:05');
INSERT INTO `admin_operation_log` VALUES (348, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-22 15:57:06', '2020-05-22 15:57:06');
INSERT INTO `admin_operation_log` VALUES (349, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 15:57:08', '2020-05-22 15:57:08');
INSERT INTO `admin_operation_log` VALUES (350, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 15:57:09', '2020-05-22 15:57:09');
INSERT INTO `admin_operation_log` VALUES (351, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 15:57:51', '2020-05-22 15:57:51');
INSERT INTO `admin_operation_log` VALUES (352, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 16:00:11', '2020-05-22 16:00:11');
INSERT INTO `admin_operation_log` VALUES (353, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 16:00:24', '2020-05-22 16:00:24');
INSERT INTO `admin_operation_log` VALUES (354, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 16:00:45', '2020-05-22 16:00:45');
INSERT INTO `admin_operation_log` VALUES (355, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 16:01:02', '2020-05-22 16:01:02');
INSERT INTO `admin_operation_log` VALUES (356, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 16:01:07', '2020-05-22 16:01:07');
INSERT INTO `admin_operation_log` VALUES (357, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 16:01:51', '2020-05-22 16:01:51');
INSERT INTO `admin_operation_log` VALUES (358, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 16:02:41', '2020-05-22 16:02:41');
INSERT INTO `admin_operation_log` VALUES (359, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 16:03:39', '2020-05-22 16:03:39');
INSERT INTO `admin_operation_log` VALUES (360, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 16:04:08', '2020-05-22 16:04:08');
INSERT INTO `admin_operation_log` VALUES (361, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 16:06:38', '2020-05-22 16:06:38');
INSERT INTO `admin_operation_log` VALUES (362, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 16:06:51', '2020-05-22 16:06:51');
INSERT INTO `admin_operation_log` VALUES (363, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 16:07:04', '2020-05-22 16:07:04');
INSERT INTO `admin_operation_log` VALUES (364, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 16:07:28', '2020-05-22 16:07:28');
INSERT INTO `admin_operation_log` VALUES (365, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 16:09:11', '2020-05-22 16:09:11');
INSERT INTO `admin_operation_log` VALUES (366, 1, 'admin/addUserMoney', 'POST', '127.0.0.1', '{\"user_id\":null,\"money\":null,\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:09:13', '2020-05-22 16:09:13');
INSERT INTO `admin_operation_log` VALUES (367, 1, 'admin/addUserMoney', 'POST', '127.0.0.1', '{\"user_id\":null,\"money\":null,\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:09:49', '2020-05-22 16:09:49');
INSERT INTO `admin_operation_log` VALUES (368, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 16:10:00', '2020-05-22 16:10:00');
INSERT INTO `admin_operation_log` VALUES (369, 1, 'admin/addUserMoney', 'POST', '127.0.0.1', '{\"user_id\":null,\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:10:02', '2020-05-22 16:10:02');
INSERT INTO `admin_operation_log` VALUES (370, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 16:10:22', '2020-05-22 16:10:22');
INSERT INTO `admin_operation_log` VALUES (371, 1, 'admin/addUserMoney', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:10:27', '2020-05-22 16:10:27');
INSERT INTO `admin_operation_log` VALUES (372, 1, 'admin/addUserMoney', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:11:47', '2020-05-22 16:11:47');
INSERT INTO `admin_operation_log` VALUES (373, 1, 'admin/addUserMoney', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:11:53', '2020-05-22 16:11:53');
INSERT INTO `admin_operation_log` VALUES (374, 1, 'admin/addUserMoney', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:12:32', '2020-05-22 16:12:32');
INSERT INTO `admin_operation_log` VALUES (375, 1, 'admin/addUserMoney', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:13:11', '2020-05-22 16:13:11');
INSERT INTO `admin_operation_log` VALUES (376, 1, 'admin/addUserMoney', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:13:49', '2020-05-22 16:13:49');
INSERT INTO `admin_operation_log` VALUES (377, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 16:14:47', '2020-05-22 16:14:47');
INSERT INTO `admin_operation_log` VALUES (378, 1, 'admin/addUserMoney', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:14:51', '2020-05-22 16:14:51');
INSERT INTO `admin_operation_log` VALUES (379, 1, 'admin/addUserMoney', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:16:00', '2020-05-22 16:16:00');
INSERT INTO `admin_operation_log` VALUES (380, 1, 'admin/addUserMoney', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:16:09', '2020-05-22 16:16:09');
INSERT INTO `admin_operation_log` VALUES (381, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 16:16:34', '2020-05-22 16:16:34');
INSERT INTO `admin_operation_log` VALUES (382, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 16:17:07', '2020-05-22 16:17:07');
INSERT INTO `admin_operation_log` VALUES (383, 1, 'admin/addUserMoney', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:17:14', '2020-05-22 16:17:14');
INSERT INTO `admin_operation_log` VALUES (384, 1, 'admin/addUserMoney', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:17:28', '2020-05-22 16:17:28');
INSERT INTO `admin_operation_log` VALUES (385, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 16:17:59', '2020-05-22 16:17:59');
INSERT INTO `admin_operation_log` VALUES (386, 1, 'admin/addUserMoney', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:18:02', '2020-05-22 16:18:02');
INSERT INTO `admin_operation_log` VALUES (387, 1, 'admin/addUserMoney', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:18:17', '2020-05-22 16:18:17');
INSERT INTO `admin_operation_log` VALUES (388, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 16:19:08', '2020-05-22 16:19:08');
INSERT INTO `admin_operation_log` VALUES (389, 1, 'admin/addUserMoney', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:19:11', '2020-05-22 16:19:11');
INSERT INTO `admin_operation_log` VALUES (390, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 16:19:24', '2020-05-22 16:19:24');
INSERT INTO `admin_operation_log` VALUES (391, 1, 'admin/addUserMoneyAction', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:19:27', '2020-05-22 16:19:27');
INSERT INTO `admin_operation_log` VALUES (392, 1, 'admin/addUserMoneyAction', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:20:45', '2020-05-22 16:20:45');
INSERT INTO `admin_operation_log` VALUES (393, 1, 'admin/addUserMoneyAction', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:20:57', '2020-05-22 16:20:57');
INSERT INTO `admin_operation_log` VALUES (394, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 16:21:04', '2020-05-22 16:21:04');
INSERT INTO `admin_operation_log` VALUES (395, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 16:21:05', '2020-05-22 16:21:05');
INSERT INTO `admin_operation_log` VALUES (396, 1, 'admin/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 16:21:06', '2020-05-22 16:21:06');
INSERT INTO `admin_operation_log` VALUES (397, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 16:21:07', '2020-05-22 16:21:07');
INSERT INTO `admin_operation_log` VALUES (398, 1, 'admin/addUserMoneyAction', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\",\"_previous_\":\"http:\\/\\/message.test:8080\\/admin\\/user\"}', '2020-05-22 16:21:20', '2020-05-22 16:21:20');
INSERT INTO `admin_operation_log` VALUES (399, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 16:21:45', '2020-05-22 16:21:45');
INSERT INTO `admin_operation_log` VALUES (400, 1, 'admin/addUserMoneyAction', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:21:48', '2020-05-22 16:21:48');
INSERT INTO `admin_operation_log` VALUES (401, 1, 'admin/addUserMoneyAction', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:22:05', '2020-05-22 16:22:05');
INSERT INTO `admin_operation_log` VALUES (402, 1, 'admin/addUserMoneyAction', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:22:30', '2020-05-22 16:22:30');
INSERT INTO `admin_operation_log` VALUES (403, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 16:22:54', '2020-05-22 16:22:54');
INSERT INTO `admin_operation_log` VALUES (404, 1, 'admin/addUserMoneyAction', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:22:58', '2020-05-22 16:22:58');
INSERT INTO `admin_operation_log` VALUES (405, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 16:23:20', '2020-05-22 16:23:20');
INSERT INTO `admin_operation_log` VALUES (406, 1, 'admin/addUserMoneyAction', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:23:24', '2020-05-22 16:23:24');
INSERT INTO `admin_operation_log` VALUES (407, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 16:24:39', '2020-05-22 16:24:39');
INSERT INTO `admin_operation_log` VALUES (408, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 16:24:51', '2020-05-22 16:24:51');
INSERT INTO `admin_operation_log` VALUES (409, 1, 'admin/addUserMoneyAction', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"11\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:24:54', '2020-05-22 16:24:54');
INSERT INTO `admin_operation_log` VALUES (410, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 16:25:16', '2020-05-22 16:25:16');
INSERT INTO `admin_operation_log` VALUES (411, 1, 'admin/addUserMoneyAction', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:25:20', '2020-05-22 16:25:20');
INSERT INTO `admin_operation_log` VALUES (412, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 16:26:35', '2020-05-22 16:26:35');
INSERT INTO `admin_operation_log` VALUES (413, 1, 'admin/addUserMoneyAction', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:26:39', '2020-05-22 16:26:39');
INSERT INTO `admin_operation_log` VALUES (414, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 16:27:03', '2020-05-22 16:27:03');
INSERT INTO `admin_operation_log` VALUES (415, 1, 'admin/addUserMoneyAction', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:27:05', '2020-05-22 16:27:05');
INSERT INTO `admin_operation_log` VALUES (416, 1, 'admin/project', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 16:28:38', '2020-05-22 16:28:38');
INSERT INTO `admin_operation_log` VALUES (417, 1, 'admin/countries', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 16:28:40', '2020-05-22 16:28:40');
INSERT INTO `admin_operation_log` VALUES (418, 1, 'admin/project', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 16:28:41', '2020-05-22 16:28:41');
INSERT INTO `admin_operation_log` VALUES (419, 1, 'admin/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 16:28:42', '2020-05-22 16:28:42');
INSERT INTO `admin_operation_log` VALUES (420, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 16:28:43', '2020-05-22 16:28:43');
INSERT INTO `admin_operation_log` VALUES (421, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 16:28:44', '2020-05-22 16:28:44');
INSERT INTO `admin_operation_log` VALUES (422, 1, 'admin/project', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 16:28:45', '2020-05-22 16:28:45');
INSERT INTO `admin_operation_log` VALUES (423, 1, 'admin/project/create', 'GET', '127.0.0.1', '[]', '2020-05-22 16:28:47', '2020-05-22 16:28:47');
INSERT INTO `admin_operation_log` VALUES (424, 1, 'admin/project/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 16:28:48', '2020-05-22 16:28:48');
INSERT INTO `admin_operation_log` VALUES (425, 1, 'admin/project', 'POST', '127.0.0.1', '{\"icon\":null,\"file-icon\":null,\"_file_\":null,\"number\":\"1\",\"name\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:28:59', '2020-05-22 16:28:59');
INSERT INTO `admin_operation_log` VALUES (426, 1, 'admin/project', 'POST', '127.0.0.1', '{\"_id\":\"GSFbCtPZzExmpWLV\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\",\"upload_column\":\"icon\",\"id\":\"WU_FILE_0\",\"name\":\"admin.jpg\",\"type\":\"image\\/jpeg\",\"lastModifiedDate\":\"Mon Apr 14 2008 02:35:16 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"20097\"}', '2020-05-22 16:29:24', '2020-05-22 16:29:24');
INSERT INTO `admin_operation_log` VALUES (427, 1, 'admin/project', 'POST', '127.0.0.1', '{\"icon\":\"images\\/admin.jpg\",\"file-icon\":null,\"_file_\":null,\"number\":\"1\",\"name\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:29:27', '2020-05-22 16:29:27');
INSERT INTO `admin_operation_log` VALUES (428, 1, 'admin/project', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 16:29:27', '2020-05-22 16:29:27');
INSERT INTO `admin_operation_log` VALUES (429, 1, 'admin/project', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"7\"}', '2020-05-22 16:29:47', '2020-05-22 16:29:47');
INSERT INTO `admin_operation_log` VALUES (430, 1, 'admin/project/138', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:29:55', '2020-05-22 16:29:55');
INSERT INTO `admin_operation_log` VALUES (431, 1, 'admin/project', 'GET', '127.0.0.1', '{\"page\":\"7\",\"_pjax\":\"#pjax-container\"}', '2020-05-22 16:29:55', '2020-05-22 16:29:55');
INSERT INTO `admin_operation_log` VALUES (432, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 16:29:58', '2020-05-22 16:29:58');
INSERT INTO `admin_operation_log` VALUES (433, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '[]', '2020-05-22 16:30:55', '2020-05-22 16:30:55');
INSERT INTO `admin_operation_log` VALUES (434, 1, 'admin/addUserMoneyAction', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\"}', '2020-05-22 16:30:58', '2020-05-22 16:30:58');
INSERT INTO `admin_operation_log` VALUES (435, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 16:30:58', '2020-05-22 16:30:58');
INSERT INTO `admin_operation_log` VALUES (436, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 16:31:08', '2020-05-22 16:31:08');
INSERT INTO `admin_operation_log` VALUES (437, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 16:31:08', '2020-05-22 16:31:08');
INSERT INTO `admin_operation_log` VALUES (438, 1, 'admin/codeReceivingRecord', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 16:31:10', '2020-05-22 16:31:10');
INSERT INTO `admin_operation_log` VALUES (439, 1, 'admin/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 16:31:12', '2020-05-22 16:31:12');
INSERT INTO `admin_operation_log` VALUES (440, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 16:31:13', '2020-05-22 16:31:13');
INSERT INTO `admin_operation_log` VALUES (441, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '[]', '2020-05-22 16:32:35', '2020-05-22 16:32:35');
INSERT INTO `admin_operation_log` VALUES (442, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 16:32:36', '2020-05-22 16:32:36');
INSERT INTO `admin_operation_log` VALUES (443, 1, 'admin/addUserMoneyAction', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\",\"_previous_\":\"http:\\/\\/message.test:8080\\/admin\\/rechargeDetail\"}', '2020-05-22 16:32:39', '2020-05-22 16:32:39');
INSERT INTO `admin_operation_log` VALUES (444, 1, 'admin/addUserMoneyAction', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\",\"_previous_\":\"http:\\/\\/message.test:8080\\/admin\\/rechargeDetail\"}', '2020-05-22 16:32:53', '2020-05-22 16:32:53');
INSERT INTO `admin_operation_log` VALUES (445, 1, 'admin/addUserMoneyAction', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\",\"_previous_\":\"http:\\/\\/message.test:8080\\/admin\\/rechargeDetail\"}', '2020-05-22 16:33:15', '2020-05-22 16:33:15');
INSERT INTO `admin_operation_log` VALUES (446, 1, 'admin/addUserMoneyAction', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"1\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\",\"_previous_\":\"http:\\/\\/message.test:8080\\/admin\\/rechargeDetail\"}', '2020-05-22 16:33:29', '2020-05-22 16:33:29');
INSERT INTO `admin_operation_log` VALUES (447, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 16:33:29', '2020-05-22 16:33:29');
INSERT INTO `admin_operation_log` VALUES (448, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 16:33:30', '2020-05-22 16:33:30');
INSERT INTO `admin_operation_log` VALUES (449, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '[]', '2020-05-22 16:35:07', '2020-05-22 16:35:07');
INSERT INTO `admin_operation_log` VALUES (450, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '[]', '2020-05-22 16:35:19', '2020-05-22 16:35:19');
INSERT INTO `admin_operation_log` VALUES (451, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '[]', '2020-05-22 16:35:33', '2020-05-22 16:35:33');
INSERT INTO `admin_operation_log` VALUES (452, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '[]', '2020-05-22 16:35:39', '2020-05-22 16:35:39');
INSERT INTO `admin_operation_log` VALUES (453, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '[]', '2020-05-22 16:36:28', '2020-05-22 16:36:28');
INSERT INTO `admin_operation_log` VALUES (454, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '[]', '2020-05-22 16:36:42', '2020-05-22 16:36:42');
INSERT INTO `admin_operation_log` VALUES (455, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '[]', '2020-05-22 16:37:06', '2020-05-22 16:37:06');
INSERT INTO `admin_operation_log` VALUES (456, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '[]', '2020-05-22 16:37:26', '2020-05-22 16:37:26');
INSERT INTO `admin_operation_log` VALUES (457, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '[]', '2020-05-22 16:37:42', '2020-05-22 16:37:42');
INSERT INTO `admin_operation_log` VALUES (458, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 16:39:16', '2020-05-22 16:39:16');
INSERT INTO `admin_operation_log` VALUES (459, 1, 'admin/addUserMoneyAction', 'POST', '127.0.0.1', '{\"user_id\":\"4\",\"money\":\"22\",\"_token\":\"fRZvJNsoGqyQ8MctZtHRYCGidtz9D57eybn6B8tp\",\"_previous_\":\"http:\\/\\/message.test:8080\\/admin\\/rechargeDetail\"}', '2020-05-22 16:39:19', '2020-05-22 16:39:19');
INSERT INTO `admin_operation_log` VALUES (460, 1, 'admin/addUserMoney', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 16:39:20', '2020-05-22 16:39:20');
INSERT INTO `admin_operation_log` VALUES (461, 1, 'admin/rechargeDetail', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 16:39:21', '2020-05-22 16:39:21');
INSERT INTO `admin_operation_log` VALUES (462, 1, 'admin/user', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-22 16:39:25', '2020-05-22 16:39:25');
INSERT INTO `admin_operation_log` VALUES (463, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-22 16:46:55', '2020-05-22 16:46:55');

-- ----------------------------
-- Table structure for admin_permission_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_permission_menu`;
CREATE TABLE `admin_permission_menu`  (
  `permission_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  UNIQUE INDEX `admin_permission_menu_permission_id_menu_id_unique`(`permission_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permission_menu
-- ----------------------------
INSERT INTO `admin_permission_menu` VALUES (2, 8, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (2, 9, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (2, 10, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (2, 11, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (2, 12, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (2, 13, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (3, 8, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (3, 9, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (3, 10, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (3, 11, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (3, 12, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (3, 13, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (4, 8, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (4, 9, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (4, 10, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (4, 11, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (4, 12, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (4, 13, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (5, 8, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (5, 9, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (5, 10, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (5, 11, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (5, 12, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (5, 13, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (6, 8, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (6, 9, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (6, 10, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (6, 11, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (6, 12, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (6, 13, NULL, NULL);

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, 'Auth management', 'auth-management', '', '', 1, 0, '2020-05-13 06:09:44', NULL);
INSERT INTO `admin_permissions` VALUES (2, 'Users', 'users', '', '/auth/users*', 2, 1, '2020-05-13 06:09:44', NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Roles', 'roles', '', '/auth/roles*', 3, 1, '2020-05-13 06:09:44', NULL);
INSERT INTO `admin_permissions` VALUES (4, 'Permissions', 'permissions', '', '/auth/permissions*', 4, 1, '2020-05-13 06:09:44', NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Menu', 'menu', '', '/auth/menu*', 5, 1, '2020-05-13 06:09:44', NULL);
INSERT INTO `admin_permissions` VALUES (6, 'Operation log', 'operation-log', '', '/auth/logs*', 6, 1, '2020-05-13 06:09:44', NULL);

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  UNIQUE INDEX `admin_role_menu_role_id_menu_id_unique`(`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (1, 8, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 9, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 10, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 11, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 12, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 13, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  UNIQUE INDEX `admin_role_permissions_role_id_permission_id_unique`(`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  UNIQUE INDEX `admin_role_users_role_id_user_id_unique`(`role_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', '2020-05-13 06:09:44', '2020-05-13 06:09:44');

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$08QiIWkLGA32v0/UDzuKyeErhC9ly6F6HNUcWMs7LpgA/0dmZpVLG', 'Administrator', NULL, 'MqOXR6tZdVr7e8XdQ4u1PPBeeQP1nZq294kTWR7tnyRPoDIoh12WI6NloO9I', '2020-05-13 06:09:44', '2020-05-13 06:09:44');

-- ----------------------------
-- Table structure for code_receiving_records
-- ----------------------------
DROP TABLE IF EXISTS `code_receiving_records`;
CREATE TABLE `code_receiving_records`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `phone` int(11) NOT NULL COMMENT '接码手机',
  `country_id` int(11) NOT NULL COMMENT '国家id',
  `amount` decimal(8, 2) NOT NULL COMMENT '价格',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '短信内容',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 99 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES (1, 'images/0.png', '0', '俄罗斯', '2020-05-15 15:47:54', '2020-05-15 15:47:54');
INSERT INTO `countries` VALUES (2, 'images/1.png', '1', '乌克兰', '2020-05-16 15:47:54', '2020-05-16 15:47:54');
INSERT INTO `countries` VALUES (3, 'images/2.png', '2', '哈萨克斯坦', '2020-05-17 15:47:54', '2020-05-17 15:47:54');
INSERT INTO `countries` VALUES (4, 'images/3.png', '3', '中国', '2020-05-18 15:47:54', '2020-05-18 15:47:54');
INSERT INTO `countries` VALUES (5, 'images/4.png', '4', '菲律宾', '2020-05-19 15:47:54', '2020-05-19 15:47:54');
INSERT INTO `countries` VALUES (6, 'images/5.png', '5', '缅甸', '2020-05-20 15:47:54', '2020-05-20 15:47:54');
INSERT INTO `countries` VALUES (7, 'images/6.png', '6', '印度尼西亚', '2020-05-21 15:47:54', '2020-05-21 15:47:54');
INSERT INTO `countries` VALUES (8, 'images/7.png', '7', '马来西亚', '2020-05-22 15:47:54', '2020-05-22 15:47:54');
INSERT INTO `countries` VALUES (9, 'images/8.png', '8', '肯尼亚', '2020-05-23 15:47:54', '2020-05-23 15:47:54');
INSERT INTO `countries` VALUES (10, 'images/9.png', '10', '越南', '2020-05-24 15:47:54', '2020-05-24 15:47:54');
INSERT INTO `countries` VALUES (11, 'images/10.png', '11', '吉尔吉斯斯坦', '2020-05-25 15:47:54', '2020-05-25 15:47:54');
INSERT INTO `countries` VALUES (12, 'images/11.png', '12', '美国', '2020-05-26 15:47:54', '2020-05-26 15:47:54');
INSERT INTO `countries` VALUES (13, 'images/12.png', '13', '以色列', '2020-05-27 15:47:54', '2020-05-27 15:47:54');
INSERT INTO `countries` VALUES (14, 'images/13.png', '14', '香港', '2020-05-28 15:47:54', '2020-05-28 15:47:54');
INSERT INTO `countries` VALUES (15, 'images/14.png', '15', '波兰', '2020-05-29 15:47:54', '2020-05-29 15:47:54');
INSERT INTO `countries` VALUES (16, 'images/15.png', '16', '英格兰', '2020-05-30 15:47:54', '2020-05-30 15:47:54');
INSERT INTO `countries` VALUES (17, 'images/16.png', '17', '马达加斯加', '2020-05-31 15:47:54', '2020-05-31 15:47:54');
INSERT INTO `countries` VALUES (18, 'images/17.png', '18', '刚果', '2020-06-01 15:47:54', '2020-06-01 15:47:54');
INSERT INTO `countries` VALUES (19, 'images/18.png', '19', '尼日利亚', '2020-06-02 15:47:54', '2020-06-02 15:47:54');
INSERT INTO `countries` VALUES (20, 'images/19.png', '20', '澳门', '2020-06-03 15:47:54', '2020-06-03 15:47:54');
INSERT INTO `countries` VALUES (21, 'images/20.png', '21', '埃及', '2020-06-04 15:47:54', '2020-06-04 15:47:54');
INSERT INTO `countries` VALUES (22, 'images/21.png', '22', '印度', '2020-06-05 15:47:54', '2020-06-05 15:47:54');
INSERT INTO `countries` VALUES (23, 'images/22.png', '23', '爱尔兰', '2020-06-06 15:47:54', '2020-06-06 15:47:54');
INSERT INTO `countries` VALUES (24, 'images/23.png', '24', '柬埔寨', '2020-06-07 15:47:54', '2020-06-07 15:47:54');
INSERT INTO `countries` VALUES (25, 'images/24.png', '25', '老挝', '2020-06-08 15:47:54', '2020-06-08 15:47:54');
INSERT INTO `countries` VALUES (26, 'images/25.png', '26', '海地', '2020-06-09 15:47:54', '2020-06-09 15:47:54');
INSERT INTO `countries` VALUES (27, 'images/26.png', '27', '象牙海岸', '2020-06-10 15:47:54', '2020-06-10 15:47:54');
INSERT INTO `countries` VALUES (28, 'images/27.png', '28', '冈比亚', '2020-06-11 15:47:54', '2020-06-11 15:47:54');
INSERT INTO `countries` VALUES (29, 'images/28.png', '29', '塞尔维亚', '2020-06-12 15:47:54', '2020-06-12 15:47:54');
INSERT INTO `countries` VALUES (30, 'images/29.png', '30', '也门', '2020-06-13 15:47:54', '2020-06-13 15:47:54');
INSERT INTO `countries` VALUES (31, 'images/30.png', '31', '南非', '2020-06-14 15:47:54', '2020-06-14 15:47:54');
INSERT INTO `countries` VALUES (32, 'images/31.png', '32', '罗马尼亚', '2020-06-15 15:47:54', '2020-06-15 15:47:54');
INSERT INTO `countries` VALUES (33, 'images/32.png', '33', '哥伦比亚', '2020-06-16 15:47:54', '2020-06-16 15:47:54');
INSERT INTO `countries` VALUES (34, 'images/33.png', '34', '爱沙尼亚', '2020-06-17 15:47:54', '2020-06-17 15:47:54');
INSERT INTO `countries` VALUES (35, 'images/34.png', '35', '阿塞拜疆', '2020-06-18 15:47:54', '2020-06-18 15:47:54');
INSERT INTO `countries` VALUES (36, 'images/35.png', '36', '加拿大', '2020-06-19 15:47:54', '2020-06-19 15:47:54');
INSERT INTO `countries` VALUES (37, 'images/36.png', '37', '摩洛哥', '2020-06-20 15:47:54', '2020-06-20 15:47:54');
INSERT INTO `countries` VALUES (38, 'images/37.png', '38', '加纳', '2020-06-21 15:47:54', '2020-06-21 15:47:54');
INSERT INTO `countries` VALUES (39, 'images/38.png', '39', '阿根廷', '2020-06-22 15:47:54', '2020-06-22 15:47:54');
INSERT INTO `countries` VALUES (40, 'images/39.png', '40', '乌兹别克斯坦', '2020-06-23 15:47:54', '2020-06-23 15:47:54');
INSERT INTO `countries` VALUES (41, 'images/40.png', '41', '喀麦隆', '2020-06-24 15:47:54', '2020-06-24 15:47:54');
INSERT INTO `countries` VALUES (42, 'images/41.png', '42', '乍得', '2020-06-25 15:47:54', '2020-06-25 15:47:54');
INSERT INTO `countries` VALUES (43, 'images/42.png', '43', '德国', '2020-06-26 15:47:54', '2020-06-26 15:47:54');
INSERT INTO `countries` VALUES (44, 'images/43.png', '44', '立陶宛', '2020-06-27 15:47:54', '2020-06-27 15:47:54');
INSERT INTO `countries` VALUES (45, 'images/44.png', '45', '克罗地亚', '2020-06-28 15:47:54', '2020-06-28 15:47:54');
INSERT INTO `countries` VALUES (46, 'images/45.png', '46', '瑞典', '2020-06-29 15:47:54', '2020-06-29 15:47:54');
INSERT INTO `countries` VALUES (47, 'images/46.png', '47', '伊拉克', '2020-06-30 15:47:54', '2020-06-30 15:47:54');
INSERT INTO `countries` VALUES (48, 'images/47.png', '48', '荷兰', '2020-07-01 15:47:54', '2020-07-01 15:47:54');
INSERT INTO `countries` VALUES (49, 'images/48.png', '49', '拉脱维亚', '2020-07-02 15:47:54', '2020-07-02 15:47:54');
INSERT INTO `countries` VALUES (50, 'images/49.png', '50', '奥地利', '2020-07-03 15:47:54', '2020-07-03 15:47:54');
INSERT INTO `countries` VALUES (51, 'images/50.png', '51', '白俄罗斯', '2020-07-04 15:47:54', '2020-07-04 15:47:54');
INSERT INTO `countries` VALUES (52, 'images/51.png', '52', '泰国', '2020-07-05 15:47:54', '2020-07-05 15:47:54');
INSERT INTO `countries` VALUES (53, 'images/52.png', '53', '沙特阿拉伯', '2020-07-06 15:47:54', '2020-07-06 15:47:54');
INSERT INTO `countries` VALUES (54, 'images/53.png', '54', '墨西哥', '2020-07-07 15:47:54', '2020-07-07 15:47:54');
INSERT INTO `countries` VALUES (55, 'images/54.png', '55', '台湾', '2020-07-08 15:47:54', '2020-07-08 15:47:54');
INSERT INTO `countries` VALUES (56, 'images/55.png', '56', '西班牙', '2020-07-09 15:47:54', '2020-07-09 15:47:54');
INSERT INTO `countries` VALUES (57, 'images/56.png', '57', '伊朗', '2020-07-10 15:47:54', '2020-07-10 15:47:54');
INSERT INTO `countries` VALUES (58, 'images/57.png', '58', '阿尔及利亚', '2020-07-11 15:47:54', '2020-07-11 15:47:54');
INSERT INTO `countries` VALUES (59, 'images/58.png', '59', '斯洛文尼亚', '2020-07-12 15:47:54', '2020-07-12 15:47:54');
INSERT INTO `countries` VALUES (60, 'images/59.png', '60', '孟加拉国', '2020-07-13 15:47:54', '2020-07-13 15:47:54');
INSERT INTO `countries` VALUES (61, 'images/60.png', '61', '塞内加尔', '2020-07-14 15:47:54', '2020-07-14 15:47:54');
INSERT INTO `countries` VALUES (62, 'images/61.png', '62', '土耳其', '2020-07-15 15:47:54', '2020-07-15 15:47:54');
INSERT INTO `countries` VALUES (63, 'images/62.png', '63', '捷克共和国', '2020-07-16 15:47:54', '2020-07-16 15:47:54');
INSERT INTO `countries` VALUES (64, 'images/63.png', '64', '斯里兰卡', '2020-07-17 15:47:54', '2020-07-17 15:47:54');
INSERT INTO `countries` VALUES (65, 'images/64.png', '65', '秘鲁', '2020-07-18 15:47:54', '2020-07-18 15:47:54');
INSERT INTO `countries` VALUES (66, 'images/65.png', '66', '巴基斯坦', '2020-07-19 15:47:54', '2020-07-19 15:47:54');
INSERT INTO `countries` VALUES (67, 'images/66.png', '67', '新西兰', '2020-07-20 15:47:54', '2020-07-20 15:47:54');
INSERT INTO `countries` VALUES (68, 'images/67.png', '68', '几内亚', '2020-07-21 15:47:54', '2020-07-21 15:47:54');
INSERT INTO `countries` VALUES (69, 'images/68.png', '69', '马里', '2020-07-22 15:47:54', '2020-07-22 15:47:54');
INSERT INTO `countries` VALUES (70, 'images/69.png', '70', '委内瑞拉', '2020-07-23 15:47:54', '2020-07-23 15:47:54');
INSERT INTO `countries` VALUES (71, 'images/70.png', '71', '埃塞俄比亚', '2020-07-24 15:47:54', '2020-07-24 15:47:54');
INSERT INTO `countries` VALUES (72, 'images/71.png', '73', '巴西', '2020-07-25 15:47:54', '2020-07-25 15:47:54');
INSERT INTO `countries` VALUES (73, 'images/72.png', '74', '阿富汗', '2020-07-26 15:47:54', '2020-07-26 15:47:54');
INSERT INTO `countries` VALUES (74, 'images/73.png', '75', '乌干达', '2020-07-27 15:47:54', '2020-07-27 15:47:54');
INSERT INTO `countries` VALUES (75, 'images/74.png', '76', '安哥拉', '2020-07-28 15:47:54', '2020-07-28 15:47:54');
INSERT INTO `countries` VALUES (76, 'images/75.png', '77', '塞浦路斯', '2020-07-29 15:47:54', '2020-07-29 15:47:54');
INSERT INTO `countries` VALUES (77, 'images/76.png', '78', '法國', '2020-07-30 15:47:54', '2020-07-30 15:47:54');
INSERT INTO `countries` VALUES (78, 'images/77.png', '79', '巴布亞新幾內亞', '2020-07-31 15:47:54', '2020-07-31 15:47:54');
INSERT INTO `countries` VALUES (79, 'images/78.png', '80', '莫桑比克', '2020-08-01 15:47:54', '2020-08-01 15:47:54');
INSERT INTO `countries` VALUES (80, 'images/79.png', '81', '尼泊爾', '2020-08-02 15:47:54', '2020-08-02 15:47:54');
INSERT INTO `countries` VALUES (81, 'images/80.png', '82', '比利時', '2020-08-03 15:47:54', '2020-08-03 15:47:54');
INSERT INTO `countries` VALUES (82, 'images/81.png', '83', '保加利亞', '2020-08-04 15:47:54', '2020-08-04 15:47:54');
INSERT INTO `countries` VALUES (83, 'images/82.png', '84', '匈牙利', '2020-08-05 15:47:54', '2020-08-05 15:47:54');
INSERT INTO `countries` VALUES (84, 'images/83.png', '85', '摩爾多瓦', '2020-08-06 15:47:54', '2020-08-06 15:47:54');
INSERT INTO `countries` VALUES (85, 'images/84.png', '86', '義大利', '2020-08-07 15:47:54', '2020-08-07 15:47:54');
INSERT INTO `countries` VALUES (86, 'images/85.png', '87', '巴拉圭', '2020-08-08 15:47:54', '2020-08-08 15:47:54');
INSERT INTO `countries` VALUES (87, 'images/86.png', '88', '洪都拉斯', '2020-08-09 15:47:54', '2020-08-09 15:47:54');
INSERT INTO `countries` VALUES (88, 'images/87.png', '89', '突尼斯', '2020-08-10 15:47:54', '2020-08-10 15:47:54');
INSERT INTO `countries` VALUES (89, 'images/88.png', '90', '尼加拉瓜', '2020-08-11 15:47:54', '2020-08-11 15:47:54');
INSERT INTO `countries` VALUES (90, 'images/89.png', '91', '東帝汶', '2020-08-12 15:47:54', '2020-08-12 15:47:54');
INSERT INTO `countries` VALUES (91, 'images/90.png', '92', '玻利維亞', '2020-08-13 15:47:54', '2020-08-13 15:47:54');
INSERT INTO `countries` VALUES (92, 'images/91.png', '93', '哥斯達黎加', '2020-08-14 15:47:54', '2020-08-14 15:47:54');
INSERT INTO `countries` VALUES (93, 'images/92.png', '94', '危地馬拉', '2020-08-15 15:47:54', '2020-08-15 15:47:54');
INSERT INTO `countries` VALUES (94, 'images/93.png', '95', '阿拉伯聯合酋長國', '2020-08-16 15:47:54', '2020-08-16 15:47:54');
INSERT INTO `countries` VALUES (95, 'images/94.png', '96', '津巴布韋', '2020-08-17 15:47:54', '2020-08-17 15:47:54');
INSERT INTO `countries` VALUES (96, 'images/95.png', '97', '波多黎各', '2020-08-18 15:47:54', '2020-08-18 15:47:54');
INSERT INTO `countries` VALUES (97, 'images/96.png', '98', '蘇丹蘇丹', '2020-08-19 15:47:54', '2020-08-19 15:47:54');
INSERT INTO `countries` VALUES (98, 'images/97.png', '99', '多哥', '2020-08-20 15:47:54', '2020-08-20 15:47:54');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_04_173148_create_admin_tables', 1);
INSERT INTO `migrations` VALUES (4, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (5, '2020_05_15_145736_create_countries_table', 2);
INSERT INTO `migrations` VALUES (6, '2020_05_15_145911_create_projects_table', 2);
INSERT INTO `migrations` VALUES (7, '2020_05_15_150109_create_recharge_details_table', 2);
INSERT INTO `migrations` VALUES (8, '2020_05_15_150655_create_code_receiving_records_table', 2);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for projects
-- ----------------------------
DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 139 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of projects
-- ----------------------------
INSERT INTO `projects` VALUES (1, 'images/vk0.png', 'vk', 'vk.com', '2020-05-15 15:55:51', '2020-05-15 15:55:51');
INSERT INTO `projects` VALUES (2, 'images/ok0.png', 'ok', 'ok.ru', '2020-05-16 15:55:51', '2020-05-16 15:55:51');
INSERT INTO `projects` VALUES (3, 'images/wa0.png', 'wa', 'Whatsapp', '2020-05-17 15:55:51', '2020-05-17 15:55:51');
INSERT INTO `projects` VALUES (4, 'images/vi0.png', 'vi', 'Viber', '2020-05-18 15:55:51', '2020-05-18 15:55:51');
INSERT INTO `projects` VALUES (5, 'images/tg0.png', 'tg', 'Telegram', '2020-05-19 15:55:51', '2020-05-19 15:55:51');
INSERT INTO `projects` VALUES (6, 'images/wb0.png', 'wb', 'WeChat', '2020-05-20 15:55:51', '2020-05-20 15:55:51');
INSERT INTO `projects` VALUES (7, 'images/go0.png', 'go', 'Google,youtube,Gmail', '2020-05-21 15:55:51', '2020-05-21 15:55:51');
INSERT INTO `projects` VALUES (8, 'images/av0.png', 'av', 'avito', '2020-05-22 15:55:51', '2020-05-22 15:55:51');
INSERT INTO `projects` VALUES (9, 'images/av1.png', 'av', 'avito call forwarding', '2020-05-23 15:55:51', '2020-05-23 15:55:51');
INSERT INTO `projects` VALUES (10, 'images/fb0.png', 'fb', 'facebook', '2020-05-24 15:55:51', '2020-05-24 15:55:51');
INSERT INTO `projects` VALUES (11, 'images/tw0.png', 'tw', 'Twitter', '2020-05-25 15:55:51', '2020-05-25 15:55:51');
INSERT INTO `projects` VALUES (12, 'images/ot1.png', 'ot', 'Any other call forwarding', '2020-05-26 15:55:51', '2020-05-26 15:55:51');
INSERT INTO `projects` VALUES (13, 'images/ub0.png', 'ub', 'Uber', '2020-05-27 15:55:51', '2020-05-27 15:55:51');
INSERT INTO `projects` VALUES (14, 'images/qw0.png', 'qw', 'Qiwi', '2020-05-28 15:55:51', '2020-05-28 15:55:51');
INSERT INTO `projects` VALUES (15, 'images/gt0.png', 'gt', 'Gett', '2020-05-29 15:55:51', '2020-05-29 15:55:51');
INSERT INTO `projects` VALUES (16, 'images/sn0.png', 'sn', 'OLX', '2020-05-30 15:55:51', '2020-05-30 15:55:51');
INSERT INTO `projects` VALUES (17, 'images/ig0.png', 'ig', 'Instagram', '2020-05-31 15:55:51', '2020-05-31 15:55:51');
INSERT INTO `projects` VALUES (18, 'images/ss0.png', 'ss', 'hezzl', '2020-06-01 15:55:51', '2020-06-01 15:55:51');
INSERT INTO `projects` VALUES (19, 'images/ym0.png', 'ym', 'youla.ru', '2020-06-02 15:55:51', '2020-06-02 15:55:51');
INSERT INTO `projects` VALUES (20, 'images/ym1.png', 'ym', 'youla.ru call forwarding', '2020-06-03 15:55:51', '2020-06-03 15:55:51');
INSERT INTO `projects` VALUES (21, 'images/ma0.png', 'ma', 'Mail.ru', '2020-06-04 15:55:51', '2020-06-04 15:55:51');
INSERT INTO `projects` VALUES (22, 'images/mm0.png', 'mm', 'Microsoft', '2020-06-05 15:55:51', '2020-06-05 15:55:51');
INSERT INTO `projects` VALUES (23, 'images/uk0.png', 'uk', 'Airbnb', '2020-06-06 15:55:51', '2020-06-06 15:55:51');
INSERT INTO `projects` VALUES (24, 'images/me0.png', 'me', 'Line messenger', '2020-06-07 15:55:51', '2020-06-07 15:55:51');
INSERT INTO `projects` VALUES (25, 'images/mb0.png', 'mb', 'Yahoo', '2020-06-08 15:55:51', '2020-06-08 15:55:51');
INSERT INTO `projects` VALUES (26, 'images/we0.png', 'we', 'DrugVokrug', '2020-06-09 15:55:51', '2020-06-09 15:55:51');
INSERT INTO `projects` VALUES (27, 'images/bd0.png', 'bd', '5ka.ru', '2020-06-10 15:55:51', '2020-06-10 15:55:51');
INSERT INTO `projects` VALUES (28, 'images/kp0.png', 'kp', 'HQ Trivia', '2020-06-11 15:55:51', '2020-06-11 15:55:51');
INSERT INTO `projects` VALUES (29, 'images/dt0.png', 'dt', 'Delivery Club', '2020-06-12 15:55:51', '2020-06-12 15:55:51');
INSERT INTO `projects` VALUES (30, 'images/ya0.png', 'ya', 'Yandex', '2020-06-13 15:55:51', '2020-06-13 15:55:51');
INSERT INTO `projects` VALUES (31, 'images/ya1.png', 'ya', 'Yandex call forwarding', '2020-06-14 15:55:51', '2020-06-14 15:55:51');
INSERT INTO `projects` VALUES (32, 'images/mt0.png', 'mt', 'Steam', '2020-06-15 15:55:51', '2020-06-15 15:55:51');
INSERT INTO `projects` VALUES (33, 'images/oi0.png', 'oi', 'Tinder', '2020-06-16 15:55:51', '2020-06-16 15:55:51');
INSERT INTO `projects` VALUES (34, 'images/fd0.png', 'fd', 'Mamba', '2020-06-17 15:55:51', '2020-06-17 15:55:51');
INSERT INTO `projects` VALUES (35, 'images/zz0.png', 'zz', 'DENT', '2020-06-18 15:55:51', '2020-06-18 15:55:51');
INSERT INTO `projects` VALUES (36, 'images/kt0.png', 'kt', 'KakaoTalk', '2020-06-19 15:55:51', '2020-06-19 15:55:51');
INSERT INTO `projects` VALUES (37, 'images/pm0.png', 'pm', 'AOL', '2020-06-20 15:55:51', '2020-06-20 15:55:51');
INSERT INTO `projects` VALUES (38, 'images/tn0.png', 'tn', 'LinkedIN', '2020-06-21 15:55:51', '2020-06-21 15:55:51');
INSERT INTO `projects` VALUES (39, 'images/qq0.png', 'qq', 'Tencent QQ', '2020-06-22 15:55:51', '2020-06-22 15:55:51');
INSERT INTO `projects` VALUES (40, 'images/mg0.png', 'mg', 'Magnit', '2020-06-23 15:55:51', '2020-06-23 15:55:51');
INSERT INTO `projects` VALUES (41, 'images/pf0.png', 'pf', 'pof.com', '2020-06-24 15:55:51', '2020-06-24 15:55:51');
INSERT INTO `projects` VALUES (42, 'images/yl0.png', 'yl', 'Yalla', '2020-06-25 15:55:51', '2020-06-25 15:55:51');
INSERT INTO `projects` VALUES (43, 'images/kl0.png', 'kl', 'kolesa.kz', '2020-06-26 15:55:51', '2020-06-26 15:55:51');
INSERT INTO `projects` VALUES (44, 'images/po0.png', 'po', 'premium.one', '2020-06-27 15:55:51', '2020-06-27 15:55:51');
INSERT INTO `projects` VALUES (45, 'images/nv0.png', 'nv', 'Naver', '2020-06-28 15:55:51', '2020-06-28 15:55:51');
INSERT INTO `projects` VALUES (46, 'images/nf0.png', 'nf', 'Netflix', '2020-06-29 15:55:51', '2020-06-29 15:55:51');
INSERT INTO `projects` VALUES (47, 'images/iq0.png', 'iq', 'icq', '2020-06-30 15:55:51', '2020-06-30 15:55:51');
INSERT INTO `projects` VALUES (48, 'images/ob0.png', 'ob', 'Onlinerby', '2020-07-01 15:55:51', '2020-07-01 15:55:51');
INSERT INTO `projects` VALUES (49, 'images/kb0.png', 'kb', 'kufarby', '2020-07-02 15:55:51', '2020-07-02 15:55:51');
INSERT INTO `projects` VALUES (50, 'images/im0.png', 'im', 'Imo', '2020-07-03 15:55:51', '2020-07-03 15:55:51');
INSERT INTO `projects` VALUES (51, 'images/mc0.png', 'mc', 'Michat', '2020-07-04 15:55:51', '2020-07-04 15:55:51');
INSERT INTO `projects` VALUES (52, 'images/ds0.png', 'ds', 'Discord', '2020-07-05 15:55:51', '2020-07-05 15:55:51');
INSERT INTO `projects` VALUES (53, 'images/vv0.png', 'vv', 'Seosprint', '2020-07-06 15:55:51', '2020-07-06 15:55:51');
INSERT INTO `projects` VALUES (54, 'images/ji0.png', 'ji', 'Monobank', '2020-07-07 15:55:51', '2020-07-07 15:55:51');
INSERT INTO `projects` VALUES (55, 'images/lf0.png', 'lf', 'TikTok/Douyin', '2020-07-08 15:55:51', '2020-07-08 15:55:51');
INSERT INTO `projects` VALUES (56, 'images/hu0.png', 'hu', 'Ukrnet', '2020-07-09 15:55:51', '2020-07-09 15:55:51');
INSERT INTO `projects` VALUES (57, 'images/wg0.png', 'wg', 'Skout', '2020-07-10 15:55:51', '2020-07-10 15:55:51');
INSERT INTO `projects` VALUES (58, 'images/rz0.png', 'rz', 'EasyPay', '2020-07-11 15:55:51', '2020-07-11 15:55:51');
INSERT INTO `projects` VALUES (59, 'images/vf0.png', 'vf', 'Q12 Trivia', '2020-07-12 15:55:51', '2020-07-12 15:55:51');
INSERT INTO `projects` VALUES (60, 'images/ny0.png', 'ny', 'Pyro Music', '2020-07-13 15:55:51', '2020-07-13 15:55:51');
INSERT INTO `projects` VALUES (61, 'images/rr0.png', 'rr', 'Wolt', '2020-07-14 15:55:51', '2020-07-14 15:55:51');
INSERT INTO `projects` VALUES (62, 'images/fe0.png', 'fe', 'CliQQ', '2020-07-15 15:55:51', '2020-07-15 15:55:51');
INSERT INTO `projects` VALUES (63, 'images/la0.png', 'la', 'ssoidnet', '2020-07-16 15:55:51', '2020-07-16 15:55:51');
INSERT INTO `projects` VALUES (64, 'images/zh0.png', 'zh', 'Zoho', '2020-07-17 15:55:51', '2020-07-17 15:55:51');
INSERT INTO `projects` VALUES (65, 'images/gp0.png', 'gp', 'Ticketmaster', '2020-07-18 15:55:51', '2020-07-18 15:55:51');
INSERT INTO `projects` VALUES (66, 'images/am0.png', 'am', 'Amazon', '2020-07-19 15:55:51', '2020-07-19 15:55:51');
INSERT INTO `projects` VALUES (67, 'images/ly0.png', 'ly', 'Olacabs', '2020-07-20 15:55:51', '2020-07-20 15:55:51');
INSERT INTO `projects` VALUES (68, 'images/tc0.png', 'tc', 'Rambler', '2020-07-21 15:55:51', '2020-07-21 15:55:51');
INSERT INTO `projects` VALUES (69, 'images/dp0.png', 'dp', 'ProtonMail', '2020-07-22 15:55:51', '2020-07-22 15:55:51');
INSERT INTO `projects` VALUES (70, 'images/pg0.png', 'pg', 'NRJ Music Awards', '2020-07-23 15:55:51', '2020-07-23 15:55:51');
INSERT INTO `projects` VALUES (71, 'images/yf0.png', 'yf', 'Citymobil', '2020-07-24 15:55:51', '2020-07-24 15:55:51');
INSERT INTO `projects` VALUES (72, 'images/op0.png', 'op', 'MIRATORG', '2020-07-25 15:55:51', '2020-07-25 15:55:51');
INSERT INTO `projects` VALUES (73, 'images/fx0.png', 'fx', 'PGbonus', '2020-07-26 15:55:51', '2020-07-26 15:55:51');
INSERT INTO `projects` VALUES (74, 'images/qr0.png', 'qr', 'MEGA', '2020-07-27 15:55:51', '2020-07-27 15:55:51');
INSERT INTO `projects` VALUES (75, 'images/yk0.png', 'yk', 'СпортМастер', '2020-07-28 15:55:51', '2020-07-28 15:55:51');
INSERT INTO `projects` VALUES (76, 'images/ls0.png', 'ls', 'Careem', '2020-07-29 15:55:51', '2020-07-29 15:55:51');
INSERT INTO `projects` VALUES (77, 'images/bl0.png', 'bl', 'BIGO LIVE', '2020-07-30 15:55:51', '2020-07-30 15:55:51');
INSERT INTO `projects` VALUES (78, 'images/mu0.png', 'mu', 'MyMusicTaste', '2020-07-31 15:55:51', '2020-07-31 15:55:51');
INSERT INTO `projects` VALUES (79, 'images/fu0.png', 'fu', 'Snapchat', '2020-08-01 15:55:51', '2020-08-01 15:55:51');
INSERT INTO `projects` VALUES (80, 'images/bf0.png', 'bf', 'Keybase', '2020-08-02 15:55:51', '2020-08-02 15:55:51');
INSERT INTO `projects` VALUES (81, 'images/sg0.png', 'sg', 'OZON', '2020-08-03 15:55:51', '2020-08-03 15:55:51');
INSERT INTO `projects` VALUES (82, 'images/uu0.png', 'uu', 'Wildberries', '2020-08-04 15:55:51', '2020-08-04 15:55:51');
INSERT INTO `projects` VALUES (83, 'images/ua0.png', 'ua', 'BlaBlaCar', '2020-08-05 15:55:51', '2020-08-05 15:55:51');
INSERT INTO `projects` VALUES (84, 'images/ab0.png', 'ab', 'Alibaba', '2020-08-06 15:55:51', '2020-08-06 15:55:51');
INSERT INTO `projects` VALUES (85, 'images/iv0.png', 'iv', 'Inboxlv', '2020-08-07 15:55:51', '2020-08-07 15:55:51');
INSERT INTO `projects` VALUES (86, 'images/zy0.png', 'zy', 'Nttgame', '2020-08-08 15:55:51', '2020-08-08 15:55:51');
INSERT INTO `projects` VALUES (87, 'images/gd0.png', 'gd', 'Surveytime', '2020-08-09 15:55:51', '2020-08-09 15:55:51');
INSERT INTO `projects` VALUES (88, 'images/fy0.png', 'fy', 'Mylove', '2020-08-10 15:55:51', '2020-08-10 15:55:51');
INSERT INTO `projects` VALUES (89, 'images/ce0.png', 'ce', 'mosru', '2020-08-11 15:55:51', '2020-08-11 15:55:51');
INSERT INTO `projects` VALUES (90, 'images/tl0.png', 'tl', 'Truecaller', '2020-08-12 15:55:51', '2020-08-12 15:55:51');
INSERT INTO `projects` VALUES (91, 'images/hm0.png', 'hm', 'Globus', '2020-08-13 15:55:51', '2020-08-13 15:55:51');
INSERT INTO `projects` VALUES (92, 'images/tx0.png', 'tx', 'Bolt', '2020-08-14 15:55:51', '2020-08-14 15:55:51');
INSERT INTO `projects` VALUES (93, 'images/ka0.png', 'ka', 'Shopee', '2020-08-15 15:55:51', '2020-08-15 15:55:51');
INSERT INTO `projects` VALUES (94, 'images/pl0.png', 'pl', 'Перекресток', '2020-08-16 15:55:51', '2020-08-16 15:55:51');
INSERT INTO `projects` VALUES (95, 'images/ip0.png', 'ip', 'Burger King', '2020-08-17 15:55:51', '2020-08-17 15:55:51');
INSERT INTO `projects` VALUES (96, 'images/cm0.png', 'cm', 'Prom', '2020-08-18 15:55:51', '2020-08-18 15:55:51');
INSERT INTO `projects` VALUES (97, 'images/hw0.png', 'hw', 'AliPay', '2020-08-19 15:55:51', '2020-08-19 15:55:51');
INSERT INTO `projects` VALUES (98, 'images/de0.png', 'de', 'Karusel', '2020-08-20 15:55:51', '2020-08-20 15:55:51');
INSERT INTO `projects` VALUES (99, 'images/jc0.png', 'jc', 'IVI', '2020-08-21 15:55:51', '2020-08-21 15:55:51');
INSERT INTO `projects` VALUES (100, 'images/rl0.png', 'rl', 'inDriver', '2020-08-22 15:55:51', '2020-08-22 15:55:51');
INSERT INTO `projects` VALUES (101, 'images/df0.png', 'df', 'Happn', '2020-08-23 15:55:51', '2020-08-23 15:55:51');
INSERT INTO `projects` VALUES (102, 'images/ui0.png', 'ui', 'RuTube', '2020-08-24 15:55:51', '2020-08-24 15:55:51');
INSERT INTO `projects` VALUES (103, 'images/up0.png', 'up', 'Magnolia', '2020-08-25 15:55:51', '2020-08-25 15:55:51');
INSERT INTO `projects` VALUES (104, 'images/nz0.png', 'nz', 'Foodpanda', '2020-08-26 15:55:51', '2020-08-26 15:55:51');
INSERT INTO `projects` VALUES (105, 'images/kf0.png', 'kf', 'Weibo', '2020-08-27 15:55:51', '2020-08-27 15:55:51');
INSERT INTO `projects` VALUES (106, 'images/ri0.png', 'ri', 'BillMill', '2020-08-28 15:55:51', '2020-08-28 15:55:51');
INSERT INTO `projects` VALUES (107, 'images/cc0.png', 'cc', 'Quipp', '2020-08-29 15:55:51', '2020-08-29 15:55:51');
INSERT INTO `projects` VALUES (108, 'images/lr0.png', 'lr', 'Okta', '2020-08-30 15:55:51', '2020-08-30 15:55:51');
INSERT INTO `projects` VALUES (109, 'images/za0.png', 'za', 'JDcom', '2020-08-31 15:55:51', '2020-08-31 15:55:51');
INSERT INTO `projects` VALUES (110, 'images/da0.png', 'da', 'MTS CashBack', '2020-09-01 15:55:51', '2020-09-01 15:55:51');
INSERT INTO `projects` VALUES (111, 'images/ug0.png', 'ug', 'Fiqsy', '2020-09-02 15:55:51', '2020-09-02 15:55:51');
INSERT INTO `projects` VALUES (112, 'images/sq0.png', 'sq', 'KuCoinPlay', '2020-09-03 15:55:51', '2020-09-03 15:55:51');
INSERT INTO `projects` VALUES (113, 'images/zr0.png', 'zr', 'Papara', '2020-09-04 15:55:51', '2020-09-04 15:55:51');
INSERT INTO `projects` VALUES (114, 'images/xv0.png', 'xv', 'Wish', '2020-09-05 15:55:51', '2020-09-05 15:55:51');
INSERT INTO `projects` VALUES (115, 'images/cx0.png', 'cx', 'Icrypex', '2020-09-06 15:55:51', '2020-09-06 15:55:51');
INSERT INTO `projects` VALUES (116, 'images/cw0.png', 'cw', 'PaddyPower', '2020-09-07 15:55:51', '2020-09-07 15:55:51');
INSERT INTO `projects` VALUES (117, 'images/li0.png', 'li', 'Baidu', '2020-09-08 15:55:51', '2020-09-08 15:55:51');
INSERT INTO `projects` VALUES (118, 'images/dz0.png', 'dz', 'Dominos Pizza', '2020-09-09 15:55:51', '2020-09-09 15:55:51');
INSERT INTO `projects` VALUES (119, 'images/xz0.png', 'xz', 'paycell', '2020-09-10 15:55:51', '2020-09-10 15:55:51');
INSERT INTO `projects` VALUES (120, 'images/rd0.png', 'rd', 'Lenta', '2020-09-11 15:55:51', '2020-09-11 15:55:51');
INSERT INTO `projects` VALUES (121, 'images/qb0.png', 'qb', 'Payberry', '2020-09-12 15:55:51', '2020-09-12 15:55:51');
INSERT INTO `projects` VALUES (122, 'images/hz0.png', 'hz', 'Drom', '2020-09-13 15:55:51', '2020-09-13 15:55:51');
INSERT INTO `projects` VALUES (123, 'images/gl0.png', 'gl', 'GlobalTel', '2020-09-14 15:55:51', '2020-09-14 15:55:51');
INSERT INTO `projects` VALUES (124, 'images/zk0.png', 'zk', 'Deliveroo', '2020-09-15 15:55:51', '2020-09-15 15:55:51');
INSERT INTO `projects` VALUES (125, 'images/ia0.png', 'ia', 'Socios', '2020-09-16 15:55:51', '2020-09-16 15:55:51');
INSERT INTO `projects` VALUES (126, 'images/xl0.png', 'xl', 'Wmaraci', '2020-09-17 15:55:51', '2020-09-17 15:55:51');
INSERT INTO `projects` VALUES (127, 'images/yi0.png', 'yi', 'Yemeksepeti', '2020-09-18 15:55:51', '2020-09-18 15:55:51');
INSERT INTO `projects` VALUES (128, 'images/ew0.png', 'ew', 'Nike', '2020-09-19 15:55:51', '2020-09-19 15:55:51');
INSERT INTO `projects` VALUES (129, 'images/ae0.png', 'ae', 'myGLO', '2020-09-20 15:55:51', '2020-09-20 15:55:51');
INSERT INTO `projects` VALUES (130, 'images/gb0.png', 'gb', 'YouStar', '2020-09-21 15:55:51', '2020-09-21 15:55:51');
INSERT INTO `projects` VALUES (131, 'images/cy0.png', 'cy', 'РСА', '2020-09-22 15:55:51', '2020-09-22 15:55:51');
INSERT INTO `projects` VALUES (132, 'images/qm0.png', 'qm', 'RosaKhutor', '2020-09-23 15:55:51', '2020-09-23 15:55:51');
INSERT INTO `projects` VALUES (133, 'images/dh0.png', 'dh', 'eBay', '2020-09-24 15:55:51', '2020-09-24 15:55:51');
INSERT INTO `projects` VALUES (134, 'images/yb0.png', 'yb', 'Система Город', '2020-09-25 15:55:51', '2020-09-25 15:55:51');
INSERT INTO `projects` VALUES (135, 'images/qe0.png', 'qe', 'GG', '2020-09-26 15:55:51', '2020-09-26 15:55:51');
INSERT INTO `projects` VALUES (136, 'images/yw0.png', 'yw', 'Grindr', '2020-09-27 15:55:51', '2020-09-27 15:55:51');
INSERT INTO `projects` VALUES (137, 'images/ot0.png', 'ot', 'Any other', '2020-09-28 15:55:51', '2020-09-28 15:55:51');

-- ----------------------------
-- Table structure for recharge_details
-- ----------------------------
DROP TABLE IF EXISTS `recharge_details`;
CREATE TABLE `recharge_details`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_user_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(8, 2) NOT NULL COMMENT '充值金额',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recharge_details
-- ----------------------------
INSERT INTO `recharge_details` VALUES (1, 1, 4, 1.00, '2020-05-22 16:33:29', '2020-05-22 16:33:29');
INSERT INTO `recharge_details` VALUES (2, 1, 4, 22.00, '2020-05-22 16:39:19', '2020-05-22 16:39:19');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `money` decimal(8, 2) NULL DEFAULT 0.00 COMMENT '金额',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (4, 'chenkunbest', '631282467@qq.com', NULL, '$2y$10$tYMA7C5CnnTvNv9frclMy.xXPEabuwc5t3D1ES3q975bG5tzQrV.2', '13546555086', NULL, 143.00, '2020-05-22 10:17:30', '2020-05-22 16:39:19');

SET FOREIGN_KEY_CHECKS = 1;
