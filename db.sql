/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - qingniangongyufuwupingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`qingniangongyufuwupingtai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `qingniangongyufuwupingtai`;

/*Table structure for table `boke` */

DROP TABLE IF EXISTS `boke`;

CREATE TABLE `boke` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `boke_name` varchar(200) DEFAULT NULL COMMENT '博客名称  Search111 ',
  `boke_uuid_number` varchar(200) DEFAULT NULL COMMENT '博客编号  Search111 ',
  `boke_photo` varchar(200) DEFAULT NULL COMMENT '博客照片',
  `boke_types` int(11) DEFAULT NULL COMMENT '博客类型 Search111',
  `boke_clicknum` int(11) DEFAULT NULL COMMENT '博客热度 ',
  `boke_content` text COMMENT '博客内容',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `boke_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='博客';

/*Data for the table `boke` */

insert  into `boke`(`id`,`yonghu_id`,`boke_name`,`boke_uuid_number`,`boke_photo`,`boke_types`,`boke_clicknum`,`boke_content`,`shangxia_types`,`boke_delete`,`create_time`) values (1,1,'博客名称1','165002281766820','http://localhost:8080/qingniangongyufuwupingtai/upload/boke1.jpg',1,226,'博客内容1',1,1,'2022-04-15 19:40:17'),(2,1,'博客名称2','16500228176683','http://localhost:8080/qingniangongyufuwupingtai/upload/boke2.jpg',3,438,'博客内容2',1,1,'2022-04-15 19:40:17'),(3,2,'博客名称3','16500228176680','http://localhost:8080/qingniangongyufuwupingtai/upload/boke3.jpg',3,370,'博客内容3',1,1,'2022-04-15 19:40:17'),(4,2,'博客名称4','165002281766812','http://localhost:8080/qingniangongyufuwupingtai/upload/boke4.jpg',3,148,'博客内容4',1,1,'2022-04-15 19:40:17'),(5,3,'博客名称5','16500228176683','http://localhost:8080/qingniangongyufuwupingtai/upload/boke5.jpg',4,146,'博客内容5',1,1,'2022-04-15 19:40:17'),(6,1,'博客222','1650026141047','http://localhost:8080/qingniangongyufuwupingtai/upload/1650026151241.jpg',3,1,'<p>是个很纠结</p>',2,1,'2022-04-15 20:35:54');

/*Table structure for table `boke_collection` */

DROP TABLE IF EXISTS `boke_collection`;

CREATE TABLE `boke_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `boke_id` int(11) DEFAULT NULL COMMENT '博客',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `boke_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='博客收藏';

/*Data for the table `boke_collection` */

