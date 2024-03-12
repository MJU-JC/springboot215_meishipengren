/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - meishipengrenhudong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`meishipengrenhudong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `meishipengrenhudong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/meishipengrenhudong/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/meishipengrenhudong/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/meishipengrenhudong/upload/config3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-31 21:55:43'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-31 21:55:43'),(3,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-03-31 21:55:43'),(4,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-03-31 21:55:43'),(5,'meishi_types','美食类型',1,'美食类型1',NULL,NULL,'2022-03-31 21:55:43'),(6,'meishi_types','美食类型',2,'美食类型2',NULL,NULL,'2022-03-31 21:55:43'),(7,'meishi_types','美食类型',3,'美食类型3',NULL,NULL,'2022-03-31 21:55:43'),(8,'meishi_types','美食类型',4,'美食类型4',NULL,NULL,'2022-03-31 21:55:43'),(9,'meishi_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-03-31 21:55:43'),(10,'meishi_collection_types','收藏表类型',2,'赞',NULL,NULL,'2022-03-31 21:55:43'),(11,'meishi_collection_types','收藏表类型',3,'踩',NULL,NULL,'2022-03-31 21:55:43'),(12,'meishizhishi_types','美食知识类型',1,'美食知识类型1',NULL,NULL,'2022-03-31 21:55:43'),(13,'meishizhishi_types','美食知识类型',2,'美食知识类型2',NULL,NULL,'2022-03-31 21:55:43'),(14,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-31 21:55:43'),(15,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-31 21:55:43'),(16,'meishizhishi_types','美食知识类型',3,'美食知识类型3',NULL,'','2022-04-01 09:50:39');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','http://localhost:8080/meishipengrenhudong/upload/gonggao1.jpg',1,'2022-03-31 21:57:02','公告详情1','2022-03-31 21:57:02'),(2,'公告名称2','http://localhost:8080/meishipengrenhudong/upload/gonggao2.jpg',1,'2022-03-31 21:57:02','公告详情2','2022-03-31 21:57:02'),(3,'公告名称3','http://localhost:8080/meishipengrenhudong/upload/gonggao3.jpg',2,'2022-03-31 21:57:02','公告详情3','2022-03-31 21:57:02'),(4,'公告名称4','http://localhost:8080/meishipengrenhudong/upload/gonggao4.jpg',1,'2022-03-31 21:57:02','公告详情4','2022-03-31 21:57:02'),(5,'公告名称5','http://localhost:8080/meishipengrenhudong/upload/gonggao5.jpg',2,'2022-03-31 21:57:02','公告详情5','2022-03-31 21:57:02');

/*Table structure for table `meishi` */

DROP TABLE IF EXISTS `meishi`;

CREATE TABLE `meishi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `meishi_uuid_number` varchar(200) DEFAULT NULL COMMENT '美食编号  Search111 ',
  `meishi_name` varchar(200) DEFAULT NULL COMMENT '美食名称  Search111 ',
  `meishi_photo` varchar(200) DEFAULT NULL COMMENT '美食照片',
  `meishi_video` varchar(200) DEFAULT NULL COMMENT '美食做法',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `meishi_types` int(11) DEFAULT NULL COMMENT '美食类型 Search111',
  `meishi_clicknum` int(11) DEFAULT NULL COMMENT '游览量 ',
  `meishi_shicai_text` text COMMENT '相关食材',
  `meishi_content` text COMMENT '美食详情',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `meishi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='美食';

/*Data for the table `meishi` */

insert  into `meishi`(`id`,`yonghu_id`,`meishi_uuid_number`,`meishi_name`,`meishi_photo`,`meishi_video`,`zan_number`,`cai_number`,`meishi_types`,`meishi_clicknum`,`meishi_shicai_text`,`meishi_content`,`shangxia_types`,`meishi_delete`,`create_time`) values (1,3,'164873502244420','美食名称1','http://localhost:8080/meishipengrenhudong/upload/meishi1.jpg','http://localhost:8080/meishipengrenhudong/upload/video.mp4',103,417,1,140,'相关食材1','美食详情1',1,1,'2022-03-31 21:57:02'),(2,3,'164873502244519','美食名称2','http://localhost:8080/meishipengrenhudong/upload/meishi2.jpg','http://localhost:8080/meishipengrenhudong/upload/video.mp4',149,140,2,127,'相关食材2','美食详情2',1,1,'2022-03-31 21:57:02'),(3,3,'164873502244512','美食名称3','http://localhost:8080/meishipengrenhudong/upload/meishi3.jpg','http://localhost:8080/meishipengrenhudong/upload/video.mp4',472,118,3,477,'相关食材3','美食详情3',1,1,'2022-03-31 21:57:02'),(4,3,'164873502244510','美食名称4','http://localhost:8080/meishipengrenhudong/upload/meishi4.jpg','http://localhost:8080/meishipengrenhudong/upload/video.mp4',17,100,3,411,'相关食材4','美食详情4',1,1,'2022-03-31 21:57:02'),(5,2,'16487350224453','美食名称5','http://localhost:8080/meishipengrenhudong/upload/meishi5.jpg','http://localhost:8080/meishipengrenhudong/upload/video.mp4',247,123,1,288,'相关食材51111','<p>美食详情5ssssg</p>',1,1,'2022-03-31 21:57:02');

/*Table structure for table `meishi_collection` */

DROP TABLE IF EXISTS `meishi_collection`;

