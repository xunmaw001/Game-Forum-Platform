-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm64ii2
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605238660156 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2020-11-13 03:13:30',1,'地址1','收货人1','电话1','是否默认地址[是/否]1'),(2,'2020-11-13 03:13:30',2,'地址2','收货人2','电话2','是否默认地址[是/否]2'),(3,'2020-11-13 03:13:30',3,'地址3','收货人3','电话3','是否默认地址[是/否]3'),(1605238660155,'2020-11-13 03:37:39',1605238612669,'广东省梅州市梅江区江南街道广东省自驾旅游协会梅州服务中心印象田园酒店','赵六','13800000000','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tablename` varchar(200) DEFAULT 'zhoubianshangcheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'2020-11-13 03:13:30','商品表名1',1,1,'商品名称1','http://localhost:8080/ssm64ii2/upload/cart_picture1.jpg',1,1,1),(2,'2020-11-13 03:13:30','商品表名2',2,2,'商品名称2','http://localhost:8080/ssm64ii2/upload/cart_picture2.jpg',2,2,2),(3,'2020-11-13 03:13:30','商品表名3',3,3,'商品名称3','http://localhost:8080/ssm64ii2/upload/cart_picture3.jpg',3,3,3);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(200) NOT NULL COMMENT '名称',
  `value` varchar(200) DEFAULT NULL COMMENT '值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='轮播图管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'2020-11-13 03:13:30','picture1','http://localhost:8080/ssm64ii2/upload/picture1.jpg'),(2,'2020-11-13 03:13:30','picture2','http://localhost:8080/ssm64ii2/upload/picture2.jpg'),(3,'2020-11-13 03:13:30','picture3','http://localhost:8080/ssm64ii2/upload/picture3.jpg'),(4,'2020-11-13 03:13:30','picture4','http://localhost:8080/ssm64ii2/upload/picture4.jpg'),(5,'2020-11-13 03:13:30','picture5','http://localhost:8080/ssm64ii2/upload/picture5.jpg'),(6,'2020-11-13 03:13:30','homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjingcaifenxiang`
--

DROP TABLE IF EXISTS `discussjingcaifenxiang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjingcaifenxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='精彩分享评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjingcaifenxiang`
--

