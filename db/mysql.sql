DROP DATABASE IF EXISTS ssm64ii2;

CREATE DATABASE ssm64ii2 default character set utf8mb4 collate utf8mb4_general_ci;

USE ssm64ii2;


DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`zhanghao` varchar(200)  UNIQUE   COMMENT '账号',
	`mima` varchar(200)    COMMENT '密码',
	`xingming` varchar(200)    COMMENT '姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`nianling` int    COMMENT '年龄',
	`dianhua` varchar(200)    COMMENT '电话',
	`youxiang` varchar(200)    COMMENT '邮箱',
	`touxiang` varchar(200)    COMMENT '头像',
	`money` float   default '0' COMMENT '余额',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

INSERT INTO yonghu(zhanghao,mima,xingming,xingbie,nianling,dianhua,youxiang,touxiang,money) VALUES('用户1','123456','姓名1','男',1,'13823888881','773890001@qq.com','http://localhost:8080/ssm64ii2/upload/yonghu_touxiang1.jpg',1);
INSERT INTO yonghu(zhanghao,mima,xingming,xingbie,nianling,dianhua,youxiang,touxiang,money) VALUES('用户2','123456','姓名2','男',2,'13823888882','773890002@qq.com','http://localhost:8080/ssm64ii2/upload/yonghu_touxiang2.jpg',2);
INSERT INTO yonghu(zhanghao,mima,xingming,xingbie,nianling,dianhua,youxiang,touxiang,money) VALUES('用户3','123456','姓名3','男',3,'13823888883','773890003@qq.com','http://localhost:8080/ssm64ii2/upload/yonghu_touxiang3.jpg',3);


DROP TABLE IF EXISTS `youxifenlei`;

CREATE TABLE `youxifenlei` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`youximingcheng` varchar(200)    COMMENT '游戏名称',
	`youxichangshang` varchar(200)    COMMENT '游戏厂商',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏分类';

INSERT INTO youxifenlei(youximingcheng,youxichangshang) VALUES('游戏名称1','腾讯');
INSERT INTO youxifenlei(youximingcheng,youxichangshang) VALUES('游戏名称2','腾讯');
INSERT INTO youxifenlei(youximingcheng,youxichangshang) VALUES('游戏名称3','腾讯');


DROP TABLE IF EXISTS `youxikuaixun`;

CREATE TABLE `youxikuaixun` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`kuaixunbiaoti` varchar(200)    COMMENT '快讯标题',
	`youximingcheng` varchar(200)    COMMENT '游戏名称',
	`youxichangshang` varchar(200)    COMMENT '游戏厂商',
	`youxitupian` varchar(200)    COMMENT '游戏图片',
	`fabushijian` date    COMMENT '发布时间',
	`kuaixunneirong` longtext    COMMENT '快讯内容',
	`thumbsupnum` int   default '0' COMMENT '赞',
	`crazilynum` int   default '0' COMMENT '踩',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏快讯';

INSERT INTO youxikuaixun(kuaixunbiaoti,youximingcheng,youxichangshang,youxitupian,fabushijian,kuaixunneirong,thumbsupnum,crazilynum) VALUES('快讯标题1','游戏名称1','游戏厂商1','http://localhost:8080/ssm64ii2/upload/youxikuaixun_youxitupian1.jpg',CURRENT_TIMESTAMP,'快讯内容1',1,1);
INSERT INTO youxikuaixun(kuaixunbiaoti,youximingcheng,youxichangshang,youxitupian,fabushijian,kuaixunneirong,thumbsupnum,crazilynum) VALUES('快讯标题2','游戏名称2','游戏厂商2','http://localhost:8080/ssm64ii2/upload/youxikuaixun_youxitupian2.jpg',CURRENT_TIMESTAMP,'快讯内容2',2,2);
INSERT INTO youxikuaixun(kuaixunbiaoti,youximingcheng,youxichangshang,youxitupian,fabushijian,kuaixunneirong,thumbsupnum,crazilynum) VALUES('快讯标题3','游戏名称3','游戏厂商3','http://localhost:8080/ssm64ii2/upload/youxikuaixun_youxitupian3.jpg',CURRENT_TIMESTAMP,'快讯内容3',3,3);


