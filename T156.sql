/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t156`;
CREATE DATABASE IF NOT EXISTS `t156` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t156`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/xiangqinwangzhan/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/xiangqinwangzhan/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/xiangqinwangzhan/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-02-23 08:19:30'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-02-23 08:19:30'),
	(3, 'xiangqin_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-02-23 08:19:30'),
	(4, 'hunligongsi_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-02-23 08:19:30'),
	(5, 'jiehunanli_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-02-23 08:19:30');

DROP TABLE IF EXISTS `hunligongsi`;
CREATE TABLE IF NOT EXISTS `hunligongsi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `hunligongsi_name` varchar(200) DEFAULT NULL COMMENT '婚礼公司名称  Search111 ',
  `hunligongsi_photo` varchar(200) DEFAULT NULL COMMENT '婚礼公司照片',
  `hunligongsi_address` varchar(200) DEFAULT NULL COMMENT '公司位置',
  `hunligongsi_guimo` varchar(200) DEFAULT NULL COMMENT '公司规模',
  `hunligongsi_zijin` varchar(200) DEFAULT NULL COMMENT '注册资金',
  `hunligongsi_content` text COMMENT '公司介绍 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='婚礼公司';

DELETE FROM `hunligongsi`;
INSERT INTO `hunligongsi` (`id`, `hunligongsi_name`, `hunligongsi_photo`, `hunligongsi_address`, `hunligongsi_guimo`, `hunligongsi_zijin`, `hunligongsi_content`, `create_time`) VALUES
	(1, '婚礼公司名称1', 'http://localhost:8080/xiangqinwangzhan/upload/yonghu1.jpg', '公司位置1', '公司规模1', '注册资金1', '公司介绍1', '2022-02-23 08:19:35'),
	(2, '婚礼公司名称2', 'http://localhost:8080/xiangqinwangzhan/upload/yonghu1.jpg', '公司位置2', '公司规模2', '注册资金2', '公司介绍2', '2022-02-23 08:19:35'),
	(3, '婚礼公司名称3', 'http://localhost:8080/xiangqinwangzhan/upload/yonghu1.jpg', '公司位置3', '公司规模3', '注册资金3', '公司介绍3', '2022-02-23 08:19:35'),
	(4, '婚礼公司名称4', 'http://localhost:8080/xiangqinwangzhan/upload/yonghu1.jpg', '公司位置4', '公司规模4', '注册资金4', '公司介绍4', '2022-02-23 08:19:35'),
	(5, '婚礼公司名称5', 'http://localhost:8080/xiangqinwangzhan/upload/yonghu1.jpg', '公司位置5', '公司规模5', '注册资金5', '公司介绍5', '2022-02-23 08:19:35');

DROP TABLE IF EXISTS `hunligongsi_collection`;
CREATE TABLE IF NOT EXISTS `hunligongsi_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `hunligongsi_id` int DEFAULT NULL COMMENT '婚礼公司',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `hunligongsi_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='婚礼公司收藏';

DELETE FROM `hunligongsi_collection`;
INSERT INTO `hunligongsi_collection` (`id`, `hunligongsi_id`, `yonghu_id`, `hunligongsi_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2022-02-23 08:19:35', '2022-02-23 08:19:35'),
	(2, 2, 1, 1, '2022-02-23 08:19:35', '2022-02-23 08:19:35'),
	(3, 3, 3, 1, '2022-02-23 08:19:35', '2022-02-23 08:19:35'),
	(4, 4, 3, 1, '2022-02-23 08:19:35', '2022-02-23 08:19:35'),
	(5, 5, 1, 1, '2022-02-23 08:19:35', '2022-02-23 08:19:35'),
	(6, 4, 1, 1, '2024-04-27 14:06:01', '2024-04-27 14:06:01');

DROP TABLE IF EXISTS `hunligongsi_order`;
CREATE TABLE IF NOT EXISTS `hunligongsi_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `hunligongsi_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '预约唯一编号 Search111 ',
  `hunligongsi_id` int DEFAULT NULL COMMENT '婚礼公司',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='婚礼公司预约';

DELETE FROM `hunligongsi_order`;
INSERT INTO `hunligongsi_order` (`id`, `hunligongsi_order_uuid_number`, `hunligongsi_id`, `yonghu_id`, `yuyue_time`, `insert_time`, `create_time`) VALUES
	(1, '1645605014964', 4, 1, '2022-02-23 16:00:00', '2022-02-23 08:30:19', '2022-02-23 08:30:19'),
	(2, '1645605029435', 3, 1, '2022-02-25 16:00:00', '2022-02-23 08:30:33', '2022-02-23 08:30:33');