insert  into `boke_collection`(`id`,`boke_id`,`yonghu_id`,`boke_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2022-04-15 19:40:17','2022-04-15 19:40:17'),(2,2,2,1,'2022-04-15 19:40:17','2022-04-15 19:40:17'),(3,3,2,1,'2022-04-15 19:40:17','2022-04-15 19:40:17'),(4,4,2,1,'2022-04-15 19:40:17','2022-04-15 19:40:17'),(5,5,2,1,'2022-04-15 19:40:17','2022-04-15 19:40:17'),(6,4,1,1,'2022-04-15 20:32:27','2022-04-15 20:32:27');

/*Table structure for table `boke_liuyan` */

DROP TABLE IF EXISTS `boke_liuyan`;

CREATE TABLE `boke_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `boke_id` int(11) DEFAULT NULL COMMENT '博客',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `boke_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='博客留言';

/*Data for the table `boke_liuyan` */

insert  into `boke_liuyan`(`id`,`boke_id`,`yonghu_id`,`boke_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2022-04-15 19:40:17','回复信息1','2022-04-15 19:40:17','2022-04-15 19:40:17'),(2,2,2,'留言内容2','2022-04-15 19:40:17','回复信息222','2022-04-15 20:36:01','2022-04-15 19:40:17'),(3,3,1,'留言内容3','2022-04-15 19:40:17','回复信息3','2022-04-15 19:40:17','2022-04-15 19:40:17'),(4,4,3,'留言内容4','2022-04-15 19:40:17','回复信息4','2022-04-15 19:40:17','2022-04-15 19:40:17'),(5,5,1,'留言内容5','2022-04-15 19:40:17','回复信息5','2022-04-15 19:40:17','2022-04-15 19:40:17'),(6,4,1,'ssss','2022-04-15 19:49:35',NULL,NULL,'2022-04-15 19:49:35');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/qingniangongyufuwupingtai/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/qingniangongyufuwupingtai/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/qingniangongyufuwupingtai/upload/config3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-04-15 19:40:03'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-04-15 19:40:03'),(3,'yonghu_shiyong_types','账户状态',1,'启用',NULL,NULL,'2022-04-15 19:40:03'),(4,'yonghu_shiyong_types','账户状态',2,'禁用',NULL,NULL,'2022-04-15 19:40:03'),(5,'shangjia_xingji_types','商家信用类型',1,'一级',NULL,NULL,'2022-04-15 19:40:03'),(6,'shangjia_xingji_types','商家信用类型',2,'二级',NULL,NULL,'2022-04-15 19:40:03'),(7,'shangjia_xingji_types','商家信用类型',3,'三级',NULL,NULL,'2022-04-15 19:40:03'),(8,'shangjia_shiyong_types','账户状态',1,'启用',NULL,NULL,'2022-04-15 19:40:03'),(9,'shangjia_shiyong_types','账户状态',2,'禁用',NULL,NULL,'2022-04-15 19:40:03'),(10,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-04-15 19:40:03'),(11,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-04-15 19:40:03'),(12,'fangwu_chaoxiang_types','房屋朝向',1,'东',NULL,NULL,'2022-04-15 19:40:03'),(13,'fangwu_chaoxiang_types','房屋朝向',2,'西',NULL,NULL,'2022-04-15 19:40:03'),(14,'fangwu_chaoxiang_types','房屋朝向',3,'南',NULL,NULL,'2022-04-15 19:40:03'),(15,'fangwu_chaoxiang_types','房屋朝向',4,'北',NULL,NULL,'2022-04-15 19:40:03'),(16,'fangwu_types','房屋类型',1,'房屋类型1',NULL,NULL,'2022-04-15 19:40:03'),(17,'fangwu_types','房屋类型',2,'房屋类型2',NULL,NULL,'2022-04-15 19:40:03'),(18,'fangwu_types','房屋类型',3,'房屋类型3',NULL,NULL,'2022-04-15 19:40:03'),(19,'fangwu_types','房屋类型',4,'房屋类型4',NULL,NULL,'2022-04-15 19:40:03'),(20,'fangwu_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-04-15 19:40:03'),(21,'fangwu_order_yesno_types','预约状态',1,'待审核',NULL,NULL,'2022-04-15 19:40:03'),(22,'fangwu_order_yesno_types','预约状态',2,'同意',NULL,NULL,'2022-04-15 19:40:03'),(23,'fangwu_order_yesno_types','预约状态',3,'拒绝',NULL,NULL,'2022-04-15 19:40:03'),(24,'boke_types','博客类型',1,'博客类型1',NULL,NULL,'2022-04-15 19:40:03'),(25,'boke_types','博客类型',2,'博客类型2',NULL,NULL,'2022-04-15 19:40:03'),(26,'boke_types','博客类型',3,'博客类型3',NULL,NULL,'2022-04-15 19:40:03'),(27,'boke_types','博客类型',4,'博客类型4',NULL,NULL,'2022-04-15 19:40:04'),(28,'boke_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-04-15 19:40:04'),(29,'fangwu_tousu_chuli_types','是否处理',1,'未处理',NULL,NULL,'2022-04-15 19:40:04'),(30,'fangwu_tousu_chuli_types','是否处理',2,'已处理',NULL,NULL,'2022-04-15 19:40:04'),(31,'fangwu_tousu_types','房屋投诉类型',1,'房屋投诉类型1',NULL,NULL,'2022-04-15 19:40:04'),(32,'fangwu_tousu_types','房屋投诉类型',2,'房屋投诉类型2',NULL,NULL,'2022-04-15 19:40:04'),(33,'fangwu_tousu_types','房屋投诉类型',3,'房屋投诉类型3',NULL,NULL,'2022-04-15 19:40:04'),(34,'fangwu_tousu_types','房屋投诉类型',4,'房屋投诉类型4',NULL,NULL,'2022-04-15 19:40:04'),(35,'fangwu_tousu_types','房屋投诉类型',5,'房屋投诉类型5',NULL,'','2022-04-15 20:33:02');

/*Table structure for table `fangwu` */

DROP TABLE IF EXISTS `fangwu`;

CREATE TABLE `fangwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `fangwu_name` varchar(200) DEFAULT NULL COMMENT '房屋名称  Search111 ',
  `fangwu_uuid_number` varchar(200) DEFAULT NULL COMMENT '房屋编号  Search111 ',
  `fangwu_photo` varchar(200) DEFAULT NULL COMMENT '房屋照片',
  `fangwu_xiaoqu` varchar(200) DEFAULT NULL COMMENT '所在小区',
  `fangwu_address` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `fangwu_types` int(11) DEFAULT NULL COMMENT '房屋类型 Search111',
  `fangwu_chaoxiang_types` int(11) DEFAULT NULL COMMENT '房屋朝向 Search111',
  `fangwu_pingmi` varchar(200) DEFAULT NULL COMMENT '平米',
  `fangwu_old_money` decimal(10,2) DEFAULT NULL COMMENT '房屋原价 ',
  `fangwu_new_money` decimal(10,2) DEFAULT NULL COMMENT '房屋现价/月',
  `fangwu_clicknum` int(11) DEFAULT NULL COMMENT '房屋热度 ',
  `fangwu_content` text COMMENT '房屋详细介绍',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `fangwu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='房屋';

/*Data for the table `fangwu` */

insert  into `fangwu`(`id`,`shangjia_id`,`fangwu_name`,`fangwu_uuid_number`,`fangwu_photo`,`fangwu_xiaoqu`,`fangwu_address`,`fangwu_types`,`fangwu_chaoxiang_types`,`fangwu_pingmi`,`fangwu_old_money`,`fangwu_new_money`,`fangwu_clicknum`,`fangwu_content`,`shangxia_types`,`fangwu_delete`,`create_time`) values (1,2,'房屋名称1','16500228176744','http://localhost:8080/qingniangongyufuwupingtai/upload/fangwu1.jpg','所在小区1','详细地址1',4,2,'平米1','539.71','140.95',134,'房屋详细介绍1',1,1,'2022-04-15 19:40:17'),(2,3,'房屋名称2','165002281767516','http://localhost:8080/qingniangongyufuwupingtai/upload/fangwu2.jpg','所在小区2','详细地址2',4,1,'平米2','812.76','304.75',144,'房屋详细介绍2',1,1,'2022-04-15 19:40:17'),(3,1,'房屋名称3','16500228176758','http://localhost:8080/qingniangongyufuwupingtai/upload/fangwu3.jpg','所在小区3','详细地址3',4,2,'平米3','579.23','383.15',170,'房屋详细介绍3',1,1,'2022-04-15 19:40:17'),(4,3,'房屋名称4','165002281767518','http://localhost:8080/qingniangongyufuwupingtai/upload/fangwu4.jpg','所在小区4','详细地址4',1,3,'平米4','878.72','449.74',505,'房屋详细介绍4',1,1,'2022-04-15 19:40:17'),(5,3,'房屋名称5','16500228176751','http://localhost:8080/qingniangongyufuwupingtai/upload/fangwu5.jpg','所在小区5','详细地址5',4,1,'平米5','890.94','269.88',13,'房屋详细介绍5',1,1,'2022-04-15 19:40:17');

/*Table structure for table `fangwu_collection` */

DROP TABLE IF EXISTS `fangwu_collection`;

CREATE TABLE `fangwu_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangwu_id` int(11) DEFAULT NULL COMMENT '房屋',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fangwu_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='房屋收藏';

/*Data for the table `fangwu_collection` */

insert  into `fangwu_collection`(`id`,`fangwu_id`,`yonghu_id`,`fangwu_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2022-04-15 19:40:17','2022-04-15 19:40:17'),(3,3,1,1,'2022-04-15 19:40:17','2022-04-15 19:40:17'),(4,4,1,1,'2022-04-15 19:40:17','2022-04-15 19:40:17'),(5,5,1,1,'2022-04-15 19:40:17','2022-04-15 19:40:17'),(6,2,1,1,'2022-04-15 20:32:21','2022-04-15 20:32:21');

/*Table structure for table `fangwu_liuyan` */

DROP TABLE IF EXISTS `fangwu_liuyan`;

CREATE TABLE `fangwu_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangwu_id` int(11) DEFAULT NULL COMMENT '房屋',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fangwu_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='房屋留言';

/*Data for the table `fangwu_liuyan` */

insert  into `fangwu_liuyan`(`id`,`fangwu_id`,`yonghu_id`,`fangwu_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2022-04-15 19:40:17','回复信息1','2022-04-15 19:40:17','2022-04-15 19:40:17'),(2,2,3,'留言内容2','2022-04-15 19:40:17','回复信息2','2022-04-15 19:40:17','2022-04-15 19:40:17'),(3,3,1,'留言内容3','2022-04-15 19:40:17','回复信息3','2022-04-15 19:40:17','2022-04-15 19:40:17'),(4,4,3,'留言内容4','2022-04-15 19:40:17','回复信息4','2022-04-15 19:40:17','2022-04-15 19:40:17'),(5,5,2,'留言内容5','2022-04-15 19:40:17','回复信息5','2022-04-15 19:40:17','2022-04-15 19:40:17'),(6,3,1,'ssssss','2022-04-15 20:34:44','少时诵诗书军军','2022-04-15 20:34:58','2022-04-15 20:34:44');

/*Table structure for table `fangwu_order` */

DROP TABLE IF EXISTS `fangwu_order`;

CREATE TABLE `fangwu_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangwu_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '看房编号 Search111 ',
  `fangwu_id` int(11) DEFAULT NULL COMMENT '房屋',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `yuyue_time` timestamp NULL DEFAULT NULL COMMENT '申请看房时间',
  `fangwu_order_yesno_types` int(11) DEFAULT NULL COMMENT '预约状态 Search111 ',
  `fangwu_order_yesno_text` text COMMENT '审核意见',
  `fangwu_order_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='预约看房';

/*Data for the table `fangwu_order` */

insert  into `fangwu_order`(`id`,`fangwu_order_uuid_number`,`fangwu_id`,`yonghu_id`,`insert_time`,`yuyue_time`,`fangwu_order_yesno_types`,`fangwu_order_yesno_text`,`fangwu_order_shenhe_time`,`create_time`) values (1,'1650023291440',4,1,'2022-04-15 19:48:11','2022-04-16 00:00:00',1,NULL,NULL,'2022-04-15 19:48:11'),(2,'1650025909620',3,1,'2022-04-15 20:31:50','2022-04-23 00:00:00',2,'来吧 当天有时间','2022-04-15 20:35:11','2022-04-15 20:31:50');

/*Table structure for table `fangwu_tousu` */

DROP TABLE IF EXISTS `fangwu_tousu`;

CREATE TABLE `fangwu_tousu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `fangwu_id` int(11) DEFAULT NULL COMMENT '房屋',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fangwu_tousu_uuid_number` varchar(200) DEFAULT NULL COMMENT '房屋投诉编号  Search111 ',
  `fangwu_tousu_name` varchar(200) DEFAULT NULL COMMENT '投诉标题  Search111 ',
  `fangwu_tousu_types` int(11) DEFAULT NULL COMMENT '投诉类型 Search111',
  `fangwu_tousu_content` text COMMENT '投诉详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '投诉时间',
  `fangwu_tousu_chuli_types` int(11) DEFAULT NULL COMMENT '是否处理  Search111 ',
  `fangwu_tousu_chuli_content` text COMMENT '处理结果',
  `fangwu_tousu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='房屋投诉';

/*Data for the table `fangwu_tousu` */

insert  into `fangwu_tousu`(`id`,`fangwu_id`,`yonghu_id`,`fangwu_tousu_uuid_number`,`fangwu_tousu_name`,`fangwu_tousu_types`,`fangwu_tousu_content`,`insert_time`,`fangwu_tousu_chuli_types`,`fangwu_tousu_chuli_content`,`fangwu_tousu_delete`,`create_time`) values (1,1,3,'165002281768217','投诉标题1',4,'投诉详情1','2022-04-15 19:40:17',1,'处理结果1',1,'2022-04-15 19:40:17'),(2,2,2,'16500228176825','投诉标题2',1,'投诉详情2','2022-04-15 19:40:17',1,'处理结果2',1,'2022-04-15 19:40:17'),(3,3,1,'165002281768211','投诉标题3',4,'投诉详情3','2022-04-15 19:40:17',1,'处理结果3',1,'2022-04-15 19:40:17'),(4,4,2,'165002281768213','投诉标题4',1,'投诉详情4','2022-04-15 19:40:17',2,'处理结果4',1,'2022-04-15 19:40:17'),(5,5,1,'165002281768210','投诉标题5',4,'投诉详情5','2022-04-15 19:40:17',1,'处理结果5',1,'2022-04-15 19:40:17'),(8,4,1,'1650024684210','标题111',3,'师父父高公公','2022-04-15 20:11:32',1,NULL,1,'2022-04-15 20:11:32'),(9,4,1,'1650025919029','标题112',4,'<p>呢ring12113213213</p>','2022-04-15 20:32:07',2,'<p>该发布房屋的账户已被封禁,无法启用,直至整改完成</p>',1,'2022-04-15 20:32:07');

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `shangjia_name` varchar(200) DEFAULT NULL COMMENT '商家名称 Search111 ',
  `shangjia_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangjia_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shangjia_photo` varchar(200) DEFAULT NULL COMMENT '商家照片 ',
  `shangjia_xingji_types` int(11) DEFAULT NULL COMMENT '商家信用类型',
  `shangjia_shiyong_types` int(11) DEFAULT NULL COMMENT '账户状态',
  `shangjia_content` text COMMENT '商家简介 ',
  `shangjia_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商家';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`username`,`password`,`shangjia_name`,`shangjia_phone`,`shangjia_email`,`shangjia_photo`,`shangjia_xingji_types`,`shangjia_shiyong_types`,`shangjia_content`,`shangjia_delete`,`create_time`) values (1,'a1','123456','商家名称1','17703786901','1@qq.com','http://localhost:8080/qingniangongyufuwupingtai/upload/shangjia1.jpg',1,1,'商家简介1',1,'2022-04-15 19:40:17'),(2,'a2','123456','商家名称2','17703786902','2@qq.com','http://localhost:8080/qingniangongyufuwupingtai/upload/shangjia2.jpg',3,2,'<p>商家简介2</p>',1,'2022-04-15 19:40:17'),(3,'a3','123456','商家名称3','17703786903','3@qq.com','http://localhost:8080/qingniangongyufuwupingtai/upload/shangjia3.jpg',2,1,'商家简介3',1,'2022-04-15 19:40:17');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','y67drepklrznlaytzg8znrevig8ux0ud','2022-04-15 19:43:11','2022-04-15 21:36:46'),(2,1,'a1','yonghu','用户','bjpu7puijdflx7n7eeoa0aitnzmbuhsa','2022-04-15 19:44:00','2022-04-15 21:35:33'),(3,1,'a1','shangjia','商家','yhxthm6f07a0vhbxbuhhot4m1nx5cpaf','2022-04-15 20:34:22','2022-04-15 21:35:25');

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
  `yonghu_shiyong_types` int(11) DEFAULT NULL COMMENT '账户状态',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_shiyong_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/qingniangongyufuwupingtai/upload/yonghu1.jpg',1,1,'1@qq.com','2022-04-15 19:40:17'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/qingniangongyufuwupingtai/upload/yonghu2.jpg',1,1,'2@qq.com','2022-04-15 19:40:17'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/qingniangongyufuwupingtai/upload/yonghu3.jpg',1,2,'3@qq.com','2022-04-15 19:40:17');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
