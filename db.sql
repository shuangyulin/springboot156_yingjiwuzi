/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - changguiyingji
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`changguiyingji` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `changguiyingji`;

/*Table structure for table `bumen` */

DROP TABLE IF EXISTS `bumen`;

CREATE TABLE `bumen` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `bumen_name` varchar(200) DEFAULT NULL COMMENT '部门名称  Search111 ',
  `bumen_zhize` varchar(200) DEFAULT NULL COMMENT '部门职责  Search111 ',
  `bumen_number` int(11) DEFAULT NULL COMMENT '部门人数',
  `bumen_content` text COMMENT '部门介绍',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='部门';

/*Data for the table `bumen` */

insert  into `bumen`(`id`,`bumen_name`,`bumen_zhize`,`bumen_number`,`bumen_content`,`insert_time`,`create_time`) values (1,'部门名称1','部门职责1',50,'部门介绍1','2022-02-24 11:54:09','2022-02-24 11:54:09'),(2,'部门名称2','部门职责2',296,'部门介绍2','2022-02-24 11:54:09','2022-02-24 11:54:09'),(3,'部门名称3','部门职责3',79,'部门介绍3','2022-02-24 11:54:09','2022-02-24 11:54:09'),(4,'部门名称4','部门职责4',412,'部门介绍4','2022-02-24 11:54:09','2022-02-24 11:54:09'),(5,'部门名称5','部门职责5',244,'部门介绍5','2022-02-24 11:54:09','2022-02-24 11:54:09');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `daka` */

DROP TABLE IF EXISTS `daka`;

CREATE TABLE `daka` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `daka_content` text COMMENT '打卡备注 ',
  `insert_time` date DEFAULT NULL COMMENT '打卡日期',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='健康打卡';

/*Data for the table `daka` */

insert  into `daka`(`id`,`yonghu_id`,`daka_content`,`insert_time`,`create_time`) values (1,1,'打卡备注1','2022-02-23','2022-02-23 11:54:09'),(2,3,'打卡备注2','2022-02-23','2022-02-23 11:54:09'),(3,2,'打卡备注3','2022-02-23','2022-02-23 11:54:09'),(6,1,'<p>2022年2月24日打卡</p>','2022-02-24','2022-02-24 13:20:06');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-02-24 11:54:01'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-02-24 11:54:01'),(3,'wuzi_types','物资类型',1,'物资类型1',NULL,NULL,'2022-02-24 11:54:01'),(4,'wuzi_types','物资类型',2,'物资类型2',NULL,NULL,'2022-02-24 11:54:01'),(5,'wuzi_types','物资类型',3,'物资类型3',NULL,NULL,'2022-02-24 11:54:01'),(6,'wuzi_types','物资类型',4,'物资类型4',NULL,NULL,'2022-02-24 11:54:01'),(7,'wuzishenqing_yesno_types','申请状态',1,'待审核',NULL,NULL,'2022-02-24 11:54:01'),(8,'wuzishenqing_yesno_types','申请状态',2,'同意',NULL,NULL,'2022-02-24 11:54:01'),(9,'wuzishenqing_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2022-02-24 11:54:01'),(10,'wuziyunshu_types','运输状态',1,'在装车',NULL,NULL,'2022-02-24 11:54:01'),(11,'wuziyunshu_types','运输状态',2,'已装车',NULL,NULL,'2022-02-24 11:54:01'),(12,'wuziyunshu_types','运输状态',3,'已发车',NULL,NULL,'2022-02-24 11:54:01'),(13,'wuziyunshu_types','运输状态',4,'已到达',NULL,NULL,'2022-02-24 11:54:01'),(14,'wuziyunshu_types','运输状态',5,'已卸载',NULL,NULL,'2022-02-24 11:54:01'),(15,'wuzi_types','物资类型',5,'物资类型5',NULL,'','2022-02-24 13:17:37');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','1ybnm1yxuut6j41243p4ifcvib0q6eon','2022-02-24 11:20:43','2022-02-24 14:26:49'),(2,4,'a4','yonghu','用户','su3zde2zwhnsqkt7l1jc91smahjd55jr','2022-02-24 11:48:32','2022-02-24 12:48:32'),(3,1,'a1','yonghu','用户','nsa6dswo15ageb8toib140q7z9p12cy8','2022-02-24 11:48:48','2022-02-24 14:19:46');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2021-04-27 14:51:13');

/*Table structure for table `wuzi` */

DROP TABLE IF EXISTS `wuzi`;

CREATE TABLE `wuzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `wuzi_name` varchar(200) DEFAULT NULL COMMENT '物资名称  Search111 ',
  `wuzi_photo` varchar(200) DEFAULT NULL COMMENT '物资照片',
  `wuzi_types` int(11) DEFAULT NULL COMMENT '物资类型 Search111',
  `wuzi_kucun_number` int(11) DEFAULT NULL COMMENT '物资库存',
  `wuzi_danwei` varchar(200) DEFAULT NULL COMMENT '单位',
  `wuzi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `wuzi_content` text COMMENT '物资介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='物资';

/*Data for the table `wuzi` */

