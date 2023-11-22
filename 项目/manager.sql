/*
 Navicat Premium Data Transfer

 Source Server         : mysql1
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : manager

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 22/11/2023 16:47:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '收货人',
  `useraddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '收货地址',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '地址信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (2, 8, '秦始皇', '秦始皇陵', '15777772737');
INSERT INTO `address` VALUES (3, 8, '蔡徐坤', '广西贵港市覃塘区', '15878872737');
INSERT INTO `address` VALUES (6, 8, '去去去', '广西贵港市覃塘区', '15878872737');
INSERT INTO `address` VALUES (7, 7, '秦始皇', '秦始皇陵', '15777772737');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'admin', '管理员', 'http://localhost:9090/files/1697438073596-avatar.png', 'ADMIN', '13677889922', 'admin@xm.com');

-- ----------------------------
-- Table structure for business
-- ----------------------------
DROP TABLE IF EXISTS `business`;
CREATE TABLE `business`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '店铺名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '店铺介绍',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商家信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of business
-- ----------------------------
INSERT INTO `business` VALUES (6, 'computer', '123456', '启航电脑配件', 'http://localhost:9090/files/1700024050276-1698591958667-主图_2.jpg', 'BUSINESS', '18899990000', 'computer@xm.com', '成立于2010年，鹿鹿集团旗下大型批发户。倡导「便捷 廉价」的生活方式，提升消费者的生活品质。截至2023年7月，已遍布全国31个省级行政区，220+个城市，近 2000家门店。', '审核通过');
INSERT INTO `business` VALUES (7, 'meshe', '123456', 'ifashion', 'http://localhost:9090/files/1700023825217-1698548548120-店铺头像.png', 'BUSINESS', '18877776666', 'meshe@xm.com', 'MsShe(慕姗.诗怡)--始创于2010年，定义“欧美简约、奢华风格 致力传播丰盈女性自信优雅之美 诠释现代丰盈女性独立自主，淡然优雅的淑女气 享受生活，拒绝平庸，于时尚与生活中挥洒自如，淡淡演绎完美生活', '审核通过');
INSERT INTO `business` VALUES (8, 'lingshi', '123', '零食小王子', 'http://localhost:9090/files/1700023943855-1698573726310-4.jpg', 'BUSINESS', '18877770000', 'lingshi@xm.com', '成立于2010年，鹿鹿集团旗下大型批发户。倡导「便捷 廉价」的生活方式，提升消费者的生活品质。截至2023年7月，已遍布全国31个省级行政区，220+个城市，近 2000家门店。', '审核通过');
INSERT INTO `business` VALUES (9, 'perfume', '123', '香水之家', 'http://localhost:9090/files/1700041373259-1698571238461-1.jpg', 'BUSINESS', '18899990000', 'perfume@xm.com', '成立于2010年，陌陌集团旗下大型香水批发户。倡导「便捷 廉价」的生活方式，提升消费者的生活品质。截至2023年7月，已遍布全国31个省级行政区，220+个城市，近 2000家门店。', '审核通过');
INSERT INTO `business` VALUES (10, 'phone', '123', 'phone', 'http://localhost:9090/files/1700633072875-O1CN01txpS6w22Iw8PqPoC7_!!790227098.webp', 'BUSINESS', '15777972737', 'qinshihuang@qsh.com', '.........', '审核通过');
INSERT INTO `business` VALUES (11, 'beiens', '123', 'beiens贝恩施旗舰店', 'http://localhost:9090/files/1700635957114-1698569318289-2.jpg', 'BUSINESS', '13899886688', 'liuliu@xm.com', '.........', '审核通过');
INSERT INTO `business` VALUES (12, 'fruit', '123', '水果生鲜铺子', 'http://localhost:9090/files/1700636481893-1698593375155-2.jpg', 'BUSINESS', '18899990000', 'fruit@xm.com', '.........', '审核通过');
INSERT INTO `business` VALUES (13, 'machine', '123', '生活电器用品', 'http://localhost:9090/files/1700637071314-1698577315491-2.jpg', 'BUSINESS', '18899998888', 'machine@xm.com\r\nmachine@xm.com\r\nmachine@xm.com\r\n', '.........', '审核通过');
INSERT INTO `business` VALUES (14, 'weiyu', '123', '卫浴家具批发', 'http://localhost:9090/files/1700637783902-1698578434989-1.png', 'BUSINESS', '18899994444', 'weiyu@163.com', '.........', '审核通过');
INSERT INTO `business` VALUES (15, 'medicine', '123', '医药世家', 'http://localhost:9090/files/1700638939950-1698629064340-主图_1.jpg', 'BUSINESS', '18877772222', 'medicine@xm.com', '.........', '审核通过');
INSERT INTO `business` VALUES (16, 'chuju', '123', '佳佳厨具', NULL, 'BUSINESS', '1887777444', 'chuju@xm.com', '.........', '审核通过');
INSERT INTO `business` VALUES (18, 'book', '123', '萌萌图书馆', 'http://localhost:9090/files/1700639818098-1698629505998-主图_2.jpg', 'BUSINESS', '18800007777', 'book@xm.com', '.........', '审核通过');
INSERT INTO `business` VALUES (19, 'flower', '123', '鑫鑫花店', NULL, 'BUSINESS', '18867007777', 'flower@xm.com', '.........', '审核通过');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `goods_id` int NULL DEFAULT NULL COMMENT '商品ID',
  `business_id` int NULL DEFAULT NULL COMMENT '店铺ID',
  `num` int NULL DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '购物车表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (3, 8, 10, 7, 1);
INSERT INTO `cart` VALUES (4, 8, 12, 7, 3);
INSERT INTO `cart` VALUES (7, 7, 13, 7, 1);
INSERT INTO `cart` VALUES (8, 7, 10, 7, 1);
INSERT INTO `cart` VALUES (9, 8, 18, 7, 1);
INSERT INTO `cart` VALUES (10, 8, 24, 9, 2);
INSERT INTO `cart` VALUES (11, 8, 23, 9, 1);
INSERT INTO `cart` VALUES (12, 8, 16, 7, 1);
INSERT INTO `cart` VALUES (13, 8, 19, 7, 1);
INSERT INTO `cart` VALUES (14, 8, 30, 8, 1);
INSERT INTO `cart` VALUES (15, 8, 32, 8, 1);
INSERT INTO `cart` VALUES (16, 8, 31, 8, 1);
INSERT INTO `cart` VALUES (17, 8, 22, 9, 1);
INSERT INTO `cart` VALUES (18, 8, 21, 9, 1);
INSERT INTO `cart` VALUES (19, 7, 32, 8, 1);
INSERT INTO `cart` VALUES (20, 7, 31, 8, 1);
INSERT INTO `cart` VALUES (21, 7, 22, 9, 1);
INSERT INTO `cart` VALUES (22, 7, 24, 9, 1);
INSERT INTO `cart` VALUES (23, 7, 23, 9, 1);
INSERT INTO `cart` VALUES (24, 7, 33, 8, 1);
INSERT INTO `cart` VALUES (25, 7, 34, 8, 1);
INSERT INTO `cart` VALUES (26, 7, 19, 7, 1);

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `goods_id` int NULL DEFAULT NULL COMMENT '商品ID',
  `business_id` int NULL DEFAULT NULL COMMENT '店铺ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '收藏信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES (4, 7, 10, 7);
INSERT INTO `collect` VALUES (5, 7, 12, 7);
INSERT INTO `collect` VALUES (6, 8, 10, 7);
INSERT INTO `collect` VALUES (7, 8, 11, 7);
INSERT INTO `collect` VALUES (8, 8, 12, 7);
INSERT INTO `collect` VALUES (9, 7, 13, 7);
INSERT INTO `collect` VALUES (10, 8, 18, 7);
INSERT INTO `collect` VALUES (11, 8, 24, 9);
INSERT INTO `collect` VALUES (12, 8, 23, 9);
INSERT INTO `collect` VALUES (13, 8, 16, 7);
INSERT INTO `collect` VALUES (14, 8, 19, 7);
INSERT INTO `collect` VALUES (15, 8, 30, 8);
INSERT INTO `collect` VALUES (16, 8, 32, 8);
INSERT INTO `collect` VALUES (17, 8, 31, 8);
INSERT INTO `collect` VALUES (18, 8, 21, 9);
INSERT INTO `collect` VALUES (19, 7, 31, 8);
INSERT INTO `collect` VALUES (20, 7, 22, 9);
INSERT INTO `collect` VALUES (21, 7, 24, 9);
INSERT INTO `collect` VALUES (22, 7, 23, 9);
INSERT INTO `collect` VALUES (23, 7, 33, 8);
INSERT INTO `collect` VALUES (24, 7, 34, 8);
INSERT INTO `collect` VALUES (25, 7, 19, 7);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `goods_id` int NULL DEFAULT NULL COMMENT '商品ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论时间',
  `business_id` int NULL DEFAULT NULL COMMENT '店铺ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '评论信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 8, 13, '衣服不错', '2023-11-20 17:57:26', 7);
INSERT INTO `comment` VALUES (2, 8, 10, '衣服很好看', '2023-11-20 18:00:25', 7);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品名称',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品主图',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '商品介绍',
  `price` int NULL DEFAULT NULL COMMENT '商品价格',
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '计件单位',
  `count` int NULL DEFAULT 0 COMMENT '商品销量',
  `type_id` int NULL DEFAULT NULL COMMENT '分类ID',
  `business_id` int NULL DEFAULT NULL COMMENT '商品ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (10, '设计感修身短款t恤女夏季新款圆领薄款短袖白色高腰紧身露脐上衣', 'http://localhost:9090/files/1700036526346-1698630762468-d1.png', '<p><img src=\"http://localhost:9090/files/1700046646602-1698630762468-d1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700046655425-1698630765242-d2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700046660522-1698630768001-d3.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700046667186-1698630770771-d4.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700046671480-1698630773697-d5.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 66, '件', 0, 17, 7);
INSERT INTO `goods` VALUES (11, 'MsShe大码女装新款叠穿松紧腰配饰假两件系扣衬衫下摆屁帘', 'http://localhost:9090/files/1700146099864-1698583473141-1.png', '<p><img src=\"http://localhost:9090/files/1700146114776-1698583493773-d1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700146119262-1698583496615-d2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700146124027-1698583499445-d3.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700146127181-1698583502395-d4.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 158, '件', 0, 17, 7);
INSERT INTO `goods` VALUES (12, '美式复古短袖T恤女纯棉夏ins潮半袖2023年新款设计感小众v领体桖', 'http://localhost:9090/files/1700146216844-1698630581443-1.png', '<p><img src=\"http://localhost:9090/files/1700146220961-1698630592111-d1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700146223880-1698630595645-d2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700146245370-1698630601539-d4.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700146249131-1698630604479-d5.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 56, '件', 0, 17, 7);
INSERT INTO `goods` VALUES (13, 'MsShe大码女装新款冬季老钱风立领调节收腰菱格夹棉长款外套', 'http://localhost:9090/files/1700146341644-1698549488964-z1.png', '<p><img src=\"http://localhost:9090/files/1700146358293-1698548614890-2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700146362033-1698548611427-1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700146366872-1698548621869-4.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 499, '件', 0, 17, 7);
INSERT INTO `goods` VALUES (14, '胸包女斜挎包大容量运动款男腰包简约百搭斜跨单肩包时尚学生背包', 'http://localhost:9090/files/1700559062046-1698591115259-2.jpg', '<p><img src=\"http://localhost:9090/files/1700559077420-1698591130348-4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700559082369-1698591134174-5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700559097636-1698591127253-3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 32, '个', 0, 15, 7);
INSERT INTO `goods` VALUES (15, '环球厚底老爹鞋女秋季新款女款今年爆款运动鞋秋款休闲鞋子潮', 'http://localhost:9090/files/1700559214763-1698590357263-1.jpg', '<p><img src=\"http://localhost:9090/files/1700559223194-1698590357263-1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700559227972-1698590359975-2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700559232751-1698590363073-3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700559237272-1698590366252-4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700559244261-1698590369332-5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 189, '双', 0, 15, 7);
INSERT INTO `goods` VALUES (16, '飞跃阿甘鞋女鞋新款秋季百搭休闲小白鞋厚底配裙子德训鞋板鞋', 'http://localhost:9090/files/1700559297988-1698590269247-1.jpg', '<p><img src=\"http://localhost:9090/files/1700559303322-1698590297412-2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700559307319-1698590300471-3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700559312708-1698590303507-4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 199, '双', 0, 15, 7);
INSERT INTO `goods` VALUES (17, '中国乔丹运动鞋男夏季官方旗舰店轻便软底网面透气男鞋跑步鞋', 'http://localhost:9090/files/1700559412638-1698590123927-1.jpg', '<p><img src=\"http://localhost:9090/files/1700559418893-1698590155084-01.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700559422800-1698590158913-02.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700559427897-1698590161885-03.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 199, '双', 0, 15, 7);
INSERT INTO `goods` VALUES (18, '特步苜白板鞋丨男鞋年秋季官网新款学生舒适百搭休闲鞋运动鞋', 'http://localhost:9090/files/1700559472364-1698590048547-2.jpg', '<p><img src=\"http://localhost:9090/files/1700559496624-1698590064456-01.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700559500816-1698590071482-02.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700559505047-1698590078634-03.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 388, '双', 0, 15, 7);
INSERT INTO `goods` VALUES (19, '单两件大码长袖t恤男秋季休闲圆领印花上衣潮流ins百搭体恤上衣', 'http://localhost:9090/files/1700559556551-1698588308486-1.png', '<p><img src=\"http://localhost:9090/files/1700559561583-1698588326168-d1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700559566182-1698588329090-d2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700559570483-1698588331991-d3.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 88, '件', 0, 16, 7);
INSERT INTO `goods` VALUES (20, ' MsShe大码女装新款胖mm夏装遮肚子200斤裹胸显瘦碎花连体泳衣', 'http://localhost:9090/files/1700559636826-1698583512960-1.png', '<p><img src=\"http://localhost:9090/files/1700559649104-1698583522938-d1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700559653559-1698583533024-d4.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700559657729-1698583536372-d5.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700559661532-1698583541865-d7.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 488, '件', 0, 17, 7);
INSERT INTO `goods` VALUES (21, 'Jo Malone祖马龙香水五件套联名蓝风铃', 'http://localhost:9090/files/1700560398095-1698571508542-3.png', '<p><img src=\"http://localhost:9090/files/1700560402781-1698571527786-d1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700560407104-1698571531129-d2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700560412959-1698571537330-d4.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700560453566-1698571540360-d5.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700560463377-1698571534068-d3.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 99, '件', 0, 14, 9);
INSERT INTO `goods` VALUES (22, 'Estee Lauder雅诗兰黛鲜活亮采红石榴保湿洁面乳', 'http://localhost:9090/files/1700560525969-1698571446540-d1.jpg', '<p><img src=\"http://localhost:9090/files/1700560538387-1698571429177-1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700560541251-1698571453378-d3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700560547443-1698571456506-d4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700560551715-1698571459473-d5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700560556139-1698571462258-d6.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 77, '件', 0, 14, 9);
INSERT INTO `goods` VALUES (23, 'Dior迪奥香水花漾甜心小样持久淡香真我女士伴手礼盒', 'http://localhost:9090/files/1700560624506-1698571378507-1.jpg', '<p><img src=\"http://localhost:9090/files/1700560644751-1698571397533-d1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700560647902-1698571400788-d2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700560651658-1698571404243-d3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 388, '件', 0, 14, 9);
INSERT INTO `goods` VALUES (24, '阿玛尼红黑管挚爱哑光雾面滋润唇膏口红', 'http://localhost:9090/files/1700560731701-1698571609631-1.jpg', '<p><img src=\"http://localhost:9090/files/1700560739808-1698571619359-d1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700560746040-1698571626498-d3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700560758056-1698571630072-d4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700560764719-1698571637472-d6.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 99, '件', 0, 14, 9);
INSERT INTO `goods` VALUES (25, ' 爱马仕星光香水小样三件套', 'http://localhost:9090/files/1700560835499-1698571927396-1.jpg', '<p><img src=\"http://localhost:9090/files/1700560860920-1698571940737-d1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700560866350-1698571944296-d2 (1).jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700560874713-1698571947867-d3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700560879704-1698571950533-d4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700560889441-1698571953185-d5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 259, '件', 0, 14, 9);
INSERT INTO `goods` VALUES (26, 'Dell_戴尔灵越15.6英寸轻薄笔记本电脑英特尔学习游戏办公商务手提剪辑...', 'http://localhost:9090/files/1700563098966-1698592071932-1.jpg', '<p><img src=\"http://localhost:9090/files/1700563115679-1698592109280-2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700563121961-1698592112647-3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700563132657-1698592115554-4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700563139251-1698592119100-5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 3099, '台', 0, 13, 6);
INSERT INTO `goods` VALUES (27, ' honor_荣耀笔记本电脑商务办公大学生i7吃鸡游戏本剪辑设计i5便携', 'http://localhost:9090/files/1700563223534-1698592198412-1.jpg', '<p><img src=\"http://localhost:9090/files/1700563243167-1698592212851-2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700563245968-1698592219283-3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700563250670-1698592222805-4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 4999, '台', 0, 13, 6);
INSERT INTO `goods` VALUES (28, '2023款13代酷睿i3_i5 联想台式电脑天逸510S主机 家用办公台式机设计游....', 'http://localhost:9090/files/1700563337391-1698591999711-1.jpg', '<p><img src=\"http://localhost:9090/files/1700563341947-1698592025859-2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700563345712-1698592035740-3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700563348909-1698592040028-4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700563352241-1698592043445-5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 5888, '台', 0, 13, 6);
INSERT INTO `goods` VALUES (29, ' 雷柏M650无线鼠标三模蓝牙鼠标办公静音小巧台式笔记本电脑可爱女', 'http://localhost:9090/files/1700563560497-1698592468771-1.jpg', '<p><img src=\"http://localhost:9090/files/1700563565083-1698592485294-2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700563568891-1698592488283-3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700563572425-1698592494278-5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700563575854-1698592497300-手淘网页版_主图_1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 39, '个', 0, 13, 6);
INSERT INTO `goods` VALUES (30, ' 百草味菠萝干100g休闲零食酸甜菠萝圈凤梨干片蜜饯水果干果脯', 'http://localhost:9090/files/1700631879752-1698574153181-1.jpg', '<p><img src=\"http://localhost:9090/files/1700631892984-1698574176439-n1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700631896675-1698574179708-n2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700631899850-1698574182884-n3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700631903144-1698574188483-n5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 10, '包', 0, 11, 8);
INSERT INTO `goods` VALUES (31, '百草味香辣味长沙臭豆腐125g油炸特产豆干麻辣味休闲零食小吃', 'http://localhost:9090/files/1700631974023-1698575133145-1.jpg', '<p><img src=\"http://localhost:9090/files/1700631982719-1698575143465-n1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700631988143-1698575146461-n2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700631997516-1698575149179-n3 (1).jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700632001503-1698575149179-n3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700632005276-1698575152166-n4 (1).jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700632008864-1698575152166-n4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700632012212-1698575154787-n5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 15, '包', 0, 11, 8);
INSERT INTO `goods` VALUES (32, ' 大白兔奶糖袋装原味结婚庆喜糖果牛奶休闲零食批发', 'http://localhost:9090/files/1700632076691-1698575165427-1.jpg', '<p><img src=\"http://localhost:9090/files/1700632084283-1698575180829-d1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700632090299-1698575186263-d3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700632103993-1698575189007-d4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700632110409-1698575191909-d5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 20, '包', 0, 11, 8);
INSERT INTO `goods` VALUES (33, ' 百草味甜辣味鸭脖170g 110g开袋即食卤味休闲零食网红鸭脖', 'http://localhost:9090/files/1700632176472-1698574942572-2.jpg', '<p><img src=\"http://localhost:9090/files/1700632180634-1698574961265-n1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700632183779-1698574965202-n2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700632187721-1698574968158-n3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700632191402-1698574971464-n4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700632196094-1698574974297-n5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 36, '包', 0, 11, 8);
INSERT INTO `goods` VALUES (34, '百草味山楂片208g无核果丹皮果脯清平乐蜜饯独立包装怀旧零食', 'http://localhost:9090/files/1700632272133-1698574784484-1.jpg', '<p><img src=\"http://localhost:9090/files/1700632261804-1698574784484-1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700632266383-1698574797063-n1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700632276878-1698574800004-n2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700632281441-1698574803200-n3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700632285307-1698574809329-n5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700632289314-1698574812437-n6.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700632296806-1698574815575-n7.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700632302565-1698574818395-n8.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 22, '包', 0, 11, 8);
INSERT INTO `goods` VALUES (35, 'Huawei/华为 P50 5G原装正品官方官网旗舰正品店华为手机p50pro', 'http://localhost:9090/files/1700633552406-O1CN01txpS6w22Iw8PqPoC7_!!790227098.webp', '<p><img src=\"http://localhost:9090/files/1700633936053-O1CN01NQ0Dep22Iw8PF8kqW_!!790227098.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700633940660-O1CN01tKzftr22Iw8SzeP6s_!!790227098.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700633943644-O1CN01t6cPVk22IwA4OT4MU_!!790227098.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 3099, '件', 0, 13, 10);
INSERT INTO `goods` VALUES (36, 'Huawei/华为 Mate 50E手机一亿像素5G智能老年人学生华为手机p60', 'http://localhost:9090/files/1700633990568-O1CN01bYg0hP22IwApAb0jT_!!790227098.webp', '<p><img src=\"http://localhost:9090/files/1700634002884-O1CN01NQ0Dep22Iw8PF8kqW_!!790227098.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700634005915-O1CN01tKzftr22Iw8SzeP6s_!!790227098.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700634008804-O1CN01t6cPVk22IwA4OT4MU_!!790227098.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 1888, '件', 0, 13, 10);
INSERT INTO `goods` VALUES (37, '  【6期免息 下单立省999元】Samsung/三星Galaxy S23 智能拍照5G手机 官方旗舰店正品 第二代骁龙8超视觉夜拍', 'http://localhost:9090/files/1700634160525-O1CN01QCAc6D22C49eqZvBH_!!370627083.jpg_Q75.jpg_.webp', '<p><img src=\"http://localhost:9090/files/1700634166359-O1CN01NQ0Dep22Iw8PF8kqW_!!790227098.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700634169491-O1CN01tKzftr22Iw8SzeP6s_!!790227098.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700634172554-O1CN01t6cPVk22IwA4OT4MU_!!790227098.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 5999, '件', 0, 13, 10);
INSERT INTO `goods` VALUES (38, '  24期免息【现货速发】Apple/苹果 iPhone 15 Pro Max 官方正品旗舰店5G手机直降新款14Pro 国行max官网', 'http://localhost:9090/files/1700634211165-O1CN01dTqwpJ1hUI2WIavlu_!!2024314280.jpg_Q75.jpg_.webp', '<p><img src=\"http://localhost:9090/files/1700634316557-O1CN01KyscfR1hUI2dZmZA0_!!2024314280.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700634319613-O1CN01VlUru41hUI3bGz0eJ_!!2024314280.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700634322129-O1CN01yLqRrh1hUI3YEnERU_!!2024314280.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700634324541-O1CN013TMYk51hUI2XFR4Hz_!!2024314280.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 9999, '件', 0, 13, 10);
INSERT INTO `goods` VALUES (39, 'Huawei/华为 Mate 40 pro 5G手机麒麟9000鸿蒙系统官方正品旗舰款', 'http://localhost:9090/files/1700634471632-O1CN01A3qfgX1ph859EytEU_!!4031535391.jpg_400x400.jpg', '<p><img src=\"http://localhost:9090/files/1700634480894-O1CN01sBbfPM1ph859G1sb5_!!4031535391.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700634486978-O1CN01rMp4wP1ph856F73WA_!!4031535391.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700634523998-O1CN01t6cPVk22IwA4OT4MU_!!790227098.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700634527659-O1CN01NQ0Dep22Iw8PF8kqW_!!790227098.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 3599, '件', 0, 13, 10);
INSERT INTO `goods` VALUES (40, '贝恩施智能逻辑思维机', 'http://localhost:9090/files/1700635933770-1698569318289-2.jpg', '<p><img src=\"http://localhost:9090/files/1700635937841-1698569340166-d1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700635941089-1698569343887-d2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700635944020-1698569347820-d3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700635946887-1698569351134-d4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 150, '件', 0, 12, 11);
INSERT INTO `goods` VALUES (41, '贝恩施趣味英语108词点读机', 'http://localhost:9090/files/1700636026605-1698569243172-1.png', '<p><img src=\"http://localhost:9090/files/1700636033290-1698569262913-d1 (1).png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 189, '件', 0, 12, 11);
INSERT INTO `goods` VALUES (42, ' 贝恩施早教拼音机', 'http://localhost:9090/files/1700636090980-1698569117479-1.jpg', '<p><img src=\"http://localhost:9090/files/1700636096997-1698569131357-d2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700636108719-1698569135552-d3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700636111785-1698569147626-d5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700636114689-1698569159920-d7.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 89, '件', 0, 12, 11);
INSERT INTO `goods` VALUES (43, ' 贝恩施智能记忆训练机儿童注意力思维益智类玩具趣味桌游专注力', 'http://localhost:9090/files/1700636210077-1698551310693-3.jpg', '<p><img src=\"http://localhost:9090/files/1700636213904-1698551325799-d1 (1).jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 99, '件', 0, 12, 11);
INSERT INTO `goods` VALUES (44, '儿童平衡车2-3岁无脚踏滑行车滑步车SHO1发泡轮款', 'http://localhost:9090/files/1700636270880-1698569569124-4.jpg', '<p><img src=\"http://localhost:9090/files/1700636283922-1698569588723-d1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700636293950-1698569596112-d3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700636296867-1698569599252-d4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700636299563-1698569602608-d5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 87, '件', 0, 12, 11);
INSERT INTO `goods` VALUES (45, '东北旱黄瓜 新鲜小黄瓜汗汉黄瓜农家新鲜蔬菜水果特产美食脆皮5斤', 'http://localhost:9090/files/1700636488696-1698593375155-2.jpg', '<p><img src=\"http://localhost:9090/files/1700636523123-1698593375155-2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700636526774-1698593390916-3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700636529602-1698593395001-4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 3, '斤', 0, 10, 12);
INSERT INTO `goods` VALUES (46, '焕然有籽西红柿', 'http://localhost:9090/files/1700636578529-1698576773221-01.jpg', '<p><img src=\"http://localhost:9090/files/1700636600032-1698576813350-01.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700636603725-1698576806891-02.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700636607289-1698576816255-05.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700636610116-1698576819033-07.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700636613163-1698576821907-08.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 20, '斤', 0, 10, 12);
INSERT INTO `goods` VALUES (47, ' 福建漳州甜杨桃5斤水果当季整箱洋桃鲜果新鲜红龙扬桃五角星阳桃', 'http://localhost:9090/files/1700636692368-1698593428337-2.jpg', '<p><img src=\"http://localhost:9090/files/1700636678508-1698593428337-2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700636682128-1698593459282-3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700636685978-1698593462411-4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700636688841-1698593465708-5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 2, '斤', 0, 10, 12);
INSERT INTO `goods` VALUES (48, '甘肃天水花牛苹果10斤新鲜水果当季整箱包邮孕妇平果红蛇粉面果丑', 'http://localhost:9090/files/1700636747749-1698593498117-1.jpg', '<p><img src=\"http://localhost:9090/files/1700636752543-1698593514277-1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700636757246-1698593517293-2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700636761178-1698593520317-3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700636764055-1698593524216-4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 12, '斤', 0, 10, 12);
INSERT INTO `goods` VALUES (49, ' 云南蜜桔现摘新鲜橘子无籽薄皮柑橘当季孕妇水果10斤整箱酸甜包邮', 'http://localhost:9090/files/1700636802624-1698593728965-2.jpg', '<p><img src=\"http://localhost:9090/files/1700636807156-1698593740694-3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700636812417-1698593747330-5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 3, '斤', 0, 10, 12);
INSERT INTO `goods` VALUES (50, '2提原木纯品3层110抽4包抽纸巾家用餐巾纸', 'http://localhost:9090/files/1700637177889-1700637071314-1698577315491-2.jpg', '<p><img src=\"http://localhost:9090/files/1700637053114-1698577315491-2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700637057014-1698577332359-d1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700637060545-1698577335942-d2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700637063859-1698577341139-d4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 18, '件', 0, 9, 13);
INSERT INTO `goods` VALUES (51, '3支佳洁士草本水晶牙膏清新口气美白去黄去口臭防蛀清爽90g正品', 'http://localhost:9090/files/1700637133450-1698577431535-3.jpg', '<p><img src=\"http://localhost:9090/files/1700637138440-1698577449821-d1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700637141140-1698577452970-d2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700637143930-1698577455661-d3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700637146550-1698577458388-d4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700637149366-1698577461355-d5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 18, '支', 0, 9, 13);
INSERT INTO `goods` VALUES (52, ' Monda蒙达空气炸锅家用多功能大容量液晶触屏版无油电炸锅', 'http://localhost:9090/files/1700637243859-1698577471271-1.jpg', '<p><img src=\"http://localhost:9090/files/1700637247989-1698577482103-d1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700637255340-1698577485356-d2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700637258583-1698577489589-d3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700637261795-1698577493083-d4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700637264877-1698577497383-d6.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 288, '件', 0, 9, 13);
INSERT INTO `goods` VALUES (53, '康佳KKTV智能电压力锅', 'http://localhost:9090/files/1700637314563-1698577724156-2.jpg', '<p><img src=\"http://localhost:9090/files/1700637318453-1698577739262-d1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700637323747-1698577742925-d2 (1).jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700637328031-1698577742925-d2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700637331306-1698577748857-d4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 399, '件', 0, 9, 13);
INSERT INTO `goods` VALUES (54, '康佳KKTV蓝光离子不伤发1000W大功率吹风机', 'http://localhost:9090/files/1700637378434-1698577674419-1.jpg', '<p><img src=\"http://localhost:9090/files/1700637382192-1698577686313-d1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700637385778-1698577691326-d2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700637389288-1698577694089-d3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700637392482-1698577699509-d5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700637395141-1698577703213-d6.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 168, '件', 0, 9, 13);
INSERT INTO `goods` VALUES (55, '铜洗脸盆水龙头冷热水家用卫生间洗手池洗漱台面盆浴室柜单龙头 1件装', 'http://localhost:9090/files/1700637761855-1698578434989-1.png', '<p><img src=\"http://localhost:9090/files/1700637766067-1698578447245-d1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700637769131-1698578450052-d2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700637772334-1698578452696-d3.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700637774853-1698578458200-d5.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 388, '件', 0, 8, 14);
INSERT INTO `goods` VALUES (56, ' 白色毛巾架免打孔浴室卫生间卫浴五金挂件套装浴巾架置物架五件套', 'http://localhost:9090/files/1700637892923-1698578706661-1.png', '<p><img src=\"http://localhost:9090/files/1700637913611-1698578720247-d1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700637917710-1698578726280-d3.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700637920722-1698578728952-d4.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700637923582-1698578732191-d5.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 89, '件', 0, 9, 14);
INSERT INTO `goods` VALUES (57, ' 新款主卧室灯led吸顶灯简约现代大气圆形阳台客厅房间灯具', 'http://localhost:9090/files/1700638582026-1698578919544-1.png', '<p><img src=\"http://localhost:9090/files/1700638589944-1698578930477-d1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700638593025-1698578932986-d2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700638595744-1698578935991-d3.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700638599901-1698578938605-d4.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 267, '件', 0, 8, 14);
INSERT INTO `goods` VALUES (58, '霖朗客厅主灯现代简约大气led吸顶灯新款中山灯具长方形超薄', 'http://localhost:9090/files/1700638654427-1698579123468-1.png', '<p><img src=\"http://localhost:9090/files/1700638658413-1698579134053-d1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700638661815-1698579137686-d2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700638664436-1698579140370-d3.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700638667225-1698579146039-d5.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 345, '件', 0, 8, 14);
INSERT INTO `goods` VALUES (59, '新中式沙发组合客厅别墅大小户型现代简约轻奢高端全实木定制家具', 'http://localhost:9090/files/1700638730265-1698579527427-1.png', '<p><img src=\"http://localhost:9090/files/1700638735116-1698579539487-d1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700638737931-1698579542936-d2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700638740720-1698579546677-d3.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700638743358-1698579549557-d4.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 588, '件', 0, 8, 14);
INSERT INTO `goods` VALUES (60, ' vc片 维生素c正品官方旗舰店维生素c片药用东北制药国药片otc医用', 'http://localhost:9090/files/1700638908903-1698629064340-主图_1.jpg', '<p><img src=\"http://localhost:9090/files/1700638912824-1698629087004-主图_2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700638916079-1698629090223-主图_3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 19, '盒', 0, 5, 15);
INSERT INTO `goods` VALUES (61, '恒帝 复方氨酚烷胺片12片 流行性感冒发热头痛四肢酸痛喷嚏鼻塞', 'http://localhost:9090/files/1700638969539-1698629107260-主图_1.jpg', '<p><img src=\"http://localhost:9090/files/1700638973722-1698629120409-主图_2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700638976210-1698629123255-主图_3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700638978234-1698629126863-主图_4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 8, '盒', 0, 5, 15);
INSERT INTO `goods` VALUES (62, '养血安神片北京同仁堂失眠快速入睡药气血不足补气养血安眠睡眠XJ', 'http://localhost:9090/files/1700639027720-1698629142473-主图_2.jpg', '<p><img src=\"http://localhost:9090/files/1700639032248-1698629156920-主图_1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700639035140-1698629163527-主图_3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700639037752-1698629168799-主图_4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700639040862-1698629171959-主图_5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 47, '瓶', 0, 5, 15);
INSERT INTO `goods` VALUES (63, '一次性医用灭菌10cm棉签掏耳脱脂棉婴儿无菌消毒家用化妆医药棉棒', 'http://localhost:9090/files/1700639122730-1698629186846-主图_1.jpg', '<p><img src=\"http://localhost:9090/files/1700639126500-1698629200330-主图_2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700639129377-1698629205519-主图_3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700639134337-1698629208480-主图_4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700639137140-1698629211240-主图_5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 10, '袋', 0, 5, 15);
INSERT INTO `goods` VALUES (64, '浙江医药维生素e软胶囊100mg_30粒正品官方旗舰店维E', 'http://localhost:9090/files/1700639303740-1698629261130-主图_1.jpg', '<p><img src=\"http://localhost:9090/files/1700639307350-1698629273537-主图_2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700639310690-1698629277234-主图_3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700639313495-1698629280259-主图_4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700639316694-1698629282978-主图_5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 34, '盒', 0, 5, 15);
INSERT INTO `goods` VALUES (65, '黑钢家用菜刀菜板二合一全套厨房水果刀宿舍案板砧板辅食刀具套装', 'http://localhost:9090/files/1700639442212-1698595658968-主图_1.jpg', '<p><img src=\"http://localhost:9090/files/1700639445801-1698595677302-主图_1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700639448604-1698595680491-主图_2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700639453753-1698595684382-主图_3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700639456072-1698595687646-主图_4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 129, '套', 0, 4, 16);
INSERT INTO `goods` VALUES (66, '不锈钢厨具锅铲炒菜铲子煎铲厨房粥汤勺饭漏勺套装家用炒菜勺锅勺', 'http://localhost:9090/files/1700639514983-1698596142641-1.jpg', '<p><img src=\"http://localhost:9090/files/1700639518226-1698596181802-主图_1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700639520360-1698596184845-主图_2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700639522911-1698596187789-主图_3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700639527228-1698596190680-主图_4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 59, '套', 0, 4, 16);
INSERT INTO `goods` VALUES (67, '多功能锅盖架厨房用品锅铲子勺子收纳架坐式切菜板置物架家用大全', 'http://localhost:9090/files/1700639573999-1698595714367-主图_2.jpg', '<p><img src=\"http://localhost:9090/files/1700639577724-1698595727177-主图_2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700639581038-1698595730208-主图_3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700639583860-1698595733409-主图_4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700639586452-1698595736697-主图_5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 48, '套', 0, 4, 16);
INSERT INTO `goods` VALUES (68, '厨房锅盖架不锈钢菜板案板置物架多功能收纳放砧板架刀插刀架用品', 'http://localhost:9090/files/1700639629202-1698595772822-主图_2.jpg', '<p><img src=\"http://localhost:9090/files/1700639633394-1698595783992-主图_1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700639635648-1698595787442-主图_2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700639640679-1698595791959-主图_3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700639644427-1698595795297-主图_4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700639648464-1698595802596-主图_6.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 29, '套', 0, 4, 16);
INSERT INTO `goods` VALUES (69, '爱的教育小英雄雨来童年书全套3册高尔基正版六年级课外书阅读书目原著', 'http://localhost:9090/files/1700639895398-1700639755004-1698629505998-主图_2.jpg', '<p><img src=\"http://localhost:9090/files/1700639755004-1698629505998-主图_2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700639757805-1698629509160-主图_3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700639760324-1698629511721-主图_4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700639762852-1698629514305-主图_5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 59, '本', 0, 3, 18);
INSERT INTO `goods` VALUES (70, '迷宫书全6册智力大迷宫游戏书 儿童3-4-5-6-7-8岁 走迷宫书专注力逻辑....', 'http://localhost:9090/files/1700639867839-1698629524343-主图_2.jpg', '<p><img src=\"http://localhost:9090/files/1700639871237-1698629540583-主图_1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700639873351-1698629543321-主图_3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700639875481-1698629546129-主图_4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700639877645-1698629548946-主图_5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 39, '本', 0, 3, 18);
INSERT INTO `goods` VALUES (71, '全套10册 1-3-2岁宝宝绘本经典必读故事书睡前故事儿童读物0两到三岁早...', 'http://localhost:9090/files/1700639944476-1698629567791-主图_1.jpg', '<p><img src=\"http://localhost:9090/files/1700639947855-1698629579823-主图_2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700639950960-1698629582610-主图_3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700639953990-1698629585853-主图_4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 29, '本', 0, 3, 18);
INSERT INTO `goods` VALUES (72, '正版现货 一只猫的使命 长青藤国际大奖小说书系 畅销儿童文学8-10-12-', 'http://localhost:9090/files/1700639995465-1698629677725-主图_1.jpg', '<p><img src=\"http://localhost:9090/files/1700639999865-1698629689150-主图_2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700640002407-1698629691672-主图_3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700640006941-1698629694635-主图_4.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700640009775-1698629697156-主图_5.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 49, '本', 0, 3, 18);
INSERT INTO `goods` VALUES (73, '鲜花大抱抱桶花礼巨型花束生日纪念日开业乔迁商务用', 'http://localhost:9090/files/1700640639495-O1CN01nAj7f11FtehEqsbD3_!!892760545.jpg', '<p><img src=\"http://localhost:9090/files/1700640673118-O1CN01fLpOsA1FtegQOQSXx_!!892760545.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700640676162-O1CN01fWl6ea1FtegPqoTGJ_!!892760545.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700640679746-O1CN01OjKhiX1FtegMImodw_!!892760545.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700640682414-O1CN0143Pdof1FtegGIaxSX_!!892760545.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 1299, '束', 0, 6, 19);
INSERT INTO `goods` VALUES (74, '高端开张开业花篮同城鲜花庆典演出应援送礼', 'http://localhost:9090/files/1700640805531-O1CN01E78BTx1Fted10eSW5_!!892760545.jpg', '<p><img src=\"http://localhost:9090/files/1700640816804-O1CN01hEUIlH1Ftecm7Rzfs_!!892760545.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700640819035-O1CN01n94PYZ1Ftecp5sOjj_!!892760545.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700640821136-O1CN01Rjjce31FteciSmOoh_!!892760545.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1700640823254-O1CN01YzgfTI1Ftecn43yyh_!!892760545.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 288, '束', 0, 6, 19);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '公告信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '今天系统正式上线，开始内测', '今天系统正式上线，开始内测', '2023-09-05', 'admin');
INSERT INTO `notice` VALUES (2, '所有功能都已完成，可以正常使用', '所有功能都已完成，可以正常使用', '2023-09-05', 'admin');
INSERT INTO `notice` VALUES (3, '今天天气很不错，可以出去一起玩了', '今天天气很不错，可以出去一起玩了', '2023-09-05', 'admin');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单ID',
  `goods_id` int NULL DEFAULT NULL COMMENT '商品ID',
  `business_id` int NULL DEFAULT NULL COMMENT '商家ID',
  `num` int NULL DEFAULT NULL COMMENT '商品数量',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `price` int NULL DEFAULT NULL COMMENT '商品价格',
  `address_id` int NULL DEFAULT NULL COMMENT '地址ID',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '订单信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (8, '20231119235352', 10, 7, 1, 8, 66, 6, '已评价');
INSERT INTO `orders` VALUES (9, '20231119235352', 12, 7, 2, 8, 112, 6, '待收货');
INSERT INTO `orders` VALUES (11, '20231120141241', 10, 7, 1, 7, 66, 7, '已完成');
INSERT INTO `orders` VALUES (12, '20231120141241', 13, 7, 1, 7, 499, 7, '已完成');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类描述',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (3, '图书影像', '这是图书影像', 'http://localhost:9090/files/1699959119386-图书音像.png');
INSERT INTO `type` VALUES (4, '厨具 / 收纳 / 宠物', '这是厨具 / 收纳 / 宠物', 'http://localhost:9090/files/1699959292041-居家.png');
INSERT INTO `type` VALUES (5, '医药 / 保健品', '这是医药 / 保健品', 'http://localhost:9090/files/1699959541376-医药保健.png');
INSERT INTO `type` VALUES (6, '家访 / 家饰 / 鲜花', '这是家访 / 家饰 / 鲜花', 'http://localhost:9090/files/1699959633795-家纺家饰.png');
INSERT INTO `type` VALUES (7, '汽车/配件/用品', '这是汽车/配件/用品', 'http://localhost:9090/files/1699959733165-汽车配件.png');
INSERT INTO `type` VALUES (8, '家具/灯具/卫浴', '这是家具/灯具/卫浴', 'http://localhost:9090/files/1699959777639-家具建材.png');
INSERT INTO `type` VALUES (9, '生活电器/生活用品', '这是生活电器/生活用品', 'http://localhost:9090/files/1699959812464-家用电器.png');
INSERT INTO `type` VALUES (10, '水果/生鲜', '这是水果/生鲜', 'http://localhost:9090/files/1699959854257-喵鲜生.png');
INSERT INTO `type` VALUES (11, '零食/茶酒/进口食品', '这是零食/茶酒/进口食品', 'http://localhost:9090/files/1699959897327-食品.png');
INSERT INTO `type` VALUES (12, '母婴/玩具', '这是母婴/玩具', 'http://localhost:9090/files/1699959927256-母婴玩具.png');
INSERT INTO `type` VALUES (13, '电脑/手机/配件', '这是电脑/手机/配件', 'http://localhost:9090/files/1699959975404-电脑.png');
INSERT INTO `type` VALUES (14, '珠宝/护肤/饰品', '这是珠宝/护肤/饰品', 'http://localhost:9090/files/1699960029873-珠宝饰品.png');
INSERT INTO `type` VALUES (15, '女鞋/男鞋/箱包', '这是女鞋/男鞋/箱包', 'http://localhost:9090/files/1699960059749-鞋_箱包.png');
INSERT INTO `type` VALUES (16, '精品男装/运动户外', '这是精品男装/运动户外', 'http://localhost:9090/files/1699960088737-男装.png');
INSERT INTO `type` VALUES (17, '靓丽女装/内衣', '这是靓丽女装/内衣', 'http://localhost:9090/files/1699960117156-女装内衣.png');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (7, '秦始皇陵', '123', '皇族鹅王', 'http://localhost:9090/files/1699976843270-QQ图片20231031185409.jpg', 'USER', '13242345345', 'dn@qq.com');
INSERT INTO `user` VALUES (8, '张三', '123456', '张三', NULL, 'USER', NULL, NULL);
INSERT INTO `user` VALUES (9, 'fas', '123', 'fas', NULL, 'USER', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
