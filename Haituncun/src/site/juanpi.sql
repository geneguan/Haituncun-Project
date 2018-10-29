/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : juanpi

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-10-27 16:52:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for juanpicar
-- ----------------------------
DROP TABLE IF EXISTS `juanpicar`;
CREATE TABLE `juanpicar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_url` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `cprice` decimal(10,2) NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- ----------------------------
-- Records of juanpicar
-- ----------------------------

-- ----------------------------
-- Table structure for juanpigoods
-- ----------------------------
DROP TABLE IF EXISTS `juanpigoods`;
CREATE TABLE `juanpigoods` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `gtype` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `goods_id` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `goods_code` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `brand_id` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `shop_id` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `source_type` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `goods_type` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `good_rate` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `cprice` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `oprice` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `tuan_price` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `join_number` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `hot_type` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `huiguo` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `is_vip` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `pic_url` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `start_time` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `end_time` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `show_stime` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `show_etime` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `sale_mode` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `sales_type` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `sale_type` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `is_new` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `tuan_longpic` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `activity_type` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `target_url` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `sort` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `target` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `residue` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `inventory` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `memberPrice` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `memberCommission` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- ----------------------------
-- Records of juanpigoods
-- ----------------------------
INSERT INTO `juanpigoods` VALUES ('1', '3', '3', '97234014', '26687328', '1260650', '5955162', '0', '0', '2.5', '49.9', '199', '0', '0', '2', '0', '0', 'https://goods8.juancdn.com/goods/181008/e/4/5bbb3c8933b0896b2d3b1d54_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '秋冬修身蕾丝打底衫女', '1540173600', '1540605600', '1540173600', '1540605600', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/97234014', '1', '_blank', '10�?2�?', '864', '', '');
INSERT INTO `juanpigoods` VALUES ('2', '3', '3', '93234614', '24987307', '1260650', '5955162', '0', '0', '2.5', '49.9', '199', '0', '0', '2', '0', '0', 'https://goods3.juancdn.com/goods/180922/5/3/5ba6034bb6f8ea7423462df1_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', 'V领T恤假二件打底�?', '1540173600', '1540605600', '1540173600', '1540605600', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/93234614', '2', '_blank', '10�?2�?', '360', '', '');
INSERT INTO `juanpigoods` VALUES ('3', '3', '3', '95824741', '26207633', '1016570', '5835136', '0', '0', '1.2', '69', '599', '0', '0', '2', '0', '1', 'https://goods2.juancdn.com/tao/180728/2/3/5b5c25e1b6f8ea46974cbbd1_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '中年妈妈秋装宽松衬衫', '1540087200', '1540519200', '1540087200', '1540519200', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/95824741', '3', '_blank', '10�?1�?', '160', '68.00', '0.1300');
INSERT INTO `juanpigoods` VALUES ('4', '3', '3', '90234714', '22017268', '1260650', '5955162', '0', '0', '2.0', '39.9', '199', '0', '0', '2', '0', '0', 'https://goods2.juancdn.com/goods/180926/2/2/5bab2c4333b08915ec7b30a8_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '宽松百搭时尚打底T�?', '1540173600', '1540605600', '1540173600', '1540605600', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/90234714', '4', '_blank', '10�?2�?', '648', '', '');
INSERT INTO `juanpigoods` VALUES ('5', '3', '3', '97334804', '25857357', '1260650', '5955162', '0', '0', '3.8', '76', '199', '0', '0', '2', '0', '0', 'https://goods5.juancdn.com/goods/180918/8/b/5ba1091b33b089510120c890_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '初秋中长款两件套裙子', '1540173600', '1540605600', '1540173600', '1540605600', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/97334804', '5', '_blank', '10�?2�?', '270', '', '');
INSERT INTO `juanpigoods` VALUES ('6', '3', '3', '93824051', '24597095', '1016570', '5835136', '0', '0', '1.8', '109', '599', '0', '0', '2', '0', '1', 'https://goods7.juancdn.com/tao/180830/d/d/5b879b65b6f8ea4692337f05_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '妈妈秋装短款连帽夹克', '1540087200', '1540519200', '1540087200', '1540519200', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/93824051', '6', '_blank', '10�?1�?', '200', '108.00', '0.1300');
INSERT INTO `juanpigoods` VALUES ('7', '3', '3', '99334624', '24707267', '1260650', '5955162', '0', '0', '2.5', '49.9', '199', '0', '0', '2', '0', '0', 'https://goods3.juancdn.com/goods/180912/5/2/5b989aadb6f8ea212145a117_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', 'chic早秋长袖连衣裙子', '1540173600', '1540605600', '1540173600', '1540605600', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/99334624', '7', '_blank', '10�?2�?', '270', '', '');
INSERT INTO `juanpigoods` VALUES ('8', '3', '3', '90334924', '23597427', '1260650', '5955162', '0', '0', '3.3', '66', '199', '0', '0', '2', '0', '0', 'https://goods1.juancdn.com/goods/180923/0/4/5ba76b2bb6f8ea474c0385f6_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '黑色中长款过膝连衣裙', '1540173600', '1540605600', '1540173600', '1540605600', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/90334924', '8', '_blank', '10�?2�?', '108', '', '');
INSERT INTO `juanpigoods` VALUES ('9', '3', '3', '92824551', '28743377', '1016570', '5835136', '0', '0', '1.5', '89', '599', '0', '0', '2', '0', '1', 'https://goods5.juancdn.com/tao/171028/9/8/59f3595f8150a1398d4fa26c_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '妈妈装复古加绒连衣裙', '1540087200', '1540519200', '1540087200', '1540519200', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/92824551', '9', '_blank', '10�?1�?', '320', '88.00', '0.1300');
INSERT INTO `juanpigoods` VALUES ('10', '3', '3', '99334574', '20747857', '1260650', '5955162', '0', '0', '3.0', '59.9', '199', '0', '0', '2', '0', '0', 'https://goods3.juancdn.com/goods/180917/4/1/5b9f778cb6f8ea43ab1b5913_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '时尚chic早秋二件套裙', '1540173600', '1540605600', '1540173600', '1540605600', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/99334574', '10', '_blank', '10�?2�?', '108', '', '');
INSERT INTO `juanpigoods` VALUES ('11', '3', '3', '93334774', '27887767', '1260650', '5955162', '0', '0', '3.3', '66', '199', '0', '0', '2', '0', '0', 'https://goods3.juancdn.com/goods/180922/4/4/5ba5f996b6f8ea69c7188f4f_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '百搭bf短款牛仔外套�?', '1540173600', '1540605600', '1540173600', '1540605600', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/93334774', '11', '_blank', '10�?2�?', '144', '', '');
INSERT INTO `juanpigoods` VALUES ('12', '3', '3', '95824861', '25007626', '1016570', '5835136', '0', '0', '2.2', '129', '599', '0', '0', '2', '0', '1', 'https://goods5.juancdn.com/tao/180831/9/7/5b889c2d33b0894a461acec3_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '妈妈秋装外套毛呢气质', '1540087200', '1540519200', '1540087200', '1540519200', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/95824861', '12', '_blank', '10�?1�?', '300', '128.00', '0.1300');
INSERT INTO `juanpigoods` VALUES ('13', '3', '3', '92334694', '23687018', '1260650', '5955162', '0', '0', '3.5', '69.9', '199', '0', '0', '2', '0', '0', 'https://goods3.juancdn.com/goods/181008/5/8/5bbb365bb6f8ea7e5028eefd_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '宽松中长款刺绣外套女', '1540173600', '1540605600', '1540173600', '1540605600', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/92334694', '13', '_blank', '10�?2�?', '270', '', '');
INSERT INTO `juanpigoods` VALUES ('14', '3', '3', '94434004', '24897256', '1260650', '5955162', '0', '0', '3.3', '66', '199', '0', '0', '2', '0', '0', 'https://goods6.juancdn.com/goods/180911/a/e/5b9748a433b08908707e9b7c_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '时尚条纹拼接连衣裙潮', '1540173600', '1540605600', '1540173600', '1540605600', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/94434004', '14', '_blank', '10�?2�?', '90', '', '');
INSERT INTO `juanpigoods` VALUES ('15', '3', '3', '92824671', '20087404', '1016570', '5835136', '0', '0', '2.0', '119', '599', '0', '0', '2', '0', '1', 'https://goods5.juancdn.com/tao/180818/8/8/5b77ca54b6f8ea12da4c2e52_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '妈妈秋装西装领风�?', '1540087200', '1540519200', '1540087200', '1540519200', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/92824671', '15', '_blank', '10�?1�?', '160', '118.00', '0.1300');
INSERT INTO `juanpigoods` VALUES ('16', '3', '3', '98044341', '28757529', '1696595', '5035128', '0', '0', '1.7', '68', '398', '0', '0', '2', '0', '1', 'https://goods1.juancdn.com/tao/181015/0/d/5bc490f233b0891df701dbd6_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '中长款蕾丝拼接针织衫', '1540173600', '1540605600', '1540173600', '1540605600', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/98044341', '16', '_blank', '10�?2�?', '1200', '67.00', '0.1300');
INSERT INTO `juanpigoods` VALUES ('17', '3', '3', '97104542', '29297378', '0', '5355170', '0', '0', '2.9', '88', '299', '0', '0', '2', '0', '0', 'https://goods5.juancdn.com/goods/181009/8/f/5bbc3b3533b08976c13d946e_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '加绒连帽中长款外套女', '1540173600', '1540605600', '1540173600', '1540605600', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/97104542', '17', '_blank', '10�?2�?', '6000', '', '');
INSERT INTO `juanpigoods` VALUES ('18', '3', '3', '98824181', '17936645', '1016570', '5835136', '0', '0', '2.8', '169', '599', '0', '0', '2', '0', '1', 'https://goods8.juancdn.com/tao/170212/f/3/58a069f4151ad1a7398b459c_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '气质优雅印花翻领外套', '1540087200', '1540519200', '1540087200', '1540519200', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/98824181', '18', '_blank', '10�?1�?', '300', '168.00', '0.1300');
INSERT INTO `juanpigoods` VALUES ('19', '3', '3', '95204232', '21157449', '0', '5355170', '0', '0', '1.6', '49', '299', '0', '0', '2', '0', '0', 'https://goods5.juancdn.com/goods/171107/9/9/5a015562a9fcf856c55cc7a8_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', 'v领荷叶边长袖针织�?', '1540173600', '1540605600', '1540173600', '1540605600', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/95204232', '19', '_blank', '10�?2�?', '1200', '', '');
INSERT INTO `juanpigoods` VALUES ('20', '3', '3', '98034662', '24294359', '1696595', '5035128', '0', '0', '1.7', '69', '398', '0', '0', '2', '0', '1', 'https://goods2.juancdn.com/tao/180112/3/3/5a582570a9fcf886351dd5bc_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '中长款小鹿加厚毛衣裙', '1540173600', '1540605600', '1540173600', '1540605600', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/98034662', '20', '_blank', '10�?2�?', '2400', '68.00', '0.1300');
INSERT INTO `juanpigoods` VALUES ('21', '3', '3', '99824381', '24837284', '1016570', '5835136', '0', '0', '1.2', '69', '599', '0', '0', '2', '0', '1', 'https://goods3.juancdn.com/tao/180814/5/f/5b725cd3b6f8ea4e3f62fcc4_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '妈妈秋雪纺袖长袖T�?', '1540087200', '1540519200', '1540087200', '1540519200', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/99824381', '21', '_blank', '10�?1�?', '240', '68.00', '0.1300');
INSERT INTO `juanpigoods` VALUES ('22', '3', '3', '95034762', '21117594', '1696595', '5035128', '0', '0', '1.7', '68', '398', '0', '0', '2', '0', '1', 'https://goods5.juancdn.com/tao/180811/9/0/5b6e623db6f8ea7dbb798bf7_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '小清新喇叭袖针织�?', '1540173600', '1540605600', '1540173600', '1540605600', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/95034762', '22', '_blank', '10�?2�?', '1200', '67.00', '0.1300');
INSERT INTO `juanpigoods` VALUES ('23', '3', '3', '93034072', '26597918', '1696595', '5035128', '0', '0', '2.0', '78', '398', '0', '0', '2', '0', '1', 'https://goods1.juancdn.com/tao/181009/1/7/5bbc508eb6f8ea41d91b524e_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '中长款拼色套头针织衫', '1540173600', '1540605600', '1540173600', '1540605600', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/93034072', '23', '_blank', '10�?2�?', '1600', '77.00', '0.1300');
INSERT INTO `juanpigoods` VALUES ('24', '3', '3', '93924311', '29047869', '1016570', '5835136', '0', '0', '2.0', '119', '599', '0', '0', '2', '0', '1', 'https://goods2.juancdn.com/goods/170923/3/9/59c66e0b8150a158245bf09c_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '气质百搭纹路薄款棉服', '1540087200', '1540519200', '1540087200', '1540519200', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/93924311', '24', '_blank', '10�?1�?', '400', '118.00', '0.1300');
INSERT INTO `juanpigoods` VALUES ('25', '3', '3', '90034292', '25107426', '1696595', '5035128', '0', '0', '1.7', '68', '398', '0', '0', '2', '0', '1', 'https://goods2.juancdn.com/tao/180831/3/3/5b88af68b6f8ea58405d38c6_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '秋装新款提花针织�?', '1540173600', '1540605600', '1540173600', '1540605600', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/90034292', '25', '_blank', '10�?2�?', '800', '67.00', '0.1300');
INSERT INTO `juanpigoods` VALUES ('26', '3', '3', '97034292', '21047237', '1696595', '5035128', '0', '0', '2.5', '98', '398', '0', '0', '2', '0', '1', 'https://goods3.juancdn.com/tao/180917/5/1/5b9f09bf33b0893cb265837e_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '中长款条纹小狗针织衫', '1540173600', '1540605600', '1540173600', '1540605600', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/97034292', '26', '_blank', '10�?2�?', '800', '97.00', '0.1300');
INSERT INTO `juanpigoods` VALUES ('27', '3', '3', '92824431', '23127597', '1016570', '5835136', '0', '0', '1.2', '69', '599', '0', '0', '2', '0', '1', 'https://goods8.juancdn.com/tao/180914/f/b/5b9b0d6b33b0896d3e6fdd7c_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '妈妈装秋季时尚长�?', '1540087200', '1540519200', '1540087200', '1540519200', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/92824431', '27', '_blank', '10�?1�?', '300', '68.00', '0.1300');
INSERT INTO `juanpigoods` VALUES ('28', '3', '3', '96134932', '23247067', '1696595', '5035128', '0', '0', '1.7', '68', '398', '0', '0', '2', '0', '1', 'https://goods5.juancdn.com/tao/180917/8/1/5b9f2bdb33b089786637144d_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '连帽拼色条纹针织卫衣', '1540173600', '1540605600', '1540173600', '1540605600', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/96134932', '28', '_blank', '10�?2�?', '2000', '67.00', '0.1300');
INSERT INTO `juanpigoods` VALUES ('29', '3', '3', '95234702', '22907435', '1696595', '5035128', '0', '0', '1.2', '49', '398', '0', '0', '2', '0', '1', 'https://goods2.juancdn.com/tao/180821/3/0/5b7bb70db6f8ea7e4e637120_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '喇叭袖后背系带针织衫', '1540173600', '1540605600', '1540173600', '1540605600', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/95234702', '29', '_blank', '10�?2�?', '2000', '48.00', '0.1300');
INSERT INTO `juanpigoods` VALUES ('30', '3', '3', '99824431', '29437477', '1016570', '5835136', '0', '0', '2.8', '169', '599', '0', '0', '2', '0', '1', 'https://goods5.juancdn.com/tao/180916/8/d/5b9dae8d33b0892a2b7655a1_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '妈妈秋装外套女新�?', '1540087200', '1540519200', '1540087200', '1540519200', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/99824431', '30', '_blank', '10�?1�?', '300', '168.00', '0.1300');
INSERT INTO `juanpigoods` VALUES ('31', '3', '3', '92234802', '23517037', '1696595', '5035128', '0', '0', '2.2', '89', '398', '0', '0', '2', '0', '1', 'https://goods2.juancdn.com/tao/180913/2/e/5b99e86633b08901c4469cb9_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '宽松拼接衬衫连帽�?', '1540173600', '1540605600', '1540173600', '1540605600', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/92234802', '31', '_blank', '10�?2�?', '1600', '88.00', '0.1300');
INSERT INTO `juanpigoods` VALUES ('32', '3', '3', '99004924', '23077089', '1696595', '5035128', '0', '0', '2.0', '78', '398', '0', '0', '2', '0', '0', 'https://goods1.juancdn.com/tao/181017/0/1/5bc699b533b0895ba50e07ba_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '秋冬拼色宽松网红毛衣', '1540173600', '1540605600', '1540173600', '1540605600', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/99004924', '32', '_blank', '10�?2�?', '1200', '', '');
INSERT INTO `juanpigoods` VALUES ('33', '3', '3', '91824351', '25107278', '1016570', '5835136', '0', '0', '3.5', '209', '599', '0', '0', '2', '0', '1', 'https://goods1.juancdn.com/tao/180925/1/f/5ba9de2933b089299100bd2c_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '妈妈秋装大码外套', '1540087200', '1540519200', '1540087200', '1540519200', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/91824351', '33', '_blank', '10�?1�?', '240', '208.00', '0.1300');
INSERT INTO `juanpigoods` VALUES ('34', '3', '3', '95234264', '25987217', '1260650', '5955162', '0', '0', '2.0', '39.9', '199', '0', '0', '2', '0', '0', 'https://goods5.juancdn.com/goods/180922/9/b/5ba606f033b08963e90067f5_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '显瘦秋冬v领t恤打底衫', '1540173600', '1540605600', '1540173600', '1540605600', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/95234264', '34', '_blank', '10�?2�?', '360', '', '');
INSERT INTO `juanpigoods` VALUES ('35', '3', '3', '97134984', '24397349', '1260650', '5955162', '0', '0', '2.5', '49.9', '199', '0', '0', '2', '0', '0', 'https://goods3.juancdn.com/goods/181019/4/5/5bc92cf433b089057745cad8_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '中长款显瘦加厚卫衣女', '1540173600', '1540605600', '1540173600', '1540605600', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/97134984', '35', '_blank', '10�?2�?', '270', '', '');
INSERT INTO `juanpigoods` VALUES ('36', '3', '3', '95824451', '29462237', '1016570', '5835136', '0', '0', '0.7', '39', '599', '0', '0', '2', '0', '1', 'https://goods8.juancdn.com/goods/170917/e/f/59be879aa9fcf86b9b388a88_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '妈妈装绣花直筒加绒裤', '1540087200', '1540519200', '1540087200', '1540519200', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/95824451', '36', '_blank', '10�?1�?', '160', '38.00', '0.1300');
INSERT INTO `juanpigoods` VALUES ('37', '3', '3', '91234334', '23077128', '1260650', '5955162', '0', '0', '2.5', '49.9', '199', '0', '0', '2', '0', '0', 'https://goods7.juancdn.com/goods/181006/c/1/5bb858ddb6f8ea6ca23716f5_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '格子胖mm雪纺打底衬衫', '1540173600', '1540605600', '1540173600', '1540605600', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/91234334', '37', '_blank', '10�?2�?', '108', '', '');
INSERT INTO `juanpigoods` VALUES ('38', '3', '3', '93234974', '28657149', '1260650', '5955162', '0', '0', '2.0', '39.9', '199', '0', '0', '2', '0', '0', 'https://goods7.juancdn.com/goods/181015/c/e/5bc47df3b6f8ea3abd0c843d_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '显瘦纯色v领打底衫�?', '1540173600', '1540605600', '1540173600', '1540605600', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/93234974', '38', '_blank', '10�?2�?', '324', '', '');
INSERT INTO `juanpigoods` VALUES ('39', '3', '3', '96824071', '27287327', '1016570', '5835136', '0', '0', '2.5', '149', '599', '0', '0', '2', '0', '1', 'https://goods1.juancdn.com/tao/180921/0/f/5ba4abeab6f8ea7bc7607f11_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '妈妈春秋装风衣外�?', '1540087200', '1540519200', '1540087200', '1540519200', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/96824071', '39', '_blank', '10�?1�?', '300', '148.00', '0.1300');
INSERT INTO `juanpigoods` VALUES ('40', '3', '3', '93334704', '24527758', '1260650', '5955162', '0', '0', '3.0', '59.9', '199', '0', '0', '2', '0', '0', 'https://goods7.juancdn.com/goods/180927/c/6/5baccbbc33b089396b18f875_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '显瘦拼色慵懒风毛衣女', '1540173600', '1540605600', '1540173600', '1540605600', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/93334704', '40', '_blank', '10�?2�?', '216', '', '');
INSERT INTO `juanpigoods` VALUES ('41', '3', '3', '97334054', '26807107', '1260650', '5955162', '0', '0', '2.8', '56', '199', '0', '0', '2', '0', '0', 'https://goods8.juancdn.com/goods/180912/f/9/5b98a297b6f8ea67b46dc484_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '早秋显瘦遮肚子二件套', '1540173600', '1540605600', '1540173600', '1540605600', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/97334054', '41', '_blank', '10�?2�?', '108', '', '');
INSERT INTO `juanpigoods` VALUES ('42', '3', '3', '98824471', '23837773', '1016570', '5835136', '0', '0', '1.2', '69', '599', '0', '0', '2', '0', '1', 'https://goods2.juancdn.com/goods/180802/2/0/5b62b83db6f8ea7efa6968b2_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '中老年女装夹克衫立�?', '1540087200', '1540519200', '1540087200', '1540519200', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/98824471', '42', '_blank', '10�?1�?', '200', '68.00', '0.1300');
INSERT INTO `juanpigoods` VALUES ('43', '3', '3', '95334474', '20187915', '1260650', '5955162', '0', '0', '2.0', '39.9', '199', '0', '0', '2', '0', '0', 'https://goods4.juancdn.com/goods/180829/7/0/5b8601b1b6f8ea64fd144799_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '百搭衣服打底衫T恤女', '1540173600', '1540605600', '1540173600', '1540605600', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/95334474', '43', '_blank', '10�?2�?', '270', '', '');
INSERT INTO `juanpigoods` VALUES ('44', '3', '3', '90334994', '28927605', '1260650', '5955162', '0', '0', '2.8', '56', '199', '0', '0', '2', '0', '0', 'https://goods8.juancdn.com/goods/180823/e/c/5b7e3deb33b089656d034084_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '早秋chic上衣慵懒衬衫', '1540173600', '1540605600', '1540173600', '1540605600', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/90334994', '44', '_blank', '10�?2�?', '90', '', '');
INSERT INTO `juanpigoods` VALUES ('45', '3', '3', '92824381', '23347183', '1016570', '5835136', '0', '0', '2.3', '139', '599', '0', '0', '2', '0', '1', 'https://goods4.juancdn.com/tao/180803/7/8/5b63bce633b089226c4b2947_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '中年女秋装洋气裙�?', '1540087200', '1540519200', '1540087200', '1540519200', '1', '3', '0', '1', '20', null, '1', '//shop.juanpi.com/deal/92824381', '45', '_blank', '10�?1�?', '200', '138.00', '0.1300');

-- ----------------------------
-- Table structure for juusers
-- ----------------------------
DROP TABLE IF EXISTS `juusers`;
CREATE TABLE `juusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- ----------------------------
-- Records of juusers
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