insert  into `wuzi`(`id`,`wuzi_name`,`wuzi_photo`,`wuzi_types`,`wuzi_kucun_number`,`wuzi_danwei`,`wuzi_delete`,`wuzi_content`,`create_time`) values (1,'物资名称1','http://localhost:8080/changguiyingji/upload/wuzi1.jpg',1,10001,'个',1,'物资介绍1','2022-02-24 11:54:09'),(2,'物资名称2','http://localhost:8080/changguiyingji/upload/wuzi2.jpg',1,10002,'个',1,'物资介绍2','2022-02-24 11:54:09'),(3,'物资名称3','http://localhost:8080/changguiyingji/upload/wuzi3.jpg',2,10003,'个',1,'物资介绍3','2022-02-24 11:54:09'),(4,'物资名称4','http://localhost:8080/changguiyingji/upload/wuzi4.jpg',3,10004,'个',1,'物资介绍4','2022-02-24 11:54:09'),(5,'物资名称5','http://localhost:8080/changguiyingji/upload/wuzi5.jpg',4,10005,'个',1,'<p>物资介绍5</p>','2022-02-24 11:54:09');

/*Table structure for table `wuzishenqing` */

DROP TABLE IF EXISTS `wuzishenqing`;

CREATE TABLE `wuzishenqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wuzi_id` int(11) DEFAULT NULL COMMENT '物资',
  `wuzishenqing_number` int(11) DEFAULT NULL COMMENT '申请数量',
  `wuzishenqing_content` text COMMENT '申请详情 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `wuzishenqing_yesno_types` int(11) DEFAULT NULL COMMENT '审核  Search111 ',
  `wuzishenqing_yesno_text` text COMMENT '审核意见',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='物资申请';

/*Data for the table `wuzishenqing` */

insert  into `wuzishenqing`(`id`,`yonghu_id`,`wuzi_id`,`wuzishenqing_number`,`wuzishenqing_content`,`insert_time`,`wuzishenqing_yesno_types`,`wuzishenqing_yesno_text`,`create_time`) values (1,2,1,432,'申请详情1','2022-02-24 11:54:09',1,'','2022-02-24 11:54:09'),(2,3,2,353,'申请详情2','2022-02-24 11:54:09',1,'','2022-02-24 11:54:09'),(3,2,3,350,'申请详情3','2022-02-24 11:54:09',1,'','2022-02-24 11:54:09'),(4,1,4,355,'申请详情4','2022-02-24 11:54:09',1,'','2022-02-24 11:54:09'),(5,3,5,328,'申请详情5','2022-02-24 11:54:09',2,'','2022-02-24 11:54:09'),(6,1,3,10,'<p>用于看病</p>','2022-02-24 13:20:40',1,'','2022-02-24 13:20:40');

/*Table structure for table `wuziyunshu` */

DROP TABLE IF EXISTS `wuziyunshu`;

CREATE TABLE `wuziyunshu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wuzi_id` int(11) DEFAULT NULL COMMENT '物资',
  `wuziyunshu_uuid_number` varchar(200) DEFAULT NULL COMMENT '运输唯一编号 Search111 ',
  `wuziyunshu_quxiang` varchar(200) DEFAULT NULL COMMENT '去向 Search111 ',
  `wuziyunshu_number` int(11) DEFAULT NULL COMMENT '运输数量',
  `wuziyunshu_content` text COMMENT '运输详情',
  `wuziyunshu_types` int(11) DEFAULT NULL COMMENT '当前状态  Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '最后更新时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='物资运输';

/*Data for the table `wuziyunshu` */

insert  into `wuziyunshu`(`id`,`wuzi_id`,`wuziyunshu_uuid_number`,`wuziyunshu_quxiang`,`wuziyunshu_number`,`wuziyunshu_content`,`wuziyunshu_types`,`insert_time`,`update_time`,`create_time`) values (1,1,'164567484918819','去向1',95,'运输详情1',2,'2022-02-24 11:54:09','2022-02-24 11:54:09','2022-02-24 11:54:09'),(2,2,'164567484918812','去向2',268,'运输详情2',1,'2022-02-24 11:54:09','2022-02-24 11:54:09','2022-02-24 11:54:09'),(3,3,'164567484918816','去向3',352,'运输详情3',2,'2022-02-24 11:54:09','2022-02-24 11:54:09','2022-02-24 11:54:09'),(4,4,'16456748491887','去向4',443,'运输详情4',1,'2022-02-24 11:54:09','2022-02-24 11:54:09','2022-02-24 11:54:09'),(5,5,'164567484918812','去向5',469,'运输详情5',4,'2022-02-24 11:54:09','2022-02-24 11:54:09','2022-02-24 11:54:09'),(6,3,'1645679894659','发往北京目的地',10,'<p>无</p>',2,'2022-02-24 13:18:32','2022-02-24 13:18:41','2022-02-24 13:18:32');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `bumen_id` int(11) DEFAULT NULL COMMENT '部门',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`bumen_id`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456',1,'用户姓名1','17703786901','410224199610232001','http://localhost:8080/changguiyingji/upload/yonghu1.jpg',1,'1@qq.com','2022-02-24 11:54:09'),(2,'a2','123456',2,'用户姓名2','17703786902','410224199610232002','http://localhost:8080/changguiyingji/upload/yonghu2.jpg',2,'2@qq.com','2022-02-24 11:54:09'),(3,'a3','123456',3,'用户姓名3','17703786903','410224199610232003','http://localhost:8080/changguiyingji/upload/yonghu3.jpg',2,'3@qq.com','2022-02-24 11:54:09');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
