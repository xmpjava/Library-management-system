/*
 Navicat Premium Data Transfer

 Source Server         : xampp
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3316
 Source Schema         : library

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 19/05/2022 10:17:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `admin_id` bigint NOT NULL,
  `password` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (123456, '123456', 'admin');

-- ----------------------------
-- Table structure for book_info
-- ----------------------------
DROP TABLE IF EXISTS `book_info`;
CREATE TABLE `book_info`  (
  `book_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `publish` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ISBN` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `introduction` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `language` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `pub_date` date NOT NULL,
  `class_id` int NULL DEFAULT NULL,
  `number` int NULL DEFAULT NULL,
  PRIMARY KEY (`book_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_info
-- ----------------------------
INSERT INTO `book_info` VALUES (1, 'Java基础案例', '黑马程序员', '人民邮电出版社', '9787115439376', '本书从初学者的角度详细讲解了Java开发中用到的多种技术。全书共11章，在讲解Java开发环境的搭建及其运行机制、基本语法、面向对象的编程思想时，采用通俗易懂的语言阐述抽象的概念，选用典型翔实的例子演示知识的运用。在讲解多线程、常用API、集合、IO、GUI、网络编程的章节中，通过剖析案例、分析代码含义、解决常见问题等方式进行阐述，并且在本书中还添加了许多阶段性任务来模拟程序开发过程，帮助初学者培养良好的编程习惯。 本书附带配套视频、源代码、测试题、教学PPT、教学实施案例、教学设计大纲等资源，并提供在线答疑平台。 本书既可作为高等院校本、专科计算机相关专业的程序设计课程教材，也可作为Java技术基础的培训教材，也是一本适合广大计算机编程初学者学习的入门级读物。', '中文', 54.00, '2020-08-01', 1, 5);
INSERT INTO `book_info` VALUES (2, 'JavaWeb课程设计', '郭克华', '清华大学出版社', '9787302519096', '《Java Web程序设计》分为5部分共19章，包括入门、JSP编程、Servlet和JavaBean开发、应用开发与框架、其他内容。《Java Web程序设计》使用的开发环境是JDK 1.6+MyEclipse 7.0+Tomcat6.x，引领读者从基础到各个知识点循序渐进地学习。全书内容由浅人深，并辅以大量的实例说明，《Java Web程序设计》的最后提供了一些课程设计的内容。 [2] \r\n《Java Web程序设计》提供了所有实例的源代码，以及开发过程中用到的软件，供读者学习参考使用。\r\n《Java Web程序设计》为学校教学量身定做，每个章节都有建议的课时。《Java Web程序设计》供高校Java Web开发相关课程使用，也可供有Java SE基础但没有Java Web开发基础的程序员作为入门用书，还可供社会Java Web开发培训班作为教材使用，对于缺乏项目实战经验的程序员来说可用于快速积累项目开发经验。', '中文', 49.80, '2019-07-01', 1, 4);
INSERT INTO `book_info` VALUES (3, 'JavaEE项目开发', '郑阿奇', '中国工信出版社', '9787121328671', '本书以“网上书店”项目为引导，系统简明地介绍了Java EE基本技术和应用方法，对Java EE的教学具有明显的优势。其基本方法是把繁多和复杂的内容分散开来，通过应用理解原理和方法。 本书在构建Java EE开发环境的基础上，介绍Java EE框架与MVC模式和Java EE框架集成，每一部分均通过项目的“登录”功能进行入门实践。这样在对比中学习和掌握，入门难度大大降低。“网上书店”项目先架构和设计，然后介绍功能开发，最后进行项目测试发布，完成项目开发。通过与项目相关的知识点介绍，对项目开发过程中的疑问进行及时解答，让读者明白为什么。 本书可以作为大学本专科Java EE课程、实习教材，也可以作为Java EE技术培训和入门参考书。', '中文', 39.00, '2018-01-03', 1, 2);
INSERT INTO `book_info` VALUES (4, 'JavaEE轻量集框架', 'QST青软实训', '清华大学出版社', '9787302413714', '本书深入介绍了Java EE领域的三个开源框架： Struts 2、Hibernate和Spring，涵盖了MVC设计思想、Struts 2的基本原理、处理流程及常用标签库的使用，Hibernate的ORM设计理念、配置、实体映射文件以及HQL查询等，Spring的IoC和AOP原理及应用、Bean对象管理及事务处理等。除了Struts 2、Hibernate和Spring三个开源框架，本书还在附录中扩展了Spring MVC和MyBatis框架的使用。', '中文', 69.00, '2018-02-01', 1, 32);
INSERT INTO `book_info` VALUES (5, 'C#应用开发与实践', '曾宪权', '清华大学出版社', '9787302381297', '全书以学生成绩管理系统的开发为主线，以VisualStudio2012作为开发工具，采用循序渐进的方式全面而又系统地介绍使用C#语言进行项目开发所涉及的关键知识，是学习C#编程技术的理想参考书。全书共分为11章，其中，第1~3章通过学生成绩管理系统V0．8版本的实现过程系统地介绍C#语言及其开发环境、C#程序设计的基础知识以及数组和字符串的相关知识。第4章以学生成绩管理系统V0．9版本的实现过程为例讨论C#面向对象编程的相关知识。第5~8章以学生成绩管理系统V1．0版本的关键模块的设计与实现深入介绍利用C#进行Windows编程的相关知识，包括控件的使用、ADO．NET数据库访问技术以及Windows应用程序的部署。第9、第10章介绍利用C#进行图形图像编程和文件处理的相关知识。第11章通过三层架构的学生成绩管理系统的开发过程详细说明了利用C#开发数据库系统的过程，以提高读者项目开发的能力。', '英文', 36.00, '2015-02-01', 2, 32);
INSERT INTO `book_info` VALUES (6, 'ASP程序设计 ', '叶潮流', '水利水电出版社', '9787508460383', '本书是学习ASP动态网页设计的基础教材，通过将理论与案例相结合，全面介绍了ASP动态网页设计技术。本书共分10章。第1章介绍ASP基础知识；第2章介绍HTML语言基础知识；第3章介绍VBScript脚本语言编程知识；第4章介绍JavaScript脚本语言编程知识：第5章介绍Request对象和Response对象的用法；第6章介绍Server对象和ObjectContext对象的用法；第7章介绍Session对象和Application对象的用法：第8章介绍数据库基础；第9章介绍ADO组件和数据库编程；第l0章介绍ASP内置组件。另外，为便于教学，每章都配有练习题。本书内容翔实、案例丰富，语言文字表述上力求循序渐进、言简意赅、通俗易懂，注重理论和实际相结合。本书从ASP技术框架的基础知识出发，以应用系统开发需求知识为主线，并通过大量案例讲述了ASP的知识结构，力图做到循序渐进、深入浅出，希望教材以学生为中心，符合人类的思维和认知规律。简单地说，就是让初学者一看就入门并逐步提高，为更进一步学习打下扎实的理论基础，无需其他任何参考书籍。', '中文', 17.40, '2009-04-06', 2, 2);
INSERT INTO `book_info` VALUES (7, 'PHP程序设计', '程文彬', '人民邮电出版社', '9787115524713', '本书系统全面地介绍了有关PHP程序开发的各类知识。全书共分15章，内容包括PHP入门与环境搭建、PHP开发基础、运算符和表达式、流程控制语句、PHP数组、PHP与Web页面交互、函数、字符串操作、MySQL数据库、PHP操作MySQL数据库、PHP会话控制、面向对象基础、Ajax技术、综合案例——电子商务平台网、课程设计——留言本。全书每章内容都与实例紧密结合，有助于读者理解知识、应用知识，达到学以致用的目的。', '英文', 69.80, '2021-02-01', 4, 65);
INSERT INTO `book_info` VALUES (8, 'Android移动开发基础', '黑马程序员', '人民邮电出版社', '9787115567680', '本书从初学者的角度出发，采用案例驱动式教学方法，对Android基础知识进行讲解。在案例设计上力求贴合实际需求，真正做到把书本上的知识应用到实际开发中，非常适合初学者学习。本书共10章，第1～2章主要讲解Android的基础知识，包括Android起源、Android体系结构、开发环境搭建、UI布局等。第3～8章主要讲解Android中的数据存储以及四大组件，包括文件存储、SharedPreferences、SQLite数据库、Activity、BroadcastReceiver、Service、ContentProvider等。第9章主要讲解Android中的网络编程，包括HTTP协议、消息机制、开源项目等。第10章主要讲解Android开发中的高级知识，包括多媒体、动画、Fragment等。上述内容都是Android中*核心的知识，掌握这些知识可以让初学者在编写Android程序时得心应手。 本书附有配套视频、源代码、习题、教学课件等资源；另外，为了帮助初学者更好地学习本书讲解的内容，还提供了在线答疑服务，希望可以帮助更多的读者。本书既可作为高等院校本、专科计算机相关专业的教材，也可作为社会培训教材，是一本适合初学者学习和参考的读物。', '中文', 59.80, '2021-10-01', 3, 9);
INSERT INTO `book_info` VALUES (9, 'Android高级编程', '梅尔(RetoMeier)', '清华大学出版社', '9787302228448', '《Android高级编程》首先简要介绍Android软件栈，接着陈述为手机创建稳定可靠、赏心悦目的应用程序的基本原理。通过学习，您可以打下牢固的理论根基，了解使用当前Android 1．0 SDK编写定制移动程序所需的知识，还能灵活快捷地运用未来的增强功能构建最前沿的解决方案。', '中文', 59.00, '2010-06-01', 3, 1);
INSERT INTO `book_info` VALUES (10, '深入浅出Spring Boot', '杨开振', '人民邮电出版社', '9787115486387', '本书从一个最简单的工程开始讲解Spring Boot企业级开发，其内容包含全注解下的Spring IoC和AOP、数据库编程、数据库事务、NoSQL技术、Spring MVC、Spring 5新一代响应式框架WebFlux、REST风格和Spring Cloud分布式开发等。', '中文', 99.00, '2018-08-01', 1, 5);
INSERT INTO `book_info` VALUES (11, 'Redis入门指南', '李子骅 ', '人民邮电出版社', '9787513325745', '本书是一本Redis的入门指导书籍，以通俗易懂的方式介绍了Redis基础与实践方面的知识。本书的目标读者不仅包括Redis的新手，还包括那些已经掌握Redis使用方法的人。', '中文', 49.00, '2015-05-01', 1, 2);
INSERT INTO `book_info` VALUES (12, '深入浅出MySQL', '唐汉明', '吉林文史出版社', '9787115335494', '本书从数据库的基础、开发、优化、管理维护和架构5个方面对MySQL进行了详细的介绍，每一部分都独立成篇。基础篇主要适合于MySQL的初学者阅读，包括MySQL的安装与配置、SQL基础、MySQL支持的数据类型、MySQL中的运算符、常用函数、图形化工具的使用等内容。', '中文', 99.00, '2014-01-01', 5, 3);
INSERT INTO `book_info` VALUES (13, ' SQL Server实用教程', '郑阿奇', '电子工业出版社', '9787121260384', '本书以Microsoft SQL Server 2012中文版为平台，系统地介绍数据库基础、SQL Server 2012和综合应用等内容。SQL Server 2012内容主要包括数据库的创建，表的创建和操作，数据库的查询、视图和游标，T-SQL语言，索引和数据完整性，存储过程和触发器，备份与恢复，系统安全管理和SQL Server 其他功能等。实验部分训练SQL Server基本操作和基本命令，其数据库自成系统。实习部分通过创建SQL Server 2012实习数据库及其数据库常用对象，将数据库、表、视图、触发器、完整性、存储过程等进行综合应用；之后，通过学生成绩管理系统，介绍目前流行的4种开发平台操作SQL Server 2012数据库，包括PHP 5.3.29、Java EE（8/8/2014）、ASP.NET 4.5、Visual C#2013，统一开发学生成绩管理系统。', '中文', 52.00, '2015-07-01', 5, 8);
INSERT INTO `book_info` VALUES (14, '深入理解Nginx', '陶辉', '机械工业出版社', '978711526245', '本书是阿里巴巴资深Nginx技术专家呕心沥血之作，是作者多年的经验结晶，也是目前市场上唯一一本通过还原Nginx设计思想，剖析Nginx架构来帮助读者快速高效开发HTTP模块的图书。', '中文', 99.00, '2016-02-01', 1, 6);

-- ----------------------------
-- Table structure for class_info
-- ----------------------------
DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info`  (
  `class_id` int NOT NULL,
  `class_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class_info
-- ----------------------------
INSERT INTO `class_info` VALUES (1, 'java');
INSERT INTO `class_info` VALUES (2, 'C#');
INSERT INTO `class_info` VALUES (3, 'Android');
INSERT INTO `class_info` VALUES (4, 'PHP');
INSERT INTO `class_info` VALUES (5, '数据库');

-- ----------------------------
-- Table structure for lend_list
-- ----------------------------
DROP TABLE IF EXISTS `lend_list`;
CREATE TABLE `lend_list`  (
  `ser_num` bigint NOT NULL AUTO_INCREMENT,
  `book_id` bigint NOT NULL,
  `reader_id` bigint NOT NULL,
  `lend_date` date NULL DEFAULT NULL,
  `back_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`ser_num`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lend_list
-- ----------------------------
INSERT INTO `lend_list` VALUES (10, 3, 3119010139, '2022-05-18', NULL);

-- ----------------------------
-- Table structure for reader_card
-- ----------------------------
DROP TABLE IF EXISTS `reader_card`;
CREATE TABLE `reader_card`  (
  `reader_id` bigint NOT NULL,
  `username` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`reader_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reader_card
-- ----------------------------
INSERT INTO `reader_card` VALUES (3119010103, '马紫薇', '123456');
INSERT INTO `reader_card` VALUES (3119010113, '裴颖鑫', '123456');
INSERT INTO `reader_card` VALUES (3119010138, '熊民普', '123456');
INSERT INTO `reader_card` VALUES (3119010139, '李卓', '123456');
INSERT INTO `reader_card` VALUES (3119010143, '王子衡', '123456');
INSERT INTO `reader_card` VALUES (3119010146, '敖雨', '123456');

-- ----------------------------
-- Table structure for reader_info
-- ----------------------------
DROP TABLE IF EXISTS `reader_info`;
CREATE TABLE `reader_info`  (
  `reader_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birth` date NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`reader_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3119010147 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reader_info
-- ----------------------------
INSERT INTO `reader_info` VALUES (3119010103, '马紫薇', '女', '2000-07-17', '河南商丘C3', '10086');
INSERT INTO `reader_info` VALUES (3119010113, '裴颖鑫', '男', '2001-07-01', '河南商丘A1', '10086');
INSERT INTO `reader_info` VALUES (3119010138, '熊民普', '男', '2002-03-16', '河南商丘A1', '10086');
INSERT INTO `reader_info` VALUES (3119010139, '李卓', '男', '2001-07-08', '河南商丘A1', '10086');
INSERT INTO `reader_info` VALUES (3119010143, '王子衡', '男', '2000-05-16', '河南商丘A1', '10086');
INSERT INTO `reader_info` VALUES (3119010146, '敖雨', '男', '2000-09-13', '河南商丘A1', '10086');

SET FOREIGN_KEY_CHECKS = 1;