LOCK TABLES `discussjingcaifenxiang` WRITE;
/*!40000 ALTER TABLE `discussjingcaifenxiang` DISABLE KEYS */;
INSERT INTO `discussjingcaifenxiang` VALUES (1,'2020-11-13 03:13:30',1,'评论内容1',1),(2,'2020-11-13 03:13:30',2,'评论内容2',2),(3,'2020-11-13 03:13:30',3,'评论内容3',3);
/*!40000 ALTER TABLE `discussjingcaifenxiang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussyouxikuaixun`
--

DROP TABLE IF EXISTS `discussyouxikuaixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussyouxikuaixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605238709847 DEFAULT CHARSET=utf8 COMMENT='游戏快讯评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussyouxikuaixun`
--

LOCK TABLES `discussyouxikuaixun` WRITE;
/*!40000 ALTER TABLE `discussyouxikuaixun` DISABLE KEYS */;
INSERT INTO `discussyouxikuaixun` VALUES (1,'2020-11-13 03:13:30',1,'评论内容1',1),(2,'2020-11-13 03:13:30',2,'评论内容2',2),(3,'2020-11-13 03:13:30',3,'评论内容3',3),(1605238680021,'2020-11-13 03:37:59',1605237976885,'啊，可以可以',1605238612669),(1605238709846,'2020-11-13 03:38:29',1605238092125,'图片我是瞎传的',1605238612669);
/*!40000 ALTER TABLE `discussyouxikuaixun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusszhoubianshangcheng`
--

DROP TABLE IF EXISTS `discusszhoubianshangcheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusszhoubianshangcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605238757303 DEFAULT CHARSET=utf8 COMMENT='周边商城评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusszhoubianshangcheng`
--

LOCK TABLES `discusszhoubianshangcheng` WRITE;
/*!40000 ALTER TABLE `discusszhoubianshangcheng` DISABLE KEYS */;
INSERT INTO `discusszhoubianshangcheng` VALUES (1,'2020-11-13 03:13:30',1,'评论内容1',1),(2,'2020-11-13 03:13:30',2,'评论内容2',2),(3,'2020-11-13 03:13:30',3,'评论内容3',3),(1605238757302,'2020-11-13 03:39:17',1605238467247,'城市 城市',1605238612669);
/*!40000 ALTER TABLE `discusszhoubianshangcheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605238800210 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (1,'2020-11-13 03:13:30','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(2,'2020-11-13 03:13:30','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(3,'2020-11-13 03:13:30','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(1605238786610,'2020-11-13 03:39:46','论坛测试','<p>测试测试测试测试测试</p>',0,1605238612669,'5660019','开放'),(1605238800209,'2020-11-13 03:39:59',NULL,'测试',1605238786610,1605238612669,'5660019',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jingcaifenxiang`
--

DROP TABLE IF EXISTS `jingcaifenxiang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jingcaifenxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `fenxiangbiaoti` varchar(200) DEFAULT NULL COMMENT '分享标题',
  `youximingcheng` varchar(200) DEFAULT NULL COMMENT '游戏名称',
  `youxichangshang` varchar(200) DEFAULT NULL COMMENT '游戏厂商',
  `jingcaishunjian` varchar(200) DEFAULT NULL COMMENT '精彩瞬间',
  `jingcaijieshao` longtext COMMENT '精彩介绍',
  `jingcaixiangqing` longtext COMMENT '精彩详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605238885063 DEFAULT CHARSET=utf8 COMMENT='精彩分享';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jingcaifenxiang`
--

LOCK TABLES `jingcaifenxiang` WRITE;
/*!40000 ALTER TABLE `jingcaifenxiang` DISABLE KEYS */;
INSERT INTO `jingcaifenxiang` VALUES (1,'2020-11-13 03:13:30','002','李四','分享标题1','英雄联盟','腾讯','http://localhost:8080/ssm64ii2/upload/1605238501865.jpg','精彩介绍1','<p><img src=\"http://localhost:8080/ssm64ii2/upload/1605238508541.jpg\"></p>',1,1),(2,'2020-11-13 03:13:30','003','王五','分享标题2','逆水寒','盛大网络','http://localhost:8080/ssm64ii2/upload/1605238528594.jpg','精彩介绍2','<p><img src=\"http://localhost:8080/ssm64ii2/upload/1605238532208.jpg\"></p>',2,2),(3,'2020-11-13 03:13:30','001','赵六','分享标题3','天涯明月刀','网易','http://localhost:8080/ssm64ii2/upload/1605238550761.jpg','精彩介绍3','<p><img src=\"http://localhost:8080/ssm64ii2/upload/1605238553213.jpg\"></p>',3,3),(1605238885062,'2020-11-13 03:41:24','5660019','三月','分享游戏4','天涯明月刀','网易','http://localhost:8080/ssm64ii2/upload/1605238872725.jpg','测试测试测试商城商城','<p><img src=\"http://localhost:8080/ssm64ii2/upload/1605238879460.jpg\"><img src=\"http://localhost:8080/ssm64ii2/upload/1605238882998.jpg\"></p>',0,0);
/*!40000 ALTER TABLE `jingcaifenxiang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605238817735 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'2020-11-13 03:13:30',1,'用户名1','留言内容1','回复内容1'),(2,'2020-11-13 03:13:30',2,'用户名2','留言内容2','回复内容2'),(3,'2020-11-13 03:13:30',3,'用户名3','留言内容3','回复内容3'),(1605238817734,'2020-11-13 03:40:17',1605238612669,'5660019','能不能加游戏啊','加了');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `orderid` varchar(200) NOT NULL COMMENT '订单id',
  `tablename` varchar(200) DEFAULT 'zhoubianshangcheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT NULL COMMENT '支付类型（1：现金 2：积分）',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1605238739883 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2020-11-13 03:13:30','订单id1','商品表名1',1,1,'商品名称1','http://localhost:8080/ssm64ii2/upload/orders_picture1.jpg',1,1,1,1,1,1,'状态1','地址1'),(2,'2020-11-13 03:13:30','订单id2','商品表名2',2,2,'商品名称2','http://localhost:8080/ssm64ii2/upload/orders_picture2.jpg',2,2,2,2,2,2,'状态2','地址2'),(3,'2020-11-13 03:13:30','订单id3','商品表名3',3,3,'商品名称3','http://localhost:8080/ssm64ii2/upload/orders_picture3.jpg',3,3,3,3,3,3,'状态3','地址3'),(1605238728414,'2020-11-13 03:38:47','2020111311384685039563','zhoubianshangcheng',1605238612669,1605238378472,'定制键盘','http://localhost:8080/ssm64ii2/upload/1605238347983.jpg',2,600,600,1200,1200,1,'已完成','广东省梅州市梅江区江南街道广东省自驾旅游协会梅州服务中心印象田园酒店'),(1605238739882,'2020-11-13 03:38:59','2020111311385832556640','zhoubianshangcheng',1605238612669,1605238311599,'定制鼠标垫','http://localhost:8080/ssm64ii2/upload/1605238291958.jpg',1,50,50,50,50,1,'已退款','广东省梅州市梅江区江南街道广东省自驾旅游协会梅州服务中心印象田园酒店');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605238723079 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1,'2020-11-13 03:13:30',1,1,'表名1','收藏名称1','http://localhost:8080/ssm64ii2/upload/storeup_picture1.jpg'),(2,'2020-11-13 03:13:30',2,2,'表名2','收藏名称2','http://localhost:8080/ssm64ii2/upload/storeup_picture2.jpg'),(3,'2020-11-13 03:13:30',3,3,'表名3','收藏名称3','http://localhost:8080/ssm64ii2/upload/storeup_picture3.jpg'),(1605238713029,'2020-11-13 03:38:32',1605238612669,1605238092125,'youxikuaixun','《银河护卫队3》电影剧本已完成 进展颇为顺利','http://localhost:8080/ssm64ii2/upload/1605238082600.jpg'),(1605238723078,'2020-11-13 03:38:43',1605238612669,1605238378472,'zhoubianshangcheng','定制键盘','http://localhost:8080/ssm64ii2/upload/1605238347983.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','0l0m83i6u2n4wn01yqma2nmg9kxp56e1','2020-11-13 03:20:58','2020-11-13 04:41:40'),(2,1,'001','yonghu','用户','s083gbz59iw3ky8landkzo4zxe8mt3ka','2020-11-13 03:27:32','2020-11-13 04:44:14'),(3,1605238612669,'5660019','yonghu','用户','ouxr4zyr3iebk6hes22yjs01crbmbz32','2020-11-13 03:37:01','2020-11-13 04:37:02');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2020-11-13 03:13:30');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1605238612670 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (1,'2020-11-13 03:13:30','001','123456','张三','男',20,'13823888881','773890001@qq.com','http://localhost:8080/ssm64ii2/upload/1605237711109.jpg',1),(2,'2020-11-13 03:13:30','002','123456','李四','男',2,'13823888882','773890002@qq.com','http://localhost:8080/ssm64ii2/upload/1605237730227.png',2),(3,'2020-11-13 03:13:30','003','123456','王五','女',3,'13823888883','773890003@qq.com','http://localhost:8080/ssm64ii2/upload/1605237746852.png',3),(1605238612669,'2020-11-13 03:36:52','5660019','001','三月','男',22,'13800000000','123@qq.com','http://localhost:8080/ssm64ii2/upload/1605238632090.jpg',3800);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youxifenlei`
--

DROP TABLE IF EXISTS `youxifenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youxifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `youximingcheng` varchar(200) DEFAULT NULL COMMENT '游戏名称',
  `youxichangshang` varchar(200) DEFAULT NULL COMMENT '游戏厂商',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605238927705 DEFAULT CHARSET=utf8 COMMENT='游戏分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youxifenlei`
--

LOCK TABLES `youxifenlei` WRITE;
/*!40000 ALTER TABLE `youxifenlei` DISABLE KEYS */;
INSERT INTO `youxifenlei` VALUES (1605237773461,'2020-11-13 03:22:53','天涯明月刀','网易'),(1605237783246,'2020-11-13 03:23:02','英雄联盟','腾讯'),(1605237794016,'2020-11-13 03:23:13','逆水寒','盛大网络'),(1605237807094,'2020-11-13 03:23:26','阴阳师','网易'),(1605238918978,'2020-11-13 03:41:58','QQ飞车','腾讯'),(1605238927704,'2020-11-13 03:42:07','绝地求生','蓝洞');
/*!40000 ALTER TABLE `youxifenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youxikuaixun`
--

DROP TABLE IF EXISTS `youxikuaixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youxikuaixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kuaixunbiaoti` varchar(200) DEFAULT NULL COMMENT '快讯标题',
  `youximingcheng` varchar(200) DEFAULT NULL COMMENT '游戏名称',
  `youxichangshang` varchar(200) DEFAULT NULL COMMENT '游戏厂商',
  `youxitupian` varchar(200) DEFAULT NULL COMMENT '游戏图片',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `kuaixunneirong` longtext COMMENT '快讯内容',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605238966952 DEFAULT CHARSET=utf8 COMMENT='游戏快讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youxikuaixun`
--

LOCK TABLES `youxikuaixun` WRITE;
/*!40000 ALTER TABLE `youxikuaixun` DISABLE KEYS */;
INSERT INTO `youxikuaixun` VALUES (1605237882608,'2020-11-13 03:24:41','最新皮肤原画：至臻星守索拉卡、星界韦鲁斯','英雄联盟','腾讯','http://localhost:8080/ssm64ii2/upload/1605237862327.jpg','2020-11-19','<p><br></p><p class=\"ql-align-center\"><img src=\"http://image5.uuu9.com/news/ueditor/20201113/5fadef2f6f45c_550.jpg\" alt=\"gamersky_01origin_01_20201113943823.jpg\"></p><p class=\"ql-align-center\"><img src=\"http://image5.uuu9.com/news/ueditor/20201113/5fadef3452220_550.jpg\" alt=\"gamersky_02origin_03_20201113943F34.jpg\"></p><p><br></p>',0,0),(1605237976885,'2020-11-13 03:26:16','《赛博朋克2077》再次延期 现定于12月10日发行','天涯明月刀','网易','http://localhost:8080/ssm64ii2/upload/1605237956614.jpg','2020-11-03','<p><br></p><p class=\"ql-align-center\"><img src=\"https://img.3dmgame.com/uploads/images/news/20201028/1603818559_260217.jpg\" alt=\"《赛博朋克2077》再次延期现定于12月10日发行\"></p><p>	</p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p>',1,0),(1605238011762,'2020-11-13 03:26:51','《刺客信条：英灵殿》真人电影短片公开 杰洛特超还原Coser出演','逆水寒','盛大网络','http://localhost:8080/ssm64ii2/upload/1605238008108.jpg','2020-11-09','<p><br></p><p class=\"ql-align-center\"><img src=\"https://img.3dmgame.com/uploads/images/news/20201113/1605235525_580906.jpg\" alt=\" 《刺客信条：英灵殿》真人电影短片公开杰洛特超还原Coser出演\"></p><p><br></p>',0,0),(1605238043537,'2020-11-13 03:27:22','《死亡循环》新宣传片公开：无尽挣扎的生死轮回','逆水寒','盛大网络','http://localhost:8080/ssm64ii2/upload/1605238041660.jpg','2020-11-02','<p><br></p><p><br></p><p class=\"ql-align-center\"><img src=\"https://img.3dmgame.com/uploads/images/news/20201113/1605232840_851701.jpg\" alt=\"《死亡循环》新宣传片公开：无尽挣扎的生死轮回\"></p><p>	</p><p><br></p><p class=\"ql-align-center\"><img src=\"https://img.3dmgame.com/uploads/images/news/20201113/1605232849_225604.png\" alt=\"《死亡循环》新宣传片公开：无尽挣扎的生死轮回\"></p><p><br></p>',0,0),(1605238092125,'2020-11-13 03:28:11','《银河护卫队3》电影剧本已完成 进展颇为顺利','英雄联盟','腾讯','http://localhost:8080/ssm64ii2/upload/1605238082600.jpg','2020-11-02','<p><br></p><p><br></p><p class=\"ql-align-center\"><img src=\"https://img.3dmgame.com/uploads/images/news/20201113/1605231172_113053.jpg\" alt=\"《银河护卫队3》电影剧本已完成逐步相当为顺利\"></p><p><br></p><p class=\"ql-align-center\"><img src=\"https://img.3dmgame.com/uploads/images/news/20201113/1605231089_647860.jpg\" alt=\"《银河护卫队3》电影剧本已完成逐步相当为顺利\"></p><p class=\"ql-align-center\"><br></p><p><br></p>',0,0),(1605238966951,'2020-11-13 03:42:46','导此前还透露《银河护卫队3》可将是系列的大结局，会有角色死去。','绝地求生','蓝洞','http://localhost:8080/ssm64ii2/upload/1605238953732.jpg','2020-11-13','<p><img src=\"http://localhost:8080/ssm64ii2/upload/1605238958778.jpg\"></p><p>可以文字或者图片</p>',0,0);
/*!40000 ALTER TABLE `youxikuaixun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhoubianshangcheng`
--

DROP TABLE IF EXISTS `zhoubianshangcheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhoubianshangcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `youxileixing` varchar(200) DEFAULT NULL COMMENT '游戏类型',
  `shangpinguige` varchar(200) DEFAULT NULL COMMENT '商品规格',
  `shangpintupian` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `shangpinjieshao` longtext COMMENT '商品介绍',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1605238996669 DEFAULT CHARSET=utf8 COMMENT='周边商城';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhoubianshangcheng`
--

LOCK TABLES `zhoubianshangcheng` WRITE;
/*!40000 ALTER TABLE `zhoubianshangcheng` DISABLE KEYS */;
INSERT INTO `zhoubianshangcheng` VALUES (1605238311599,'2020-11-13 03:31:51','20201113','定制鼠标垫','天涯明月刀','120*60','http://localhost:8080/ssm64ii2/upload/1605238291958.jpg','商品介绍测试','<p><img src=\"http://localhost:8080/ssm64ii2/upload/1605238309991.jpg\"></p>',0,0,50),(1605238378472,'2020-11-13 03:32:57','202013161','定制键盘','英雄联盟','160','http://localhost:8080/ssm64ii2/upload/1605238347983.jpg','测试测试测试测试','<p><img src=\"http://localhost:8080/ssm64ii2/upload/1605238376901.jpg\"></p>',0,0,600),(1605238425975,'2020-11-13 03:33:45','202013131','手办','逆水寒','20*30','http://localhost:8080/ssm64ii2/upload/1605238395518.jpg','测试测试测试测试测试','<p><img src=\"http://localhost:8080/ssm64ii2/upload/1605238423959.jpg\"></p>',0,0,300),(1605238467247,'2020-11-13 03:34:26','6654561','定制抱枕','天涯明月刀','60*60','http://localhost:8080/ssm64ii2/upload/1605238447846.jpg','凑数凑数商城商城商城商城商城','<p><img src=\"http://localhost:8080/ssm64ii2/upload/1605238465256.jpg\"></p>',1,0,30),(1605238996668,'2020-11-13 03:43:16','202031313','测试','绝地求生','60*60','http://localhost:8080/ssm64ii2/upload/1605238984457.jpg','测试测试测试','<p><img src=\"http://localhost:8080/ssm64ii2/upload/1605238994110.jpg\"></p>',0,0,300);
/*!40000 ALTER TABLE `zhoubianshangcheng` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-13 11:45:12