DROP TABLE IF EXISTS `zhoubianshangcheng`;

CREATE TABLE `zhoubianshangcheng` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`shangpinbianhao` varchar(200)  UNIQUE   COMMENT '商品编号',
	`shangpinmingcheng` varchar(200)    COMMENT '商品名称',
	`youxileixing` varchar(200)    COMMENT '游戏类型',
	`shangpinguige` varchar(200)    COMMENT '商品规格',
	`shangpintupian` varchar(200)    COMMENT '商品图片',
	`shangpinjieshao` longtext    COMMENT '商品介绍',
	`shangpinxiangqing` longtext    COMMENT '商品详情',
	`thumbsupnum` int   default '0' COMMENT '赞',
	`crazilynum` int   default '0' COMMENT '踩',
	`price` float NOT NULL   COMMENT '价格',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='周边商城';

INSERT INTO zhoubianshangcheng(shangpinbianhao,shangpinmingcheng,youxileixing,shangpinguige,shangpintupian,shangpinjieshao,shangpinxiangqing,thumbsupnum,crazilynum,price) VALUES('商品编号1','商品名称1','游戏类型1','商品规格1','http://localhost:8080/ssm64ii2/upload/zhoubianshangcheng_shangpintupian1.jpg','商品介绍1','商品详情1',1,1,1);
INSERT INTO zhoubianshangcheng(shangpinbianhao,shangpinmingcheng,youxileixing,shangpinguige,shangpintupian,shangpinjieshao,shangpinxiangqing,thumbsupnum,crazilynum,price) VALUES('商品编号2','商品名称2','游戏类型2','商品规格2','http://localhost:8080/ssm64ii2/upload/zhoubianshangcheng_shangpintupian2.jpg','商品介绍2','商品详情2',2,2,2);
INSERT INTO zhoubianshangcheng(shangpinbianhao,shangpinmingcheng,youxileixing,shangpinguige,shangpintupian,shangpinjieshao,shangpinxiangqing,thumbsupnum,crazilynum,price) VALUES('商品编号3','商品名称3','游戏类型3','商品规格3','http://localhost:8080/ssm64ii2/upload/zhoubianshangcheng_shangpintupian3.jpg','商品介绍3','商品详情3',3,3,3);


DROP TABLE IF EXISTS `jingcaifenxiang`;

CREATE TABLE `jingcaifenxiang` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`zhanghao` varchar(200)    COMMENT '账号',
	`xingming` varchar(200)    COMMENT '姓名',
	`fenxiangbiaoti` varchar(200)    COMMENT '分享标题',
	`youximingcheng` varchar(200)    COMMENT '游戏名称',
	`youxichangshang` varchar(200)    COMMENT '游戏厂商',
	`jingcaishunjian` varchar(200)    COMMENT '精彩瞬间',
	`jingcaijieshao` longtext    COMMENT '精彩介绍',
	`jingcaixiangqing` longtext    COMMENT '精彩详情',
	`thumbsupnum` int   default '0' COMMENT '赞',
	`crazilynum` int   default '0' COMMENT '踩',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='精彩分享';

INSERT INTO jingcaifenxiang(zhanghao,xingming,fenxiangbiaoti,youximingcheng,youxichangshang,jingcaishunjian,jingcaijieshao,jingcaixiangqing,thumbsupnum,crazilynum) VALUES('账号1','姓名1','分享标题1','游戏名称1','游戏厂商1','http://localhost:8080/ssm64ii2/upload/jingcaifenxiang_jingcaishunjian1.jpg','精彩介绍1','精彩详情1',1,1);
INSERT INTO jingcaifenxiang(zhanghao,xingming,fenxiangbiaoti,youximingcheng,youxichangshang,jingcaishunjian,jingcaijieshao,jingcaixiangqing,thumbsupnum,crazilynum) VALUES('账号2','姓名2','分享标题2','游戏名称2','游戏厂商2','http://localhost:8080/ssm64ii2/upload/jingcaifenxiang_jingcaishunjian2.jpg','精彩介绍2','精彩详情2',2,2);
INSERT INTO jingcaifenxiang(zhanghao,xingming,fenxiangbiaoti,youximingcheng,youxichangshang,jingcaishunjian,jingcaijieshao,jingcaixiangqing,thumbsupnum,crazilynum) VALUES('账号3','姓名3','分享标题3','游戏名称3','游戏厂商3','http://localhost:8080/ssm64ii2/upload/jingcaifenxiang_jingcaishunjian3.jpg','精彩介绍3','精彩详情3',3,3);


DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`title` varchar(200)    COMMENT '帖子标题',
	`content` longtext NOT NULL   COMMENT '帖子内容',
	`parentid` bigint    COMMENT '父节点id',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`username` varchar(200)    COMMENT '用户名',
	`isdone` varchar(200)    COMMENT '状态',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='论坛表';

INSERT INTO forum(title,content,parentid,userid,username,isdone) VALUES('帖子标题1','帖子内容1',1,1,'用户名1','开放');
INSERT INTO forum(title,content,parentid,userid,username,isdone) VALUES('帖子标题2','帖子内容2',2,2,'用户名2','开放');
INSERT INTO forum(title,content,parentid,userid,username,isdone) VALUES('帖子标题3','帖子内容3',3,3,'用户名3','开放');


DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`tablename` varchar(200)   default 'zhoubianshangcheng' COMMENT '商品表名',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`goodid` bigint NOT NULL   COMMENT '商品id',
	`goodname` varchar(200)    COMMENT '商品名称',
	`picture` varchar(200)    COMMENT '图片',
	`buynumber` int NOT NULL   COMMENT '购买数量',
	`price` float    COMMENT '单价',
	`discountprice` float    COMMENT '会员价',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

INSERT INTO cart(tablename,userid,goodid,goodname,picture,buynumber,price,discountprice) VALUES('商品表名1',1,1,'商品名称1','http://localhost:8080/ssm64ii2/upload/cart_picture1.jpg',1,1,1);
INSERT INTO cart(tablename,userid,goodid,goodname,picture,buynumber,price,discountprice) VALUES('商品表名2',2,2,'商品名称2','http://localhost:8080/ssm64ii2/upload/cart_picture2.jpg',2,2,2);
INSERT INTO cart(tablename,userid,goodid,goodname,picture,buynumber,price,discountprice) VALUES('商品表名3',3,3,'商品名称3','http://localhost:8080/ssm64ii2/upload/cart_picture3.jpg',3,3,3);


DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`orderid` varchar(200) NOT NULL UNIQUE   COMMENT '订单id',
	`tablename` varchar(200)   default 'zhoubianshangcheng' COMMENT '商品表名',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`goodid` bigint NOT NULL   COMMENT '商品id',
	`goodname` varchar(200)    COMMENT '商品名称',
	`picture` varchar(200)    COMMENT '商品图片',
	`buynumber` int NOT NULL   COMMENT '购买数量',
	`price` float NOT NULL  default '0' COMMENT '价格/积分',
	`discountprice` float   default '0' COMMENT '折扣价格',
	`total` float NOT NULL  default '0' COMMENT '总价格/总积分',
	`discounttotal` float   default '0' COMMENT '折扣总价格',
	`type` int    COMMENT '支付类型（1：现金 2：积分）',
	`status` varchar(200)    COMMENT '状态',
	`address` varchar(200)    COMMENT '地址',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';

INSERT INTO orders(orderid,tablename,userid,goodid,goodname,picture,buynumber,price,discountprice,total,discounttotal,type,status,address) VALUES('订单id1','商品表名1',1,1,'商品名称1','http://localhost:8080/ssm64ii2/upload/orders_picture1.jpg',1,1,1,1,1,1,'状态1','地址1');
INSERT INTO orders(orderid,tablename,userid,goodid,goodname,picture,buynumber,price,discountprice,total,discounttotal,type,status,address) VALUES('订单id2','商品表名2',2,2,'商品名称2','http://localhost:8080/ssm64ii2/upload/orders_picture2.jpg',2,2,2,2,2,2,'状态2','地址2');
INSERT INTO orders(orderid,tablename,userid,goodid,goodname,picture,buynumber,price,discountprice,total,discounttotal,type,status,address) VALUES('订单id3','商品表名3',3,3,'商品名称3','http://localhost:8080/ssm64ii2/upload/orders_picture3.jpg',3,3,3,3,3,3,'状态3','地址3');


DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '用户id',
	`address` varchar(200) NOT NULL   COMMENT '地址',
	`name` varchar(200) NOT NULL   COMMENT '收货人',
	`phone` varchar(200) NOT NULL   COMMENT '电话',
	`isdefault` varchar(200) NOT NULL   COMMENT '是否默认地址[是/否]',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地址';

INSERT INTO address(userid,address,name,phone,isdefault) VALUES(1,'地址1','收货人1','电话1','是否默认地址[是/否]1');
INSERT INTO address(userid,address,name,phone,isdefault) VALUES(2,'地址2','收货人2','电话2','是否默认地址[是/否]2');
INSERT INTO address(userid,address,name,phone,isdefault) VALUES(3,'地址3','收货人3','电话3','是否默认地址[是/否]3');


DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '用户id',
	`refid` bigint    COMMENT '收藏id',
	`tablename` varchar(200)    COMMENT '表名',
	`name` varchar(200) NOT NULL   COMMENT '收藏名称',
	`picture` varchar(200) NOT NULL   COMMENT '收藏图片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(1,1,'表名1','收藏名称1','http://localhost:8080/ssm64ii2/upload/storeup_picture1.jpg');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(2,2,'表名2','收藏名称2','http://localhost:8080/ssm64ii2/upload/storeup_picture2.jpg');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(3,3,'表名3','收藏名称3','http://localhost:8080/ssm64ii2/upload/storeup_picture3.jpg');


DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '留言人id',
	`username` varchar(200)    COMMENT '用户名',
	`content` longtext NOT NULL   COMMENT '留言内容',
	`reply` longtext    COMMENT '回复内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言板';

INSERT INTO messages(userid,username,content,reply) VALUES(1,'用户名1','留言内容1','回复内容1');
INSERT INTO messages(userid,username,content,reply) VALUES(2,'用户名2','留言内容2','回复内容2');
INSERT INTO messages(userid,username,content,reply) VALUES(3,'用户名3','留言内容3','回复内容3');


DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`name` varchar(200) NOT NULL   COMMENT '名称',
	`value` varchar(200)    COMMENT '值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='轮播图管理';

INSERT INTO config(name,value) VALUES('名称1','http://localhost:8080/ssm64ii2/upload/config_value1.jpg');
INSERT INTO config(name,value) VALUES('名称2','http://localhost:8080/ssm64ii2/upload/config_value2.jpg');
INSERT INTO config(name,value) VALUES('名称3','http://localhost:8080/ssm64ii2/upload/config_value3.jpg');


DROP TABLE IF EXISTS `discussyouxikuaixun`;

CREATE TABLE `discussyouxikuaixun` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏快讯评论表';

INSERT INTO discussyouxikuaixun(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discussyouxikuaixun(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discussyouxikuaixun(refid,content,userid) VALUES(3,'评论内容3',3);


DROP TABLE IF EXISTS `discusszhoubianshangcheng`;

CREATE TABLE `discusszhoubianshangcheng` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='周边商城评论表';

INSERT INTO discusszhoubianshangcheng(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discusszhoubianshangcheng(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discusszhoubianshangcheng(refid,content,userid) VALUES(3,'评论内容3',3);


DROP TABLE IF EXISTS `discussjingcaifenxiang`;

CREATE TABLE `discussjingcaifenxiang` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='精彩分享评论表';

INSERT INTO discussjingcaifenxiang(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discussjingcaifenxiang(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discussjingcaifenxiang(refid,content,userid) VALUES(3,'评论内容3',3);



truncate table config;
insert into config(id,name,value) values(1,'picture1','http://localhost:8080/ssm64ii2/upload/picture1.jpg');
insert into config(id,name,value) values(2,'picture2','http://localhost:8080/ssm64ii2/upload/picture2.jpg');
insert into config(id,name,value) values(3,'picture3','http://localhost:8080/ssm64ii2/upload/picture3.jpg');
insert into config(id,name,value) values(4,'picture4','http://localhost:8080/ssm64ii2/upload/picture4.jpg');
insert into config(id,name,value) values(5,'picture5','http://localhost:8080/ssm64ii2/upload/picture5.jpg');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

