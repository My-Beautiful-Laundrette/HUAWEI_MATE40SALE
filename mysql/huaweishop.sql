#设置客户端连接服务器端编码
SET NAMES UTF8;
#丢弃数据库，如果存在
DROP DATABASE IF EXISTS huaweishop;
#创建数据库，设置编码
CREATE DATABASE huaweishop CHARSET=UTF8;
#进入数据库
USE huaweishop;
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `goodsid` int(11) NOT NULL,
  `goodsname` varchar(255) NOT NULL,
  `goodsversion` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quty` int(11) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `pic` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('11', '15240069070', '27', '华为手环 B5', '黑色', '111.00', '1', '111.00', '201810085bbb0edc4fc6a1516.jpg');
INSERT INTO `cart` VALUES ('25', 'test11', '33', '配件 子类1_1', '6GB+128GB 全网通 黑色', '111.00', '2', '222.00', '201810095bbc6c72275895830.png');
INSERT INTO `cart` VALUES ('27', 'test11', '20', '华为平板 M5 10.8英寸', '6GB+64GB 全网通 黑色', '2488.00', '1', '2488.00', '201810075bb99988835528871.jpg');
INSERT INTO `cart` VALUES ('28', '18055606085', '5', '荣耀手环4', '6GB+64GB 全网通 黑色', '199.00', '2', '398.00', '201810035bb4627922eda9503.jpg');
INSERT INTO `cart` VALUES ('29', '18055606085', '5', '荣耀手环4', '6GB+64GB 全网通 黑色', '199.00', '1', '199.00', '201810035bb4627922eda9503.jpg');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `typeid` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `store` int(11) NOT NULL,
  `xiaoliang` int(11) NOT NULL DEFAULT '0',
  `company` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `descr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('4', '荣耀Note10 (荣耀手机)', '27', '2699.00', '500', '0', '深圳华为科技', '201810045bb5da5a77feb625.jpg', '0', '大屏液冷 吃鸡利器');