DROP TABLE IF EXISTS `jiehunanli`;
CREATE TABLE IF NOT EXISTS `jiehunanli` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `hunligongsi_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '结婚案例编号 Search111 ',
  `jiehunanli_name` varchar(200) DEFAULT NULL COMMENT '结婚案例名称  Search111 ',
  `jiehunanli_photo` varchar(200) DEFAULT NULL COMMENT '结婚案例照片',
  `jiehunanli_content` text COMMENT '结婚案例详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='结婚案例';

DELETE FROM `jiehunanli`;
INSERT INTO `jiehunanli` (`id`, `hunligongsi_order_uuid_number`, `jiehunanli_name`, `jiehunanli_photo`, `jiehunanli_content`, `insert_time`, `create_time`) VALUES
	(1, '结婚案例编号1', '结婚案例名称1', 'http://localhost:8080/xiangqinwangzhan/upload/yonghu1.jpg', '结婚案例详情1', '2022-02-23 08:19:35', '2022-02-23 08:19:35'),
	(2, '结婚案例编号2', '结婚案例名称2', 'http://localhost:8080/xiangqinwangzhan/upload/yonghu1.jpg', '结婚案例详情2', '2022-02-23 08:19:35', '2022-02-23 08:19:35'),
	(3, '结婚案例编号3', '结婚案例名称3', 'http://localhost:8080/xiangqinwangzhan/upload/yonghu1.jpg', '结婚案例详情3', '2022-02-23 08:19:35', '2022-02-23 08:19:35'),
	(4, '结婚案例编号4', '结婚案例名称4', 'http://localhost:8080/xiangqinwangzhan/upload/yonghu1.jpg', '结婚案例详情4', '2022-02-23 08:19:35', '2022-02-23 08:19:35'),
	(5, '结婚案例编号5', '结婚案例名称5', 'http://localhost:8080/xiangqinwangzhan/upload/yonghu1.jpg', '结婚案例详情5', '2022-02-23 08:19:35', '2022-02-23 08:19:35');

DROP TABLE IF EXISTS `jiehunanli_collection`;
CREATE TABLE IF NOT EXISTS `jiehunanli_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiehunanli_id` int DEFAULT NULL COMMENT '结婚案例',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jiehunanli_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='结婚案例收藏';

DELETE FROM `jiehunanli_collection`;
INSERT INTO `jiehunanli_collection` (`id`, `jiehunanli_id`, `yonghu_id`, `jiehunanli_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2022-02-23 08:19:35', '2022-02-23 08:19:35'),
	(2, 2, 3, 1, '2022-02-23 08:19:35', '2022-02-23 08:19:35'),
	(3, 3, 3, 1, '2022-02-23 08:19:35', '2022-02-23 08:19:35'),
	(4, 4, 3, 1, '2022-02-23 08:19:35', '2022-02-23 08:19:35'),
	(5, 5, 1, 1, '2022-02-23 08:19:35', '2022-02-23 08:19:35'),
	(6, 3, 1, 1, '2022-02-23 08:30:43', '2022-02-23 08:30:43');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', 'bmp2hcgx8mhk7uh7z9mgy7qm4b0sui66', '2022-02-23 07:27:05', '2024-04-27 15:04:21'),
	(2, 1, 'a1', 'yonghu', '用户', '8wnheofa1xjo56q9hemxp89hiyacrrqi', '2022-02-23 07:46:13', '2024-04-27 15:05:49'),
	(3, 2, 'a2', 'yonghu', '用户', '1u2q4xpgqc5gg7w83cxgpam4fchsocte', '2022-02-23 08:17:06', '2022-02-23 09:27:17');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2021-04-27 06:51:13');

DROP TABLE IF EXISTS `xiangqin`;
CREATE TABLE IF NOT EXISTS `xiangqin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `xiangqin_name` varchar(200) DEFAULT NULL COMMENT '姓名 Search111 ',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `xiangqin_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `shuxiang` varchar(200) DEFAULT NULL COMMENT '属相',
  `youwuzinv` varchar(200) DEFAULT NULL COMMENT '有无子女',
  `xuexing` varchar(200) DEFAULT NULL COMMENT '血型',
  `tizhong` int DEFAULT NULL COMMENT '体重(kg)',
  `zhiye` varchar(200) DEFAULT NULL COMMENT '职业',
  `gongsixingzhi` varchar(200) DEFAULT NULL COMMENT '公司性质',
  `yuexin` varchar(200) DEFAULT NULL COMMENT '月薪',
  `geren_content` text COMMENT '个人介绍 ',
  `gongzuo_content` text COMMENT '工作情况 ',
  `jiating_content` text COMMENT '家庭情况 ',
  `zeou_content` text COMMENT '择偶意向 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='相亲';

