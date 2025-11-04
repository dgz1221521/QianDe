/*
 Navicat Premium Data Transfer

 Source Server         : qiande_wms
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : qiande_wms

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 09/10/2025 11:24:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_addressenumcontrast
-- ----------------------------
DROP TABLE IF EXISTS `sys_addressenumcontrast`;
CREATE TABLE `sys_addressenumcontrast`  (
  `Id` int NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `AddressName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `State` int NULL DEFAULT NULL,
  `CreateTime` datetime NOT NULL,
  `DefaultValue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `IsDisabled` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CreateTime` datetime NULL DEFAULT NULL,
  `State` int NULL DEFAULT NULL,
  `LogType` int NULL DEFAULT NULL,
  `ContainerKey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ContainerName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `Content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `UserId` int NULL DEFAULT NULL,
  `UserName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ContainerId` int NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 291 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for sys_logininfo
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfo`;
CREATE TABLE `sys_logininfo`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CreateTime` datetime NULL DEFAULT NULL,
  `State` int NULL DEFAULT NULL,
  `LoginName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `LoginPwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `Key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 136 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CreateTime` datetime NULL DEFAULT NULL,
  `State` int NULL DEFAULT NULL,
  `MenuName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '菜单名称',
  `ParentCode` int NULL DEFAULT NULL COMMENT '父级Code',
  `Icon` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `Path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `Sort` int NULL DEFAULT NULL COMMENT '序号',
  `ClientType` int NULL DEFAULT NULL COMMENT '客户端类型 (0-web端菜单 1-客户端菜单)',
  `Type` int NULL DEFAULT NULL COMMENT '菜单类型 0-目录 1-菜单',
  `OpenType` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '当 Type 为 1 时，OpenType 生效，_iframe 正常打开 _blank 新建浏览器标签页',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for sys_parameter
-- ----------------------------
DROP TABLE IF EXISTS `sys_parameter`;
CREATE TABLE `sys_parameter`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `State` int NULL DEFAULT NULL,
  `CreateTime` datetime NULL DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '名称',
  `FirstLang` int NULL DEFAULT NULL COMMENT '0中文1英文2俄文',
  `TokenTime` int NULL DEFAULT NULL COMMENT '缓存时间',
  `KeyBoardType` tinyint NULL DEFAULT NULL COMMENT '键盘类型',
  `IsMaterialPattern` tinyint NULL DEFAULT NULL COMMENT '是否显示物料选项卡',
  `AuthorizationCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '授权码',
  `SecondLang` int NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for sys_plcparameter
-- ----------------------------
DROP TABLE IF EXISTS `sys_plcparameter`;
CREATE TABLE `sys_plcparameter`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CreateTime` datetime NULL DEFAULT NULL,
  `State` int NULL DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '地址名称',
  `Address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '地址\r\n',
  `ParamType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '参数类型\r\n',
  `ParamLength` int NULL DEFAULT NULL COMMENT '参数长度\r\n',
  `DefaultValue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '默认值\r\n',
  `IsDisabled` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否禁用\r\n',
  `AddressAlias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '地址别名\r\n',
  `Type` int NULL DEFAULT NULL COMMENT '地址类型',
  `ButtonType` int NULL DEFAULT NULL COMMENT '按钮类型,切换按钮（此按钮可以维护Sencond，表示切换后的名称）2按钮，按下true，松开false按钮',
  `Kind` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '图标名称',
  `FirstName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'First地址名称',
  `FirstAddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'First地址',
  `FirstType` int NULL DEFAULT NULL COMMENT 'First地址类型',
  `FirstParamType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'First参数类型',
  `FirstParamLength` int NULL DEFAULT NULL COMMENT 'First参数长度',
  `FirstDefaultValue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'First参数默认值',
  `ParameterType` int NULL DEFAULT NULL COMMENT '参数类别',
  `SecondName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'Second地址名称',
  `SecondAddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'Second地址',
  `SecondType` int NULL DEFAULT NULL COMMENT 'Second址类型',
  `SecondParamType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'Second参数类型',
  `SecondParamLength` int NULL DEFAULT NULL COMMENT 'Second参数长度',
  `SecondDefaultValue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'Second参数默认值',
  `CheckName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'Check地址名称',
  `CheckAddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'Check地址',
  `CheckType` int NULL DEFAULT NULL COMMENT 'Check地址类型',
  `CheckParamType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'Check参数类型',
  `CheckParamLength` int NULL DEFAULT NULL COMMENT 'Check参数长度',
  `CheckDefaultValue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'Check参数默认值',
  `ContainerName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '货柜名称',
  `Ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'IP',
  `IsTest` tinyint NULL DEFAULT NULL COMMENT '是否打开PLC',
  `Mode` int NULL DEFAULT NULL COMMENT 'plc类别',
  `CpuType` int NULL DEFAULT NULL COMMENT 'plc型号',
  `TimeOut` int NULL DEFAULT NULL COMMENT '延迟时间',
  `ExecuteType` int NULL DEFAULT NULL COMMENT '执行参数是否属于同列值',
  `ContainerId` int NULL DEFAULT NULL COMMENT '货柜ID',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1079 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CreateTime` datetime NULL DEFAULT NULL,
  `State` int NULL DEFAULT NULL,
  `RoleName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for sys_rolemenu
-- ----------------------------
DROP TABLE IF EXISTS `sys_rolemenu`;
CREATE TABLE `sys_rolemenu`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CreateTime` datetime NULL DEFAULT NULL,
  `State` int NULL DEFAULT NULL,
  `RoleId` int NULL DEFAULT NULL,
  `MenuId` int NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 853 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CreateTime` datetime NULL DEFAULT NULL,
  `State` int NULL DEFAULT NULL,
  `Code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '工号',
  `LoginName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '登录名',
  `LoginPwd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '登录密码',
  `RealName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '真实名称',
  `CardCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '员工卡',
  `IsOnline` tinyint NULL DEFAULT NULL COMMENT '是否在线',
  `LastOnlineTime` datetime NULL DEFAULT NULL COMMENT '最后在线时间',
  `FaceExtract` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '人脸特征',
  `FengineData` varbinary(255) NULL DEFAULT NULL COMMENT '指纹信息',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for sys_userrole
-- ----------------------------
DROP TABLE IF EXISTS `sys_userrole`;
CREATE TABLE `sys_userrole`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CreateTime` datetime NULL DEFAULT NULL,
  `State` int NULL DEFAULT NULL,
  `UserId` int NULL DEFAULT NULL,
  `RoleId` int NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for t_bill
-- ----------------------------
DROP TABLE IF EXISTS `t_bill`;
CREATE TABLE `t_bill`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CreateTime` datetime NULL DEFAULT NULL,
  `State` int NULL DEFAULT NULL,
  `Code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '单号',
  `ProductId` int NULL DEFAULT NULL COMMENT '产品节点',
  `ProductParentId` int NULL DEFAULT NULL COMMENT '产品父级id',
  `ProductName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品名称',
  `ProductCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品编码',
  `ProductSpec` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品规格',
  `Status` int NULL DEFAULT NULL COMMENT '完成状态',
  `BillType` int NULL DEFAULT NULL COMMENT '单据类型',
  `Source` int NULL DEFAULT NULL COMMENT '来源',
  `RunMode` int NULL DEFAULT NULL COMMENT '运行模式',
  `UserId` int NULL DEFAULT NULL COMMENT '操作人id',
  `UserName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '操作人员名称',
  `ContainerId` int NULL DEFAULT NULL COMMENT '货柜',
  `ContainerName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '货柜名称',
  `HopperId` int NULL DEFAULT NULL COMMENT '料斗id',
  `TrayId` int NULL DEFAULT NULL COMMENT '料盒',
  `TrayBarCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '料盒条码',
  `TrayName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '料盒名称',
  `TrayTypeId` int NULL DEFAULT NULL COMMENT '料盒类型id',
  `TrayTypeName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '料盒类型名称',
  `Quantity` decimal(10, 2) NULL DEFAULT NULL COMMENT '数量',
  `StockType` int NULL DEFAULT NULL COMMENT '料盒存储状态',
  `WorkBenchId` int NULL DEFAULT NULL COMMENT '工作台',
  `WorkBenchName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '工作台名称',
  `ConverorLocation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '接驳坐标',
  `WorkBenchCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '工作台编号',
  `WorkBenchLR` tinyint NULL DEFAULT NULL COMMENT '左右',
  `IsFinished` tinyint NULL DEFAULT NULL COMMENT '是否成品',
  `IsBackGroundRunMode` tinyint NULL DEFAULT NULL COMMENT '是否后台运行',
  `LayoutDetailId` int NULL DEFAULT NULL COMMENT '布局明细Id',
  `WorkBenchNo` int NULL DEFAULT NULL COMMENT '工作台',
  `IsMoveLibrary` tinyint NULL DEFAULT NULL COMMENT '是否调库',
  `MoveLibraryLocation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '调库到指定的取位置',
  `MoveLibraryLocationUp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '调库到指定的放位置',
  `MoveLibraryLocationUpMes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '调库到指定的放位置信息',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for t_billdetail
-- ----------------------------
DROP TABLE IF EXISTS `t_billdetail`;
CREATE TABLE `t_billdetail`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CreateTime` datetime NULL DEFAULT NULL,
  `State` int NULL DEFAULT NULL,
  `BillId` int NULL DEFAULT NULL COMMENT '入库单id',
  `MaterialId` int NULL DEFAULT NULL COMMENT '物料id',
  `MaterialName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '物料名称',
  `MaterialCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '物料图代号',
  `MaterialSpec` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '规格型号',
  `MaterialGrade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '质量等级',
  `Status` int NULL DEFAULT NULL COMMENT '完成状态',
  `BillType` int NULL DEFAULT NULL COMMENT '出入库状态',
  `BatchCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批次',
  `Manufacturers` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '生存厂家',
  `CertificateCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '合格证',
  `PeriodDate` datetime NULL DEFAULT NULL COMMENT '保管期',
  `Quantity` decimal(10, 2) NULL DEFAULT NULL COMMENT '数量',
  `Ratio` int NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for t_billdetailsplits
-- ----------------------------
DROP TABLE IF EXISTS `t_billdetailsplits`;
CREATE TABLE `t_billdetailsplits`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CreateTime` datetime NULL DEFAULT NULL,
  `State` int NULL DEFAULT NULL,
  `ProductId` int NULL DEFAULT NULL COMMENT '产品编号',
  `ProductParentId` int NULL DEFAULT NULL COMMENT '产品父级id',
  `ProductCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品编码',
  `ProductSpec` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品型号',
  `ProductName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品名称',
  `MaterialId` int NULL DEFAULT NULL COMMENT '物料',
  `MaterialName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '物料名称',
  `MaterialCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '物料图代号',
  `MaterialSpec` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '物料规格型号',
  `MaterialGrade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '质量等级',
  `ContainerId` int NULL DEFAULT NULL COMMENT '货柜',
  `ContainerName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '货柜名称',
  `ContainerKey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '货柜唯一键',
  `RunMode` int NULL DEFAULT NULL COMMENT '运行模式',
  `HopperId` int NULL DEFAULT NULL COMMENT '料斗',
  `HopperNo` int NULL DEFAULT NULL COMMENT '料斗编号',
  `HopperName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '料斗名称',
  `TrayTypeId` int NULL DEFAULT NULL COMMENT '料盒类型编号',
  `TrayTypeName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '料盒类型名称',
  `TrayId` int NULL DEFAULT NULL COMMENT '料盒',
  `TrayBarCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '料盒条码',
  `TrayName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '料盒名称',
  `ConverorLocation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '接驳',
  `WorkBenchName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '接驳台名称',
  `LayoutDetailId` int NULL DEFAULT NULL COMMENT '工位主键编号',
  `Column` int NULL DEFAULT NULL COMMENT '列',
  `Row` int NULL DEFAULT NULL COMMENT '行',
  `ColSpan` int NULL DEFAULT NULL COMMENT '跨列',
  `RowSpan` int NULL DEFAULT NULL COMMENT '跨行',
  `Status` int NULL DEFAULT NULL COMMENT '单据状态',
  `BillId` int NULL DEFAULT NULL COMMENT '单据主表',
  `BillDetailId` int NULL DEFAULT NULL COMMENT '单据明细表',
  `Quantity` decimal(10, 2) NULL DEFAULT NULL COMMENT '数量',
  `BatchCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批次',
  `Manufacturers` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '生存厂家',
  `CertificateCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '合格证',
  `PeriodDate` datetime NULL DEFAULT NULL COMMENT '保管期',
  `BillType` int NULL DEFAULT NULL COMMENT '出入库状态',
  `InventoryDetialId` int NULL DEFAULT NULL COMMENT '库存明细',
  `Code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '编号',
  `WorkBenchId` int NULL DEFAULT NULL COMMENT '工作台id',
  `WorkBenchCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '工作台条码',
  `WorkBenchLR` tinyint NULL DEFAULT NULL COMMENT '工作台左右',
  `BillCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '单据编号',
  `Ratio` int NULL DEFAULT NULL,
  `WorkBenchNo` int NULL DEFAULT NULL COMMENT '工作台',
  `GuiderailId` int NULL DEFAULT NULL COMMENT '导轨编号',
  `GuiderailMinId` int NULL DEFAULT NULL COMMENT '最低导轨编号',
  `GuiderailMaxId` int NULL DEFAULT NULL COMMENT '最高导轨编号',
  `UseGuiderailInfo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '暂用的导轨信息',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for t_container
-- ----------------------------
DROP TABLE IF EXISTS `t_container`;
CREATE TABLE `t_container`  (
  `Id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `CreateTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `State` int NULL DEFAULT NULL COMMENT '状态',
  `Key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '唯一标识',
  `Spec` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '型号',
  `Weight` double NULL DEFAULT NULL COMMENT '重量',
  `Size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '尺寸',
  `ProTime` date NULL DEFAULT NULL COMMENT '生产时间',
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '货柜名称',
  `ContainerType` int NULL DEFAULT NULL COMMENT '类型',
  `HopperCount` int NULL DEFAULT NULL COMMENT '料斗数量',
  `Limit` int NULL DEFAULT NULL COMMENT '货柜界限',
  `IsOnline` tinyint NULL DEFAULT NULL COMMENT '是否在线',
  `IsRun` tinyint NULL DEFAULT NULL COMMENT '是否正在运行',
  `MinHeight` int NULL DEFAULT NULL COMMENT '运行最小高度',
  `MaxHeight` int NULL DEFAULT NULL COMMENT '运行最大高度',
  `RunMode` int NULL DEFAULT NULL COMMENT '运行模式',
  `Columns` int NULL DEFAULT NULL COMMENT '列数',
  `Rows` int NULL DEFAULT NULL COMMENT '行数',
  `TotalBearing` double NULL DEFAULT NULL COMMENT '承重',
  `TheBearing` double NULL DEFAULT NULL COMMENT '当前承重',
  `ClientPwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户端验证密码',
  `IsBackGroundMode` tinyint NULL DEFAULT NULL COMMENT '是否后台模式',
  `RunDire` int NULL DEFAULT NULL COMMENT '运行方向',
  `DoorShare` int NULL DEFAULT NULL COMMENT '门数量',
  `IsEmptyHopperGoBack` tinyint NULL DEFAULT NULL COMMENT '空料斗是否需要返回库中',
  `IsHasLamb` tinyint NULL DEFAULT NULL COMMENT '是否具有照明灯',
  `IsAutoDoor` tinyint NULL DEFAULT NULL COMMENT '是否自动门',
  `IsMultLanguage` tinyint NULL DEFAULT NULL COMMENT '是否多语言',
  `ExecMode` int NULL DEFAULT NULL COMMENT '执行模式',
  `Lincese` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '许可证',
  `GuiderailCount` decimal(10, 2) NULL DEFAULT NULL COMMENT '导轨数量',
  `GuiderailHeight` decimal(10, 2) NULL DEFAULT NULL COMMENT '导轨高度',
  `HopperTemporaryGuideSum` int NULL DEFAULT NULL COMMENT '托盘占用的导轨数量',
  `StackType` tinyint NULL DEFAULT NULL COMMENT '堆垛机类型默认单伸0，双伸1',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for t_containerfunctionmodule
-- ----------------------------
DROP TABLE IF EXISTS `t_containerfunctionmodule`;
CREATE TABLE `t_containerfunctionmodule`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CreateTime` datetime NULL DEFAULT NULL,
  `State` int NULL DEFAULT NULL,
  `ContainerId` int NULL DEFAULT NULL,
  `ContainerName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ContainerKey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `IfHasScanningModule` tinyint NULL DEFAULT NULL COMMENT '扫描模块',
  `IfHasFaceRecognition` tinyint NULL DEFAULT NULL COMMENT '是否包含人脸识别',
  `IfHasFingerPrintRecognition` tinyint NULL DEFAULT NULL COMMENT '是否包含指纹识别',
  `IfHasIdentification` tinyint NULL DEFAULT NULL COMMENT '是否包含Id认证',
  `IfHasWeighingModule` tinyint NULL DEFAULT NULL COMMENT '称重模块',
  `IfHasLocationIndication` tinyint NULL DEFAULT NULL COMMENT '库位指示',
  `IfHasRFIDModule` tinyint NULL DEFAULT NULL COMMENT 'RFID模块',
  `IfHasLEDModule` tinyint NULL DEFAULT NULL COMMENT 'LED模块',
  `IfHasEmailModule` tinyint NULL DEFAULT NULL COMMENT '邮件模块',
  `IfHasMultiWorkBench` tinyint NULL DEFAULT NULL COMMENT '多工作台',
  `IfHasPrintModule` tinyint NULL DEFAULT NULL COMMENT '打印模块',
  `IfHasHeightGaugeModule` tinyint NULL DEFAULT NULL COMMENT '高度测量',
  `IfHasCameraModule` tinyint NULL DEFAULT NULL COMMENT '摄像头模块',
  `IfHasRabbitMQModule` tinyint NULL DEFAULT NULL COMMENT 'RabbitMQ模块',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for t_containerstatus
-- ----------------------------
DROP TABLE IF EXISTS `t_containerstatus`;
CREATE TABLE `t_containerstatus`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CreateTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `State` int NULL DEFAULT NULL,
  `ContainerId` int NULL DEFAULT NULL COMMENT '货柜',
  `ContainerName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `HopperId` int NULL DEFAULT NULL COMMENT '料斗',
  `HopperNo` int NULL DEFAULT NULL COMMENT '料斗序号',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for t_equipments
-- ----------------------------
DROP TABLE IF EXISTS `t_equipments`;
CREATE TABLE `t_equipments`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CreateTime` datetime NULL DEFAULT NULL,
  `State` int NULL DEFAULT NULL,
  `ContainerKey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `EquipmentType` int NULL DEFAULT NULL,
  `IsTest` tinyint NULL DEFAULT NULL,
  `CommunicationMode` int NOT NULL COMMENT '通讯模式',
  `Item1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `Item2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `Item3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `Item4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `Item5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `Item6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `Item7` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `Item8` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `Item9` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `Item10` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `Item11` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `Item12` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `Item13` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `Item14` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `Item15` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for t_guiderail
-- ----------------------------
DROP TABLE IF EXISTS `t_guiderail`;
CREATE TABLE `t_guiderail`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CreateTime` datetime NULL DEFAULT NULL,
  `State` int NULL DEFAULT NULL,
  `ContainerId` int NULL DEFAULT NULL,
  `No` int NULL DEFAULT NULL,
  `RunHeight` int NULL DEFAULT NULL,
  `IsUse` bit(1) NULL DEFAULT NULL,
  `Dire` int NULL DEFAULT NULL COMMENT '0, 左侧1右侧',
  `UsableSpace` int NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 174 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for t_hopper
-- ----------------------------
DROP TABLE IF EXISTS `t_hopper`;
CREATE TABLE `t_hopper`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CreateTime` datetime NULL DEFAULT NULL,
  `State` int NULL DEFAULT NULL,
  `ContainerId` int NULL DEFAULT NULL COMMENT '货柜id',
  `No` int NULL DEFAULT NULL COMMENT '排序',
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '托盘名',
  `Columns` int NULL DEFAULT NULL COMMENT '列',
  `Rows` int NULL DEFAULT NULL COMMENT '行',
  `Spec` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '规格',
  `Size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '尺寸',
  `Weight` double NULL DEFAULT NULL COMMENT '重量',
  `BarCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '料斗条码',
  `RunHeight` int NULL DEFAULT NULL COMMENT '运行高度',
  `LayoutId` int NULL DEFAULT NULL COMMENT '布局',
  `IsQ` tinyint NULL DEFAULT NULL COMMENT '前后,false 前,true后',
  `TheBearing` decimal(10, 2) NULL DEFAULT NULL COMMENT '当前承重',
  `IsActivity` int NULL DEFAULT NULL COMMENT '是否活动料斗',
  `Img` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '图片路径',
  `GiderailId` int NULL DEFAULT NULL COMMENT '托盘所在导轨id',
  `GiderailNo` int NULL DEFAULT NULL COMMENT '托盘所在导轨编号',
  `UseGuiderailInfo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '占用的导轨信息',
  `HopperSort` tinyint NULL DEFAULT NULL COMMENT '料斗是否归属于同一侧',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for t_inventory
-- ----------------------------
DROP TABLE IF EXISTS `t_inventory`;
CREATE TABLE `t_inventory`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CreateTime` datetime NULL DEFAULT NULL,
  `State` int NULL DEFAULT NULL,
  `ProductId` int NULL DEFAULT NULL COMMENT '产品',
  `ProductParentId` int NULL DEFAULT NULL COMMENT '产品父级',
  `ProductCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品编号',
  `ProductSpec` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品型号',
  `ProductName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品名称',
  `ContainerId` int NULL DEFAULT NULL COMMENT '货柜',
  `ContainerName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '货柜名称',
  `HopperId` int NULL DEFAULT NULL COMMENT '料斗',
  `HopperNo` int NULL DEFAULT NULL COMMENT '料斗层',
  `HopperName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '料斗名称',
  `TrayId` int NULL DEFAULT NULL COMMENT '料盒',
  `TrayBarCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '料盒条码',
  `TrayName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '料盒名称',
  `TrayTypeId` int NULL DEFAULT NULL COMMENT '料盒类型编号',
  `TrayTypeName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '料盒类型名称',
  `LayoutDetailId` int NULL DEFAULT NULL COMMENT '工位主键',
  `Column` int NULL DEFAULT NULL COMMENT '所在列',
  `ColSpan` int NULL DEFAULT NULL COMMENT '跨列',
  `Row` int NULL DEFAULT NULL COMMENT '所在行',
  `RowSpan` int NULL DEFAULT NULL COMMENT '跨行',
  `Quantity` decimal(10, 2) NULL DEFAULT NULL COMMENT '数量',
  `LockQuantity` decimal(10, 2) NULL DEFAULT NULL COMMENT '锁定的数量',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for t_inventorydetail
-- ----------------------------
DROP TABLE IF EXISTS `t_inventorydetail`;
CREATE TABLE `t_inventorydetail`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CreateTime` datetime NULL DEFAULT NULL,
  `State` int NULL DEFAULT NULL,
  `InventoryId` int NULL DEFAULT NULL COMMENT '库存主键',
  `MaterialId` int NULL DEFAULT NULL COMMENT '物料主键',
  `MaterialName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '物料名称',
  `MaterialSpec` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '规格型号',
  `MaterialCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '图代号',
  `MaterialGrade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '质量等级',
  `BillType` int NULL DEFAULT NULL COMMENT '类型',
  `BatchCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '批次号',
  `Manufacturers` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '厂家',
  `CertificateCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '合格证',
  `PeriodDate` datetime NULL DEFAULT NULL COMMENT '保质期',
  `Quantity` decimal(10, 2) NULL DEFAULT NULL COMMENT '数量',
  `LockQuantity` decimal(10, 2) NULL DEFAULT NULL COMMENT '锁定数量',
  `Ratio` int NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for t_layout
-- ----------------------------
DROP TABLE IF EXISTS `t_layout`;
CREATE TABLE `t_layout`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `State` int NULL DEFAULT NULL,
  `CreateTime` datetime NULL DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '名称',
  `IsDefault` tinyint NULL DEFAULT NULL COMMENT '是否默认',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for t_layoutdetail
-- ----------------------------
DROP TABLE IF EXISTS `t_layoutdetail`;
CREATE TABLE `t_layoutdetail`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `State` int NULL DEFAULT NULL,
  `CreateTime` datetime NULL DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '工位明细名称',
  `LayoutId` int NULL DEFAULT NULL,
  `Column` int NULL DEFAULT NULL COMMENT '开始列',
  `ColSpan` int NULL DEFAULT NULL COMMENT '跨列',
  `Row` int NULL DEFAULT NULL COMMENT '开始行',
  `RowSpan` int NULL DEFAULT NULL COMMENT '跨行',
  `AgvLocation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'AGV地址',
  `No` int NULL DEFAULT NULL COMMENT '编号',
  `RunOffset_Y` int NULL DEFAULT NULL COMMENT '运行Y',
  `RunOffset_X` int NULL DEFAULT NULL COMMENT '运行X',
  `TrayTypeId` int NULL DEFAULT NULL COMMENT '料盒类型',
  `Instruct` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for t_material
-- ----------------------------
DROP TABLE IF EXISTS `t_material`;
CREATE TABLE `t_material`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CreateTime` datetime NULL DEFAULT NULL,
  `State` int NULL DEFAULT NULL,
  `Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '物料名称',
  `Code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '图代号',
  `Spec` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '规格型号',
  `Grade` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '质量等级',
  `Unit` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '计量单位',
  `Weight` decimal(5, 2) NULL DEFAULT NULL COMMENT '重量',
  `BarCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '条码',
  `YYCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'YYCode',
  `IsBatch` tinyint NULL DEFAULT NULL COMMENT '是否批属性管理',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `State` int NULL DEFAULT NULL,
  `CreateTime` datetime NULL DEFAULT NULL,
  `No` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品编号',
  `Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品名称',
  `Code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品编码',
  `Spec` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品型号',
  `BarCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '编码',
  `IsMix` tinyint NULL DEFAULT NULL COMMENT '是否混放',
  `IsKeepRatio` tinyint NULL DEFAULT NULL COMMENT '否保持比例出入库',
  `TrayTypeId` int NULL DEFAULT NULL COMMENT '料盒类型',
  `StoreQuantity` int NULL DEFAULT NULL COMMENT '存储数量（料盒存储数量，单个设置）',
  `SafeStock` int NULL DEFAULT NULL COMMENT '安全库存',
  `Remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  `IsAllocateStation` tinyint NULL DEFAULT NULL COMMENT '是否自动分配工位',
  `Img` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for t_productbom
-- ----------------------------
DROP TABLE IF EXISTS `t_productbom`;
CREATE TABLE `t_productbom`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CreateTime` datetime NULL DEFAULT NULL,
  `State` int NULL DEFAULT NULL,
  `ProductId` int NULL DEFAULT NULL COMMENT '产品编号',
  `MaterialId` int NULL DEFAULT NULL COMMENT '物料id',
  `MaterialCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '图代号',
  `MaterialName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '名称',
  `MaterialSpec` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '规格型号',
  `MaterialGrade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '质量等级',
  `Ratio` int NULL DEFAULT NULL COMMENT '和产品的配套关系',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for t_storesetting
-- ----------------------------
DROP TABLE IF EXISTS `t_storesetting`;
CREATE TABLE `t_storesetting`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CreateTime` datetime NULL DEFAULT NULL,
  `State` int NULL DEFAULT NULL,
  `ContainerId` int NULL DEFAULT NULL COMMENT '货柜id',
  `ContainerName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `HopperId` int NULL DEFAULT NULL COMMENT '料斗Id',
  `HopperName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `HopperNo` int NULL DEFAULT NULL,
  `LayoutDetailId` int NULL DEFAULT NULL,
  `Column` int NULL DEFAULT NULL COMMENT '列',
  `Row` int NULL DEFAULT NULL COMMENT '行',
  `ColSpan` int NULL DEFAULT NULL COMMENT '跨列',
  `RowSpan` int NULL DEFAULT NULL COMMENT '跨行',
  `ParentProductId` int NULL DEFAULT NULL,
  `ProductId` int NULL DEFAULT NULL COMMENT '产品',
  `ProductName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '最大存放数量',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for t_takestock
-- ----------------------------
DROP TABLE IF EXISTS `t_takestock`;
CREATE TABLE `t_takestock`  (
  `Id` int NOT NULL AUTO_INCREMENT COMMENT '指定工位',
  `CreateTime` datetime NULL DEFAULT NULL,
  `State` int NULL DEFAULT NULL,
  `Code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '单据编号',
  `ContainerId` int NULL DEFAULT NULL COMMENT '指定货柜',
  `ContainerName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '货柜名称',
  `WorkBenchId` int NULL DEFAULT NULL COMMENT '工作台Id',
  `WorkBenchCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '工作台编号',
  `WorkBenchName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '工作台名称',
  `ProductId` int NULL DEFAULT NULL COMMENT '盘点产品',
  `ProductCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品编号',
  `ProductName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品名称',
  `Status` int NULL DEFAULT NULL COMMENT '盘点单状态',
  `CreatePerson` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建人员',
  `OperationPerson` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '执行人员',
  `HopperIds` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '料斗集合',
  `LayoutDetailId` int NULL DEFAULT NULL COMMENT '指定工位',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for t_takestockinfo
-- ----------------------------
DROP TABLE IF EXISTS `t_takestockinfo`;
CREATE TABLE `t_takestockinfo`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CreateTime` datetime NULL DEFAULT NULL,
  `State` int NULL DEFAULT NULL,
  `TakeStockId` int NULL DEFAULT NULL,
  `InventoryDetailId` int NULL DEFAULT NULL,
  `Quantity_Y` decimal(10, 2) NULL DEFAULT NULL,
  `Quantity_N` decimal(10, 2) NULL DEFAULT NULL,
  `UserId` int NULL DEFAULT NULL,
  `UserName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for t_tray
-- ----------------------------
DROP TABLE IF EXISTS `t_tray`;
CREATE TABLE `t_tray`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CreateTime` datetime NULL DEFAULT NULL,
  `State` int NULL DEFAULT NULL,
  `No` int NULL DEFAULT NULL COMMENT '编号',
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '名称',
  `BarCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '条码',
  `TrayTypeId` int NULL DEFAULT NULL COMMENT '料盒类型',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for t_traytype
-- ----------------------------
DROP TABLE IF EXISTS `t_traytype`;
CREATE TABLE `t_traytype`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CreateTime` datetime NULL DEFAULT NULL,
  `State` int NULL DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '名称',
  `ColSpan` int NULL DEFAULT NULL COMMENT '跨列',
  `RowSpan` int NULL DEFAULT NULL COMMENT '跨行',
  `DefaultQuantity` int NULL DEFAULT NULL COMMENT '默认放置数量',
  `IsDefault` tinyint NULL DEFAULT NULL COMMENT '是否默认类型',
  `PlaceWeight` decimal(10, 3) NULL DEFAULT NULL COMMENT '料盒承重',
  `WarningRatio` decimal(6, 3) NULL DEFAULT NULL COMMENT '预警比例',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for t_workbench
-- ----------------------------
DROP TABLE IF EXISTS `t_workbench`;
CREATE TABLE `t_workbench`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CreateTime` datetime NULL DEFAULT NULL,
  `State` int NULL DEFAULT NULL,
  `ContainerId` int NULL DEFAULT NULL COMMENT '货柜',
  `ContainerName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '货柜名称',
  `Code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '编号',
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '名称',
  `BarCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '条码',
  `No` int NULL DEFAULT NULL COMMENT '序号',
  `IsDefault` tinyint NULL DEFAULT NULL COMMENT '是否默认',
  `IsRun` tinyint NULL DEFAULT NULL COMMENT '是否运行中',
  `HopperId` int NULL DEFAULT NULL COMMENT '当前工作台上运行的料斗',
  `Column` int NULL DEFAULT NULL COMMENT '列',
  `Row` int NULL DEFAULT NULL COMMENT '行',
  `ColSpan` int NULL DEFAULT NULL COMMENT '跨列',
  `RowSpan` int NULL DEFAULT NULL COMMENT '跨行',
  `LayoutDetailId` int NULL DEFAULT NULL COMMENT '当前工作台上的料来自哪个工位',
  `LayoutDetailName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '工位名称',
  `Type` tinyint NULL DEFAULT NULL,
  `LayoutCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '确认双伸调库订单是否完成',
  `Status` tinyint NULL DEFAULT NULL COMMENT '当前双伸调库订单状态',
  `OrderType` tinyint NULL DEFAULT NULL COMMENT '订单类型',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