INSERT INTO `goods` VALUES ('5', '荣耀手环4', '31', '199.00', '500', '0', '深圳华为科技', '201810035bb4627922eda9503.jpg', '0', '触控大彩屏 实时心率检测');
INSERT INTO `goods` VALUES ('6', '华为 MateBook X Pro笔记本电脑', '30', '7988.00', '500', '0', '深圳华为科技', '201810035bb485bbab8673726.jpg', '0', ' ');
INSERT INTO `goods` VALUES ('7', '华为 P20 Pro(华为手机)', '28', '4988.00', '500', '0', '深圳华为科技', '201810035bb48953d531372.jpg', '0', '全球首发后置莱卡三摄');
INSERT INTO `goods` VALUES ('9', '荣耀路由2S', '33', '199.00', '500', '0', '深圳华为科技', '201810035bb4e765dc3b92285.jpg', '0', '4颗信号放大器 信号更穿墙');
INSERT INTO `goods` VALUES ('10', '荣耀MagicBook 笔记本电脑', '30', '5699.00', '500', '0', '深圳华为科技', '201810045bb59780b00826335.jpg', '0', ' ');
INSERT INTO `goods` VALUES ('11', '华为10000 移动电源 SuperCharge 快充版', '36', '229.00', '500', '0', '深圳华为科技', '201810045bb59901da7dd8488.jpg', '0', ' ');
INSERT INTO `goods` VALUES ('12', '华为 nova 3 (华为手机)', '28', '2799.00', '500', '0', '深圳华为科技', '201810045bb59a23d465d2084.jpg', '0', ' ');
INSERT INTO `goods` VALUES ('13', '华为 WATCH 2 Pro 智能手表', '32', '2288.00', '500', '0', '深圳华为科技', '201810045bb5b89d691729875.jpg', '0', '4G版');
INSERT INTO `goods` VALUES ('14', '荣耀xSport运动蓝牙耳机', '37', '229.00', '500', '0', '深圳华为科技', '201810045bb5cdb21657d5155.jpg', '0', ' ');
INSERT INTO `goods` VALUES ('15', '荣耀10 (荣耀手机)', '27', '2299.00', '500', '0', '深圳华为科技', '201810045bb62158740485553.jpg', '0', 'GT游戏加速 AIS手持夜景 AI摄影手机');
INSERT INTO `goods` VALUES ('16', '荣耀8X Max (荣耀手机) ', '27', '1499.00', '500', '0', '深圳华为科技', '201810045bb62ee9992367130.jpg', '0', '新千元旗舰');
INSERT INTO `goods` VALUES ('17', '华为 Mate 10 Pro (华为手机)', '28', '3999.00', '500', '0', '深圳华为科技', '201810055bb6f8e4880348382.jpg', '0', '(全网通版)');
INSERT INTO `goods` VALUES ('18', '华为小天鹅蓝牙音箱', '38', '99.00', '500', '0', '深圳华为科技', '201810075bb992eb27e3c8837.jpg', '0', '360°音效技术，音质更真实自然，简洁触控操作');
INSERT INTO `goods` VALUES ('19', '华为 P20硅胶保护壳', '39', '79.00', '500', '0', '深圳华为科技', '201810075bb9988c9bc2c7715.jpg', '0', '粉色');
INSERT INTO `goods` VALUES ('20', '华为平板 M5 10.8英寸', '29', '2488.00', '500', '0', '深圳华为科技', '201810075bb99988835528871.jpg', '0', '2K高清屏，哈曼卡顿调音，人脸解锁，贴心护眼模式，GPU Turbo 提升游戏体验。');
INSERT INTO `goods` VALUES ('21', '华为平板 M5 10.8英寸 翻盖保护套', '40', '149.00', '500', '0', '深圳华为科技', '201810075bb99a770d26a6401.jpg', '0', '（卡其色）');
INSERT INTO `goods` VALUES ('22', '0度护眼屏保 荣耀note10防蓝光钢化贴膜', '41', '236.00', '500', '0', '深圳华为科技', '201810075bb99b4dab3a05439.png', '0', '防眩目防蓝光');
INSERT INTO `goods` VALUES ('23', '荣耀 电视机盒子Pro', '34', '399.00', '500', '0', '深圳华为科技', '201810075bb99ea4c74424056.jpg', '0', '智能语音蓝牙操控');
INSERT INTO `goods` VALUES ('25', '荣耀Waterplay平板', '29', '1999.00', '500', '0', '深圳华为科技', '201810085bbb0d33415897574.jpg', '0', '防尘防水 影音平板');
INSERT INTO `goods` VALUES ('26', '华为路由器WS5100（白色）', '33', '159.00', '500', '0', '深圳华为科技', '201810085bbb0e52bc70e2722.jpg', '0', ' ');
INSERT INTO `goods` VALUES ('27', '华为手环 B5', '31', '1199.00', '500', '0', '深圳华为科技', '201810085bbb0edc4fc6a1516.jpg', '0', ' ');
INSERT INTO `goods` VALUES ('28', '华为儿童手表', '32', '688.00', '500', '0', '深圳华为科技', '201810085bbb0ffbeebe59673.jpg', '0', ' ');
INSERT INTO `goods` VALUES ('29', '荣耀心晴耳机 心率智能耳机', '37', '129.00', '500', '0', '深圳华为科技', '201810085bbb110bc10a54662.jpg', '0', ' ');
INSERT INTO `goods` VALUES ('30', '荣耀10 PC保护壳', '39', '39.00', '500', '0', '深圳华为科技', '201810085bbb119eba72f3312.jpg', '0', '（3D打印版）');
INSERT INTO `goods` VALUES ('31', '荣耀9i(荣耀手机)', '27', '1299.00', '500', '0', '深圳华为科技', '201810085bbb14bb6ab125912.jpg', '0', ' ');
INSERT INTO `goods` VALUES ('32', 'HUAWEI Mate RS 保时捷设计(华为手机)', '28', '12999.00', '500', '0', '深圳华为科技', '201810085bbb15388d9d26949.jpg', '0', ' ');
INSERT INTO `goods` VALUES ('33', '配件 子类1_1', '43', '111.00', '500', '0', 'A厂', '201810095bbc6c72275895830.png', '0', '1111');
INSERT INTO `goods` VALUES ('34', '华为智选全彩灯泡', '35', '89.00', '500', '0', '深圳华为科技', '201810095bbc9f108a1446957.jpg', '0', '耀.出彩');

