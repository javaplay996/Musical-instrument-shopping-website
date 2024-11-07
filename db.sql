/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - mushiyueqigouwu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mushiyueqigouwu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `mushiyueqigouwu`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-20 22:39:58',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-04-20 22:39:58',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-04-20 22:39:58',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-04-20 22:39:58',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-04-20 22:39:58',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-04-20 22:39:58',6,'宇宙银河系月球1号','月某','13823888886','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618909727080 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` int(20) NOT NULL COMMENT '用户id',
  `adminid` int(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614389470924 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1,'2020-12-24 11:46:45',1,NULL,'这里可以咨询  可以求救 后台管理员会回复',NULL,0),(2,'2021-02-20 14:11:24',6,NULL,'‍12312312\r\n','TERERTETR\r\n',0),(1614389470923,'2021-02-27 09:31:10',1,NULL,'‍在这边可以跟卖家咨询一些问题\r\n','1233231212\r\n',0);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/mushiyueqigouwu/upload/1618909093524.jpg'),(2,'picture2','http://localhost:8080/mushiyueqigouwu/upload/1618909099540.jpg'),(3,'picture3','http://localhost:8080/mushiyueqigouwu/upload/1618909108117.jpg');

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618916746782 DEFAULT CHARSET=utf8 COMMENT='商品评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (1618916746781,'2021-04-20 19:05:45',32,1,'123',NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (81,'2021-04-20 22:39:58','标题1','http://localhost:8080/mushiyueqigouwu/upload/1618908891300.jpg','<img src=\"http://localhost:8080/mushiyueqigouwu/upload/1618908891303.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/mushiyueqigouwu/upload/1618908891303.jpg\">内容1\r\n'),(82,'2021-04-20 22:39:58','标题2','http://localhost:8080/mushiyueqigouwu/upload/1618908896736.jpg','<img src=\"http://localhost:8080/mushiyueqigouwu/upload/1618908896736.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/mushiyueqigouwu/upload/1618908896736.jpg\">内容2\r\n'),(83,'2021-04-20 22:39:58','标题3','http://localhost:8080/mushiyueqigouwu/upload/1618908909271.jpg','<img src=\"http://localhost:8080/mushiyueqigouwu/upload/1618908909272.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/mushiyueqigouwu/upload/1618908909272.jpg\">内容3\r\n'),(84,'2021-04-20 22:39:58','标题4','http://localhost:8080/mushiyueqigouwu/upload/1618908916565.jpg','<img src=\"http://localhost:8080/mushiyueqigouwu/upload/1618908916566.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/mushiyueqigouwu/upload/1618908916566.jpg\">内容4\r\n'),(85,'2021-04-20 22:39:58','标题5','http://localhost:8080/mushiyueqigouwu/upload/1618908922514.jpg','<img src=\"http://localhost:8080/mushiyueqigouwu/upload/1618908922515.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/mushiyueqigouwu/upload/1618908922515.jpg\">内容5\r\n');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1618909760723 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1618909710093,'2021-04-20 17:08:29','20214201782917359178','shangpinxinxi',1,32,'商品名称2','http://localhost:8080/mushiyueqigouwu/upload/1618908841561.jpg',3,99.9,99.9,299.7,299.7,1,'已退款','宇宙银河系金星1号'),(1618909760102,'2021-04-20 17:09:20','202142017920939699','shangpinxinxi',1,33,'商品名称3','http://localhost:8080/mushiyueqigouwu/upload/1618908858870.jpg',4,99.9,99.9,1398.6,399.6,1,'已完成','宇宙银河系金星1号'),(1618909760105,'2021-04-20 17:09:20','20214201791997502574','shangpinxinxi',1,31,'商品名称1','http://localhost:8080/mushiyueqigouwu/upload/1618908123927.jpg',7,99.9,99.9,1398.6,699.3,1,'已支付','宇宙银河系金星1号'),(1618909760722,'2021-04-20 17:09:20','20214201791998480787','shangpinxinxi',1,32,'商品名称2','http://localhost:8080/mushiyueqigouwu/upload/1618908841561.jpg',3,99.9,99.9,1398.6,299.7,1,'已支付','宇宙银河系金星1号');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618909634165 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (1,'2021-02-26 17:03:58','类型1'),(2,'2021-02-26 17:04:03','类型2'),(3,'2021-02-26 17:05:11','类型3'),(1618909634164,'2021-04-20 17:07:13','类型4');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `xiangqing` longtext COMMENT '详情',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618909658754 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`shuliang`,`pinpai`,`guige`,`xiangqing`,`fengmian`,`clicktime`,`clicknum`,`price`) values (31,'2021-04-20 22:39:58','商品编号1','商品名称1','类型1','数量1','品牌1','分类1','<img src=\"http://localhost:8080/mushiyueqigouwu/upload/1618908123938.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/mushiyueqigouwu/upload/1618908123938.jpg\">详情1\r\n','http://localhost:8080/mushiyueqigouwu/upload/1618908123927.jpg','2021-04-20 19:05:26',25,99.9),(32,'2021-04-20 22:39:58','商品编号2','商品名称2','类型2','数量2','品牌2','分类2','<img src=\"http://localhost:8080/mushiyueqigouwu/upload/1618908841559.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/mushiyueqigouwu/upload/1618908841559.jpg\">详情2\r\n','http://localhost:8080/mushiyueqigouwu/upload/1618908841561.jpg','2021-04-20 19:05:48',30,99.9),(33,'2021-04-20 22:39:58','商品编号3','商品名称3','类型3','数量3','品牌3','分类3','<img src=\"http://localhost:8080/mushiyueqigouwu/upload/1618908858869.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/mushiyueqigouwu/upload/1618908858869.jpg\">详情3\r\n','http://localhost:8080/mushiyueqigouwu/upload/1618908858870.jpg','2021-04-20 17:12:37',19,99.9),(1618909658753,'2021-04-20 17:07:38','1618909638','商品名称4','类型4','4','品牌4','分类4','<img src=\"http://localhost:8080/mushiyueqigouwu/upload/1618909654024.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/mushiyueqigouwu/upload/1618909654024.jpg\">\r\n','http://localhost:8080/mushiyueqigouwu/upload/1618909654027.jpg',NULL,0,44);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618909809736 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1618909806981,'2021-04-20 17:10:06',1,32,'shangpinxinxi','商品名称2','http://localhost:8080/mushiyueqigouwu/upload/1618908841561.jpg'),(1618909809735,'2021-04-20 17:10:08',1,33,'shangpinxinxi','商品名称3','http://localhost:8080/mushiyueqigouwu/upload/1618908858870.jpg');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','s2yorpwk1546zn1efv8mx5c8mg5vqq93','2021-02-26 16:13:11','2021-04-20 20:09:03'),(2,11,'1','yonghu','用户','yyxeiw0xjbyjfxhzscnziosc5iic9rjq','2021-02-26 16:38:00','2021-02-26 17:38:01'),(3,1,'1','yonghu','用户','a9dz146tu9cx7y05187nww68piy8rg1z','2021-02-26 17:02:48','2021-04-20 20:09:17'),(4,1618906802693,'2','yonghu','用户','jl5kzyarrjmypnwcwdm7sa60iomrguco','2021-04-20 16:20:09','2021-04-20 17:20:09');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-04-20 22:39:58');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618909623931 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`lianxidianhua`,`dianziyouxiang`,`money`) values (1,'2021-04-20 22:39:58','111','用户姓名1','111','男','13823888881','773890001@qq.com',11106600),(12,'2021-04-20 22:39:58','用户2','用户姓名2','123456','男','13823888882','773890002@qq.com',100),(13,'2021-04-20 22:39:58','用户3','用户姓名3','123456','男','13823888883','773890003@qq.com',100),(14,'2021-04-20 22:39:58','用户4','用户姓名4','123456','男','13823888884','773890004@qq.com',100),(15,'2021-04-20 22:39:58','用户5','用户姓名5','123456','男','13823888885','773890005@qq.com',100),(16,'2021-04-20 22:39:58','用户6','用户姓名6','123456','男','13823888886','773890006@qq.com',100);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
