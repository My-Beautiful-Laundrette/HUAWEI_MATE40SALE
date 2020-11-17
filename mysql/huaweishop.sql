-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2020-11-16 17:05:26
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `huaweishop`
--

-- --------------------------------------------------------

--
-- 表的结构 `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `goodsid` int(11) NOT NULL,
  `goodsname` varchar(255) NOT NULL,
  `goodsversion` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quty` int(11) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `pic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cart`
--

INSERT INTO `cart` (`id`, `username`, `goodsid`, `goodsname`, `goodsversion`, `price`, `quty`, `subtotal`, `pic`) VALUES
(11, '15240069070', 27, '华为手环 B5', '黑色', '111.00', 1, '111.00', '201810085bbb0edc4fc6a1516.jpg'),
(25, 'test11', 33, '配件 子类1_1', '6GB+128GB 全网通 黑色', '111.00', 2, '222.00', '201810095bbc6c72275895830.png'),
(27, 'test11', 20, '华为平板 M5 10.8英寸', '6GB+64GB 全网通 黑色', '2488.00', 1, '2488.00', '201810075bb99988835528871.jpg'),
(28, '18055606085', 5, '荣耀手环4', '6GB+64GB 全网通 黑色', '199.00', 2, '398.00', '201810035bb4627922eda9503.jpg'),
(29, '18055606085', 5, '荣耀手环4', '6GB+64GB 全网通 黑色', '199.00', 1, '199.00', '201810035bb4627922eda9503.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `goods`
--

CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `typeid` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `store` int(11) NOT NULL,
  `xiaoliang` int(11) NOT NULL DEFAULT '0',
  `company` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `descr` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `goods`
--

INSERT INTO `goods` (`id`, `name`, `typeid`, `price`, `store`, `xiaoliang`, `company`, `pic`, `status`, `descr`) VALUES
(4, '荣耀Note10 (荣耀手机)', 27, '2699.00', 500, 0, '深圳华为科技', '201810045bb5da5a77feb625.jpg', 0, '大屏液冷 吃鸡利器'),
(5, '荣耀手环4', 31, '199.00', 500, 0, '深圳华为科技', '201810035bb4627922eda9503.jpg', 0, '触控大彩屏 实时心率检测'),
(6, '华为 MateBook X Pro笔记本电脑', 30, '7988.00', 500, 0, '深圳华为科技', '201810035bb485bbab8673726.jpg', 0, ' '),
(7, '华为 P20 Pro(华为手机)', 28, '4988.00', 500, 0, '深圳华为科技', '201810035bb48953d531372.jpg', 0, '全球首发后置莱卡三摄'),
(9, '荣耀路由2S', 33, '199.00', 500, 0, '深圳华为科技', '201810035bb4e765dc3b92285.jpg', 0, '4颗信号放大器 信号更穿墙'),
(10, '荣耀MagicBook 笔记本电脑', 30, '5699.00', 500, 0, '深圳华为科技', '201810045bb59780b00826335.jpg', 0, ' '),
(11, '华为10000 移动电源 SuperCharge 快充版', 36, '229.00', 500, 0, '深圳华为科技', '201810045bb59901da7dd8488.jpg', 0, ' '),
(12, '华为 nova 3 (华为手机)', 28, '2799.00', 500, 0, '深圳华为科技', '201810045bb59a23d465d2084.jpg', 0, ' '),
(13, '华为 WATCH 2 Pro 智能手表', 32, '2288.00', 500, 0, '深圳华为科技', '201810045bb5b89d691729875.jpg', 0, '4G版'),
(14, '荣耀xSport运动蓝牙耳机', 37, '229.00', 500, 0, '深圳华为科技', '201810045bb5cdb21657d5155.jpg', 0, ' '),
(15, '荣耀10 (荣耀手机)', 27, '2299.00', 500, 0, '深圳华为科技', '201810045bb62158740485553.jpg', 0, 'GT游戏加速 AIS手持夜景 AI摄影手机'),
(16, '荣耀8X Max (荣耀手机) ', 27, '1499.00', 500, 0, '深圳华为科技', '201810045bb62ee9992367130.jpg', 0, '新千元旗舰'),
(17, '华为 Mate 10 Pro (华为手机)', 28, '3999.00', 500, 0, '深圳华为科技', '201810055bb6f8e4880348382.jpg', 0, '(全网通版)'),
(18, '华为小天鹅蓝牙音箱', 38, '99.00', 500, 0, '深圳华为科技', '201810075bb992eb27e3c8837.jpg', 0, '360°音效技术，音质更真实自然，简洁触控操作'),
(19, '华为 P20硅胶保护壳', 39, '79.00', 500, 0, '深圳华为科技', '201810075bb9988c9bc2c7715.jpg', 0, '粉色'),
(20, '华为平板 M5 10.8英寸', 29, '2488.00', 500, 0, '深圳华为科技', '201810075bb99988835528871.jpg', 0, '2K高清屏，哈曼卡顿调音，人脸解锁，贴心护眼模式，GPU Turbo 提升游戏体验。'),
(21, '华为平板 M5 10.8英寸 翻盖保护套', 40, '149.00', 500, 0, '深圳华为科技', '201810075bb99a770d26a6401.jpg', 0, '（卡其色）'),
(22, '0度护眼屏保 荣耀note10防蓝光钢化贴膜', 41, '236.00', 500, 0, '深圳华为科技', '201810075bb99b4dab3a05439.png', 0, '防眩目防蓝光'),
(23, '荣耀 电视机盒子Pro', 34, '399.00', 500, 0, '深圳华为科技', '201810075bb99ea4c74424056.jpg', 0, '智能语音蓝牙操控'),
(25, '荣耀Waterplay平板', 29, '1999.00', 500, 0, '深圳华为科技', '201810085bbb0d33415897574.jpg', 0, '防尘防水 影音平板'),
(26, '华为路由器WS5100（白色）', 33, '159.00', 500, 0, '深圳华为科技', '201810085bbb0e52bc70e2722.jpg', 0, ' '),
(27, '华为手环 B5', 31, '1199.00', 500, 0, '深圳华为科技', '201810085bbb0edc4fc6a1516.jpg', 0, ' '),
(28, '华为儿童手表', 32, '688.00', 500, 0, '深圳华为科技', '201810085bbb0ffbeebe59673.jpg', 0, ' '),
(29, '荣耀心晴耳机 心率智能耳机', 37, '129.00', 500, 0, '深圳华为科技', '201810085bbb110bc10a54662.jpg', 0, ' '),
(30, '荣耀10 PC保护壳', 39, '39.00', 500, 0, '深圳华为科技', '201810085bbb119eba72f3312.jpg', 0, '（3D打印版）'),
(31, '荣耀9i(荣耀手机)', 27, '1299.00', 500, 0, '深圳华为科技', '201810085bbb14bb6ab125912.jpg', 0, ' '),
(32, 'HUAWEI Mate RS 保时捷设计(华为手机)', 28, '12999.00', 500, 0, '深圳华为科技', '201810085bbb15388d9d26949.jpg', 0, ' '),
(33, '配件 子类1_1', 43, '111.00', 500, 0, 'A厂', '201810095bbc6c72275895830.png', 0, '1111'),
(34, '华为智选全彩灯泡', 35, '89.00', 500, 0, '深圳华为科技', '201810095bbc9f108a1446957.jpg', 0, '耀.出彩');

-- --------------------------------------------------------

--
-- 表的结构 `home_boutique`
--

CREATE TABLE `home_boutique` (
  `name` varchar(100) NOT NULL COMMENT '推荐_图片',
  `intro` varchar(100) NOT NULL COMMENT '活动简介',
  `title` varchar(100) NOT NULL COMMENT '商品名称',
  `price` varchar(1000) NOT NULL COMMENT '商品价格',
  `url` varchar(50) CHARACTER SET utf32 COLLATE utf32_danish_ci NOT NULL DEFAULT 'www.baiud.com' COMMENT '保存跳转地址'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `home_boutique`
--

INSERT INTO `home_boutique` (`name`, `intro`, `title`, `price`, `url`) VALUES
('cj_1.png', '享3期免息', '华为平板M6 8.4', '1799', ''),
('cj_2.png', '拼团更优惠', '华为平板M6 8.4', '1799', ''),
('cj_3.png', '预订最高省3000+', '华为平板M6 8.4', '1799', ''),
('cj_4.png', '6期免息', '华为平板M6 8.4', '1799', ''),
('cj_5.png', '6期免息', '华为平板M6 8.4', '1799', '');

-- --------------------------------------------------------

--
-- 表的结构 `home_carousel`
--

CREATE TABLE `home_carousel` (
  `path` varchar(50) NOT NULL COMMENT '保存轮播图文件名',
  `link` varchar(60) NOT NULL COMMENT '保存跳转地址'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `home_carousel`
--

INSERT INTO `home_carousel` (`path`, `link`) VALUES
('', ''),
('4.jpg', 'www.baidu.com'),
('1.jpg', 'www.baidu.com'),
('1.jpg', 'www.baidu.com'),
('2.jpg', 'www.baidu.com'),
('3.jpg', 'www.baidu.com');

-- --------------------------------------------------------

--
-- 表的结构 `home_limit`
--

CREATE TABLE `home_limit` (
  `name` varchar(50) NOT NULL COMMENT '限时购图片',
  `intro` varchar(50) NOT NULL COMMENT '商品名称',
  `title` varchar(50) NOT NULL COMMENT '活动简介',
  `mate_url` varchar(100) NOT NULL COMMENT '通往链接'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `home_limit`
--

INSERT INTO `home_limit` (`name`, `intro`, `title`, `mate_url`) VALUES
('miao_1.png', 'MateBook X Pro', '享3期免息', 'www.baidu.com'),
('miao_2.png', '荣耀手环6', '预订立省10元', 'www.baidu.com'),
('miao_3.png', 'MatePad Pro', '享3期免息', 'www.baidu.com'),
('miao_4.png', 'Mate 30E Pro', '晒单赢好礼', 'www.baidu.com'),
('miao_5.png', '荣耀猎人游戏本', '新品3期免息', 'www.baidu.com'),
('miao_6.png', 'WATCH GT 2', '享3期免息', 'www.baidu.com');

-- --------------------------------------------------------

--
-- 表的结构 `home_option`
--

CREATE TABLE `home_option` (
  `name` varchar(100) NOT NULL COMMENT '首页滑块图片',
  `intro` varchar(100) CHARACTER SET utf32 NOT NULL COMMENT '内容',
  `on` varchar(100) NOT NULL COMMENT '链接地址'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `home_option`
--

INSERT INTO `home_option` (`name`, `intro`, `on`) VALUES
('option_1.png', '会员领卷', 'www.baidu.com'),
('option_2.png', '华为数码', 'www.baidu.com'),
('option_3.png', 'mate优选', 'www.baidu.com'),
('option_4.png', '荣耀数码', 'www.baidu.com'),
('option_5.png', '以旧换新', 'www.baidu.com'),
('option_6.png', '邀请有礼', 'www.baidu.com'),
('option_7.png', '众测', 'www.baidu.com'),
('option_8.png', '正在直播', 'www.baidu.com'),
('option_9.png', '积分商城', 'www.baidu.com'),
('option_10.png', '精选特卖', 'www.baidu.com');

-- --------------------------------------------------------

--
-- 表的结构 `links`
--

CREATE TABLE `links` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `site` varchar(255) NOT NULL,
  `display` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `links`
--

INSERT INTO `links` (`id`, `name`, `site`, `display`) VALUES
(1, '华为官网', 'http://www.huawei.com/cn', 0),
(2, '华为商城手机版', 'https://m.vmall.com', 0),
(3, '荣耀官网', 'http://www.honor.cn', 0),
(5, '花粉俱乐部', 'http://club.huawei.com', 0),
(6, '网站地图', 'https://www.vmall.com/shopdc/sitemap.html', 0);

-- --------------------------------------------------------

--
-- 表的结构 `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
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
  `addtime` int(10) UNSIGNED NOT NULL,
  `display` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `username`, `goodsid`, `goodsname`, `goodsversion`, `pic`, `price`, `quty`, `subtotal`, `status`, `addtime`, `display`) VALUES
(21, '201810075bba1c84ae488', '18055606085', 13, '华为 WATCH 2 Pro 智能手表', '6GB+64GB 全网通 黑色', '201810045bb5b89d691729875.jpg', '2288.00', 1, '2288.00', 0, 1538923652, 0),
(22, '201810075bba2603e9567', '18055606085', 23, '荣耀 电视机盒子Pro', '', '201810075bb99ea4c74424056.jpg', '399.00', 2, '399.00', 0, 1538926083, 0),
(23, '201810075bba2603e9574', '18055606085', 9, '荣耀路由2S', '6GB+64GB 全网通 黑色', '201810035bb4e765dc3b92285.jpg', '199.00', 1, '199.00', 0, 1538926083, 0),
(24, '201810075bba265b89fca', '18055606085', 4, '荣耀Note10 ', '6GB+64GB 全网通 黑色', '201810045bb5da5a77feb625.jpg', '2699.00', 1, '2699.00', 0, 1538926171, 0),
(25, '201810075bba2c14c7306', '18055606085', 5, '荣耀手环4', '6GB+64GB 全网通 黑色', '201810035bb4627922eda9503.jpg', '199.00', 1, '199.00', 0, 1538927636, 1),
(28, '201810075bba2c9533741', '18055606085', 13, '华为 WATCH 2 Pro 智能手表', '6GB+64GB 全网通 黑色', '201810045bb5b89d691729875.jpg', '2288.00', 1, '2288.00', 0, 1538927765, 1),
(29, '201810085bba5bc832020', '18055606085', 6, '华为 MateBook X Pro', '6GB+64GB 全网通 黑色', '201810035bb485bbab8673726.jpg', '7988.00', 1, '7988.00', 0, 1538939848, 1),
(30, '201810085bba603a7836c', '18055606085', 4, '荣耀Note10 ', '6GB+64GB 全网通 黑色', '201810045bb5da5a77feb625.jpg', '2699.00', 1, '2699.00', 1, 1538940986, 1),
(31, '201810085995bbb6e7a17653', '15240069070', 7, '华为 P20 Pro', '6GB+64GB 全网通 黑色', '201810035bb48953d531372.jpg', '4988.00', 1, '4988.00', 1, 1539010170, 0),
(32, '201810094095bbc1dfa0516c', '18055606085', 10, '荣耀MagicBook 笔记本电脑', '6GB+64GB 全网通 黑色', '201810045bb59780b00826335.jpg', '5699.00', 1, '5699.00', 0, 1539055098, 1),
(33, '201810097735bbc6fbeeaa92', '18055606080', 33, '配件 子类1_1', '6GB+64GB 全网通 黑色', '201810095bbc6c72275895830.png', '111.00', 1, '111.00', 1, 1539076030, 0),
(34, '201810098195bbc6fbeeaaac', '18055606080', 5, '荣耀手环4', '6GB+64GB 全网通 黑色', '201810035bb4627922eda9503.jpg', '199.00', 1, '199.00', 0, 1539076030, 1),
(35, '201810098085bbc73d7a3480', '18055606080', 4, '荣耀Note10 ', '6GB+64GB 全网通 黑色', '201810045bb5da5a77feb625.jpg', '2699.00', 1, '2699.00', 0, 1539077079, 0),
(36, '201810156765bc3f7c8ea7aa', '18055606085', 9, '荣耀路由2S', '6GB+64GB 全网通 黑色', '201810035bb4e765dc3b92285.jpg', '199.00', 5, '995.00', 0, 1539569608, 1),
(37, '201810158185bc3f8ec9eb61', '18705186488', 6, '华为 MateBook X Pro笔记本电脑', '6GB+64GB 全网通 黑色', '201810035bb485bbab8673726.jpg', '7988.00', 2, '15976.00', 0, 1539569900, 0),
(38, '201810158895bc3f9614f624', '18705186488', 10, '荣耀MagicBook 笔记本电脑', '6GB+128GB 全网通 蓝色', '201810045bb59780b00826335.jpg', '5699.00', 1, '5699.00', 0, 1539570017, 0),
(39, '201810154615bc3f98d72a1b', '18705186488', 4, '荣耀Note10 ', '8GB+128GB 全网通 蓝色', '201810045bb5da5a77feb625.jpg', '2699.00', 1, '2699.00', 0, 1539570061, 0);

-- --------------------------------------------------------

--
-- 表的结构 `type`
--

CREATE TABLE `type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `pid` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `display` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `type`
--

INSERT INTO `type` (`id`, `name`, `pid`, `path`, `display`) VALUES
(18, '手机', 0, '0,', 0),
(22, '笔记本 & 平板', 0, '0,', 0),
(23, '智能穿戴', 0, '0,', 0),
(24, '智能家居', 0, '0,', 0),
(25, '通用配件', 0, '0,', 0),
(26, '专属配件', 0, '0,', 0),
(27, '荣耀手机', 18, '0,18,', 0),
(28, '华为手机', 18, '0,18,', 0),
(29, '平板电脑', 22, '0,22,', 0),
(30, '笔记本电脑', 22, '0,22,', 0),
(31, '手环', 23, '0,23,', 0),
(32, '手表', 23, '0,23,', 0),
(33, '路由器', 24, '0,24,', 0),
(34, '电视机盒子', 24, '0,24,', 0),
(35, '照明', 24, '0,24,', 0),
(36, '移动电源', 25, '0,25,', 0),
(37, '耳机', 25, '0,25,', 0),
(38, '音箱', 25, '0,25,', 0),
(39, '保护壳', 26, '0,26,', 0),
(40, '保护套', 26, '0,26,', 0),
(41, '贴膜', 26, '0,26,', 0),
(42, '配件', 0, '0,', 1),
(43, '子类1', 42, '0,42,', 0),
(44, '子类2', 42, '0,42,', 0);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` char(32) NOT NULL,
  `level` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `addtime` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`, `status`, `addtime`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 3, 0, 1537848187),
(3, 'user2', 'e10adc3949ba59abbe56e057f20f883e', 2, 0, 1537949455),
(4, 'user3', 'e10adc3949ba59abbe56e057f20f883e', 2, 0, 1537949455),
(16, '18055606085', 'e10adc3949ba59abbe56e057f20f883e', 0, 0, 1538460515),
(17, '15240069070', 'e10adc3949ba59abbe56e057f20f883e', 0, 0, 1538460515),
(40, '13505568809', 'e10adc3949ba59abbe56e057f20f883e', 0, 0, 1539058429),
(45, '18705186488', 'e10adc3949ba59abbe56e057f20f883e', 0, 0, 1539569654);

-- --------------------------------------------------------

--
-- 表的结构 `user_details`
--

CREATE TABLE `user_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
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
  `daijinquan` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `username`, `consignee`, `age`, `sex`, `tel`, `email`, `postcode`, `address_province`, `address_city`, `address_county`, `address_community`, `address_specific`, `point`, `youhuiquan`, `daijinquan`) VALUES
(6, 6, 'laowng', '猛猛', 30, 1, '10086', 'laowang@qq.com', '24650', '山东省', '济南市', '市区', '市区', '市区', 127, 0, 0),
(7, 17, '15240069070', 'liu', 0, 1, '15240069070', '123', '246500', '安徽', '安庆', '迎江', '主干道', '详细地址', 50, 0, 0),
(8, 16, '18055606085', '刘勇', 0, 1, '18055606085', '1791053991@qq.com', '', '安徽', '安庆', '宿松县', '街道', '2号', 1345, 0, 0),
(23, 34, '13505568800', NULL, 0, 1, '', '', '', '', '', '', '', '', 0, 0, 0),
(31, 40, '13505568809', NULL, 0, 1, '', '', '', '', '', '', '', '', 0, 0, 0),
(32, 44, '18055606080', 'liu', 0, 1, '18055606080', '', '246500', '安徽', '安庆', '宿松', '主街道', '详细地址', 31, 0, 0),
(33, 45, '18705186488', '张帅比', 0, 1, '18705186488', '', '', '江苏', '南京', '秦淮区', '朝天宫', '中泰大厦', 244, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- 使用表AUTO_INCREMENT `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- 使用表AUTO_INCREMENT `links`
--
ALTER TABLE `links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- 使用表AUTO_INCREMENT `type`
--
ALTER TABLE `type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- 使用表AUTO_INCREMENT `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