DELETE FROM `xiangqin`;
INSERT INTO `xiangqin` (`id`, `yonghu_id`, `xiangqin_name`, `sex_types`, `xiangqin_photo`, `shuxiang`, `youwuzinv`, `xuexing`, `tizhong`, `zhiye`, `gongsixingzhi`, `yuexin`, `geren_content`, `gongzuo_content`, `jiating_content`, `zeou_content`, `insert_time`, `create_time`) VALUES
	(1, 3, '姓名1', 2, 'http://localhost:8080/xiangqinwangzhan/upload/xiangqin1.jpg', '属相1', '有无子女1', '血型1', 296, '职业1', '公司性质1', '月薪1', '个人介绍1', '工作情况1', '家庭情况1', '择偶意向1', '2022-02-23 08:19:35', '2022-02-23 08:19:35'),
	(2, 1, '姓名2', 2, 'http://localhost:8080/xiangqinwangzhan/upload/xiangqin2.jpg', '属相2', '有无子女2', '血型2', 78, '职业2', '公司性质2', '月薪2', '个人介绍2', '工作情况2', '家庭情况2', '择偶意向2', '2022-02-23 08:19:35', '2022-02-23 08:19:35'),
	(3, 1, '姓名3', 2, 'http://localhost:8080/xiangqinwangzhan/upload/xiangqin3.jpg', '属相3', '有无子女3', '血型3', 419, '职业3', '公司性质3', '月薪3', '个人介绍3', '工作情况3', '家庭情况3', '择偶意向3', '2022-02-23 08:19:35', '2022-02-23 08:19:35'),
	(4, 3, '姓名4', 1, 'http://localhost:8080/xiangqinwangzhan/upload/xiangqin4.jpg', '属相4', '有无子女4', '血型4', 28, '职业4', '公司性质4', '月薪4', '个人介绍4', '工作情况4', '家庭情况4', '择偶意向4', '2022-02-23 08:19:35', '2022-02-23 08:19:35'),
	(5, 3, '姓名5', 1, 'http://localhost:8080/xiangqinwangzhan/upload/xiangqin5.jpg', '属相5', '有无子女5', '血型5', 467, '职业5', '公司性质5', '月薪5', '个人介绍5', '工作情况5', '家庭情况5', '择偶意向5', '2022-02-23 08:19:35', '2022-02-23 08:19:35');

DROP TABLE IF EXISTS `xiangqin_collection`;
CREATE TABLE IF NOT EXISTS `xiangqin_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiangqin_id` int DEFAULT NULL COMMENT '相亲',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `xiangqin_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='相亲收藏';

DELETE FROM `xiangqin_collection`;
INSERT INTO `xiangqin_collection` (`id`, `xiangqin_id`, `yonghu_id`, `xiangqin_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, 1, '2022-02-23 08:19:35', '2022-02-23 08:19:35'),
	(2, 2, 3, 1, '2022-02-23 08:19:35', '2022-02-23 08:19:35'),
	(3, 3, 3, 1, '2022-02-23 08:19:35', '2022-02-23 08:19:35'),
	(4, 4, 1, 1, '2022-02-23 08:19:35', '2022-02-23 08:19:35'),
	(5, 5, 2, 1, '2022-02-23 08:19:35', '2022-02-23 08:19:35');

DROP TABLE IF EXISTS `xiangqin_liuyan`;
CREATE TABLE IF NOT EXISTS `xiangqin_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiangqin_id` int DEFAULT NULL COMMENT '相亲',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `xiangqin_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='相亲留言';

DELETE FROM `xiangqin_liuyan`;
INSERT INTO `xiangqin_liuyan` (`id`, `xiangqin_id`, `yonghu_id`, `xiangqin_liuyan_text`, `reply_text`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '留言内容1', '回复信息1', '2022-02-23 08:19:35', '2022-02-23 08:19:35', '2022-02-23 08:19:35'),
	(2, 2, 2, '留言内容2', '回复信息2', '2022-02-23 08:19:35', '2022-02-23 08:19:35', '2022-02-23 08:19:35'),
	(3, 3, 3, '留言内容3', '回复信息3', '2022-02-23 08:19:35', '2022-02-23 08:19:35', '2022-02-23 08:19:35'),
	(4, 4, 2, '留言内容4', '回复信息4', '2022-02-23 08:19:35', '2022-02-23 08:19:35', '2022-02-23 08:19:35'),
	(5, 5, 3, '留言内容5', '回复信息5', '2022-02-23 08:19:35', '2022-02-23 08:19:35', '2022-02-23 08:19:35'),
	(6, 3, 2, '嗯嗯', NULL, '2022-02-23 08:24:03', NULL, '2022-02-23 08:24:03'),
	(7, 3, 2, 'www', NULL, '2022-02-23 08:26:51', NULL, '2022-02-23 08:26:51'),
	(8, 4, 1, '你好  可以留下手机号么', NULL, '2022-02-23 08:31:18', NULL, '2022-02-23 08:31:18');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/xiangqinwangzhan/upload/yonghu1.jpg', '2022-02-23 08:19:35'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/xiangqinwangzhan/upload/yonghu2.jpg', '2022-02-23 08:19:35'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/xiangqinwangzhan/upload/yonghu3.jpg', '2022-02-23 08:19:35');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
