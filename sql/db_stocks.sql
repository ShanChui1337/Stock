/*
 Navicat Premium Data Transfer

 Source Server         : 仓库
 Source Server Type    : MySQL
 Source Server Version : 80033
 Source Host           : localhost:3306
 Source Schema         : db_stocks

 Target Server Type    : MySQL
 Target Server Version : 80033
 File Encoding         : 65001

 Date: 25/07/2023 14:23:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (7, 'u_log', '', NULL, NULL, 'ULog', 'crud', 'com.ruoyi.system', 'system', 'log', NULL, 'ruoyi', '0', '/', NULL, 'admin', '2023-03-29 22:32:07', '', NULL, NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (32, '7', 'id', 'id', 'varchar(255)', 'String', 'id', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-29 22:32:07', '', NULL);
INSERT INTO `gen_table_column` VALUES (33, '7', 'sid', '商品id', 'varchar(255)', 'String', 'sid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-29 22:32:07', '', NULL);
INSERT INTO `gen_table_column` VALUES (34, '7', 's_name', '商品名字', 'varchar(255)', 'String', 'sName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-03-29 22:32:07', '', NULL);
INSERT INTO `gen_table_column` VALUES (35, '7', 's_img', '图片', 'varchar(255)', 'String', 'sImg', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-03-29 22:32:07', '', NULL);
INSERT INTO `gen_table_column` VALUES (36, '7', 's_lb', '商品类别', 'varchar(255)', 'String', 'sLb', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-03-29 22:32:07', '', NULL);
INSERT INTO `gen_table_column` VALUES (37, '7', 'gid', '仓库ID', 'varchar(255)', 'String', 'gid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-03-29 22:32:07', '', NULL);
INSERT INTO `gen_table_column` VALUES (38, '7', 'cname', '仓库名字', 'varchar(255)', 'String', 'cname', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 7, 'admin', '2023-03-29 22:32:07', '', NULL);
INSERT INTO `gen_table_column` VALUES (39, '7', 's_address', '仓库地址', 'varchar(255)', 'String', 'sAddress', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-03-29 22:32:07', '', NULL);
INSERT INTO `gen_table_column` VALUES (40, '7', 's_contenct', '仓库内容', 'varchar(255)', 'String', 'sContenct', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-03-29 22:32:07', '', NULL);
INSERT INTO `gen_table_column` VALUES (41, '7', 'snum', '数量', 'varchar(255)', 'String', 'snum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-03-29 22:32:07', '', NULL);
INSERT INTO `gen_table_column` VALUES (42, '7', 'stype', '类型', 'varchar(255)', 'String', 'stype', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 11, 'admin', '2023-03-29 22:32:07', '', NULL);
INSERT INTO `gen_table_column` VALUES (43, '7', 'uname', '操作人', 'varchar(255)', 'String', 'uname', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 12, 'admin', '2023-03-29 22:32:07', '', NULL);
INSERT INTO `gen_table_column` VALUES (44, '7', 'tim', '操作时间', 'datetime', 'Date', 'tim', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 13, 'admin', '2023-03-29 22:32:07', '', NULL);

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '日历信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '已触发的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '任务详细信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '暂停的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '调度器状态表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name` ASC, `job_name` ASC, `job_group` ASC) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '触发器详细信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '参数配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2023-03-25 08:22:41', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2023-03-25 08:22:41', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2023-03-25 08:22:41', '', NULL, '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES (4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2023-03-25 08:22:41', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2023-03-25 08:22:41', '', NULL, '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）');
INSERT INTO `sys_config` VALUES (6, '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '0', 'Y', 'admin', '2023-03-25 08:22:41', '', NULL, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (7, '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2023-03-25 08:22:41', '', NULL, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (8, '主框架页-菜单导航显示风格', 'sys.index.menuStyle', 'default', 'Y', 'admin', '2023-03-25 08:22:41', '', NULL, '菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）');
INSERT INTO `sys_config` VALUES (9, '主框架页-是否开启页脚', 'sys.index.footer', 'true', 'Y', 'admin', '2023-03-25 08:22:41', '', NULL, '是否开启底部页脚显示（true显示，false隐藏）');
INSERT INTO `sys_config` VALUES (10, '主框架页-是否开启页签', 'sys.index.tagsView', 'true', 'Y', 'admin', '2023-03-25 08:22:41', '', NULL, '是否开启菜单多页签显示（true显示，false隐藏）');
INSERT INTO `sys_config` VALUES (11, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2023-03-25 08:22:41', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-25 08:22:32', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-25 08:22:32', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-25 08:22:32', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-25 08:22:32', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-25 08:22:32', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-25 08:22:32', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-25 08:22:32', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-25 08:22:32', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-25 08:22:33', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-25 08:22:33', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '字典数据表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-03-25 08:22:41', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2023-03-25 08:22:41', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2023-03-25 08:22:41', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '字典类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2023-03-25 08:22:40', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2023-03-25 08:22:41', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2023-03-25 08:22:41', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2023-03-25 08:22:41', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 191 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '系统访问记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-25 08:30:15');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-25 09:46:03');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-03-25 09:52:57');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-03-25 09:53:00');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-25 09:53:03');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-25 10:06:25');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-25 10:11:49');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-25 10:34:04');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-25 11:03:30');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-25 11:25:21');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-25 11:39:49');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-03-25 12:13:29');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-25 12:13:33');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-03-25 13:35:49');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-25 13:42:18');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-25 14:07:37');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-25 14:53:34');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-25 15:05:22');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-25 16:00:30');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-25 16:25:12');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-03-26 13:32:17');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-26 13:32:21');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-03-26 14:12:35');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-26 14:12:40');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-26 14:27:43');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-03-26 15:45:13');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-26 15:45:17');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-26 16:23:10');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-03-26 16:46:26');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-26 16:46:30');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-26 16:51:49');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-26 18:16:59');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-26 20:04:03');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-26 20:21:15');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-26 21:22:08');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-26 21:56:12');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-26 22:01:47');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-28 20:00:09');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-28 20:44:46');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-28 21:03:08');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-28 21:13:29');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-28 21:53:03');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-29 19:44:18');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-03-29 20:20:38');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-29 20:20:46');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-03-29 20:28:48');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-29 20:28:54');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-03-29 20:31:14');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-29 20:31:20');
INSERT INTO `sys_logininfor` VALUES (149, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-29 21:21:04');
INSERT INTO `sys_logininfor` VALUES (150, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-29 21:26:34');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-29 21:26:37');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-29 21:26:44');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-03-29 21:26:52');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-29 21:26:55');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-03-29 21:27:03');
INSERT INTO `sys_logininfor` VALUES (156, 'ry', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-29 21:27:12');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-29 21:40:25');
INSERT INTO `sys_logininfor` VALUES (158, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-29 21:41:26');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-29 21:58:10');
INSERT INTO `sys_logininfor` VALUES (160, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-29 22:01:12');
INSERT INTO `sys_logininfor` VALUES (161, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-03-29 22:22:41');
INSERT INTO `sys_logininfor` VALUES (162, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-03-29 22:22:44');
INSERT INTO `sys_logininfor` VALUES (163, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-29 22:22:46');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-29 22:27:27');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-03-29 22:43:33');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-03-29 22:43:38');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-29 22:43:43');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-29 22:59:41');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-30 20:02:06');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-30 20:04:16');
INSERT INTO `sys_logininfor` VALUES (171, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误1次', '2023-03-30 21:05:12');
INSERT INTO `sys_logininfor` VALUES (172, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-03-30 21:05:16');
INSERT INTO `sys_logininfor` VALUES (173, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-03-30 21:05:18');
INSERT INTO `sys_logininfor` VALUES (174, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误2次', '2023-03-30 21:05:27');
INSERT INTO `sys_logininfor` VALUES (175, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误3次', '2023-03-30 21:05:34');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-03-30 21:13:57');
INSERT INTO `sys_logininfor` VALUES (177, 'root', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-03-30 21:14:05');
INSERT INTO `sys_logininfor` VALUES (178, 'root', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-03-30 21:14:08');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-03-30 21:14:25');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-03-30 21:14:27');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-03-30 21:14:28');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误2次', '2023-03-30 21:14:34');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误3次', '2023-03-30 21:14:42');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-30 21:14:52');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-03-30 21:15:25');
INSERT INTO `sys_logininfor` VALUES (186, 'root', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-30 21:16:14');
INSERT INTO `sys_logininfor` VALUES (187, 'root', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-03-30 21:17:32');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-03-30 21:17:38');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-07-25 13:44:45');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-25 13:44:49');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-25 13:52:24');
INSERT INTO `sys_logininfor` VALUES (192, 'ry', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-07-25 13:52:33');
INSERT INTO `sys_logininfor` VALUES (193, 'ry', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-07-25 13:52:36');
INSERT INTO `sys_logininfor` VALUES (194, 'ry', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-25 13:52:41');
INSERT INTO `sys_logininfor` VALUES (195, 'ry', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-25 13:53:17');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-07-25 13:53:22');
INSERT INTO `sys_logininfor` VALUES (197, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-25 13:53:27');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `is_refresh` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '1' COMMENT '是否刷新（0刷新 1不刷新）',
  `perms` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2037 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, '#', '', 'M', '0', '1', '', 'fa fa-gear', 'admin', '2023-03-25 08:22:34', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, '#', 'menuItem', 'M', '1', '1', '', 'fa fa-video-camera', 'admin', '2023-03-25 08:22:34', 'admin', '2023-03-30 21:22:44', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, '#', 'menuItem', 'M', '1', '1', '', 'fa fa-bars', 'admin', '2023-03-25 08:22:34', 'admin', '2023-03-30 21:23:10', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', '', 'C', '0', '1', 'system:user:view', 'fa fa-user-o', 'admin', '2023-03-25 08:22:34', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', '1', 'system:role:view', 'fa fa-user-secret', 'admin', '2023-03-25 08:22:34', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', '1', 'system:menu:view', 'fa fa-th-list', 'admin', '2023-03-25 08:22:34', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, '/system/dept', 'menuItem', 'C', '1', '1', 'system:dept:view', 'fa fa-outdent', 'admin', '2023-03-25 08:22:34', 'admin', '2023-03-30 21:24:01', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, '/system/post', 'menuItem', 'C', '1', '1', 'system:post:view', 'fa fa-address-card-o', 'admin', '2023-03-25 08:22:34', 'admin', '2023-03-30 21:23:52', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', 'menuItem', 'C', '1', '1', 'system:dict:view', 'fa fa-bookmark-o', 'admin', '2023-03-25 08:22:34', 'admin', '2023-03-30 21:23:42', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', 'menuItem', 'C', '1', '1', 'system:config:view', 'fa fa-sun-o', 'admin', '2023-03-25 08:22:34', 'admin', '2023-03-30 21:23:32', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, '/system/notice', '', 'C', '0', '1', 'system:notice:view', 'fa fa-bullhorn', 'admin', '2023-03-25 08:22:34', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', 'menuItem', 'M', '1', '1', '', 'fa fa-pencil-square-o', 'admin', '2023-03-25 08:22:34', 'admin', '2023-03-30 21:24:15', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', '1', 'monitor:online:view', 'fa fa-user-circle', 'admin', '2023-03-25 08:22:34', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', '1', 'monitor:job:view', 'fa fa-tasks', 'admin', '2023-03-25 08:22:34', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', '', 'C', '0', '1', 'monitor:data:view', 'fa fa-bug', 'admin', '2023-03-25 08:22:34', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, '/monitor/server', '', 'C', '0', '1', 'monitor:server:view', 'fa fa-server', 'admin', '2023-03-25 08:22:34', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, '/monitor/cache', '', 'C', '0', '1', 'monitor:cache:view', 'fa fa-cube', 'admin', '2023-03-25 08:22:34', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, '/tool/build', 'menuItem', 'C', '1', '1', 'tool:build:view', 'fa fa-wpforms', 'admin', '2023-03-25 08:22:34', 'admin', '2023-03-30 21:22:58', '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', '1', 'tool:gen:view', 'fa fa-code', 'admin', '2023-03-25 08:22:35', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', '1', 'tool:swagger:view', 'fa fa-gg', 'admin', '2023-03-25 08:22:35', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', '1', 'monitor:operlog:view', 'fa fa-address-book', 'admin', '2023-03-25 08:22:35', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', '1', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', '2023-03-25 08:22:35', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', '1', 'system:user:list', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', '1', 'system:user:add', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', '1', 'system:user:edit', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', '1', 'system:user:remove', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', '1', 'system:user:export', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', '1', 'system:user:import', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', '1', 'system:user:resetPwd', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', '1', 'system:role:list', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', '1', 'system:role:add', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', '1', 'system:role:edit', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', '1', 'system:role:remove', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', '1', 'system:role:export', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', '1', 'system:menu:list', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', '1', 'system:menu:add', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', '1', 'system:menu:edit', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', '1', 'system:menu:remove', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', '', 'F', '0', '1', 'system:dept:list', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', '', 'F', '0', '1', 'system:dept:add', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', '', 'F', '0', '1', 'system:dept:edit', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', '', 'F', '0', '1', 'system:dept:remove', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', '', 'F', '0', '1', 'system:post:list', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', '', 'F', '0', '1', 'system:post:add', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', '', 'F', '0', '1', 'system:post:edit', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', '', 'F', '0', '1', 'system:post:remove', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', '', 'F', '0', '1', 'system:post:export', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', '1', 'system:dict:list', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', '1', 'system:dict:add', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', '1', 'system:dict:edit', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', '1', 'system:dict:remove', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', '1', 'system:dict:export', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', '1', 'system:config:list', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', '1', 'system:config:add', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', '1', 'system:config:edit', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', '1', 'system:config:remove', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', '1', 'system:config:export', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', '1', 'system:notice:list', '#', 'admin', '2023-03-25 08:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', '1', 'system:notice:add', '#', 'admin', '2023-03-25 08:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', '1', 'system:notice:edit', '#', 'admin', '2023-03-25 08:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', '1', 'system:notice:remove', '#', 'admin', '2023-03-25 08:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', '1', 'monitor:operlog:list', '#', 'admin', '2023-03-25 08:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', '1', 'monitor:operlog:remove', '#', 'admin', '2023-03-25 08:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', '1', 'monitor:operlog:detail', '#', 'admin', '2023-03-25 08:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', '1', 'monitor:operlog:export', '#', 'admin', '2023-03-25 08:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', '1', 'monitor:logininfor:list', '#', 'admin', '2023-03-25 08:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', '1', 'monitor:logininfor:remove', '#', 'admin', '2023-03-25 08:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', '1', 'monitor:logininfor:export', '#', 'admin', '2023-03-25 08:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '账户解锁', 501, 4, '#', '', 'F', '0', '1', 'monitor:logininfor:unlock', '#', 'admin', '2023-03-25 08:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '在线查询', 109, 1, '#', '', 'F', '0', '1', 'monitor:online:list', '#', 'admin', '2023-03-25 08:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '批量强退', 109, 2, '#', '', 'F', '0', '1', 'monitor:online:batchForceLogout', '#', 'admin', '2023-03-25 08:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '单条强退', 109, 3, '#', '', 'F', '0', '1', 'monitor:online:forceLogout', '#', 'admin', '2023-03-25 08:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务查询', 110, 1, '#', '', 'F', '0', '1', 'monitor:job:list', '#', 'admin', '2023-03-25 08:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务新增', 110, 2, '#', '', 'F', '0', '1', 'monitor:job:add', '#', 'admin', '2023-03-25 08:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务修改', 110, 3, '#', '', 'F', '0', '1', 'monitor:job:edit', '#', 'admin', '2023-03-25 08:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '任务删除', 110, 4, '#', '', 'F', '0', '1', 'monitor:job:remove', '#', 'admin', '2023-03-25 08:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '状态修改', 110, 5, '#', '', 'F', '0', '1', 'monitor:job:changeStatus', '#', 'admin', '2023-03-25 08:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '任务详细', 110, 6, '#', '', 'F', '0', '1', 'monitor:job:detail', '#', 'admin', '2023-03-25 08:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '任务导出', 110, 7, '#', '', 'F', '0', '1', 'monitor:job:export', '#', 'admin', '2023-03-25 08:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成查询', 115, 1, '#', '', 'F', '0', '1', 'tool:gen:list', '#', 'admin', '2023-03-25 08:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '生成修改', 115, 2, '#', '', 'F', '0', '1', 'tool:gen:edit', '#', 'admin', '2023-03-25 08:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '生成删除', 115, 3, '#', '', 'F', '0', '1', 'tool:gen:remove', '#', 'admin', '2023-03-25 08:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '预览代码', 115, 4, '#', '', 'F', '0', '1', 'tool:gen:preview', '#', 'admin', '2023-03-25 08:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1061, '生成代码', 115, 5, '#', '', 'F', '0', '1', 'tool:gen:code', '#', 'admin', '2023-03-25 08:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '仓库管理', 2006, 1, '/system/store', 'menuItem', 'C', '0', '1', 'system:store:view', '#', 'admin', '2023-03-25 09:49:14', 'admin', '2023-03-25 09:58:53', '【请填写功能名称】菜单');
INSERT INTO `sys_menu` VALUES (2001, '查询', 2000, 1, '#', 'menuItem', 'F', '0', '1', 'system:store:list', '#', 'admin', '2023-03-25 09:49:14', 'admin', '2023-03-25 09:59:06', '');
INSERT INTO `sys_menu` VALUES (2002, '新增', 2000, 2, '#', 'menuItem', 'F', '0', '1', 'system:store:add', '#', 'admin', '2023-03-25 09:49:15', 'admin', '2023-03-25 09:59:16', '');
INSERT INTO `sys_menu` VALUES (2003, '修改', 2000, 3, '#', 'menuItem', 'F', '0', '1', 'system:store:edit', '#', 'admin', '2023-03-25 09:49:15', 'admin', '2023-03-25 09:59:25', '');
INSERT INTO `sys_menu` VALUES (2004, '删除', 2000, 4, '#', 'menuItem', 'F', '0', '1', 'system:store:remove', '#', 'admin', '2023-03-25 09:49:15', 'admin', '2023-03-25 09:59:34', '');
INSERT INTO `sys_menu` VALUES (2005, '导出', 2000, 5, '#', 'menuItem', 'F', '0', '1', 'system:store:export', '#', 'admin', '2023-03-25 09:49:15', 'admin', '2023-03-25 09:59:46', '');
INSERT INTO `sys_menu` VALUES (2006, '仓储管理', 0, 5, '#', 'menuItem', 'M', '0', '1', '', 'fa fa-credit-card', 'admin', '2023-03-25 09:54:55', 'admin', '2023-03-25 09:57:00', '');
INSERT INTO `sys_menu` VALUES (2007, '商品管理', 2006, 1, '/system/goods', '', 'C', '0', '1', 'system:goods:view', '#', 'admin', '2023-03-25 10:32:42', '', NULL, '菜单');
INSERT INTO `sys_menu` VALUES (2008, '查询', 2007, 1, '#', '', 'F', '0', '1', 'system:goods:list', '#', 'admin', '2023-03-25 10:32:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2009, '新增', 2007, 2, '#', '', 'F', '0', '1', 'system:goods:add', '#', 'admin', '2023-03-25 10:32:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '修改', 2007, 3, '#', '', 'F', '0', '1', 'system:goods:edit', '#', 'admin', '2023-03-25 10:32:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '删除', 2007, 4, '#', '', 'F', '0', '1', 'system:goods:remove', '#', 'admin', '2023-03-25 10:32:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '导出', 2007, 5, '#', '', 'F', '0', '1', 'system:goods:export', '#', 'admin', '2023-03-25 10:32:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2013, '库存管理', 2006, 1, '/system/stock', '', 'C', '0', '1', 'system:stock:view', '#', 'admin', '2023-03-25 14:05:53', '', NULL, '菜单');
INSERT INTO `sys_menu` VALUES (2014, '查询', 2013, 1, '#', '', 'F', '0', '1', 'system:stock:list', '#', 'admin', '2023-03-25 14:05:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2015, '新增', 2013, 2, '#', '', 'F', '0', '1', 'system:stock:add', '#', 'admin', '2023-03-25 14:05:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2016, '修改', 2013, 3, '#', '', 'F', '0', '1', 'system:stock:edit', '#', 'admin', '2023-03-25 14:05:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '删除', 2013, 4, '#', '', 'F', '0', '1', 'system:stock:remove', '#', 'admin', '2023-03-25 14:05:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '导出', 2013, 5, '#', '', 'F', '0', '1', 'system:stock:export', '#', 'admin', '2023-03-25 14:05:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2019, '库存审核', 2006, 1, '/system/log', '', 'C', '0', '1', 'system:log:view', '#', 'admin', '2023-03-28 20:43:28', '', NULL, '菜单');
INSERT INTO `sys_menu` VALUES (2020, '查询', 2019, 1, '#', '', 'F', '0', '1', 'system:log:list', '#', 'admin', '2023-03-28 20:43:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2021, '新增', 2019, 2, '#', '', 'F', '0', '1', 'system:log:add', '#', 'admin', '2023-03-28 20:43:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2022, '修改', 2019, 3, '#', '', 'F', '0', '1', 'system:log:edit', '#', 'admin', '2023-03-28 20:43:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '删除', 2019, 4, '#', '', 'F', '0', '1', 'system:log:remove', '#', 'admin', '2023-03-28 20:43:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2024, '导出', 2019, 5, '#', '', 'F', '0', '1', 'system:log:export', '#', 'admin', '2023-03-28 20:43:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2025, '申请查看', 2006, 1, '/system/log/log', 'menuItem', 'C', '0', '1', 'system:log:view', '#', 'admin', '2023-03-29 21:11:33', 'admin', '2023-03-29 21:40:46', '菜单');
INSERT INTO `sys_menu` VALUES (2026, '查询', 2025, 1, '#', '', 'F', '0', '1', 'system:stock:list', '#', 'admin', '2023-03-29 21:11:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2027, '新增', 2025, 2, '#', '', 'F', '0', '1', 'system:stock:add', '#', 'admin', '2023-03-29 21:11:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2028, '修改', 2025, 3, '#', '', 'F', '0', '1', 'system:stock:edit', '#', 'admin', '2023-03-29 21:11:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2029, '删除', 2025, 4, '#', '', 'F', '0', '1', 'system:stock:remove', '#', 'admin', '2023-03-29 21:11:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2030, '导出', 2025, 5, '#', '', 'F', '0', '1', 'system:stock:export', '#', 'admin', '2023-03-29 21:11:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2031, '日志查看', 2006, 1, '/system/log/logb', 'menuItem', 'C', '0', '1', 'system:log:view', '#', 'admin', '2023-03-29 22:34:14', 'admin', '2023-03-29 23:00:53', '【请填写功能名称】菜单');
INSERT INTO `sys_menu` VALUES (2032, '查询', 2031, 1, '#', '', 'F', '0', '1', 'system:log:list', '#', 'admin', '2023-03-29 22:34:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2033, '新增', 2031, 2, '#', '', 'F', '0', '1', 'system:log:add', '#', 'admin', '2023-03-29 22:34:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2034, '修改', 2031, 3, '#', '', 'F', '0', '1', 'system:log:edit', '#', 'admin', '2023-03-29 22:34:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2035, '删除', 2031, 4, '#', '', 'F', '0', '1', 'system:log:remove', '#', 'admin', '2023-03-29 22:34:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2036, '导出', 2031, 5, '#', '', 'F', '0', '1', 'system:log:export', '#', 'admin', '2023-03-29 22:34:14', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '通知公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '公告内容', '2', '新版本内容', '0', 'admin', '2023-03-25 08:22:42', 'admin', '2023-07-25 13:50:07', '管理员');
INSERT INTO `sys_notice` VALUES (2, '通告内容', '1', '当前界面是统计管理', '0', 'admin', '2023-03-25 08:22:42', 'admin', '2023-07-25 13:50:22', '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 366 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '操作日志记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"u_store\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 09:36:24', 286);
INSERT INTO `sys_oper_log` VALUES (101, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/u_store', '127.0.0.1', '内网IP', '\"u_store\"', NULL, 0, NULL, '2023-03-25 09:47:31', 182);
INSERT INTO `sys_oper_log` VALUES (102, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/u_store', '127.0.0.1', '内网IP', '\"u_store\"', NULL, 0, NULL, '2023-03-25 09:48:23', 145);
INSERT INTO `sys_oper_log` VALUES (103, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"仓库管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-credit-card\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 09:54:55', 168);
INSERT INTO `sys_oper_log` VALUES (104, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2006\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"仓储管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-credit-card\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 09:57:00', 31);
INSERT INTO `sys_oper_log` VALUES (105, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"2006\"],\"menuType\":[\"C\"],\"menuName\":[\"仓库管理\"],\"url\":[\"/system/store\"],\"target\":[\"menuItem\"],\"perms\":[\"system:store:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 09:58:53', 65);
INSERT INTO `sys_oper_log` VALUES (106, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2001\"],\"parentId\":[\"2000\"],\"menuType\":[\"F\"],\"menuName\":[\"查询\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"system:store:list\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 09:59:06', 37);
INSERT INTO `sys_oper_log` VALUES (107, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2002\"],\"parentId\":[\"2000\"],\"menuType\":[\"F\"],\"menuName\":[\"新增\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"system:store:add\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 09:59:16', 29);
INSERT INTO `sys_oper_log` VALUES (108, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2003\"],\"parentId\":[\"2000\"],\"menuType\":[\"F\"],\"menuName\":[\"修改\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"system:store:edit\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 09:59:25', 61);
INSERT INTO `sys_oper_log` VALUES (109, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2004\"],\"parentId\":[\"2000\"],\"menuType\":[\"F\"],\"menuName\":[\"删除\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"system:store:remove\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 09:59:34', 65);
INSERT INTO `sys_oper_log` VALUES (110, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2005\"],\"parentId\":[\"2000\"],\"menuType\":[\"F\"],\"menuName\":[\"导出\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"system:store:export\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 09:59:46', 80);
INSERT INTO `sys_oper_log` VALUES (111, '【请填写功能名称】', 1, 'com.ruoyi.system.controller.UStoreController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"sName\":[\"1\"],\"sAddress\":[\"1\"],\"sContenct\":[\"1\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [G:\\ASTOCK\\RuoYi\\u-stock\\target\\classes\\mapper\\system\\UStoreMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.UStoreMapper.insertUStore-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into u_store          ( s_name,             s_address,             s_contenct )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2023-03-25 10:02:03', 272);
INSERT INTO `sys_oper_log` VALUES (112, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/u_store', '127.0.0.1', '内网IP', '\"u_store\"', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 10:02:43', 89);
INSERT INTO `sys_oper_log` VALUES (113, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/u_store', '127.0.0.1', '内网IP', '\"u_store\"', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 10:03:10', 90);
INSERT INTO `sys_oper_log` VALUES (114, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/u_store', '127.0.0.1', '内网IP', '\"u_store\"', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 10:03:35', 50);
INSERT INTO `sys_oper_log` VALUES (115, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 10:04:18', 73);
INSERT INTO `sys_oper_log` VALUES (116, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"u_store\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 10:04:26', 103);
INSERT INTO `sys_oper_log` VALUES (117, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/u_store', '127.0.0.1', '内网IP', '\"u_store\"', NULL, 0, NULL, '2023-03-25 10:04:39', 124);
INSERT INTO `sys_oper_log` VALUES (118, '【请填写功能名称】', 1, 'com.ruoyi.system.controller.UStoreController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"uid\":[\"\"],\"sName\":[\"\"],\"sAddress\":[\"\"],\"sContenct\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 10:08:46', 143);
INSERT INTO `sys_oper_log` VALUES (119, '【请填写功能名称】', 1, 'com.ruoyi.system.controller.UStoreController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"uid\":[\"f手动\"],\"sName\":[\"\"],\"sAddress\":[\"\"],\"sContenct\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 10:08:50', 32);
INSERT INTO `sys_oper_log` VALUES (120, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 10:09:27', 58);
INSERT INTO `sys_oper_log` VALUES (121, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"u_store\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 10:09:32', 111);
INSERT INTO `sys_oper_log` VALUES (122, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/u_store', '127.0.0.1', '内网IP', '\"u_store\"', NULL, 0, NULL, '2023-03-25 10:09:35', 351);
INSERT INTO `sys_oper_log` VALUES (123, '【请填写功能名称】', 3, 'com.ruoyi.system.controller.UStoreController.remove()', 'POST', 1, 'admin', '研发部门', '/system/store/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 10:12:32', 146);
INSERT INTO `sys_oper_log` VALUES (124, '【请填写功能名称】', 3, 'com.ruoyi.system.controller.UStoreController.remove()', 'POST', 1, 'admin', '研发部门', '/system/store/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"f手动\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 10:12:34', 59);
INSERT INTO `sys_oper_log` VALUES (125, '【请填写功能名称】', 1, 'com.ruoyi.system.controller.UStoreController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"sName\":[\"东仓库\"],\"sAddress\":[\"东京\"],\"sContenct\":[\"这是一个东京的仓库\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'uid\' doesn\'t have a default value\r\n### The error may exist in file [G:\\ASTOCK\\RuoYi\\u-stock\\target\\classes\\mapper\\system\\UStoreMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.UStoreMapper.insertUStore-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into u_store          ( s_name,             s_address,             s_contenct )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'uid\' doesn\'t have a default value\n; Field \'uid\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'uid\' doesn\'t have a default value', '2023-03-25 10:15:15', 84);
INSERT INTO `sys_oper_log` VALUES (126, '【请填写功能名称】', 1, 'com.ruoyi.system.controller.UStoreController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"uid\":[\"A2\"],\"sName\":[\"东仓库\"],\"sAddress\":[\"东京\"],\"sContenct\":[\"这是一个放在东京的仓库\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 10:18:27', 54);
INSERT INTO `sys_oper_log` VALUES (127, '【请填写功能名称】', 2, 'com.ruoyi.system.controller.UStoreController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/store/edit', '127.0.0.1', '内网IP', '{\"uid\":[\"A1\"],\"sName\":[\"北仓库1\"],\"sAddress\":[\"北京市1\"],\"sContenct\":[\"存放日常用品1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 10:18:44', 57);
INSERT INTO `sys_oper_log` VALUES (128, '【请填写功能名称】', 3, 'com.ruoyi.system.controller.UStoreController.remove()', 'POST', 1, 'admin', '研发部门', '/system/store/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"A1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 10:18:51', 78);
INSERT INTO `sys_oper_log` VALUES (129, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 10:30:13', 259);
INSERT INTO `sys_oper_log` VALUES (130, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"u_goods\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 10:30:24', 112);
INSERT INTO `sys_oper_log` VALUES (131, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/u_goods', '127.0.0.1', '内网IP', '\"u_goods\"', NULL, 0, NULL, '2023-03-25 10:30:34', 134);
INSERT INTO `sys_oper_log` VALUES (132, '【请填写功能名称】', 1, 'com.ruoyi.system.controller.UGoodsController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/goods/add', '127.0.0.1', '内网IP', '{\"sid\":[\"A110\"],\"sName\":[\"小衫外套\"],\"sLb\":[\"衣服\"]}', '{\"msg\":\"Cannot invoke \\\"org.springframework.web.multipart.MultipartFile.getOriginalFilename()\\\" because \\\"file\\\" is null\",\"code\":500}', 0, NULL, '2023-03-25 10:57:43', 5007);
INSERT INTO `sys_oper_log` VALUES (133, '【请填写功能名称】', 1, 'com.ruoyi.system.controller.UGoodsController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/goods/add', '127.0.0.1', '内网IP', '{\"sid\":[\"A110\"],\"sName\":[\"小衫外套\"],\"sLb\":[\"衣服\"]}', '{\"msg\":\"Cannot invoke \\\"org.springframework.web.multipart.MultipartFile.getOriginalFilename()\\\" because \\\"file\\\" is null\",\"code\":500}', 0, NULL, '2023-03-25 10:57:59', 1);
INSERT INTO `sys_oper_log` VALUES (134, '【请填写功能名称】', 1, 'com.ruoyi.system.controller.UGoodsController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/goods/add', '127.0.0.1', '内网IP', '{\"sid\":[\"A110\"],\"sName\":[\"A110\"],\"sLb\":[\"A110\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 11:04:20', 212);
INSERT INTO `sys_oper_log` VALUES (135, '【请填写功能名称】', 1, 'com.ruoyi.system.controller.UGoodsController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/goods/add', '127.0.0.1', '内网IP', '{\"sid\":[\"A1101\"],\"sName\":[\"A1101\"],\"sLb\":[\"A1101\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 11:05:13', 47);
INSERT INTO `sys_oper_log` VALUES (136, '【请填写功能名称】', 3, 'com.ruoyi.system.controller.UGoodsController.remove()', 'POST', 1, 'admin', '研发部门', '/system/goods/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"A110\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 11:07:02', 57);
INSERT INTO `sys_oper_log` VALUES (137, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 14:01:49', 607);
INSERT INTO `sys_oper_log` VALUES (138, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"u_stock\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 14:02:06', 118);
INSERT INTO `sys_oper_log` VALUES (139, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/u_stock', '127.0.0.1', '内网IP', '\"u_stock\"', NULL, 0, NULL, '2023-03-25 14:02:16', 577);
INSERT INTO `sys_oper_log` VALUES (140, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"\"],\"sid\":[\"\",\"\"],\"snum\":[\"\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'gid\' doesn\'t have a default value\r\n### The error may exist in file [G:\\ASTOCK\\RuoYi\\u-stock\\target\\classes\\mapper\\system\\UStockMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.UStockMapper.insertUStock-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into u_stock          ( sid )           values ( ? )\r\n### Cause: java.sql.SQLException: Field \'gid\' doesn\'t have a default value\n; Field \'gid\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'gid\' doesn\'t have a default value', '2023-03-25 14:57:40', 231627);
INSERT INTO `sys_oper_log` VALUES (141, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"\"],\"sid\":[\"\"],\"stype\":[\"\"],\"snum\":[\"\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [G:\\ASTOCK\\RuoYi\\u-stock\\target\\classes\\mapper\\system\\UStockMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.UStockMapper.insertUStock-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into u_stock\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-03-25 14:58:01', 15273);
INSERT INTO `sys_oper_log` VALUES (142, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"\"],\"sid\":[\"\"],\"stype\":[\"\"],\"snum\":[\"\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [G:\\ASTOCK\\RuoYi\\u-stock\\target\\classes\\mapper\\system\\UStockMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.UStockMapper.insertUStock-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into u_stock\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-03-25 15:02:46', 252000);
INSERT INTO `sys_oper_log` VALUES (143, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"\"],\"sid\":[\"\"],\"stype\":[\"\"],\"snum\":[\"\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [G:\\ASTOCK\\RuoYi\\u-stock\\target\\classes\\mapper\\system\\UStockMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.UStockMapper.insertUStock-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into u_stock\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-03-25 15:14:16', 269293);
INSERT INTO `sys_oper_log` VALUES (144, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"A1101\"],\"stype\":[\"1\"],\"snum\":[\"100\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"提交成功等待管理员审核\"}', 0, NULL, '2023-03-25 16:00:45', 95);
INSERT INTO `sys_oper_log` VALUES (145, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"A1101\"],\"stype\":[\"1\"],\"snum\":[\"20\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"提交成功等待管理员审核\"}', 0, NULL, '2023-03-25 16:02:44', 58);
INSERT INTO `sys_oper_log` VALUES (146, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"A1101\"],\"stype\":[\"1\"],\"snum\":[\"30\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"提交成功等待管理员审核\"}', 0, NULL, '2023-03-25 16:03:49', 56);
INSERT INTO `sys_oper_log` VALUES (147, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"A1101\"],\"stype\":[\"1\"],\"snum\":[\"100\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"提交成功等待管理员审核\"}', 0, NULL, '2023-03-25 16:04:59', 30760);
INSERT INTO `sys_oper_log` VALUES (148, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"A1101\"],\"stype\":[\"1\"],\"snum\":[\"30\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-25 16:05:23', 14065);
INSERT INTO `sys_oper_log` VALUES (149, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"A1101\"],\"stype\":[\"2\"],\"snum\":[\"500\"]}', NULL, 1, 'class java.math.BigDecimal cannot be cast to class java.lang.String (java.math.BigDecimal and java.lang.String are in module java.base of loader \'bootstrap\')', '2023-03-25 16:26:03', 25313);
INSERT INTO `sys_oper_log` VALUES (150, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"A1101\"],\"stype\":[\"2\"],\"snum\":[\"500\"]}', NULL, 1, 'class java.math.BigDecimal cannot be cast to class java.lang.String (java.math.BigDecimal and java.lang.String are in module java.base of loader \'bootstrap\')', '2023-03-25 16:27:17', 58044);
INSERT INTO `sys_oper_log` VALUES (151, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"A1101\"],\"stype\":[\"2\"],\"snum\":[\"500\"]}', NULL, 1, 'class java.math.BigDecimal cannot be cast to class java.lang.String (java.math.BigDecimal and java.lang.String are in module java.base of loader \'bootstrap\')', '2023-03-25 16:27:49', 8674);
INSERT INTO `sys_oper_log` VALUES (152, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"A1101\"],\"stype\":[\"2\"],\"snum\":[\"500\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"出库失败，库存不足！\"}', 0, NULL, '2023-03-25 16:29:18', 9835);
INSERT INTO `sys_oper_log` VALUES (153, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"A1101\"],\"stype\":[\"2\"],\"snum\":[\"300\"]}', '{\"msg\":\"操作失败\",\"code\":500,\"mes\":\"出库失败，库存不足！\"}', 0, NULL, '2023-03-25 16:36:40', 4026);
INSERT INTO `sys_oper_log` VALUES (154, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"A1101\"],\"stype\":[\"2\"],\"snum\":[\"300\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"出库失败，库存不足！\"}', 0, NULL, '2023-03-25 16:37:35', 12191);
INSERT INTO `sys_oper_log` VALUES (155, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"A1101\"],\"stype\":[\"1\"],\"snum\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-25 16:37:53', 4246);
INSERT INTO `sys_oper_log` VALUES (156, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"A1101\"],\"stype\":[\"2\"],\"snum\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"出库成功\"}', 0, NULL, '2023-03-25 16:39:09', 66);
INSERT INTO `sys_oper_log` VALUES (157, '【请填写功能名称】', 3, 'com.ruoyi.system.controller.UGoodsController.remove()', 'POST', 1, 'admin', '研发部门', '/system/goods/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"A1101\"]}', NULL, 1, 'Cannot invoke \"java.util.Map.get(Object)\" because \"map\" is null', '2023-03-25 17:54:13', 6);
INSERT INTO `sys_oper_log` VALUES (158, '【请填写功能名称】', 3, 'com.ruoyi.system.controller.UGoodsController.remove()', 'POST', 1, 'admin', '研发部门', '/system/goods/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"A1101\"]}', NULL, 1, 'Cannot invoke \"java.util.Map.get(Object)\" because \"map\" is null', '2023-03-25 17:54:32', 5);
INSERT INTO `sys_oper_log` VALUES (159, '【请填写功能名称】', 3, 'com.ruoyi.system.controller.UGoodsController.remove()', 'POST', 1, 'admin', '研发部门', '/system/goods/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"A1101\"]}', NULL, 1, 'class java.math.BigDecimal cannot be cast to class java.lang.String (java.math.BigDecimal and java.lang.String are in module java.base of loader \'bootstrap\')', '2023-03-25 17:55:24', 7);
INSERT INTO `sys_oper_log` VALUES (160, '【请填写功能名称】', 3, 'com.ruoyi.system.controller.UGoodsController.remove()', 'POST', 1, 'admin', '研发部门', '/system/goods/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"A1101\"]}', NULL, 1, 'class java.math.BigDecimal cannot be cast to class java.lang.String (java.math.BigDecimal and java.lang.String are in module java.base of loader \'bootstrap\')', '2023-03-25 17:56:28', 42692);
INSERT INTO `sys_oper_log` VALUES (161, '【请填写功能名称】', 3, 'com.ruoyi.system.controller.UGoodsController.remove()', 'POST', 1, 'admin', '研发部门', '/system/goods/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"A1101\"]}', NULL, 1, 'No transaction aspect-managed TransactionStatus in scope', '2023-03-25 17:56:43', 5636);
INSERT INTO `sys_oper_log` VALUES (162, '【请填写功能名称】', 3, 'com.ruoyi.system.controller.UGoodsController.remove()', 'POST', 1, 'admin', '研发部门', '/system/goods/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"A1101\"]}', NULL, 1, 'No transaction aspect-managed TransactionStatus in scope', '2023-03-25 17:57:06', 3144);
INSERT INTO `sys_oper_log` VALUES (163, '【请填写功能名称】', 3, 'com.ruoyi.system.controller.UGoodsController.remove()', 'POST', 1, 'admin', '研发部门', '/system/goods/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"A1101\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-03-25 18:03:36', 17);
INSERT INTO `sys_oper_log` VALUES (164, '【请填写功能名称】', 3, 'com.ruoyi.system.controller.UGoodsController.remove()', 'POST', 1, 'admin', '研发部门', '/system/goods/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"A1101\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-03-25 18:03:50', 6957);
INSERT INTO `sys_oper_log` VALUES (165, '【请填写功能名称】', 3, 'com.ruoyi.system.controller.UGoodsController.remove()', 'POST', 1, 'admin', '研发部门', '/system/goods/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"A1101\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-25 18:04:18', 3394);
INSERT INTO `sys_oper_log` VALUES (166, '【请填写功能名称】', 1, 'com.ruoyi.system.controller.UGoodsController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/goods/add', '127.0.0.1', '内网IP', '{\"sid\":[\"1\"],\"sName\":[\"衣服\"],\"sLb\":[\"外套\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-26 13:33:24', 215);
INSERT INTO `sys_oper_log` VALUES (167, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-26 13:34:56', 61);
INSERT INTO `sys_oper_log` VALUES (168, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-26 13:46:14', 36);
INSERT INTO `sys_oper_log` VALUES (169, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-26 13:46:16', 64);
INSERT INTO `sys_oper_log` VALUES (170, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-26 13:46:16', 190);
INSERT INTO `sys_oper_log` VALUES (171, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-26 13:46:16', 31);
INSERT INTO `sys_oper_log` VALUES (172, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-26 13:46:16', 25);
INSERT INTO `sys_oper_log` VALUES (173, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"出库成功\"}', 0, NULL, '2023-03-26 13:51:48', 50);
INSERT INTO `sys_oper_log` VALUES (174, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"出库成功\"}', 0, NULL, '2023-03-26 13:51:48', 37);
INSERT INTO `sys_oper_log` VALUES (175, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"30\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-26 14:28:30', 140);
INSERT INTO `sys_oper_log` VALUES (176, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"10\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE  u_stock.gid = \'1\'\n             and u_stock.sid = \'1\'\n             and u_s\' at line 3\r\n### The error may exist in file [G:\\ASTOCK\\RuoYi\\u-stock\\target\\classes\\mapper\\system\\UStockMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.UStockMapper.insertLog-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into u_log(select u_stock.id,u_stock.sid,u_goods.s_name,u_goods.s_img,u_goods.s_lb,u_stock.gid,u_store.s_name cname ,u_store.s_address,u_store.s_contenct ,u_stock.snum, if(u_stock.stype=1,\'入库\',\'出库\') stype ,(select user_name from sys_user where sys_user.user_id=u_stock.uid) uname,now() tim  from u_stock LEFT JOIN u_goods on u_goods.sid=u_stock.sid         LEFT JOIN u_store on u_store.uid=u_stock.gid)          WHERE  u_stock.gid = ?              and u_stock.sid = ?              and u_stock.uid = ?              and u_stock.stype = ?              and u_stock.snum = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE  u_stock.gid = \'1\'\n             and u_stock.sid = \'1\'\n             and u_s\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE  u_stock.gid = \'1\'\n             and u_stock.sid = \'1\'\n             and u_s\' at line 3', '2023-03-26 15:45:34', 121);
INSERT INTO `sys_oper_log` VALUES (177, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"10\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE  u_stock.gid = \'1\'\n             and u_stock.sid = \'1\'\n             and u_s\' at line 3\r\n### The error may exist in file [G:\\ASTOCK\\RuoYi\\u-stock\\target\\classes\\mapper\\system\\UStockMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.UStockMapper.insertLog-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into u_log(select u_stock.id,u_stock.sid,u_goods.s_name,u_goods.s_img,u_goods.s_lb,u_stock.gid,u_store.s_name cname ,u_store.s_address,u_store.s_contenct ,u_stock.snum, if(u_stock.stype=1,\'入库\',\'出库\') stype ,(select user_name from sys_user where sys_user.user_id=u_stock.uid) uname,now() tim  from u_stock LEFT JOIN u_goods on u_goods.sid=u_stock.sid         LEFT JOIN u_store on u_store.uid=u_stock.gid)          WHERE  u_stock.gid = ?              and u_stock.sid = ?              and u_stock.uid = ?              and u_stock.stype = ?              and u_stock.snum = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE  u_stock.gid = \'1\'\n             and u_stock.sid = \'1\'\n             and u_s\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE  u_stock.gid = \'1\'\n             and u_stock.sid = \'1\'\n             and u_s\' at line 3', '2023-03-26 15:46:30', 12);
INSERT INTO `sys_oper_log` VALUES (178, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"10\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE  u_stock.gid = \'1\'\n             and u_stock.sid = \'1\'\n             and u_s\' at line 3\r\n### The error may exist in file [G:\\ASTOCK\\RuoYi\\u-stock\\target\\classes\\mapper\\system\\UStockMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.UStockMapper.insertLog-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into u_log(select u_stock.id,u_stock.sid,u_goods.s_name,u_goods.s_img,u_goods.s_lb,u_stock.gid,u_store.s_name cname ,u_store.s_address,u_store.s_contenct ,u_stock.snum, if(u_stock.stype=1,\'入库\',\'出库\') stype ,(select user_name from sys_user where sys_user.user_id=u_stock.uid) uname,now() tim  from u_stock LEFT JOIN u_goods on u_goods.sid=u_stock.sid         LEFT JOIN u_store on u_store.uid=u_stock.gid)          WHERE  u_stock.gid = ?              and u_stock.sid = ?              and u_stock.uid = ?              and u_stock.stype = ?              and u_stock.snum = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE  u_stock.gid = \'1\'\n             and u_stock.sid = \'1\'\n             and u_s\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE  u_stock.gid = \'1\'\n             and u_stock.sid = \'1\'\n             and u_s\' at line 3', '2023-03-26 15:46:38', 10);
INSERT INTO `sys_oper_log` VALUES (179, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"10\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-26 15:47:30', 2979);
INSERT INTO `sys_oper_log` VALUES (180, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"10\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-26 15:47:54', 5389);
INSERT INTO `sys_oper_log` VALUES (181, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"10\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"出库成功\"}', 0, NULL, '2023-03-26 15:48:37', 87);
INSERT INTO `sys_oper_log` VALUES (182, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"10\"]}', NULL, 1, 'Cannot invoke \"java.util.Map.get(Object)\" because \"count\" is null', '2023-03-26 15:50:37', 44);
INSERT INTO `sys_oper_log` VALUES (183, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"10\"]}', NULL, 1, 'Cannot invoke \"java.util.Map.get(Object)\" because \"count\" is null', '2023-03-26 15:50:39', 7);
INSERT INTO `sys_oper_log` VALUES (184, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"10\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-26 15:50:55', 79);
INSERT INTO `sys_oper_log` VALUES (185, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"10\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-26 15:51:11', 81);
INSERT INTO `sys_oper_log` VALUES (186, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"10\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-26 15:51:11', 53);
INSERT INTO `sys_oper_log` VALUES (187, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"10\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-26 15:51:11', 34);
INSERT INTO `sys_oper_log` VALUES (188, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"10\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-26 15:51:11', 53);
INSERT INTO `sys_oper_log` VALUES (189, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"10\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-26 15:51:12', 55);
INSERT INTO `sys_oper_log` VALUES (190, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"10\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-26 15:51:12', 275);
INSERT INTO `sys_oper_log` VALUES (191, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"10\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-26 15:51:12', 170);
INSERT INTO `sys_oper_log` VALUES (192, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"10\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-26 15:51:12', 171);
INSERT INTO `sys_oper_log` VALUES (193, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"10\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-26 15:51:12', 203);
INSERT INTO `sys_oper_log` VALUES (194, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"10\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-26 15:51:13', 151);
INSERT INTO `sys_oper_log` VALUES (195, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"10\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-26 15:51:13', 117);
INSERT INTO `sys_oper_log` VALUES (196, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"10\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-26 15:51:13', 52);
INSERT INTO `sys_oper_log` VALUES (197, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"100\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-26 15:51:42', 230);
INSERT INTO `sys_oper_log` VALUES (198, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"100\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-26 15:52:56', 102);
INSERT INTO `sys_oper_log` VALUES (199, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"100\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-26 15:53:02', 81);
INSERT INTO `sys_oper_log` VALUES (200, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"100\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-26 15:53:05', 82);
INSERT INTO `sys_oper_log` VALUES (201, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"100\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-26 15:53:17', 63);
INSERT INTO `sys_oper_log` VALUES (202, '【请填写功能名称】', 3, 'com.ruoyi.system.controller.UStoreController.remove()', 'POST', 1, 'admin', '研发部门', '/system/store/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`db_stocks`.`u_stock`, CONSTRAINT `ic` FOREIGN KEY (`gid`) REFERENCES `u_store` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT)\r\n### The error may exist in file [G:\\ASTOCK\\RuoYi\\u-stock\\target\\classes\\mapper\\system\\UStoreMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.UStoreMapper.deleteUStoreByUids-Inline\r\n### The error occurred while setting parameters\r\n### SQL: delete from u_store where uid in           (               ?          )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`db_stocks`.`u_stock`, CONSTRAINT `ic` FOREIGN KEY (`gid`) REFERENCES `u_store` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT)\n; Cannot delete or update a parent row: a foreign key constraint fails (`db_stocks`.`u_stock`, CONSTRAINT `ic` FOREIGN KEY (`gid`) REFERENCES `u_store` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`db_stocks`.`u_stock`, CONSTRAINT `ic` FOREIGN KEY (`gid`) REFERENCES `u_store` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT)', '2023-03-26 16:33:53', 394);
INSERT INTO `sys_oper_log` VALUES (203, '【请填写功能名称】', 3, 'com.ruoyi.system.controller.UStoreController.remove()', 'POST', 1, 'admin', '研发部门', '/system/store/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`db_stocks`.`u_stock`, CONSTRAINT `ic` FOREIGN KEY (`gid`) REFERENCES `u_store` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT)\r\n### The error may exist in file [G:\\ASTOCK\\RuoYi\\u-stock\\target\\classes\\mapper\\system\\UStoreMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.UStoreMapper.deleteUStoreByUids-Inline\r\n### The error occurred while setting parameters\r\n### SQL: delete from u_store where uid in           (               ?          )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`db_stocks`.`u_stock`, CONSTRAINT `ic` FOREIGN KEY (`gid`) REFERENCES `u_store` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT)\n; Cannot delete or update a parent row: a foreign key constraint fails (`db_stocks`.`u_stock`, CONSTRAINT `ic` FOREIGN KEY (`gid`) REFERENCES `u_store` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`db_stocks`.`u_stock`, CONSTRAINT `ic` FOREIGN KEY (`gid`) REFERENCES `u_store` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT)', '2023-03-26 16:34:48', 8);
INSERT INTO `sys_oper_log` VALUES (204, '【请填写功能名称】', 3, 'com.ruoyi.system.controller.UStoreController.remove()', 'POST', 1, 'admin', '研发部门', '/system/store/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-03-26 16:34:52', 17);
INSERT INTO `sys_oper_log` VALUES (205, '【请填写功能名称】', 3, 'com.ruoyi.system.controller.UStoreController.remove()', 'POST', 1, 'admin', '研发部门', '/system/store/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-03-26 16:35:08', 5);
INSERT INTO `sys_oper_log` VALUES (206, '【请填写功能名称】', 2, 'com.ruoyi.system.controller.UStoreController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/store/edit', '127.0.0.1', '内网IP', '{\"uid\":[\"1\"],\"sName\":[\"1\"],\"sAddress\":[\"12\"],\"sContenct\":[\"12\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-26 16:36:05', 35);
INSERT INTO `sys_oper_log` VALUES (207, '【请填写功能名称】', 3, 'com.ruoyi.system.controller.UStoreController.remove()', 'POST', 1, 'admin', '研发部门', '/system/store/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-03-26 16:36:07', 6);
INSERT INTO `sys_oper_log` VALUES (208, '【请填写功能名称】', 1, 'com.ruoyi.system.controller.UStoreController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"uid\":[\"2\"],\"sName\":[\"2\"],\"sAddress\":[\"2\"],\"sContenct\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-26 17:21:48', 185);
INSERT INTO `sys_oper_log` VALUES (209, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"snum\":[\"100\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 19:12:50', 19540);
INSERT INTO `sys_oper_log` VALUES (210, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 19:17:19', 73686);
INSERT INTO `sys_oper_log` VALUES (211, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 19:20:06', 78813);
INSERT INTO `sys_oper_log` VALUES (212, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 19:20:44', 33201);
INSERT INTO `sys_oper_log` VALUES (213, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"\"],\"sid\":[\"1\"],\"ogid\":[\"1\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 19:22:11', 82385);
INSERT INTO `sys_oper_log` VALUES (214, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 19:35:49', 602151);
INSERT INTO `sys_oper_log` VALUES (215, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"6\"]}', NULL, 1, 'Cannot invoke \"java.util.Map.get(Object)\" because \"count\" is null', '2023-03-26 19:36:29', 16);
INSERT INTO `sys_oper_log` VALUES (216, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"6\"]}', NULL, 1, 'Cannot invoke \"java.util.Map.get(Object)\" because \"count\" is null', '2023-03-26 19:36:32', 8);
INSERT INTO `sys_oper_log` VALUES (217, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"6\"]}', NULL, 1, 'Cannot invoke \"java.util.Map.get(Object)\" because \"count\" is null', '2023-03-26 19:36:49', 8);
INSERT INTO `sys_oper_log` VALUES (218, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"6\"]}', NULL, 1, 'Cannot invoke \"java.util.Map.get(Object)\" because \"count\" is null', '2023-03-26 19:36:59', 8);
INSERT INTO `sys_oper_log` VALUES (219, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"6\"]}', NULL, 1, 'Cannot invoke \"java.util.Map.get(Object)\" because \"count\" is null', '2023-03-26 19:37:03', 8);
INSERT INTO `sys_oper_log` VALUES (220, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"6\"]}', NULL, 1, 'Cannot invoke \"java.util.Map.get(Object)\" because \"count\" is null', '2023-03-26 19:37:28', 7);
INSERT INTO `sys_oper_log` VALUES (221, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"6\"]}', NULL, 1, 'Cannot invoke \"java.util.Map.get(Object)\" because \"count\" is null', '2023-03-26 19:40:53', 201026);
INSERT INTO `sys_oper_log` VALUES (222, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"6\"]}', NULL, 1, 'Cannot invoke \"java.util.Map.get(Object)\" because \"count\" is null', '2023-03-26 19:40:55', 10);
INSERT INTO `sys_oper_log` VALUES (223, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"6\"]}', NULL, 1, 'Cannot invoke \"java.util.Map.get(Object)\" because \"count\" is null', '2023-03-26 19:40:57', 11);
INSERT INTO `sys_oper_log` VALUES (224, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"6\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"出库失败，库存不足！\"}', 0, NULL, '2023-03-26 19:40:59', 33);
INSERT INTO `sys_oper_log` VALUES (225, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"6\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"出库失败，库存不足！\"}', 0, NULL, '2023-03-26 19:41:01', 8);
INSERT INTO `sys_oper_log` VALUES (226, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"6\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-26 19:41:04', 79);
INSERT INTO `sys_oper_log` VALUES (227, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-26 19:41:08', 89);
INSERT INTO `sys_oper_log` VALUES (228, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-03-26 19:41:12', 96);
INSERT INTO `sys_oper_log` VALUES (229, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"出库成功\"}', 0, NULL, '2023-03-26 19:41:16', 108);
INSERT INTO `sys_oper_log` VALUES (230, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"出库成功\"}', 0, NULL, '2023-03-26 19:41:22', 161);
INSERT INTO `sys_oper_log` VALUES (231, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"出库成功\"}', 0, NULL, '2023-03-26 19:41:23', 79);
INSERT INTO `sys_oper_log` VALUES (232, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"出库失败，库存不足！\"}', 0, NULL, '2023-03-26 19:42:14', 24667);
INSERT INTO `sys_oper_log` VALUES (233, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"出库失败，库存不足！\"}', 0, NULL, '2023-03-26 19:42:21', 10);
INSERT INTO `sys_oper_log` VALUES (234, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"出库失败，库存不足！\"}', 0, NULL, '2023-03-26 19:42:22', 9);
INSERT INTO `sys_oper_log` VALUES (235, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"出库失败，库存不足！\"}', 0, NULL, '2023-03-26 19:42:22', 7);
INSERT INTO `sys_oper_log` VALUES (236, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"出库失败，库存不足！\"}', 0, NULL, '2023-03-26 19:42:22', 8);
INSERT INTO `sys_oper_log` VALUES (237, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"出库失败，库存不足！\"}', 0, NULL, '2023-03-26 19:42:22', 7);
INSERT INTO `sys_oper_log` VALUES (238, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"出库失败，库存不足！\"}', 0, NULL, '2023-03-26 19:42:22', 8);
INSERT INTO `sys_oper_log` VALUES (239, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"出库失败，库存不足！\"}', 0, NULL, '2023-03-26 19:42:22', 8);
INSERT INTO `sys_oper_log` VALUES (240, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"出库失败，库存不足！\"}', 0, NULL, '2023-03-26 19:42:23', 10);
INSERT INTO `sys_oper_log` VALUES (241, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"出库失败，库存不足！\"}', 0, NULL, '2023-03-26 19:42:23', 8);
INSERT INTO `sys_oper_log` VALUES (242, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"出库失败，库存不足！\"}', 0, NULL, '2023-03-26 19:42:23', 8);
INSERT INTO `sys_oper_log` VALUES (243, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"出库失败，库存不足！\"}', 0, NULL, '2023-03-26 19:42:23', 9);
INSERT INTO `sys_oper_log` VALUES (244, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"出库失败，库存不足！\"}', 0, NULL, '2023-03-26 19:42:24', 8);
INSERT INTO `sys_oper_log` VALUES (245, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"出库失败，库存不足！\"}', 0, NULL, '2023-03-26 19:42:24', 7);
INSERT INTO `sys_oper_log` VALUES (246, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"出库失败，库存不足！\"}', 0, NULL, '2023-03-26 19:42:24', 10);
INSERT INTO `sys_oper_log` VALUES (247, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"出库失败，库存不足！\"}', 0, NULL, '2023-03-26 19:42:24', 8);
INSERT INTO `sys_oper_log` VALUES (248, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"\"],\"sid\":[\"1\"],\"ogid\":[\"2\"],\"snum\":[\"\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 19:49:54', 1762);
INSERT INTO `sys_oper_log` VALUES (249, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"\"],\"sid\":[\"1\"],\"ogid\":[\"2\"],\"snum\":[\"\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 19:53:36', 153433);
INSERT INTO `sys_oper_log` VALUES (250, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"\"],\"sid\":[\"1\"],\"ogid\":[\"2\"],\"snum\":[\"\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 19:54:26', 13414);
INSERT INTO `sys_oper_log` VALUES (251, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"\"],\"sid\":[\"1\"],\"ogid\":[\"2\"],\"snum\":[\"\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 20:02:56', 462476);
INSERT INTO `sys_oper_log` VALUES (252, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 20:37:28', 11950);
INSERT INTO `sys_oper_log` VALUES (253, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 20:38:19', 7);
INSERT INTO `sys_oper_log` VALUES (254, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 20:42:33', 86635);
INSERT INTO `sys_oper_log` VALUES (255, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"\"],\"stype\":[\"\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 20:43:28', 48653);
INSERT INTO `sys_oper_log` VALUES (256, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"\"],\"stype\":[\"\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 20:44:42', 63759);
INSERT INTO `sys_oper_log` VALUES (257, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"入库\"],\"snum\":[\"\"],\"stype\":[\"\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 20:45:33', 47872);
INSERT INTO `sys_oper_log` VALUES (258, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"入库\",\"\"],\"snum\":[\"\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 20:47:05', 79301);
INSERT INTO `sys_oper_log` VALUES (259, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"undefined\",\"\"],\"snum\":[\"\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 21:24:19', 3577);
INSERT INTO `sys_oper_log` VALUES (260, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"undefined\",\"\"],\"snum\":[\"\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 21:30:30', 69064);
INSERT INTO `sys_oper_log` VALUES (261, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"stype\":[\"undefined\",\"\"],\"snum\":[\"\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 21:44:43', 780037);
INSERT INTO `sys_oper_log` VALUES (262, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"\"],\"snum\":[\"\"],\"stype\":[\"\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 21:51:13', 378429);
INSERT INTO `sys_oper_log` VALUES (263, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"\"],\"snum1\":[\"30\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 22:10:47', 3564);
INSERT INTO `sys_oper_log` VALUES (264, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"\"],\"snum1\":[\"30\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 22:11:42', 6386);
INSERT INTO `sys_oper_log` VALUES (265, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"100\"],\"snum1\":[\"30\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 22:17:49', 88867);
INSERT INTO `sys_oper_log` VALUES (266, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"1000\"],\"snum1\":[\"30\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 22:18:47', 22129);
INSERT INTO `sys_oper_log` VALUES (267, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"1000\"],\"snum1\":[\"30\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 22:18:54', 3536);
INSERT INTO `sys_oper_log` VALUES (268, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"1000\"],\"snum1\":[\"30\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 22:19:30', 26099);
INSERT INTO `sys_oper_log` VALUES (269, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"1000\"],\"snum1\":[\"30\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 22:19:45', 5201);
INSERT INTO `sys_oper_log` VALUES (270, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"100000\"],\"snum1\":[\"30\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 22:20:25', 3345);
INSERT INTO `sys_oper_log` VALUES (271, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"1000\"],\"snum1\":[\"30\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 22:20:56', 6565);
INSERT INTO `sys_oper_log` VALUES (272, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"100000\"],\"snum1\":[\"30\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 22:21:24', 6);
INSERT INTO `sys_oper_log` VALUES (273, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"100000\"],\"snum1\":[\"30\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 22:21:49', 6);
INSERT INTO `sys_oper_log` VALUES (274, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"100000\"],\"snum1\":[\"30\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 22:22:58', 7);
INSERT INTO `sys_oper_log` VALUES (275, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"10000\"],\"snum1\":[\"30\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 22:23:13', 7);
INSERT INTO `sys_oper_log` VALUES (276, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"10000\"],\"snum1\":[\"30\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 22:23:56', 6);
INSERT INTO `sys_oper_log` VALUES (277, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"100000\"],\"snum1\":[\"30\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 22:26:08', 6);
INSERT INTO `sys_oper_log` VALUES (278, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"10000\"],\"snum1\":[\"30\"]}', NULL, 1, 'Cannot invoke \"String.equals(Object)\" because the return value of \"com.ruoyi.system.domain.UStock.getStype()\" is null', '2023-03-26 22:27:26', 7);
INSERT INTO `sys_oper_log` VALUES (279, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"10\"],\"snum1\":[\"30\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'uid\' doesn\'t have a default value\r\n### The error may exist in file [G:\\ASTOCK\\RuoYi\\u-stock\\target\\classes\\mapper\\system\\UStockMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.UStockMapper.insertUStock-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into u_stock          ( gid,             sid,                          stype,             snum )           values ( ?,             ?,                          ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'uid\' doesn\'t have a default value\n; Field \'uid\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'uid\' doesn\'t have a default value', '2023-03-28 20:01:12', 313);
INSERT INTO `sys_oper_log` VALUES (280, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"10\"],\"snum1\":[\"30\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'uid\' doesn\'t have a default value\r\n### The error may exist in file [G:\\ASTOCK\\RuoYi\\u-stock\\target\\classes\\mapper\\system\\UStockMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.UStockMapper.insertUStock-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into u_stock          ( gid,             sid,                          stype,             snum )           values ( ?,             ?,                          ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'uid\' doesn\'t have a default value\n; Field \'uid\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'uid\' doesn\'t have a default value', '2023-03-28 20:03:16', 74892);
INSERT INTO `sys_oper_log` VALUES (281, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"10\"],\"snum1\":[\"30\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"移库成功\"}', 0, NULL, '2023-03-28 20:04:39', 40505);
INSERT INTO `sys_oper_log` VALUES (282, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"10\"],\"snum1\":[\"30\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"移库成功\"}', 0, NULL, '2023-03-28 20:04:53', 3902);
INSERT INTO `sys_oper_log` VALUES (283, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"1\"],\"snum1\":[\"30\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"移库成功\"}', 0, NULL, '2023-03-28 20:06:42', 116);
INSERT INTO `sys_oper_log` VALUES (284, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"1\"],\"snum1\":[\"30\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"移库成功\"}', 0, NULL, '2023-03-28 20:08:54', 116);
INSERT INTO `sys_oper_log` VALUES (285, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"10\"],\"snum1\":[\"30\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"移库成功\"}', 0, NULL, '2023-03-28 20:09:52', 108);
INSERT INTO `sys_oper_log` VALUES (286, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"100\"],\"snum1\":[\"198\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"移库成功\"}', 0, NULL, '2023-03-28 20:14:52', 106);
INSERT INTO `sys_oper_log` VALUES (287, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"100\"],\"snum1\":[\"198\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"移库成功\"}', 0, NULL, '2023-03-28 20:14:54', 177);
INSERT INTO `sys_oper_log` VALUES (288, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"100\"],\"snum1\":[\"198\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"移库成功\"}', 0, NULL, '2023-03-28 20:14:56', 104);
INSERT INTO `sys_oper_log` VALUES (289, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"100\"],\"snum1\":[\"198\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"移库成功\"}', 0, NULL, '2023-03-28 20:14:56', 107);
INSERT INTO `sys_oper_log` VALUES (290, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"100\"],\"snum1\":[\"198\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"移库成功\"}', 0, NULL, '2023-03-28 20:14:56', 101);
INSERT INTO `sys_oper_log` VALUES (291, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"100\"],\"snum1\":[\"198\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"移库成功\"}', 0, NULL, '2023-03-28 20:14:57', 105);
INSERT INTO `sys_oper_log` VALUES (292, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"100\"],\"snum1\":[\"198\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"移库成功\"}', 0, NULL, '2023-03-28 20:14:57', 152);
INSERT INTO `sys_oper_log` VALUES (293, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"100\"],\"snum1\":[\"198\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"移库成功\"}', 0, NULL, '2023-03-28 20:14:57', 103);
INSERT INTO `sys_oper_log` VALUES (294, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"400\"],\"snum1\":[\"418\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"移库成功\"}', 0, NULL, '2023-03-28 20:19:16', 91);
INSERT INTO `sys_oper_log` VALUES (295, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"18\"],\"snum1\":[\"18\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"移库成功\"}', 0, NULL, '2023-03-28 20:19:25', 113);
INSERT INTO `sys_oper_log` VALUES (296, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"10\"],\"snum1\":[\"418\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"移库成功\"}', 0, NULL, '2023-03-28 20:21:06', 107);
INSERT INTO `sys_oper_log` VALUES (297, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"10\"],\"snum1\":[\"190\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"移库成功\"}', 0, NULL, '2023-03-28 20:23:34', 99);
INSERT INTO `sys_oper_log` VALUES (298, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"10\"],\"snum1\":[\"180\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"移库成功\"}', 0, NULL, '2023-03-28 20:25:48', 160);
INSERT INTO `sys_oper_log` VALUES (299, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"10\"],\"snum1\":[\"170\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"移库成功\"}', 0, NULL, '2023-03-28 20:26:01', 140);
INSERT INTO `sys_oper_log` VALUES (300, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"10\"],\"snum1\":[\"160\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"移库成功\"}', 0, NULL, '2023-03-28 20:26:18', 99);
INSERT INTO `sys_oper_log` VALUES (301, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"10\"],\"snum1\":[\"150\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"移库成功\"}', 0, NULL, '2023-03-28 20:27:41', 177);
INSERT INTO `sys_oper_log` VALUES (302, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"1\"],\"snum1\":[\"140\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"移库成功\"}', 0, NULL, '2023-03-28 20:27:58', 104);
INSERT INTO `sys_oper_log` VALUES (303, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"1\"],\"snum1\":[\"139\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"移库成功\"}', 0, NULL, '2023-03-28 20:28:02', 89);
INSERT INTO `sys_oper_log` VALUES (304, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"3\"],\"snum1\":[\"138\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"移库成功\"}', 0, NULL, '2023-03-28 20:29:44', 106);
INSERT INTO `sys_oper_log` VALUES (305, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ykk()', 'POST', 1, 'admin', '研发部门', '/system/stock/ykk', '127.0.0.1', '内网IP', '{\"ngid\":[\"2\"],\"sid\":[\"1\"],\"ogid\":[\"1\"],\"snum\":[\"5\"],\"snum1\":[\"135\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"移库成功\"}', 0, NULL, '2023-03-28 20:29:51', 268);
INSERT INTO `sys_oper_log` VALUES (306, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-28 20:33:27', 117);
INSERT INTO `sys_oper_log` VALUES (307, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"u_stock_log\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-28 20:34:23', 94);
INSERT INTO `sys_oper_log` VALUES (308, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/u_stock_log', '127.0.0.1', '内网IP', '\"u_stock_log\"', NULL, 0, NULL, '2023-03-28 20:35:04', 523);
INSERT INTO `sys_oper_log` VALUES (309, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/u_stock_log', '127.0.0.1', '内网IP', '\"u_stock_log\"', NULL, 0, NULL, '2023-03-28 20:36:20', 182);
INSERT INTO `sys_oper_log` VALUES (310, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2025\"],\"parentId\":[\"2006\"],\"menuType\":[\"C\"],\"menuName\":[\"申请查看\"],\"url\":[\"/system/log1\"],\"target\":[\"menuItem\"],\"perms\":[\"system:stock:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-29 21:12:18', 238);
INSERT INTO `sys_oper_log` VALUES (311, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2025\"],\"parentId\":[\"2006\"],\"menuType\":[\"C\"],\"menuName\":[\"申请查看\"],\"url\":[\"/system/log\"],\"target\":[\"menuItem\"],\"perms\":[\"system:log:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-29 21:13:06', 61);
INSERT INTO `sys_oper_log` VALUES (312, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,113,3,114,115,1057,1058,1059,1060,1061,116,4,2006,2013,2014,2015,2016,2017,2018,2025,2026,2027,2028,2029,2030\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-29 21:20:21', 120);
INSERT INTO `sys_oper_log` VALUES (313, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()', 'POST', 1, 'admin', '研发部门', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,103,104,105,106,107,102,108,109\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-29 21:23:58', 126);
INSERT INTO `sys_oper_log` VALUES (314, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'ry', '测试部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,113,3,114,115,1057,1058,1059,1060,1061,116,4,2006,2013,2014,2015,2016,2017,2018,2025,2026,2027,2028,2029,2030\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-29 21:26:06', 74);
INSERT INTO `sys_oper_log` VALUES (315, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2025\"],\"parentId\":[\"2006\"],\"menuType\":[\"C\"],\"menuName\":[\"申请查看\"],\"url\":[\"/system/log/log\"],\"target\":[\"menuItem\"],\"perms\":[\"system:log:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-29 21:40:46', 142);
INSERT INTO `sys_oper_log` VALUES (316, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'ry', '测试部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"10\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"提交成功等待管理员审核\"}', 0, NULL, '2023-03-29 21:43:07', 73);
INSERT INTO `sys_oper_log` VALUES (317, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'ry', '测试部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"10\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"提交成功等待管理员审核\"}', 0, NULL, '2023-03-29 21:43:12', 54);
INSERT INTO `sys_oper_log` VALUES (318, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'ry', '测试部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"10\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"提交成功等待管理员审核\"}', 0, NULL, '2023-03-29 21:43:12', 117);
INSERT INTO `sys_oper_log` VALUES (319, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'ry', '测试部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"10\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"提交成功等待管理员审核\"}', 0, NULL, '2023-03-29 21:43:13', 57);
INSERT INTO `sys_oper_log` VALUES (320, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'ry', '测试部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"2\"],\"snum\":[\"1000\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"提交成功等待管理员审核\"}', 0, NULL, '2023-03-29 21:45:41', 62);
INSERT INTO `sys_oper_log` VALUES (321, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'ry', '测试部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"1000\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"提交成功等待管理员审核\"}', 0, NULL, '2023-03-29 21:53:19', 67);
INSERT INTO `sys_oper_log` VALUES (322, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'ry', '测试部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"1000\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"提交成功等待管理员审核\"}', 0, NULL, '2023-03-29 21:53:20', 26);
INSERT INTO `sys_oper_log` VALUES (323, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'ry', '测试部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"1000\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"提交成功等待管理员审核\"}', 0, NULL, '2023-03-29 21:53:24', 536);
INSERT INTO `sys_oper_log` VALUES (324, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'ry', '测试部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"1000\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"提交成功等待管理员审核\"}', 0, NULL, '2023-03-29 21:53:24', 92);
INSERT INTO `sys_oper_log` VALUES (325, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'ry', '测试部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"1000\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"提交成功等待管理员审核\"}', 0, NULL, '2023-03-29 21:53:24', 106);
INSERT INTO `sys_oper_log` VALUES (326, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"6\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-29 22:02:30', 249);
INSERT INTO `sys_oper_log` VALUES (327, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'ry', '测试部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"提交成功等待管理员审核\"}', 0, NULL, '2023-03-29 22:15:27', 24);
INSERT INTO `sys_oper_log` VALUES (328, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'ry', '测试部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"提交成功等待管理员审核\"}', 0, NULL, '2023-03-29 22:18:49', 57);
INSERT INTO `sys_oper_log` VALUES (329, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"u_log\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-29 22:32:07', 302);
INSERT INTO `sys_oper_log` VALUES (330, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/u_log', '127.0.0.1', '内网IP', '\"u_log\"', NULL, 0, NULL, '2023-03-29 22:32:10', 582);
INSERT INTO `sys_oper_log` VALUES (331, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2031\"],\"parentId\":[\"2006\"],\"menuType\":[\"C\"],\"menuName\":[\"日志查看\"],\"url\":[\"/system/logb\"],\"target\":[\"menuItem\"],\"perms\":[\"system:log:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-29 22:57:40', 167);
INSERT INTO `sys_oper_log` VALUES (332, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2031\"],\"parentId\":[\"2006\"],\"menuType\":[\"C\"],\"menuName\":[\"日志查看\"],\"url\":[\"/system/logb\"],\"target\":[\"menuItem\"],\"perms\":[\"system:log:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-29 23:00:27', 62);
INSERT INTO `sys_oper_log` VALUES (333, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2031\"],\"parentId\":[\"2006\"],\"menuType\":[\"C\"],\"menuName\":[\"日志查看\"],\"url\":[\"/system/log/logb\"],\"target\":[\"menuItem\"],\"perms\":[\"system:log:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-29 23:00:53', 44);
INSERT INTO `sys_oper_log` VALUES (334, '【请填写功能名称】', 5, 'com.ruoyi.system.controller.UStockLogController.export()', 'POST', 1, 'admin', '研发部门', '/system/log/export', '127.0.0.1', '内网IP', '{\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', NULL, 0, NULL, '2023-03-29 23:01:07', 1);
INSERT INTO `sys_oper_log` VALUES (335, '【请填写功能名称】', 5, 'com.ruoyi.system.controller.UStockLogController.export()', 'POST', 1, 'admin', '研发部门', '/system/log/export', '127.0.0.1', '内网IP', '{\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', NULL, 0, NULL, '2023-03-29 23:06:49', 304694);
INSERT INTO `sys_oper_log` VALUES (336, '是否导出日志', 5, 'com.ruoyi.system.controller.UStockLogController.export()', 'POST', 1, 'admin', '研发部门', '/system/log/export', '127.0.0.1', '内网IP', '{\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\"msg\":\"dbacdac2-28a2-4fc1-8510-307462f874f9_日志.xlsx\",\"code\":0}', 0, NULL, '2023-03-29 23:07:08', 2068);
INSERT INTO `sys_oper_log` VALUES (337, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"2006,2013,2014,2015,2016,2017,2018,2025,2026,2027,2028,2029,2030\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-30 21:03:45', 291);
INSERT INTO `sys_oper_log` VALUES (338, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"超级管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"超级管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2006,2000,2001,2002,2003,2004,2005,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036\"]}', NULL, 1, '不允许操作超级管理员角色', '2023-03-30 21:04:30', 2);
INSERT INTO `sys_oper_log` VALUES (339, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"超级管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"超级管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2006,2000,2001,2002,2003,2004,2005,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036\"]}', NULL, 1, '不允许操作超级管理员角色', '2023-03-30 21:04:35', 1);
INSERT INTO `sys_oper_log` VALUES (340, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"超级管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"超级管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2006,2000,2001,2002,2003,2004,2005,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036\"]}', NULL, 1, '不允许操作超级管理员角色', '2023-03-30 21:04:41', 1);
INSERT INTO `sys_oper_log` VALUES (341, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"107\"],\"userName\":[\"普通管理员\"],\"deptName\":[\"运维部门\"],\"phonenumber\":[\"15666666664\"],\"email\":[\"365@qq.com\"],\"loginName\":[\"root\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-30 21:06:40', 114);
INSERT INTO `sys_oper_log` VALUES (342, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"管理员\"],\"roleKey\":[\"root\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,107,1035,1036,1037,1038,2006,2000,2001,2002,2003,2004,2005,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-30 21:07:49', 94);
INSERT INTO `sys_oper_log` VALUES (343, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"100\"],\"deptId\":[\"107\"],\"userName\":[\"普通管理员\"],\"dept.deptName\":[\"运维部门\"],\"phonenumber\":[\"15666666664\"],\"email\":[\"365@qq.com\"],\"loginName\":[\"root\"],\"sex\":[\"0\"],\"role\":[\"100\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"100\"],\"postIds\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-30 21:08:01', 120);
INSERT INTO `sys_oper_log` VALUES (344, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', 1, 'admin', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"100\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-30 21:09:00', 134);
INSERT INTO `sys_oper_log` VALUES (345, '角色管理', 3, 'com.ruoyi.web.controller.system.SysRoleController.remove()', 'POST', 1, 'admin', '研发部门', '/system/role/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"100\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-30 21:09:17', 82);
INSERT INTO `sys_oper_log` VALUES (346, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"104\"],\"userName\":[\"root\"],\"deptName\":[\"市场部门\"],\"phonenumber\":[\"\"],\"email\":[\"\"],\"loginName\":[\"root\"],\"sex\":[\"0\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-30 21:11:18', 78);
INSERT INTO `sys_oper_log` VALUES (347, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"root\"],\"roleKey\":[\"root\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2006,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-30 21:11:53', 129);
INSERT INTO `sys_oper_log` VALUES (348, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"101\"],\"deptId\":[\"104\"],\"userName\":[\"root\"],\"dept.deptName\":[\"市场部门\"],\"phonenumber\":[\"\"],\"email\":[\"\"],\"loginName\":[\"root\"],\"sex\":[\"0\"],\"role\":[\"101\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-30 21:12:07', 36);
INSERT INTO `sys_oper_log` VALUES (349, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"101\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"root\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2006,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-30 21:12:18', 65);
INSERT INTO `sys_oper_log` VALUES (350, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/system/role/changeStatus', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"status\":[\"1\"]}', NULL, 1, '不允许操作超级管理员角色', '2023-03-30 21:13:07', 1);
INSERT INTO `sys_oper_log` VALUES (351, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/4', '127.0.0.1', '内网IP', '4', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-30 21:22:01', 105);
INSERT INTO `sys_oper_log` VALUES (352, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统监控\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-video-camera\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-30 21:22:44', 69);
INSERT INTO `sys_oper_log` VALUES (353, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"114\"],\"parentId\":[\"3\"],\"menuType\":[\"C\"],\"menuName\":[\"表单构建\"],\"url\":[\"/tool/build\"],\"target\":[\"menuItem\"],\"perms\":[\"tool:build:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-wpforms\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-30 21:22:58', 24);
INSERT INTO `sys_oper_log` VALUES (354, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"3\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统工具\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-30 21:23:10', 59);
INSERT INTO `sys_oper_log` VALUES (355, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"106\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"参数设置\"],\"url\":[\"/system/config\"],\"target\":[\"menuItem\"],\"perms\":[\"system:config:view\"],\"orderNum\":[\"7\"],\"icon\":[\"fa fa-sun-o\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-30 21:23:32', 31);
INSERT INTO `sys_oper_log` VALUES (356, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"105\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"字典管理\"],\"url\":[\"/system/dict\"],\"target\":[\"menuItem\"],\"perms\":[\"system:dict:view\"],\"orderNum\":[\"6\"],\"icon\":[\"fa fa-bookmark-o\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-30 21:23:42', 57);
INSERT INTO `sys_oper_log` VALUES (357, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"104\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"岗位管理\"],\"url\":[\"/system/post\"],\"target\":[\"menuItem\"],\"perms\":[\"system:post:view\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-address-card-o\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-30 21:23:52', 51);
INSERT INTO `sys_oper_log` VALUES (358, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"103\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"部门管理\"],\"url\":[\"/system/dept\"],\"target\":[\"menuItem\"],\"perms\":[\"system:dept:view\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-outdent\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-30 21:24:01', 57);
INSERT INTO `sys_oper_log` VALUES (359, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"108\"],\"parentId\":[\"1\"],\"menuType\":[\"M\"],\"menuName\":[\"日志管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"9\"],\"icon\":[\"fa fa-pencil-square-o\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-30 21:24:15', 56);
INSERT INTO `sys_oper_log` VALUES (360, '【请填写功能名称】', 2, 'com.ruoyi.system.controller.UStoreController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/store/edit', '127.0.0.1', '内网IP', '{\"uid\":[\"1\"],\"sName\":[\"东仓库\"],\"sAddress\":[\"北京\"],\"sContenct\":[\"用于存于普通的用户\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-07-25 13:46:05', 101);
INSERT INTO `sys_oper_log` VALUES (361, '【请填写功能名称】', 2, 'com.ruoyi.system.controller.UStoreController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/store/edit', '127.0.0.1', '内网IP', '{\"uid\":[\"2\"],\"sName\":[\"西仓库\"],\"sAddress\":[\"南京\"],\"sContenct\":[\"存放普通用户\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-07-25 13:46:51', 28);
INSERT INTO `sys_oper_log` VALUES (362, '入库与出库', 1, 'com.ruoyi.system.controller.UStockController.ick()', 'POST', 1, 'admin', '研发部门', '/system/stock/ick', '127.0.0.1', '内网IP', '{\"gid\":[\"1\"],\"sid\":[\"1\"],\"stype\":[\"1\"],\"snum\":[\"200\"]}', '{\"msg\":\"操作成功\",\"code\":0,\"mes\":\"入库成功\"}', 0, NULL, '2023-07-25 13:48:23', 126);
INSERT INTO `sys_oper_log` VALUES (363, '通知公告', 2, 'com.ruoyi.web.controller.system.SysNoticeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/notice/edit', '127.0.0.1', '内网IP', '{\"noticeId\":[\"2\"],\"noticeTitle\":[\"维护通知：2018-07-01 若依系统凌晨维护\"],\"noticeType\":[\"1\"],\"noticeContent\":[\"当前界面是统计管理\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-07-25 13:49:44', 26);
INSERT INTO `sys_oper_log` VALUES (364, '通知公告', 2, 'com.ruoyi.web.controller.system.SysNoticeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/notice/edit', '127.0.0.1', '内网IP', '{\"noticeId\":[\"1\"],\"noticeTitle\":[\"公告内容\"],\"noticeType\":[\"2\"],\"noticeContent\":[\"新版本内容\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-07-25 13:50:07', 56);
INSERT INTO `sys_oper_log` VALUES (365, '通知公告', 2, 'com.ruoyi.web.controller.system.SysNoticeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/notice/edit', '127.0.0.1', '内网IP', '{\"noticeId\":[\"2\"],\"noticeTitle\":[\"通告内容\"],\"noticeType\":[\"1\"],\"noticeContent\":[\"当前界面是统计管理\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-07-25 13:50:22', 73);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '岗位信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2023-03-25 08:22:34', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2023-03-25 08:22:34', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2023-03-25 08:22:34', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2023-03-25 08:22:34', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', '0', '0', 'admin', '2023-03-25 08:22:34', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2023-03-25 08:22:34', 'admin', '2023-03-30 21:03:44', '普通角色');
INSERT INTO `sys_role` VALUES (101, '管理员', 'root', 3, '1', '0', '0', 'admin', '2023-03-30 21:11:53', 'admin', '2023-03-30 21:12:18', '');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 102);
INSERT INTO `sys_role_dept` VALUES (2, 103);
INSERT INTO `sys_role_dept` VALUES (2, 104);
INSERT INTO `sys_role_dept` VALUES (2, 105);
INSERT INTO `sys_role_dept` VALUES (2, 106);
INSERT INTO `sys_role_dept` VALUES (2, 107);
INSERT INTO `sys_role_dept` VALUES (2, 108);
INSERT INTO `sys_role_dept` VALUES (2, 109);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 2006);
INSERT INTO `sys_role_menu` VALUES (2, 2013);
INSERT INTO `sys_role_menu` VALUES (2, 2014);
INSERT INTO `sys_role_menu` VALUES (2, 2015);
INSERT INTO `sys_role_menu` VALUES (2, 2016);
INSERT INTO `sys_role_menu` VALUES (2, 2017);
INSERT INTO `sys_role_menu` VALUES (2, 2018);
INSERT INTO `sys_role_menu` VALUES (2, 2025);
INSERT INTO `sys_role_menu` VALUES (2, 2026);
INSERT INTO `sys_role_menu` VALUES (2, 2027);
INSERT INTO `sys_role_menu` VALUES (2, 2028);
INSERT INTO `sys_role_menu` VALUES (2, 2029);
INSERT INTO `sys_role_menu` VALUES (2, 2030);
INSERT INTO `sys_role_menu` VALUES (101, 2006);
INSERT INTO `sys_role_menu` VALUES (101, 2019);
INSERT INTO `sys_role_menu` VALUES (101, 2020);
INSERT INTO `sys_role_menu` VALUES (101, 2021);
INSERT INTO `sys_role_menu` VALUES (101, 2022);
INSERT INTO `sys_role_menu` VALUES (101, 2023);
INSERT INTO `sys_role_menu` VALUES (101, 2024);
INSERT INTO `sys_role_menu` VALUES (101, 2025);
INSERT INTO `sys_role_menu` VALUES (101, 2026);
INSERT INTO `sys_role_menu` VALUES (101, 2027);
INSERT INTO `sys_role_menu` VALUES (101, 2028);
INSERT INTO `sys_role_menu` VALUES (101, 2029);
INSERT INTO `sys_role_menu` VALUES (101, 2030);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime NULL DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2023-07-25 13:53:28', '2023-03-25 08:22:33', 'admin', '2023-03-25 08:22:33', '', '2023-07-25 13:53:27', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2023-07-25 13:52:42', '2023-03-25 08:22:33', 'admin', '2023-03-25 08:22:33', '', '2023-07-25 13:52:41', '测试员');
INSERT INTO `sys_user` VALUES (100, 107, 'root', '普通管理员', '00', '365@qq.com', '15666666664', '0', '', '572fbe09d35e2e8298bf7941cf9e4ae1', '8e362a', '0', '2', '', NULL, NULL, 'admin', '2023-03-30 21:06:40', 'admin', '2023-03-30 21:08:01', '');
INSERT INTO `sys_user` VALUES (101, 104, 'root', 'root', '00', '', '', '0', '', 'ba77d18cd31f9c988f72d097145a4144', 'c09b6d', '0', '0', '127.0.0.1', '2023-03-30 21:16:14', NULL, 'admin', '2023-03-30 21:11:18', 'admin', '2023-03-30 21:16:14', '');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '在线用户记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('4cad364c-9f16-4a43-b35e-e2509e571c9a', 'admin', '研发部门', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', 'on_line', '2023-07-25 13:53:18', '2023-07-25 13:53:28', 1800000);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (101, 101);

-- ----------------------------
-- Table structure for u_goods
-- ----------------------------
DROP TABLE IF EXISTS `u_goods`;
CREATE TABLE `u_goods`  (
  `sid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品编号',
  `s_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品名字',
  `s_img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片路径',
  `s_lb` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品类别',
  `s_time` datetime NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of u_goods
-- ----------------------------
INSERT INTO `u_goods` VALUES ('1', '衣服', '/profile/upload/2023/03/29/OIP-C_20230329221434A005.jpg', '外套', '2023-03-26 13:33:23');

-- ----------------------------
-- Table structure for u_log
-- ----------------------------
DROP TABLE IF EXISTS `u_log`;
CREATE TABLE `u_log`  (
  `id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'id',
  `sid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品id',
  `s_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品名字',
  `s_img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
  `s_lb` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品类别',
  `gid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '仓库ID',
  `cname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '仓库名字',
  `s_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '仓库地址',
  `s_contenct` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '仓库内容',
  `snum` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '数量',
  `stype` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '类型',
  `uname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `tim` datetime NULL DEFAULT NULL COMMENT '操作时间'
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of u_log
-- ----------------------------
INSERT INTO `u_log` VALUES ('149', '1', '衣服', '/profile/upload/2023/03/29/OIP-C_20230329221434A005.jpg', '外套', '1', '1', '12', '12', '1', '入库', '若依', '2023-03-29 22:55:12');
INSERT INTO `u_log` VALUES ('150', '1', '衣服', '/profile/upload/2023/03/29/OIP-C_20230329221434A005.jpg', '外套', '1', '1', '12', '12', '1', '出库', '若依', '2023-03-28 22:55:12');
INSERT INTO `u_log` VALUES ('150', '1', '衣服', '/profile/upload/2023/03/29/OIP-C_20230329221434A005.jpg', '外套', '1', '1', '12', '12', '1', '出库', '若依', '2023-03-29 22:55:12');
INSERT INTO `u_log` VALUES ('150', '1', '衣服', '/profile/upload/2023/03/29/OIP-C_20230329221434A005.jpg', '外套', '1', '东仓库', '北京', '用于存于普通的用户', '200', '入库', '若依', '2023-07-25 13:48:23');

-- ----------------------------
-- Table structure for u_stock
-- ----------------------------
DROP TABLE IF EXISTS `u_stock`;
CREATE TABLE `u_stock`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `gid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '仓库ID',
  `sid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品ID',
  `uid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户ID',
  `stype` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '类型1入库2出库',
  `snum` int NOT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`sid` ASC) USING BTREE,
  INDEX `ic`(`gid` ASC) USING BTREE,
  CONSTRAINT `ic` FOREIGN KEY (`gid`) REFERENCES `u_store` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `id` FOREIGN KEY (`sid`) REFERENCES `u_goods` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 151 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of u_stock
-- ----------------------------
INSERT INTO `u_stock` VALUES (92, '2', '1', '1', '1', 100);
INSERT INTO `u_stock` VALUES (93, '2', '1', '1', '1', 100);
INSERT INTO `u_stock` VALUES (94, '2', '1', '1', '1', 100);
INSERT INTO `u_stock` VALUES (95, '2', '1', '1', '1', 100);
INSERT INTO `u_stock` VALUES (96, '2', '1', '1', '1', 100);
INSERT INTO `u_stock` VALUES (97, '2', '1', '1', '1', 100);
INSERT INTO `u_stock` VALUES (98, '2', '1', '1', '1', 100);
INSERT INTO `u_stock` VALUES (99, '2', '1', '1', '1', 100);
INSERT INTO `u_stock` VALUES (100, '2', '1', '1', '1', 100);
INSERT INTO `u_stock` VALUES (101, '2', '1', '1', '1', 100);
INSERT INTO `u_stock` VALUES (102, '2', '1', '1', '1', 100);
INSERT INTO `u_stock` VALUES (103, '2', '1', '1', '1', 100);
INSERT INTO `u_stock` VALUES (104, '2', '1', '1', '1', 100);
INSERT INTO `u_stock` VALUES (105, '2', '1', '1', '1', 100);
INSERT INTO `u_stock` VALUES (106, '2', '1', '1', '1', 100);
INSERT INTO `u_stock` VALUES (107, '2', '1', '1', '1', 100);
INSERT INTO `u_stock` VALUES (108, '2', '1', '1', '1', 100);
INSERT INTO `u_stock` VALUES (109, '2', '1', '1', '1', 100);
INSERT INTO `u_stock` VALUES (110, '2', '1', '1', '1', 100);
INSERT INTO `u_stock` VALUES (111, '2', '1', '1', '1', 100);
INSERT INTO `u_stock` VALUES (112, '2', '1', '1', '2', 100);
INSERT INTO `u_stock` VALUES (113, '2', '1', '1', '2', 100);
INSERT INTO `u_stock` VALUES (114, '2', '1', '1', '2', 100);
INSERT INTO `u_stock` VALUES (115, '2', '1', '1', '2', 100);
INSERT INTO `u_stock` VALUES (116, '2', '1', '1', '2', 100);
INSERT INTO `u_stock` VALUES (117, '2', '1', '1', '2', 100);
INSERT INTO `u_stock` VALUES (118, '2', '1', '1', '2', 100);
INSERT INTO `u_stock` VALUES (119, '2', '1', '1', '2', 100);
INSERT INTO `u_stock` VALUES (120, '2', '1', '1', '2', 100);
INSERT INTO `u_stock` VALUES (121, '1', '1', '1', '1', 10);
INSERT INTO `u_stock` VALUES (122, '1', '1', '1', '1', 10);
INSERT INTO `u_stock` VALUES (123, '1', '1', '1', '1', 10);
INSERT INTO `u_stock` VALUES (124, '1', '1', '1', '1', 10);
INSERT INTO `u_stock` VALUES (125, '1', '1', '1', '1', 1000);
INSERT INTO `u_stock` VALUES (126, '1', '1', '1', '1', 1000);
INSERT INTO `u_stock` VALUES (127, '1', '1', '1', '1', 1000);
INSERT INTO `u_stock` VALUES (128, '1', '1', '1', '1', 1000);
INSERT INTO `u_stock` VALUES (129, '1', '1', '1', '1', 1000);
INSERT INTO `u_stock` VALUES (130, '1', '1', '1', '1', 1000);
INSERT INTO `u_stock` VALUES (131, '1', '1', '1', '1', 1000);
INSERT INTO `u_stock` VALUES (132, '1', '1', '1', '1', 1000);
INSERT INTO `u_stock` VALUES (133, '1', '1', '1', '1', 1000);
INSERT INTO `u_stock` VALUES (134, '1', '1', '1', '1', 1000);
INSERT INTO `u_stock` VALUES (135, '1', '1', '1', '1', 1000);
INSERT INTO `u_stock` VALUES (136, '1', '1', '1', '1', 1000);
INSERT INTO `u_stock` VALUES (137, '1', '1', '1', '1', 1000);
INSERT INTO `u_stock` VALUES (138, '1', '1', '1', '1', 1000);
INSERT INTO `u_stock` VALUES (139, '1', '1', '1', '1', 1000);
INSERT INTO `u_stock` VALUES (140, '1', '1', '1', '2', 1000);
INSERT INTO `u_stock` VALUES (141, '1', '1', '1', '1', 1000);
INSERT INTO `u_stock` VALUES (142, '1', '1', '1', '1', 1000);
INSERT INTO `u_stock` VALUES (143, '1', '1', '1', '1', 1000);
INSERT INTO `u_stock` VALUES (144, '1', '1', '1', '1', 1000);
INSERT INTO `u_stock` VALUES (145, '1', '1', '2', '1', 1000);
INSERT INTO `u_stock` VALUES (146, '1', '1', '2', '1', 1000);
INSERT INTO `u_stock` VALUES (147, '1', '1', '2', '1', 1000);
INSERT INTO `u_stock` VALUES (148, '1', '1', '2', '1', 1000);
INSERT INTO `u_stock` VALUES (149, '1', '1', '2', '1', 1);
INSERT INTO `u_stock` VALUES (150, '1', '1', '1', '1', 200);

-- ----------------------------
-- Table structure for u_stock_log
-- ----------------------------
DROP TABLE IF EXISTS `u_stock_log`;
CREATE TABLE `u_stock_log`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `gid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '仓库ID',
  `sid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品ID',
  `uid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户ID',
  `stype` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '类型1入库2出库',
  `snum` int UNSIGNED NOT NULL COMMENT '数量',
  `slx` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '1' COMMENT '类型1申请中2同意3拒绝',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id1`(`gid` ASC) USING BTREE,
  INDEX `id2`(`sid` ASC) USING BTREE,
  CONSTRAINT `ic1` FOREIGN KEY (`gid`) REFERENCES `u_store` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id1` FOREIGN KEY (`sid`) REFERENCES `u_goods` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of u_stock_log
-- ----------------------------
INSERT INTO `u_stock_log` VALUES (66, '1', '1', '2', '1', 1, '2');
INSERT INTO `u_stock_log` VALUES (67, '1', '1', '2', '1', 1, '3');

-- ----------------------------
-- Table structure for u_store
-- ----------------------------
DROP TABLE IF EXISTS `u_store`;
CREATE TABLE `u_store`  (
  `uid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '仓库ID',
  `s_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '仓库名字',
  `s_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '仓库地址',
  `s_contenct` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '仓库描述',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of u_store
-- ----------------------------
INSERT INTO `u_store` VALUES ('1', '东仓库', '北京', '用于存于普通的用户');
INSERT INTO `u_store` VALUES ('2', '西仓库', '南京', '存放普通用户');

-- ----------------------------
-- View structure for s_time
-- ----------------------------
DROP VIEW IF EXISTS `s_time`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `s_time` AS select (((select (curdate() - interval 6 day)) - interval 1 day) + interval (cast(`mysql`.`help_topic`.`help_topic_id` as signed) + 1) day) AS `dayStr` from `mysql`.`help_topic` where (`mysql`.`help_topic`.`help_topic_id` < (to_days(now()) - to_days(((select (curdate() - interval 6 day)) - interval 1 day)))) order by `mysql`.`help_topic`.`help_topic_id`;

SET FOREIGN_KEY_CHECKS = 1;