-- ----------------------------
-- Table structure for links
-- ----------------------------
DROP TABLE IF EXISTS `links`;
CREATE TABLE `links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `site` varchar(255) NOT NULL,
  `display` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of links
-- ----------------------------
INSERT INTO `links` VALUES ('1', '华为官网', 'http://www.huawei.com/cn', '0');
INSERT INTO `links` VALUES ('2', '华为商城手机版', 'https://m.vmall.com', '0');
INSERT INTO `links` VALUES ('3', '荣耀官网', 'http://www.honor.cn', '0');
INSERT INTO `links` VALUES ('5', '花粉俱乐部', 'http://club.huawei.com', '0');
INSERT INTO `links` VALUES ('6', '网站地图', 'https://www.vmall.com/shopdc/sitemap.html', '0');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(30) NOT NULL,
  `username` varchar(255) NOT NULL,
  `goodsid` int(11) NOT NULL,
  `goodsname` varchar(255) NOT NULL,
  `goodsversion` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quty` int(11) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL,
  `display` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('21', '201810075bba1c84ae488', '18055606085', '13', '华为 WATCH 2 Pro 智能手表', '6GB+64GB 全网通 黑色', '201810045bb5b89d691729875.jpg', '2288.00', '1', '2288.00', '0', '1538923652', '0');
