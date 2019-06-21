-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-06-06 11:56:08
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tp5`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin_user`
--

CREATE TABLE `admin_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `admin_password` varchar(255) DEFAULT NULL,
  `phone` char(30) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `admin_user`
--

INSERT INTO `admin_user` (`id`, `admin_name`, `admin_password`, `phone`, `contact`) VALUES
(16, '1', 'c4ca4238a0b923820dcc509a6f75849b', '12345678945', ''),
(17, '123', '202cb962ac59075b964b07152d234b70', '12345674567', '');

-- --------------------------------------------------------

--
-- 表的结构 `auth_group`
--

CREATE TABLE `auth_group` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` char(80) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_group`
--

INSERT INTO `auth_group` (`id`, `title`, `status`, `rules`) VALUES
(3, '管理员管理', 1, '3'),
(2, '商品管理员', 1, '2,4,5');

-- --------------------------------------------------------

--
-- 表的结构 `auth_group_access`
--

CREATE TABLE `auth_group_access` (
  `uid` mediumint(8) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_group_access`
--

INSERT INTO `auth_group_access` (`uid`, `group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `auth_rule`
--

CREATE TABLE `auth_rule` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_rule`
--

INSERT INTO `auth_rule` (`id`, `name`, `title`, `type`, `status`, `condition`) VALUES
(3, 'index/users/admin_list', '管理员管理', 1, 1, ''),
(2, 'index/goods/product_category_add', '分类的添加', 1, 1, ''),
(4, 'index/index/index', '首页', 1, 1, ''),
(5, 'index/index/welcome', '欢迎页', 1, 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `goods`
--

CREATE TABLE `goods` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '商品自增id',
  `goodsname` varchar(255) DEFAULT NULL COMMENT '商品的名字',
  `tid` int(11) DEFAULT NULL COMMENT '分类id',
  `tpid` int(255) DEFAULT NULL COMMENT '分类路径',
  `imagepath` varchar(255) DEFAULT NULL COMMENT '商品图片id',
  `price` int(11) DEFAULT NULL COMMENT '成本价',
  `status` enum('1','0') DEFAULT NULL COMMENT '是否上架,0为上架,1为下架,默认0上架',
  `reorder` int(255) DEFAULT NULL,
  `text` text,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `goods`
--

INSERT INTO `goods` (`id`, `goodsname`, `tid`, `tpid`, `imagepath`, `price`, `status`, `reorder`, `text`, `contact`) VALUES
(4, '漫画', 66, 65, '197,196', 20, '0', 0, '<p>一本火影忍者</p>', 'QQ：898754328'),
(5, '高数书', 66, 65, '200,199,198', 34, '0', 0, '<p>一套三本</p>', 'QQ：163728653');

-- --------------------------------------------------------

--
-- 表的结构 `goods_files`
--

CREATE TABLE `goods_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `filepath` varchar(255) DEFAULT NULL COMMENT '文件路径'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `goods_files`
--

INSERT INTO `goods_files` (`id`, `filepath`) VALUES
(133, '/static/files/2016-05-21/14638097209622.png'),
(134, '/static/files/2016-05-21/14638097201175.png'),
(139, '/static/files/2016-05-22/14639150905420.png'),
(140, '/static/files/2016-05-22/14639150902407.png'),
(143, '/static/files/2016-05-22/14639151147182.png'),
(144, '/static/files/2016-05-22/14639151148792.png'),
(145, '/static/files/2016-05-22/14639187345637.png'),
(146, '/static/files/2016-05-22/14639187341378.png'),
(147, '/static/files/2016-05-22/14639187347790.png'),
(148, '/static/files/2016-06-04/14650218922772.png'),
(149, '/static/files/2016-06-04/14650218942648.png'),
(150, '/static/files/2016-06-04/14650218959492.png'),
(151, '/static/files/2016-06-04/14650218963224.png'),
(152, '/static/files/2016-06-04/14650219841455.png'),
(153, '/static/files/2016-06-04/14650219847163.png'),
(154, '/static/files/2016-06-04/14650219841815.png'),
(155, '/static/files/2016-06-04/14650220395622.png'),
(156, '/static/files/2016-06-04/14650220399035.png'),
(157, '/static/files/2016-06-04/14650220396109.png'),
(158, '/static/files/2016-06-04/14650220395965.png'),
(159, '/static/files/2016-06-04/14650221149057.png'),
(160, '/static/files/2016-06-04/14650221146537.png'),
(161, '/static/files/2016-06-04/14650221143013.png'),
(162, '/static/files/2016-06-04/14650221149739.png'),
(171, '/static/files/2016-06-04/14650226409275.png'),
(172, '/static/files/2016-06-04/14650226408105.png'),
(173, '/static/files/2016-06-04/14650226403585.png'),
(174, '/static/files/2016-06-04/14650226406634.png'),
(175, '/static/files/2016-06-04/14650227042915.png'),
(176, '/static/files/2016-06-04/14650227042746.png'),
(177, '/static/files/2016-06-04/14650227043707.png'),
(178, '/static/files/2016-06-04/14650227058684.png'),
(179, '/static/files/2019-06-06/15597922545800.png'),
(180, '/static/files/2019-06-06/15597922575852.png'),
(181, '/static/files/2019-06-06/15597922598086.png'),
(182, '/static/files/2019-06-06/15597924466500.png'),
(183, '/static/files/2019-06-06/15597924468937.png'),
(184, '/static/files/2019-06-06/15597925685100.png'),
(185, '/static/files/2019-06-06/15597925688570.png'),
(186, '/static/files/2019-06-06/15597927003383.png'),
(187, '/static/files/2019-06-06/15597927004334.png'),
(188, '/static/files/2019-06-06/15597928868467.png'),
(189, '/static/files/2019-06-06/15597929486566.png'),
(190, '/static/files/2019-06-06/15597930667514.png'),
(191, '/static/files/2019-06-06/15597930721266.png'),
(192, '/static/files/2019-06-06/15597932594799.png'),
(193, '/static/files/2019-06-06/15597932592832.png'),
(194, '/static/files/2019-06-06/15597935152365.png'),
(195, '/static/files/2019-06-06/15597935156265.png'),
(196, '/static/files/2019-06-06/15598096048497.png'),
(197, '/static/files/2019-06-06/15598096048356.png'),
(198, '/static/files/2019-06-06/15598164886935.png'),
(199, '/static/files/2019-06-06/15598164889384.png'),
(200, '/static/files/2019-06-06/15598164887220.png');

-- --------------------------------------------------------

--
-- 表的结构 `goods_type`
--

CREATE TABLE `goods_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `pid` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `level` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `goods_type`
--

INSERT INTO `goods_type` (`id`, `name`, `pid`, `path`, `level`) VALUES
(33, '租赁', 0, '0,33', 1),
(34, '出售', 0, '0,34', 1),
(35, '个人穿搭', 33, '0,33,35', 2),
(36, '男装', 35, '0,33,35,36', 3),
(37, '女装', 35, '0,33,35,37', 3),
(38, '饰品配件', 35, '0,33,35,38', 3),
(39, '男鞋', 35, '0,33,35,39', 3),
(40, '女鞋', 35, '0,33,35,40', 3),
(41, '生活用品', 33, '0,33,41', 2),
(42, '运动装备', 41, '0,33,41,42', 3),
(43, '出行工具', 41, '0,33,41,43', 3),
(46, '电子产品', 33, '0,33,46', 2),
(47, '手机电脑', 46, '0,33,46,47', 3),
(49, '个人穿搭', 34, '0,34,49', 2),
(50, '男装', 49, '0,34,49,50', 3),
(51, '女装', 49, '0,34,49,51', 3),
(52, '男鞋', 49, '0,34,49,52', 3),
(53, '女鞋', 49, '0,34,49,53', 3),
(54, '饰品配件', 49, '0,34,49,54', 3),
(55, '生活用品', 34, '0,34,55', 2),
(56, '家电', 46, '0,33,46,56', 3),
(57, '其他商品', 33, '0,33,57', 2),
(58, '运动装备', 55, '0,34,55,58', 3),
(59, '出行工具', 55, '0,34,55,59', 3),
(60, '其他设备', 46, '0,33,46,60', 3),
(61, '电子产品', 34, '0,34,61', 2),
(62, '手机电脑', 61, '0,34,61,62', 3),
(63, '家电', 61, '0,34,61,63', 3),
(64, '其他设备', 61, '0,34,61,64', 3),
(65, '书籍资料', 34, '0,34,65', 2),
(66, '书籍', 65, '0,34,65,66', 3),
(67, '辅导资料', 65, '0,34,65,67', 3),
(68, '美妆护肤', 34, '0,34,68', 2),
(69, 'edu', 57, '0,33,57,69', 3),
(70, '其他', 57, '0,33,57,70', 3),
(71, '彩妆', 68, '0,34,68,71', 3),
(72, '护肤品', 68, '0,34,68,72', 3),
(73, '其他商品', 34, '0,34,73', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`phone`),
  ADD UNIQUE KEY `email_2` (`phone`),
  ADD UNIQUE KEY `index_admin_name` (`admin_name`) USING BTREE,
  ADD UNIQUE KEY `index_admin_password` (`admin_password`),
  ADD UNIQUE KEY `admin_name` (`admin_name`),
  ADD UNIQUE KEY `admin_name_2` (`admin_name`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group_access`
--
ALTER TABLE `auth_group_access`
  ADD UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goods_files`
--
ALTER TABLE `goods_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goods_type`
--
ALTER TABLE `goods_type`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- 使用表AUTO_INCREMENT `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `auth_rule`
--
ALTER TABLE `auth_rule`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品自增id', AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `goods_files`
--
ALTER TABLE `goods_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
--
-- 使用表AUTO_INCREMENT `goods_type`
--
ALTER TABLE `goods_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