CREATE TABLE `meishi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_id` int(11) DEFAULT NULL COMMENT '美食',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `meishi_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='美食收藏';

/*Data for the table `meishi_collection` */

insert  into `meishi_collection`(`id`,`meishi_id`,`yonghu_id`,`meishi_collection_types`,`insert_time`,`create_time`) values (2,2,2,1,'2022-03-31 21:57:02','2022-03-31 21:57:02'),(4,4,1,1,'2022-03-31 21:57:02','2022-03-31 21:57:02'),(5,5,3,1,'2022-03-31 21:57:02','2022-03-31 21:57:02'),(6,4,1,2,'2022-04-01 09:14:24','2022-04-01 09:14:24'),(7,3,3,2,'2022-04-01 09:39:33','2022-04-01 09:39:33'),(8,3,3,1,'2022-04-01 09:39:49','2022-04-01 09:39:49'),(9,1,3,2,'2022-04-01 09:49:53','2022-04-01 09:49:53'),(10,1,3,1,'2022-04-01 09:50:10','2022-04-01 09:50:10');

/*Table structure for table `meishi_liuyan` */

DROP TABLE IF EXISTS `meishi_liuyan`;

CREATE TABLE `meishi_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_id` int(11) DEFAULT NULL COMMENT '美食',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `meishi_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='美食留言';

/*Data for the table `meishi_liuyan` */

insert  into `meishi_liuyan`(`id`,`meishi_id`,`yonghu_id`,`meishi_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2022-03-31 21:57:02','回复信息1','2022-03-31 21:57:02','2022-03-31 21:57:02'),(2,2,3,'留言内容2','2022-03-31 21:57:02','回复信息2','2022-03-31 21:57:02','2022-03-31 21:57:02'),(3,3,3,'留言内容3','2022-03-31 21:57:02','回复信息3','2022-03-31 21:57:02','2022-03-31 21:57:02'),(4,4,3,'留言内容4','2022-03-31 21:57:02','回复信息4','2022-03-31 21:57:02','2022-03-31 21:57:02'),(5,5,3,'留言内容5','2022-03-31 21:57:02','回复信息5','2022-03-31 21:57:02','2022-03-31 21:57:02'),(6,3,3,'11111','2022-04-01 09:39:40',NULL,NULL,'2022-04-01 09:39:40'),(7,1,3,'3333333','2022-04-01 09:49:59',NULL,NULL,'2022-04-01 09:49:59'),(8,5,3,'232132131','2022-04-01 09:52:16','11111111111111111','2022-04-01 09:52:27','2022-04-01 09:52:16');

/*Table structure for table `meishizhishi` */

DROP TABLE IF EXISTS `meishizhishi`;

CREATE TABLE `meishizhishi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `meishizhishi_name` varchar(200) DEFAULT NULL COMMENT '美食知识名称 Search111  ',
  `meishizhishi_photo` varchar(200) DEFAULT NULL COMMENT '美食知识图片 ',
  `meishizhishi_types` int(11) NOT NULL COMMENT '美食知识类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '美食知识发布时间 ',
  `meishizhishi_content` text COMMENT '美食知识详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='美食知识';

/*Data for the table `meishizhishi` */

insert  into `meishizhishi`(`id`,`meishizhishi_name`,`meishizhishi_photo`,`meishizhishi_types`,`insert_time`,`meishizhishi_content`,`create_time`) values (1,'美食知识名称1','http://localhost:8080/meishipengrenhudong/upload/gonggao1.jpg',1,'2022-03-31 21:57:02','美食知识详情1','2022-03-31 21:57:02'),(2,'美食知识名称2','http://localhost:8080/meishipengrenhudong/upload/gonggao2.jpg',1,'2022-03-31 21:57:02','美食知识详情2','2022-03-31 21:57:02'),(3,'美食知识名称3','http://localhost:8080/meishipengrenhudong/upload/gonggao3.jpg',2,'2022-03-31 21:57:02','美食知识详情3','2022-03-31 21:57:02'),(4,'美食知识名称4','http://localhost:8080/meishipengrenhudong/upload/gonggao4.jpg',2,'2022-03-31 21:57:02','美食知识详情4','2022-03-31 21:57:02'),(5,'美食知识名称5','http://localhost:8080/meishipengrenhudong/upload/gonggao5.jpg',1,'2022-03-31 21:57:02','美食知识详情5','2022-03-31 21:57:02');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','m6htu7ees4g9dhaa2rdafmnr2cdrj8yn','2022-04-01 09:13:15','2022-04-01 11:01:22'),(2,1,'a1','yonghu','用户','x40qauohjg7gwzsql1dsftjd4gqezj7v','2022-04-01 09:14:21','2022-04-01 10:34:28'),(3,2,'a2','yonghu','用户','ofv11wwm8uar6zf4es96chddsnx1w8nh','2022-04-01 09:23:12','2022-04-01 10:51:11'),(4,3,'a3','yonghu','用户','3e5dvoye5eqhyg30rk5d59m70z1fhgho','2022-04-01 09:39:14','2022-04-01 10:49:31');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
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

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/meishipengrenhudong/upload/yonghu1.jpg',2,'1@qq.com','2022-03-31 21:57:02'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/meishipengrenhudong/upload/yonghu2.jpg',2,'2@qq.com','2022-03-31 21:57:02'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/meishipengrenhudong/upload/yonghu3.jpg',1,'3@qq.com','2022-03-31 21:57:02');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
