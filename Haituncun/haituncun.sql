/*
Navicat MySQL Data Transfer

Source Server         : Gene
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : haituncun

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-10-29 10:14:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `RMB_price` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `num` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('2', 'ChildLife 儿童紫锥菊滴剂 2*29.6ml/瓶', '¥109.90', 'https://assets.haituncun.com/media/catalog/product/f/b/fbahkspl30020045x2.jpg?imageView2/0/w/800/h/800', '1');
INSERT INTO `cart` VALUES ('8', 'Vitabiotics 钙镁锌液体钙 4瓶', '¥179.00', 'https://assets.haituncun.com/media/catalog/product/a/a/aaa21103x4_1.jpg?imageView2/0/w/800/h/800', '1');

-- ----------------------------
-- Table structure for goodslist
-- ----------------------------
DROP TABLE IF EXISTS `goodslist`;
CREATE TABLE `goodslist` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `RMB_price` varchar(255) NOT NULL,
  `Other_price` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodslist
-- ----------------------------
INSERT INTO `goodslist` VALUES ('1', 'Ostelin 婴幼儿维生素D滴剂', '¥198.00', '£16.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbaauspl30010004x4.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('2', 'ChildLife 儿童紫锥菊滴剂 2*29.6ml/瓶', '¥109.90', '£16.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbahkspl30020045x2.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('3', 'Healtheries 儿童牛奶片 3瓶', '¥135.00', '£16.65', 'https://assets.haituncun.com/media/catalog/product/h/s/hsl002x3.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('4', 'Sambucol 黑接骨木糖浆 4瓶', '¥256.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/a/a/aaa16002x2_3.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('5', 'Dontodent 可吞咽抗龋齿婴幼儿牙膏', '¥265.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/3/_/3_.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('6', '【包邮装】Dontodent 儿童防蛀牙膏 3支', '¥275.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/0/_/0_2_30.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('7', 'Gaia 天然婴儿洗发沐浴2合1 500ml', '¥189.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbacncos10060002_1.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('8', 'Vitabiotics 钙镁锌液体钙 4瓶', '¥179.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/a/a/aaa21103x4_1.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('9', 'La Tourangelle 拉杜蓝乔 纯核桃油', '¥185.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbanlbbya0020001x2.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('10', '澳佳宝 孕哺期黄金营养素胶囊 2*180粒', '¥395.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/8/_/8_3_4.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('11', 'Salus 铁元 补铁补血营养片 2盒', '¥218.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/0/0/00_1_1.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('12', 'Sambucol 黑接骨木糖浆 4瓶', '¥255.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/a/a/aaa16002x2_3.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('13', 'Ddrops 婴儿维生素 D3', '¥235.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/2/_/2_27_13.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('14', 'Mentholatum 曼秀雷敦 液体创可贴 3*10g/支', '¥180.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/b/p/bphkspld0030001.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('15', '参天 银色眼药水', '¥155.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbahkspl30020071.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('16', 'POLA 宝丽 胶原蛋白抗糖化美白丸 180粒/盒 （3个月用量-美白/祛黄/保湿）', '¥869.00', '£96.65', 'https://assets.haituncun.com/media/catalog/product/3/_/3_30_8.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('17', '【包邮】黑吕洗发护发套装', '¥129.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbacncos10030018.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('18', 'Hawkins & Brimble 男士洗护4件套装', '¥309.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbagbcos1b010028.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('19', 'Shiseido 资生堂 fino 发膜渗透护发素头发护理倒膜 2*230g/盒', '¥149.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbahkcos10030003.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('20', 'Delon 身体黄油滋润霜 2盒', '¥158.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/7/_/7_1_60.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('21', 'Marvis 甘草薄荷牙膏 3支', '¥109.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbacncos10070001_3.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('22', 'Waitrose 经典系列 小苍兰与梨子味沐浴露 3*250ml/瓶', '¥129.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbagbcos10070010x3_2.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('23', '【包邮装】美体小铺 洗发露 2件', '¥219.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbagbcos1b010006x2_1.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('24', 'It\'s skin 婚纱嫩白身体乳 2支', '¥188.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbakrcos10020003x2.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('25', 'Swisse 维生素C泡腾片', '¥345.00', '£36.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbaauspl30010007x3.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('26', '纤Q好手艺 16版 冲泡式薏仁水 2*30包/盒', '¥175.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/0/0/00_1_1.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('27', 'Holland & Barrett Omega3 多烯鱼油软胶囊 2*250粒/瓶', '¥259.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/3/_/3_30_8.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('28', 'Childlife 婴幼儿精纯DHA软胶囊 2*90粒/瓶', '¥145.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/a/a/aaa21103x4_1.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('29', 'Swisse 维生素C泡腾片', '¥335.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbaauspl30010007x3.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('30', 'Gaia 天然婴儿洗发沐浴2合1 500ml', '¥139.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbacncos10060002_1.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('31', 'Vitabiotics 钙镁锌液体钙 4瓶', '¥199.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/a/a/aaa21103x4_1.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist` VALUES ('32', 'La Tourangelle 拉杜蓝乔 纯核桃油', '¥185.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbanlbbya0020001x2.jpg?imageView2/0/w/800/h/800');

-- ----------------------------
-- Table structure for goodslist_11
-- ----------------------------
DROP TABLE IF EXISTS `goodslist_11`;
CREATE TABLE `goodslist_11` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `RMB_price` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `Other_price` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodslist_11
-- ----------------------------
INSERT INTO `goodslist_11` VALUES ('1', 'Aptamil 金装3段奶粉', null, '¥306.00', 'https://assets.haituncun.com/media/catalog/product/a/a/aaa21103x4_1.jpg?imageView2/0/w/800/h/800', 'AU$54.62', 'AU', '婴幼儿配方奶粉是由天然牛奶加工而成，奶粉中含有100%天然的A2 β-酪蛋白，不含A1酪蛋白 ，是最自然源生的配方，也是与母体天生的蛋白元素最为贴近的奶粉配方，有助于宝宝的消化吸收及长远的健康。');
INSERT INTO `goodslist_11` VALUES ('2', 'VitaMustela 婴儿洗发沐浴', null, '¥125.00', 'https://assets.haituncun.com/media/catalog/product/f/b/fbacncos10060005_1.jpg?imageView2/0/w/800/h/800', '€15.03', 'NL', '婴幼儿配方奶粉是由天然牛奶加工而成，奶粉中含有100%天然的A2 β-酪蛋白，不含A1酪蛋白 ，是最自然源生的配方，也是与母体天生的蛋白元素最为贴近的奶粉配方，有助于宝宝的消化吸收及长远的健康。');
INSERT INTO `goodslist_11` VALUES ('3', 'Vitabiotics 钙镁锌液体钙 4瓶', '', '¥179.00', 'https://assets.haituncun.com/media/catalog/product/a/a/aaa21103x4_1.jpg?imageView2/0/w/800/h/800', '£19.43', 'UK', '婴幼儿配方奶粉是由天然牛奶加工而成，奶粉中含有100%天然的A2 β-酪蛋白，不含A1酪蛋白 ，是最自然源生的配方，也是与母体天生的蛋白元素最为贴近的奶粉配方，有助于宝宝的消化吸收及长远的健康。');
INSERT INTO `goodslist_11` VALUES ('4', 'VitaMustela 婴儿洗发沐浴', '', '¥125.00', 'https://assets.haituncun.com/media/catalog/product/f/b/fbacncos10060005_1.jpg?imageView2/0/w/800/h/800', '€15.03', 'NL', '婴幼儿配方奶粉是由天然牛奶加工而成，奶粉中含有100%天然的A2 β-酪蛋白，不含A1酪蛋白 ，是最自然源生的配方，也是与母体天生的蛋白元素最为贴近的奶粉配方，有助于宝宝的消化吸收及长远的健康。');
INSERT INTO `goodslist_11` VALUES ('5', 'Aptamil 金装3段奶粉', '', '¥306.00', 'https://assets.haituncun.com/media/catalog/product/a/a/aaa21103x4_1.jpg?imageView2/0/w/800/h/800', 'AU$54.62', 'AU', '婴幼儿配方奶粉是由天然牛奶加工而成，奶粉中含有100%天然的A2 β-酪蛋白，不含A1酪蛋白 ，是最自然源生的配方，也是与母体天生的蛋白元素最为贴近的奶粉配方，有助于宝宝的消化吸收及长远的健康。');
INSERT INTO `goodslist_11` VALUES ('6', 'Pigeon 桃子水 痱子水 2瓶', '', '¥175.00', 'https://assets.haituncun.com/media/catalog/product/1/_/1_44_6.jpg?imageView2/0/w/800/h/800', 'JP¥2,750.00', 'JP', '婴幼儿配方奶粉是由天然牛奶加工而成，奶粉中含有100%天然的A2 β-酪蛋白，不含A1酪蛋白 ，是最自然源生的配方，也是与母体天生的蛋白元素最为贴近的奶粉配方，有助于宝宝的消化吸收及长远的健康。');

-- ----------------------------
-- Table structure for goodslist_12
-- ----------------------------
DROP TABLE IF EXISTS `goodslist_12`;
CREATE TABLE `goodslist_12` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `RMB_price` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodslist_12
-- ----------------------------
INSERT INTO `goodslist_12` VALUES ('1', 'Ostelin 婴幼儿维生素D滴剂', '', '¥198.00', 'https://assets.haituncun.com/media/catalog/product/f/b/fbaauspl30010004x4.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_12` VALUES ('2', 'ChildLife 儿童紫锥菊滴剂 2*29.6ml/瓶', '', '¥109.00', 'https://assets.haituncun.com/media/catalog/product/f/b/fbahkspl30020045x2.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_12` VALUES ('3', 'Healtheries 儿童牛奶片 3瓶', '', '¥135.00', 'https://assets.haituncun.com/media/catalog/product/h/s/hsl002x3.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_12` VALUES ('4', 'Sambucol 黑接骨木糖浆 4瓶', '', '¥255.00', 'https://assets.haituncun.com/media/catalog/product/a/a/aaa16002x2_3.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_12` VALUES ('5', 'Dontodent 可吞咽抗龋齿婴幼儿牙膏', '', '¥65.00', 'https://assets.haituncun.com/media/catalog/product/3/_/3_.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_12` VALUES ('6', '【包邮装】Dontodent 儿童防蛀牙膏 3支', '', '¥65.00', 'https://assets.haituncun.com/media/catalog/product/0/_/0_2_30.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_12` VALUES ('7', 'Gaia 天然婴儿洗发沐浴2合1 500ml', '', '¥89.00', 'https://assets.haituncun.com/media/catalog/product/f/b/fbacncos10060002_1.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_12` VALUES ('8', 'Vitabiotics 钙镁锌液体钙 4瓶', '', '¥179.00', 'https://assets.haituncun.com/media/catalog/product/a/a/aaa21103x4_1.jpg?imageView2/0/w/800/h/800');

-- ----------------------------
-- Table structure for goodslist_copy
-- ----------------------------
DROP TABLE IF EXISTS `goodslist_copy`;
CREATE TABLE `goodslist_copy` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `RMB_price` varchar(255) NOT NULL,
  `Other_price` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodslist_copy
-- ----------------------------
INSERT INTO `goodslist_copy` VALUES ('1', 'Ostelin 婴幼儿维生素D滴剂', '¥198.00', '£16.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbaauspl30010004x4.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('2', 'ChildLife 儿童紫锥菊滴剂 2*29.6ml/瓶', '¥109.90', '£16.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbahkspl30020045x2.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('3', 'Healtheries 儿童牛奶片 3瓶', '¥135.00', '£16.65', 'https://assets.haituncun.com/media/catalog/product/h/s/hsl002x3.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('4', 'Sambucol 黑接骨木糖浆 4瓶', '¥256.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/a/a/aaa16002x2_3.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('5', 'Dontodent 可吞咽抗龋齿婴幼儿牙膏', '¥265.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/3/_/3_.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('6', '【包邮装】Dontodent 儿童防蛀牙膏 3支', '¥275.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/0/_/0_2_30.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('7', 'Gaia 天然婴儿洗发沐浴2合1 500ml', '¥189.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbacncos10060002_1.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('8', 'Vitabiotics 钙镁锌液体钙 4瓶', '¥179.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/a/a/aaa21103x4_1.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('9', 'La Tourangelle 拉杜蓝乔 纯核桃油', '¥185.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbanlbbya0020001x2.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('10', '澳佳宝 孕哺期黄金营养素胶囊 2*180粒', '¥395.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/8/_/8_3_4.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('11', 'Salus 铁元 补铁补血营养片 2盒', '¥218.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/0/0/00_1_1.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('12', 'Sambucol 黑接骨木糖浆 4瓶', '¥255.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/a/a/aaa16002x2_3.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('13', 'Ddrops 婴儿维生素 D3', '¥235.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/2/_/2_27_13.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('14', 'Mentholatum 曼秀雷敦 液体创可贴 3*10g/支', '¥180.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/b/p/bphkspld0030001.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('15', '参天 银色眼药水', '¥155.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbahkspl30020071.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('16', 'POLA 宝丽 胶原蛋白抗糖化美白丸 180粒/盒 （3个月用量-美白/祛黄/保湿）', '¥869.00', '£96.65', 'https://assets.haituncun.com/media/catalog/product/3/_/3_30_8.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('17', '【包邮】黑吕洗发护发套装', '¥129.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbacncos10030018.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('18', 'Hawkins & Brimble 男士洗护4件套装', '¥309.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbagbcos1b010028.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('19', 'Shiseido 资生堂 fino 发膜渗透护发素头发护理倒膜 2*230g/盒', '¥149.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbahkcos10030003.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('20', 'Delon 身体黄油滋润霜 2盒', '¥158.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/7/_/7_1_60.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('21', 'Marvis 甘草薄荷牙膏 3支', '¥109.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbacncos10070001_3.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('22', 'Waitrose 经典系列 小苍兰与梨子味沐浴露 3*250ml/瓶', '¥129.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbagbcos10070010x3_2.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('23', '【包邮装】美体小铺 洗发露 2件', '¥219.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbagbcos1b010006x2_1.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('24', 'It\'s skin 婚纱嫩白身体乳 2支', '¥188.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbakrcos10020003x2.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('25', 'Swisse 维生素C泡腾片', '¥345.00', '£36.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbaauspl30010007x3.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('26', '纤Q好手艺 16版 冲泡式薏仁水 2*30包/盒', '¥175.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/0/0/00_1_1.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('27', 'Holland & Barrett Omega3 多烯鱼油软胶囊 2*250粒/瓶', '¥259.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/3/_/3_30_8.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('28', 'Childlife 婴幼儿精纯DHA软胶囊 2*90粒/瓶', '¥145.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/a/a/aaa21103x4_1.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('29', 'Swisse 维生素C泡腾片', '¥335.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbaauspl30010007x3.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('30', 'Gaia 天然婴儿洗发沐浴2合1 500ml', '¥139.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbacncos10060002_1.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('31', 'Vitabiotics 钙镁锌液体钙 4瓶', '¥199.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/a/a/aaa21103x4_1.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('32', 'La Tourangelle 拉杜蓝乔 纯核桃油', '¥185.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/f/b/fbanlbbya0020001x2.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('33', '澳佳宝 孕哺期黄金营养素胶囊 2*180粒', '¥396.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/8/_/8_3_4.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('34', 'Salus 铁元 补铁补血营养片 2盒', '¥208.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/0/0/00_1_1.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('35', 'Sambucol 黑接骨木糖浆 4瓶', '¥275.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/a/a/aaa16002x2_3.jpg?imageView2/0/w/800/h/800');
INSERT INTO `goodslist_copy` VALUES ('36', 'Ddrops 婴儿维生素 D3', '¥235.00', '£26.65', 'https://assets.haituncun.com/media/catalog/product/2/_/2_27_13.jpg?imageView2/0/w/800/h/800');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'gene', '123456', '2018-10-24 17:57:11');
INSERT INTO `user` VALUES ('9', 'lemon', '123123', '2018-10-24 21:00:35');
INSERT INTO `user` VALUES ('11', 'guan', '123456', '2018-10-26 20:21:59');
SET FOREIGN_KEY_CHECKS=1;
