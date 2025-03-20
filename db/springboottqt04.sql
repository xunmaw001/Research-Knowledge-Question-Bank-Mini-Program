-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboottqt04
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
-- Current Database: `springboottqt04`
--

/*!40000 DROP DATABASE IF EXISTS `springboottqt04`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboottqt04` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboottqt04`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshipinkecheng`
--

DROP TABLE IF EXISTS `discussshipinkecheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshipinkecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='视频课程评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshipinkecheng`
--

LOCK TABLES `discussshipinkecheng` WRITE;
/*!40000 ALTER TABLE `discussshipinkecheng` DISABLE KEYS */;
INSERT INTO `discussshipinkecheng` VALUES (111,'2022-03-02 04:26:43',1,1,'用户名1','评论内容1','回复内容1'),(112,'2022-03-02 04:26:43',2,2,'用户名2','评论内容2','回复内容2'),(113,'2022-03-02 04:26:43',3,3,'用户名3','评论内容3','回复内容3'),(114,'2022-03-02 04:26:43',4,4,'用户名4','评论内容4','回复内容4'),(115,'2022-03-02 04:26:43',5,5,'用户名5','评论内容5','回复内容5'),(116,'2022-03-02 04:26:43',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussshipinkecheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exampaper`
--

DROP TABLE IF EXISTS `exampaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '知识测卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '知识测卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='知识测卷表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exampaper`
--

LOCK TABLES `exampaper` WRITE;
/*!40000 ALTER TABLE `exampaper` DISABLE KEYS */;
INSERT INTO `exampaper` VALUES (1,'2022-03-02 04:26:43','十万个为什么',60,1);
/*!40000 ALTER TABLE `exampaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examquestion`
--

DROP TABLE IF EXISTS `examquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属知识测卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '知识测卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='试题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examquestion`
--

LOCK TABLES `examquestion` WRITE;
/*!40000 ALTER TABLE `examquestion` DISABLE KEYS */;
INSERT INTO `examquestion` VALUES (1,'2022-03-02 04:26:43',1,'十万个为什么','下面动物不属于昆虫的是（）。','[{\"text\":\"A.苍蝇\",\"code\":\"A\"},{\"text\":\"B.蜜蜂\",\"code\":\"B\"},{\"text\":\"C.蜂鸟\",\"code\":\"C\"}]',20,'C','蜂鸟',0,1),(2,'2022-03-02 04:26:43',1,'十万个为什么','油着火后可以用水扑灭。','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',20,'B','油着火后不可以用水扑灭',2,2),(3,'2022-03-02 04:26:43',1,'十万个为什么','地球是个球体，中间是（ ）。','[]',30,'赤道','赤道',3,3),(4,'2022-03-02 04:26:43',1,'十万个为什么','下面动物中会流汗的有（ ）。','[{\"text\":\"A.马\",\"code\":\"A\"},{\"text\":\"B.猫\",\"code\":\"B\"},{\"text\":\"C.狗\",\"code\":\"C\"}]',30,'A,B','狗不会流汗',1,4);
/*!40000 ALTER TABLE `examquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examrecord`
--

DROP TABLE IF EXISTS `examrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '知识测卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '知识测卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examrecord`
--

LOCK TABLES `examrecord` WRITE;
/*!40000 ALTER TABLE `examrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `examrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='交流论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (61,'2022-03-02 04:26:43','帖子标题1','帖子内容1',0,1,'用户名1','开放'),(62,'2022-03-02 04:26:43','帖子标题2','帖子内容2',0,2,'用户名2','开放'),(63,'2022-03-02 04:26:43','帖子标题3','帖子内容3',0,3,'用户名3','开放'),(64,'2022-03-02 04:26:43','帖子标题4','帖子内容4',0,4,'用户名4','开放'),(65,'2022-03-02 04:26:43','帖子标题5','帖子内容5',0,5,'用户名5','开放'),(66,'2022-03-02 04:26:43','帖子标题6','帖子内容6',0,6,'用户名6','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiangshi`
--

DROP TABLE IF EXISTS `jiangshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiangshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiangshigonghao` varchar(200) NOT NULL COMMENT '讲师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiangshixingming` varchar(200) NOT NULL COMMENT '讲师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiangshigonghao` (`jiangshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='讲师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiangshi`
--

LOCK TABLES `jiangshi` WRITE;
/*!40000 ALTER TABLE `jiangshi` DISABLE KEYS */;
INSERT INTO `jiangshi` VALUES (21,'2022-03-02 04:26:43','讲师工号1','123456','讲师姓名1','男','职称1','13823888881'),(22,'2022-03-02 04:26:43','讲师工号2','123456','讲师姓名2','男','职称2','13823888882'),(23,'2022-03-02 04:26:43','讲师工号3','123456','讲师姓名3','男','职称3','13823888883'),(24,'2022-03-02 04:26:43','讲师工号4','123456','讲师姓名4','男','职称4','13823888884'),(25,'2022-03-02 04:26:43','讲师工号5','123456','讲师姓名5','男','职称5','13823888885'),(26,'2022-03-02 04:26:43','讲师工号6','123456','讲师姓名6','男','职称6','13823888886');
/*!40000 ALTER TABLE `jiangshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kemufenlei`
--

DROP TABLE IF EXISTS `kemufenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kemufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kemufenlei` varchar(200) NOT NULL COMMENT '科目分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='科目分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kemufenlei`
--

LOCK TABLES `kemufenlei` WRITE;
/*!40000 ALTER TABLE `kemufenlei` DISABLE KEYS */;
INSERT INTO `kemufenlei` VALUES (41,'2022-03-02 04:26:43','科目分类1'),(42,'2022-03-02 04:26:43','科目分类2'),(43,'2022-03-02 04:26:43','科目分类3'),(44,'2022-03-02 04:26:43','科目分类4'),(45,'2022-03-02 04:26:43','科目分类5'),(46,'2022-03-02 04:26:43','科目分类6');
/*!40000 ALTER TABLE `kemufenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shenqingjiangshi`
--

DROP TABLE IF EXISTS `shenqingjiangshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shenqingjiangshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshengxuehao` varchar(200) DEFAULT NULL COMMENT '学生学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  `shenqingliyou` longtext COMMENT '申请理由',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='申请讲师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shenqingjiangshi`
--

LOCK TABLES `shenqingjiangshi` WRITE;
/*!40000 ALTER TABLE `shenqingjiangshi` DISABLE KEYS */;
INSERT INTO `shenqingjiangshi` VALUES (31,'2022-03-02 04:26:43','学生学号1','学生姓名1','2022-03-02 12:26:43','申请理由1','是',''),(32,'2022-03-02 04:26:43','学生学号2','学生姓名2','2022-03-02 12:26:43','申请理由2','是',''),(33,'2022-03-02 04:26:43','学生学号3','学生姓名3','2022-03-02 12:26:43','申请理由3','是',''),(34,'2022-03-02 04:26:43','学生学号4','学生姓名4','2022-03-02 12:26:43','申请理由4','是',''),(35,'2022-03-02 04:26:43','学生学号5','学生姓名5','2022-03-02 12:26:43','申请理由5','是',''),(36,'2022-03-02 04:26:43','学生学号6','学生姓名6','2022-03-02 12:26:43','申请理由6','是','');
/*!40000 ALTER TABLE `shenqingjiangshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipinkecheng`
--

DROP TABLE IF EXISTS `shipinkecheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipinkecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `timu` varchar(200) DEFAULT NULL COMMENT '题目',
  `kemufenlei` varchar(200) DEFAULT NULL COMMENT '科目分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiangshigonghao` varchar(200) DEFAULT NULL COMMENT '讲师工号',
  `jiangshixingming` varchar(200) DEFAULT NULL COMMENT '讲师姓名',
  `daan` longtext COMMENT '答案',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `jiexi` longtext COMMENT '解析',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='视频课程';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipinkecheng`
--

LOCK TABLES `shipinkecheng` WRITE;
/*!40000 ALTER TABLE `shipinkecheng` DISABLE KEYS */;
INSERT INTO `shipinkecheng` VALUES (51,'2022-03-02 04:26:43','题目1','科目分类1','upload/shipinkecheng_tupian1.jpg','讲师工号1','讲师姓名1','答案1','2022-03-02 12:26:43','解析1','','是','',1,1),(52,'2022-03-02 04:26:43','题目2','科目分类2','upload/shipinkecheng_tupian2.jpg','讲师工号2','讲师姓名2','答案2','2022-03-02 12:26:43','解析2','','是','',2,2),(53,'2022-03-02 04:26:43','题目3','科目分类3','upload/shipinkecheng_tupian3.jpg','讲师工号3','讲师姓名3','答案3','2022-03-02 12:26:43','解析3','','是','',3,3),(54,'2022-03-02 04:26:43','题目4','科目分类4','upload/shipinkecheng_tupian4.jpg','讲师工号4','讲师姓名4','答案4','2022-03-02 12:26:43','解析4','','是','',4,4),(55,'2022-03-02 04:26:43','题目5','科目分类5','upload/shipinkecheng_tupian5.jpg','讲师工号5','讲师姓名5','答案5','2022-03-02 12:26:43','解析5','','是','',5,5),(56,'2022-03-02 04:26:43','题目6','科目分类6','upload/shipinkecheng_tupian6.jpg','讲师工号6','讲师姓名6','答案6','2022-03-02 12:26:43','解析6','','是','',6,6);
/*!40000 ALTER TABLE `shipinkecheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-02 04:26:43');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshengxuehao` varchar(200) DEFAULT NULL COMMENT '学生学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xueshengxuehao` (`xueshengxuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2022-03-02 04:26:43','学生学号1','学生姓名1','123456','男','13823888881'),(12,'2022-03-02 04:26:43','学生学号2','学生姓名2','123456','男','13823888882'),(13,'2022-03-02 04:26:43','学生学号3','学生姓名3','123456','男','13823888883'),(14,'2022-03-02 04:26:43','学生学号4','学生姓名4','123456','男','13823888884'),(15,'2022-03-02 04:26:43','学生学号5','学生姓名5','123456','男','13823888885'),(16,'2022-03-02 04:26:43','学生学号6','学生姓名6','123456','男','13823888886');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-02 12:28:40