INSERT INTO `orders` VALUES ('22', '201810075bba2603e9567', '18055606085', '23', '荣耀 电视机盒子Pro', '', '201810075bb99ea4c74424056.jpg', '399.00', '2', '399.00', '0', '1538926083', '0');
INSERT INTO `orders` VALUES ('23', '201810075bba2603e9574', '18055606085', '9', '荣耀路由2S', '6GB+64GB 全网通 黑色', '201810035bb4e765dc3b92285.jpg', '199.00', '1', '199.00', '0', '1538926083', '0');
INSERT INTO `orders` VALUES ('24', '201810075bba265b89fca', '18055606085', '4', '荣耀Note10 ', '6GB+64GB 全网通 黑色', '201810045bb5da5a77feb625.jpg', '2699.00', '1', '2699.00', '0', '1538926171', '0');
INSERT INTO `orders` VALUES ('25', '201810075bba2c14c7306', '18055606085', '5', '荣耀手环4', '6GB+64GB 全网通 黑色', '201810035bb4627922eda9503.jpg', '199.00', '1', '199.00', '0', '1538927636', '1');
INSERT INTO `orders` VALUES ('28', '201810075bba2c9533741', '18055606085', '13', '华为 WATCH 2 Pro 智能手表', '6GB+64GB 全网通 黑色', '201810045bb5b89d691729875.jpg', '2288.00', '1', '2288.00', '0', '1538927765', '1');
INSERT INTO `orders` VALUES ('29', '201810085bba5bc832020', '18055606085', '6', '华为 MateBook X Pro', '6GB+64GB 全网通 黑色', '201810035bb485bbab8673726.jpg', '7988.00', '1', '7988.00', '0', '1538939848', '1');
INSERT INTO `orders` VALUES ('30', '201810085bba603a7836c', '18055606085', '4', '荣耀Note10 ', '6GB+64GB 全网通 黑色', '201810045bb5da5a77feb625.jpg', '2699.00', '1', '2699.00', '1', '1538940986', '1');
INSERT INTO `orders` VALUES ('31', '201810085995bbb6e7a17653', '15240069070', '7', '华为 P20 Pro', '6GB+64GB 全网通 黑色', '201810035bb48953d531372.jpg', '4988.00', '1', '4988.00', '1', '1539010170', '0');
INSERT INTO `orders` VALUES ('32', '201810094095bbc1dfa0516c', '18055606085', '10', '荣耀MagicBook 笔记本电脑', '6GB+64GB 全网通 黑色', '201810045bb59780b00826335.jpg', '5699.00', '1', '5699.00', '0', '1539055098', '1');
INSERT INTO `orders` VALUES ('33', '201810097735bbc6fbeeaa92', '18055606080', '33', '配件 子类1_1', '6GB+64GB 全网通 黑色', '201810095bbc6c72275895830.png', '111.00', '1', '111.00', '1', '1539076030', '0');
INSERT INTO `orders` VALUES ('34', '201810098195bbc6fbeeaaac', '18055606080', '5', '荣耀手环4', '6GB+64GB 全网通 黑色', '201810035bb4627922eda9503.jpg', '199.00', '1', '199.00', '0', '1539076030', '1');
INSERT INTO `orders` VALUES ('35', '201810098085bbc73d7a3480', '18055606080', '4', '荣耀Note10 ', '6GB+64GB 全网通 黑色', '201810045bb5da5a77feb625.jpg', '2699.00', '1', '2699.00', '0', '1539077079', '0');
INSERT INTO `orders` VALUES ('36', '201810156765bc3f7c8ea7aa', '18055606085', '9', '荣耀路由2S', '6GB+64GB 全网通 黑色', '201810035bb4e765dc3b92285.jpg', '199.00', '5', '995.00', '0', '1539569608', '1');
INSERT INTO `orders` VALUES ('37', '201810158185bc3f8ec9eb61', '18705186488', '6', '华为 MateBook X Pro笔记本电脑', '6GB+64GB 全网通 黑色', '201810035bb485bbab8673726.jpg', '7988.00', '2', '15976.00', '0', '1539569900', '0');
INSERT INTO `orders` VALUES ('38', '201810158895bc3f9614f624', '18705186488', '10', '荣耀MagicBook 笔记本电脑', '6GB+128GB 全网通 蓝色', '201810045bb59780b00826335.jpg', '5699.00', '1', '5699.00', '0', '1539570017', '0');
INSERT INTO `orders` VALUES ('39', '201810154615bc3f98d72a1b', '18705186488', '4', '荣耀Note10 ', '8GB+128GB 全网通 蓝色', '201810045bb5da5a77feb625.jpg', '2699.00', '1', '2699.00', '0', '1539570061', '0');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `pid` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `display` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('18', '手机', '0', '0,', '0');
INSERT INTO `type` VALUES ('22', '笔记本 & 平板', '0', '0,', '0');
INSERT INTO `type` VALUES ('23', '智能穿戴', '0', '0,', '0');
INSERT INTO `type` VALUES ('24', '智能家居', '0', '0,', '0');
INSERT INTO `type` VALUES ('25', '通用配件', '0', '0,', '0');
INSERT INTO `type` VALUES ('26', '专属配件', '0', '0,', '0');
INSERT INTO `type` VALUES ('27', '荣耀手机', '18', '0,18,', '0');
INSERT INTO `type` VALUES ('28', '华为手机', '18', '0,18,', '0');
INSERT INTO `type` VALUES ('29', '平板电脑', '22', '0,22,', '0');
INSERT INTO `type` VALUES ('30', '笔记本电脑', '22', '0,22,', '0');
INSERT INTO `type` VALUES ('31', '手环', '23', '0,23,', '0');
INSERT INTO `type` VALUES ('32', '手表', '23', '0,23,', '0');
INSERT INTO `type` VALUES ('33', '路由器', '24', '0,24,', '0');
INSERT INTO `type` VALUES ('34', '电视机盒子', '24', '0,24,', '0');
INSERT INTO `type` VALUES ('35', '照明', '24', '0,24,', '0');
INSERT INTO `type` VALUES ('36', '移动电源', '25', '0,25,', '0');
INSERT INTO `type` VALUES ('37', '耳机', '25', '0,25,', '0');
INSERT INTO `type` VALUES ('38', '音箱', '25', '0,25,', '0');
INSERT INTO `type` VALUES ('39', '保护壳', '26', '0,26,', '0');
INSERT INTO `type` VALUES ('40', '保护套', '26', '0,26,', '0');
INSERT INTO `type` VALUES ('41', '贴膜', '26', '0,26,', '0');
INSERT INTO `type` VALUES ('42', '配件', '0', '0,', '1');
INSERT INTO `type` VALUES ('43', '子类1', '42', '0,42,', '0');
INSERT INTO `type` VALUES ('44', '子类2', '42', '0,42,', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` char(32) NOT NULL,
  `level` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '3', '0', '1537848187');
INSERT INTO `user` VALUES ('3', 'user2', 'e10adc3949ba59abbe56e057f20f883e', '2', '0', '1537949455');
INSERT INTO `user` VALUES ('4', 'user3', 'e10adc3949ba59abbe56e057f20f883e', '2', '0', '1537949455');
INSERT INTO `user` VALUES ('16', '18055606085', 'e10adc3949ba59abbe56e057f20f883e', '0', '0', '1538460515');
INSERT INTO `user` VALUES ('17', '15240069070', 'e10adc3949ba59abbe56e057f20f883e', '0', '0', '1538460515');
INSERT INTO `user` VALUES ('40', '13505568809', 'e10adc3949ba59abbe56e057f20f883e', '0', '0', '1539058429');
INSERT INTO `user` VALUES ('45', '18705186488', 'e10adc3949ba59abbe56e057f20f883e', '0', '0', '1539569654');

-- ----------------------------
-- Table structure for user_details
-- ----------------------------
DROP TABLE IF EXISTS `user_details`;
CREATE TABLE `user_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `username` varchar(20) NOT NULL,
  `consignee` varchar(20) DEFAULT NULL,
  `age` tinyint(4) NOT NULL DEFAULT '0',
  `sex` tinyint(4) NOT NULL DEFAULT '1',
  `tel` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `postcode` varchar(10) NOT NULL DEFAULT '',
  `address_province` varchar(10) NOT NULL DEFAULT '',
  `address_city` varchar(10) NOT NULL DEFAULT '',
  `address_county` varchar(30) NOT NULL DEFAULT '',
  `address_community` varchar(50) NOT NULL DEFAULT '',
  `address_specific` varchar(50) NOT NULL DEFAULT '',
  `point` int(10) NOT NULL DEFAULT '0',
  `youhuiquan` tinyint(4) NOT NULL DEFAULT '0',
  `daijinquan` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_details
-- ----------------------------
INSERT INTO `user_details` VALUES ('6', '6', 'laowng', '猛猛', '30', '1', '10086', 'laowang@qq.com', '24650', '山东省', '济南市', '市区', '市区', '市区', '127', '0', '0');
INSERT INTO `user_details` VALUES ('7', '17', '15240069070', 'liu', '0', '1', '15240069070', '123', '246500', '安徽', '安庆', '迎江', '主干道', '详细地址', '50', '0', '0');
INSERT INTO `user_details` VALUES ('8', '16', '18055606085', '刘勇', '0', '1', '18055606085', '1791053991@qq.com', '', '安徽', '安庆', '宿松县', '街道', '2号', '1345', '0', '0');
INSERT INTO `user_details` VALUES ('23', '34', '13505568800', null, '0', '1', '', '', '', '', '', '', '', '', '0', '0', '0');
INSERT INTO `user_details` VALUES ('31', '40', '13505568809', null, '0', '1', '', '', '', '', '', '', '', '', '0', '0', '0');
INSERT INTO `user_details` VALUES ('32', '44', '18055606080', 'liu', '0', '1', '18055606080', '', '246500', '安徽', '安庆', '宿松', '主街道', '详细地址', '31', '0', '0');
INSERT INTO `user_details` VALUES ('33', '45', '18705186488', '张帅比', '0', '1', '18705186488', '', '', '江苏', '南京', '秦淮区', '朝天宫', '中泰大厦', '244', '0', '0');
