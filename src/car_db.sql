/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50067
Source Host           : localhost:3308
Source Database       : car_db

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2019-06-07 00:10:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_car`
-- ----------------------------
DROP TABLE IF EXISTS `t_car`;
CREATE TABLE `t_car` (
  `Id` int(11) NOT NULL auto_increment COMMENT '数据库主键',
  `chepai` varchar(255) default NULL COMMENT '车牌号',
  `chejia` varchar(255) default NULL COMMENT '车架号',
  `pinpai` varchar(255) default NULL COMMENT '品牌',
  `xinghao` varchar(255) default NULL COMMENT '型号',
  `pic` varchar(255) default NULL COMMENT '车辆图片',
  `price` varchar(255) default NULL COMMENT '车价',
  `xsz` varchar(255) default NULL COMMENT '行驶证号',
  `yanse` varchar(255) default NULL COMMENT '颜色',
  `zujin` int(11) default NULL COMMENT '租金',
  `status` varchar(255) default NULL COMMENT '车辆状态 待租赁/租赁中/维修中',
  `ctime` varchar(255) default NULL COMMENT '添加时间',
  `weihu` int(11) default NULL COMMENT '总维护费',
  `tzujin` int(11) default NULL COMMENT '总租金',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='车辆表';

-- ----------------------------
-- Records of t_car
-- ----------------------------
INSERT INTO `t_car` VALUES ('7', '苏N3B942', 'xxxx-xxxx-xxxx-xxxx', '大众帕萨特', '商务型', '\\uploads\\2019-05-08\\af661ec9-03eb-411c-9ab4-95603e56aad1.jpg', '140000', 'xxxxxxxxxxxx', '灰', '23', '待租赁', '2019-05-08 16:52:36', '0', '0');
INSERT INTO `t_car` VALUES ('9', '苏N3B943', 'xxxx-xxxx-xxxx-xxxx', ' 雪佛兰迈锐宝 ', '商务型', '\\uploads\\2019-05-08\\d8db0450-02bc-4ccc-b97d-1ce81a4301cc.jpg', '150000', 'xxxxxxxxxxxx', '白', '20', '待租赁', '2019-05-08 16:54:47', '0', '0');
INSERT INTO `t_car` VALUES ('10', '苏N3B944', 'xxxx-xxxx-xxxx-xxxx', ' 别克君越 ', '商务型', '\\uploads\\2019-05-08\\bdbcb573-1f18-40d6-858a-3225c6d3dae9.jpg', '160000', 'xxxxxxxxxxxx', '咖啡', '30', '待租赁', '2019-05-08 16:55:45', '0', '0');
INSERT INTO `t_car` VALUES ('11', '苏N3B945', 'xxxx-xxxx-xxxx-xxxx', '宝马5系', '豪华型', '\\uploads\\2019-05-08\\aab36a8b-1225-4bb6-96d6-2b8fda48d43f.jpg', '300000', 'xxxxxxxxxxxx', '黑', '50', '待租赁', '2019-05-08 21:06:39', '0', '0');
INSERT INTO `t_car` VALUES ('12', '苏N3B946', 'xxxx-xxxx-xxxx-xxxx', '大众朗逸', '手动紧凑型', '\\uploads\\2019-05-08\\824177f2-30e7-4461-a66a-e9bcb22afe83.jpg', '100000', 'xxxxxxxxxxxx', '蓝', '15', '待租赁', '2019-05-08 21:07:31', '100', '14');
INSERT INTO `t_car` VALUES ('13', '苏N3B947', 'xxxx-xxxx-xxxx-xxxx', '华晨华颂7', '手动紧凑型', '\\uploads\\2019-05-08\\87a96fef-8e29-4110-84d0-ecca293c7b6e.jpg', '150000', 'xxxxxxxxxxxx', '咖啡', '15', '待租赁', '2019-05-08 21:08:17', '0', '0');
INSERT INTO `t_car` VALUES ('14', '苏N3B948', 'xxxx-xxxx-xxxx-xxxx', '大众朗逸', '手动紧凑型', '\\uploads\\2019-05-08\\eacc8b69-fdb6-4a75-9b75-80da83ee1600.jpg', '150000', 'xxxxxxxxxxxx', '蓝', '15', '待租赁', '2019-05-08 21:09:15', '1', '29');
INSERT INTO `t_car` VALUES ('15', '苏N3B951', 'xxxx-xxxx-xxxx-xxxx', '雪佛兰科鲁兹', '经济型', '\\uploads\\2019-05-08\\af1d2a15-5799-4546-91cf-d795b93a9aa2.jpg', '200000', 'xxxxxxxxxxxx', '红', '16', '租赁中', '2019-05-08 21:09:57', '100', '16');
INSERT INTO `t_car` VALUES ('16', '苏N3B950', 'xxxx-xxxx-xxxx-xxxx', '别克昂科拉', 'SUV', '\\uploads\\2019-05-08\\807b962c-7013-428a-8cda-f212d7bb2f9a.jpg', '300000', 'xxxxxxxxxxxx', '白', '30', '租赁中', '2019-05-08 21:11:00', '0', '0');
INSERT INTO `t_car` VALUES ('17', '苏N3B949', 'xxxx-xxxx-xxxx-xxxx', '比亚迪宋', '电动', '\\uploads\\2019-05-08\\418f4cd6-dd83-4c14-a77f-f3814b0f1454.jpg', '300000', 'xxxxxxxxxxxx', '白', '20', '租赁中', '2019-05-08 21:11:54', '0', '20');

-- ----------------------------
-- Table structure for `t_gonggao`
-- ----------------------------
DROP TABLE IF EXISTS `t_gonggao`;
CREATE TABLE `t_gonggao` (
  `Id` int(11) NOT NULL auto_increment COMMENT '数据库主键',
  `gbiaoti` varchar(255) default NULL COMMENT '公告标题',
  `gneirong` varchar(5000) default NULL COMMENT '公告内容',
  `ctime` varchar(255) default NULL COMMENT '添加时间',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='公告表';

-- ----------------------------
-- Records of t_gonggao
-- ----------------------------
INSERT INTO `t_gonggao` VALUES ('17', '充值会员享优惠', '充值vip送积分，租车享9折优惠！详情请咨询租车点客服', '2019-05-08 16:46:14');
INSERT INTO `t_gonggao` VALUES ('18', '取车需要携带什么证件？', '携带本人身份证原件(部分产品支持护照、回乡证、台胞证)、本人中国驾驶证正副本和本人国内信用卡（部分产品支持无需信用卡）办理取车手续。身份证有效期需要在1个月以上。驾驶证有效期需要在2个月以上，信用卡有效期需1个月以上。', '2019-05-08 22:02:46');
INSERT INTO `t_gonggao` VALUES ('19', '租车费用包含？', '费用包含租车费，如果您租赁的车辆发生损坏，可能还会产生维修服务费。', '2019-05-08 22:03:38');
INSERT INTO `t_gonggao` VALUES ('20', '是否提供发票？', '发票开具方式有两种：1.订单提交后您可以在订单详情页申请开具发票；2.取车时由门店工作人员为您开具发票；具体方式以订单填写页面重要信息披露为准。（携程开票最高限额为您在携程支付订单总额，不含礼品卡支付金额）', '2019-05-08 22:03:53');
INSERT INTO `t_gonggao` VALUES ('21', '南通自驾租车信息', '南通自驾租车，汽车租赁为您提供南通自驾租车报价及预订，南通自驾租车服务涵盖了多家南通租车公司比价，平均低于官网价格，丰富的车型包括南通自驾租车必备的经济型轿车、SUV、商务车、豪华轿车等，保证您节假日高峰用车有保障，让您享受五星级出行服务。', '2019-05-08 22:05:11');

-- ----------------------------
-- Table structure for `t_jilu`
-- ----------------------------
DROP TABLE IF EXISTS `t_jilu`;
CREATE TABLE `t_jilu` (
  `Id` int(11) NOT NULL auto_increment COMMENT '数据库主键',
  `chepai` varchar(255) default NULL COMMENT '车牌号',
  `carid` int(11) default NULL COMMENT '关联的车辆信息，外键',
  `kehuid` int(11) default NULL COMMENT '租车的客户ID，外键',
  `workid` int(11) default NULL COMMENT '经办的工作人员ID，外键',
  `jishuid` int(11) default NULL COMMENT '技术人员ID，外键',
  `sfz` varchar(255) default NULL COMMENT '身份证号码',
  `dianhua` varchar(255) default NULL COMMENT '联系电话',
  `xingming` varchar(255) default NULL COMMENT '客户姓名',
  `sfz2` varchar(255) default NULL COMMENT '身份证复印件',
  `jsz` varchar(255) default NULL COMMENT '驾驶证复印件',
  `shijian1` varchar(255) default NULL COMMENT '出租时间',
  `shijian2` varchar(255) default NULL COMMENT '还车时间',
  `tzujin` double(11,2) default NULL COMMENT '总租金',
  `zhuangtai` varchar(255) default NULL COMMENT '状态',
  `tianshu` int(11) default NULL COMMENT '已租天数',
  `beizhu` varchar(5000) default NULL COMMENT '备注',
  `weixiu` int(11) default NULL COMMENT '维护费',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='租车记录表';

-- ----------------------------
-- Records of t_jilu
-- ----------------------------
INSERT INTO `t_jilu` VALUES ('12', '苏N3B944', '10', '11', '13', '12', '312312199400000000', '17850505555', 'a', '\\uploads\\2019-05-08\\57a2a7fe-5fad-4c73-967b-93219e39d8e3.jpg', '\\uploads\\2019-05-08\\45096e83-6048-4943-a574-8cf813ab77bb.jpg', '2019-05-08 17:41:40', '2019-05-08 17:43:03', '30.00', '完成结算', '1', '无', '0');
INSERT INTO `t_jilu` VALUES ('13', '苏N3B944', '10', '14', '13', '12', '31231199730222222', '17840401212', 'b', '\\uploads\\2019-05-08\\8820d5e1-e2eb-4427-8073-5ae33540760b.jpg', '\\uploads\\2019-05-08\\fa2d4c46-1512-445d-aaea-93ab888562ec.jpg', '2019-05-08 17:48:20', '2019-05-08 17:55:01', '30.00', '完成结算', '1', '无', '0');
INSERT INTO `t_jilu` VALUES ('14', '苏N3B943', '9', '11', '13', '12', '312312199400000000', '17850505555', 'a', '\\uploads\\2019-05-08\\91e3c58c-a849-4290-8a45-464eda0b5204.jpg', '\\uploads\\2019-05-08\\3019efdd-c913-430c-9ccb-48f61e227d4f.jpg', '2019-05-08 17:48:24', '2019-05-08 17:49:52', '20.00', '完成结算', '1', '无', '200');
INSERT INTO `t_jilu` VALUES ('15', '苏N3B949', '17', '11', '13', '12', '312312199400000000', '178050534281', 'a', '\\uploads\\2019-05-08\\194fbfe1-4d12-455d-8ad9-556f39bb1f9b.jpg', '\\uploads\\2019-05-08\\0b4ff66a-0b9d-4ab7-bf83-34a24bcc42c8.jpg', '2019-05-08 21:31:21', '2019-05-08 21:32:04', '20.00', '完成结算', '1', '无', '0');
INSERT INTO `t_jilu` VALUES ('16', '苏N3B950', '16', '0', '13', '12', '312312199400000001', '178050534283', '黎明', '\\uploads\\2019-05-08\\5d586408-3662-419f-be9e-1c9cd3e20ab0.jpg', '\\uploads\\2019-05-08\\6f5762b6-7e31-4768-8355-de1647615f67.jpg', '2019-05-08 21:33:36', '2019-05-08 21:34:50', '30.00', '完成结算', '1', '无', '300');
INSERT INTO `t_jilu` VALUES ('17', '苏N3B951', '15', '11', '13', '12', '312312199400000000', '178050534281', 'a', '\\uploads\\2019-05-08\\805c242b-160e-48f1-91d4-96af417fb6d4.jpg', '\\uploads\\2019-05-08\\bbe99a22-2715-482f-ba3d-7c8c7d705202.jpg', '2019-05-08 21:34:36', '2019-05-08 21:52:02', '16.00', '完成结算', '1', '无', '0');
INSERT INTO `t_jilu` VALUES ('18', '苏N3B949', '17', '11', '13', '12', '312312199400000000', '17850505555', 'a', '\\uploads\\2019-05-13\\e8fbb462-47d8-4c5e-91c5-297757b93d80.jpg', '\\uploads\\2019-05-13\\e27be0c8-9b2a-4462-9872-d5d293421ad0.jpg', '2019-05-13 15:01:18', '2019-05-13 15:38:54', '20.00', '完成结算', '1', '无', '0');
INSERT INTO `t_jilu` VALUES ('19', '苏N3B950', '16', '11', '13', '12', '312312199400000000', '17850505555', 'a', '\\uploads\\2019-05-13\\737a917b-0584-40b0-8798-991291847b2d.jpg', '\\uploads\\2019-05-13\\0b5b94ef-80fe-4f49-9063-82aa17781bf6.jpg', '2019-05-13 17:01:10', '无', '30.00', '还车中,等待技术人员确认', '1', '无', '0');
INSERT INTO `t_jilu` VALUES ('20', '苏N3B951', '15', '11', '13', '12', '312312199400000000', '17850505555', 'a', '\\uploads\\2019-05-13\\4998b386-a278-43a2-b1ee-f0943b94b4d8.jpg', '\\uploads\\2019-05-13\\15a8481c-b891-48df-bf48-e1426117b5cd.jpg', '2019-05-13 17:18:00', '2019-05-13 17:23:05', '16.00', '完成结算', '1', '无', '100');
INSERT INTO `t_jilu` VALUES ('21', '苏N3B951', '15', '16', '13', '0', '321321100011001101', '17830303333', 'test', '\\uploads\\2019-05-13\\32e28c29-c978-471a-ae90-f4508eb11086.jpg', '\\uploads\\2019-05-13\\810b110e-9d27-445f-9042-7075e66eb071.jpg', '2019-05-13 17:44:27', '2019-05-13 18:18:30', '16.00', '还车中,等待技术人员确认', '1', '', '0');
INSERT INTO `t_jilu` VALUES ('22', '苏N3B949', '17', '16', '13', '12', '321321100011001101', '17830303333', 'test', '\\uploads\\2019-05-13\\08ee7c35-2db2-4886-b38b-827b9194cb80.jpg', '\\uploads\\2019-05-13\\21628537-4450-4ac5-a89e-6f7b7f9abebf.jpg', '2019-05-13 17:44:30', '2019-05-13 18:18:21', '20.00', '技术人员已确认', '1', '', '0');
INSERT INTO `t_jilu` VALUES ('23', '苏N3B948', '14', '11', '13', '12', '312312199400000000', '17850505555', 'a', '\\uploads\\2019-05-13\\d28ce64f-0855-499f-90cb-2b3f9eb07e69.jpg', '\\uploads\\2019-05-13\\d85edc72-d300-42f1-81ce-723eab4bcabc.jpg', '2019-05-13 17:45:22', '2019-05-13 18:04:27', '13.50', '完成结算', '1', '', '1');
INSERT INTO `t_jilu` VALUES ('24', '苏N3B946', '12', '11', '13', '12', '312312199400000000', '17850505555', 'a', '\\uploads\\2019-05-13\\d5802433-aa6d-45c7-a720-e683388af055.jpg', '\\uploads\\2019-05-13\\ee35635a-3431-476d-828c-8cfac0747dd2.jpg', '2019-05-13 18:21:18', '2019-05-13 18:21:33', '13.50', '完成结算', '1', '', '100');
INSERT INTO `t_jilu` VALUES ('25', '苏N3B948', '14', '0', '13', '12', '312312199400000004', '178050534282', 'user4', '\\uploads\\2019-05-19\\3ac9084f-2ffc-4a8d-9a3a-67311644e8f5.jpg', '\\uploads\\2019-05-19\\cfcd9780-d2ad-4daf-9ced-4bb7ce77c271.jpg', '2019-05-19 21:25:52', '2019-05-19 21:37:21', '15.00', '完成结算', '1', '无', '0');

-- ----------------------------
-- Table structure for `t_liuyan`
-- ----------------------------
DROP TABLE IF EXISTS `t_liuyan`;
CREATE TABLE `t_liuyan` (
  `Id` int(11) NOT NULL auto_increment,
  `kehuid` int(11) default NULL COMMENT '留言的客户，外键',
  `name` varchar(255) default NULL COMMENT '客户姓名',
  `ltitle` varchar(255) default NULL COMMENT '留言标题',
  `neirong` varchar(5000) default NULL COMMENT '留言内容',
  `shijian1` varchar(255) default NULL COMMENT '留言时间',
  `zhuangtai` varchar(255) default NULL COMMENT '回复状态',
  `huifu` varchar(5000) default NULL COMMENT '回复内容',
  `shijian2` varchar(255) default NULL COMMENT '回复时间',
  `workid` int(11) default NULL COMMENT '回复的工作人员，外键',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='留言表';

-- ----------------------------
-- Records of t_liuyan
-- ----------------------------
INSERT INTO `t_liuyan` VALUES ('7', '11', 'a', '评论', '怎么租车呢', '2019-05-08 17:06:16', '已回复', '您好，自助租车或者到租车点租车都是可以的', '2019-05-08 17:42:30', '13');
INSERT INTO `t_liuyan` VALUES ('8', '11', 'a', '留言', 'test', '2019-05-08 23:49:49', '未回复', null, null, '0');

-- ----------------------------
-- Table structure for `t_pic`
-- ----------------------------
DROP TABLE IF EXISTS `t_pic`;
CREATE TABLE `t_pic` (
  `Id` int(11) NOT NULL auto_increment COMMENT '数据库主键',
  `path` varchar(255) default NULL COMMENT '图片路径',
  `info` varchar(255) default NULL COMMENT '图片说明',
  `href` varchar(255) default NULL COMMENT '图片链接',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='展示图片表';

-- ----------------------------
-- Records of t_pic
-- ----------------------------
INSERT INTO `t_pic` VALUES ('1', '\\uploads\\1.jpg', '说明一', '.');
INSERT INTO `t_pic` VALUES ('2', '\\uploads\\2.jpg', '说明二', '.');
INSERT INTO `t_pic` VALUES ('3', '\\uploads\\3.jpg', '说明三', '.');
INSERT INTO `t_pic` VALUES ('4', '\\uploads\\4.jpg', '说明四', '.');

-- ----------------------------
-- Table structure for `t_ri`
-- ----------------------------
DROP TABLE IF EXISTS `t_ri`;
CREATE TABLE `t_ri` (
  `Id` int(11) NOT NULL auto_increment COMMENT '数据库主键',
  `ri` varchar(255) default NULL COMMENT '日期',
  `jine` int(11) default NULL COMMENT '租金',
  `weihu` int(11) default NULL COMMENT '维护费',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='日统计表';

-- ----------------------------
-- Records of t_ri
-- ----------------------------
INSERT INTO `t_ri` VALUES ('1', '2019-05-19 ', '15', '0');
INSERT INTO `t_ri` VALUES ('2', '2019-05-13 ', '64', '201');
INSERT INTO `t_ri` VALUES ('3', '2019-05-08 ', '146', '500');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `Id` int(11) NOT NULL auto_increment COMMENT '数据库主键',
  `username` varchar(255) default NULL COMMENT '用户名',
  `password` varchar(255) default NULL COMMENT '密码',
  `role` int(11) default NULL COMMENT '用户角色，1表示系统管理员',
  `name` varchar(255) default NULL COMMENT '姓名',
  `tej` varchar(255) default NULL COMMENT '手机号码',
  `createtime` varchar(255) default NULL COMMENT '注册时间',
  `sfz` varchar(255) default NULL COMMENT '身份证号码',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', '111111', '1', '系统管理员', null, null, null);
INSERT INTO `t_user` VALUES ('11', 'user1', '123456', '4', 'a', '17850505555', '2019-05-08 16:39:44', '312312199400000000');
INSERT INTO `t_user` VALUES ('12', '技术1', '111111', '3', 'mbm', '17850501209', '2019-05-08 16:42:03', null);
INSERT INTO `t_user` VALUES ('13', '工作1', '111111', '2', 'mr', '17845020202', '2019-05-08 16:42:30', null);
INSERT INTO `t_user` VALUES ('14', 'user2', '123456', '4', 'b', '17840401212', '2019-05-08 17:47:20', '31231199730222222');
INSERT INTO `t_user` VALUES ('15', '312312199400000001', '111111', '4', '黎明', '178050534283', '2019-05-08 21:33:36', '312312199400000001');
INSERT INTO `t_user` VALUES ('16', 'user3', '123456', '4', 'test', '17830303333', '2019-05-13 14:07:46', '321321100011001101');
INSERT INTO `t_user` VALUES ('17', '312312199400000004', '111111', '4', 'user4', '178050534282', '2019-05-19 21:25:52', '312312199400000004');

-- ----------------------------
-- Table structure for `t_vip`
-- ----------------------------
DROP TABLE IF EXISTS `t_vip`;
CREATE TABLE `t_vip` (
  `Id` int(11) NOT NULL auto_increment,
  `username` varchar(255) NOT NULL COMMENT '客户名',
  `points` int(11) NOT NULL default '0' COMMENT '积分',
  `level` int(11) NOT NULL default '0' COMMENT '会员等级',
  `enddate` datetime default NULL COMMENT '到期时间',
  `consumed` double(11,2) NOT NULL default '0.00' COMMENT '会员已消费金额',
  `discount` double(3,2) NOT NULL default '0.90' COMMENT '折扣',
  `kehuid` int(11) NOT NULL COMMENT '客户ID',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_vip
-- ----------------------------
INSERT INTO `t_vip` VALUES ('1', 'user1', '32012', '1', '2022-01-13 00:00:00', '628.00', '0.90', '11');
INSERT INTO `t_vip` VALUES ('7', '312312199400000001', '8000', '1', '2020-01-13 00:00:00', '160.00', '0.90', '15');
INSERT INTO `t_vip` VALUES ('8', 'user2', '1000', '1', '2019-06-19 00:00:00', '20.00', '0.90', '14');

-- ----------------------------
-- Table structure for `t_yuding`
-- ----------------------------
DROP TABLE IF EXISTS `t_yuding`;
CREATE TABLE `t_yuding` (
  `Id` int(11) NOT NULL auto_increment COMMENT '数据库主键',
  `xingming` varchar(255) default NULL COMMENT '客户姓名',
  `sfz` varchar(255) default NULL COMMENT '身份证号码',
  `dianhua` varchar(255) default NULL COMMENT '联系电话',
  `sfz2` varchar(255) default NULL COMMENT '身份证复印件',
  `jsz` varchar(255) default NULL COMMENT '驾驶证复印件',
  `kehuid` int(11) default NULL COMMENT '预定客户的id，外键',
  `zhuangtai` varchar(255) default NULL COMMENT '预定状态',
  `shijian1` varchar(255) default NULL COMMENT '预定时间',
  `shijian2` varchar(255) default NULL COMMENT '处理时间',
  `chepai` varchar(255) default NULL COMMENT '车牌',
  `carid` int(11) default NULL COMMENT '预定车牌ID，外键',
  `workid` int(11) default NULL COMMENT '工作人员id，外键',
  `beizhu` varchar(255) default NULL COMMENT '备注信息',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='预定表';

-- ----------------------------
-- Records of t_yuding
-- ----------------------------
INSERT INTO `t_yuding` VALUES ('6', 'a', '312312199400000000', '17850505555', '\\uploads\\2019-05-08\\57a2a7fe-5fad-4c73-967b-93219e39d8e3.jpg', '\\uploads\\2019-05-08\\45096e83-6048-4943-a574-8cf813ab77bb.jpg', '11', '预定成功', '2019-05-08 17:41:05', '2019-05-08 17:41:40', '苏N3B944', '10', '13', '无');
INSERT INTO `t_yuding` VALUES ('7', 'a', '312312199400000000', '17850505555', '\\uploads\\2019-05-08\\7d46cfd9-63e3-459f-83e0-ceb9da25595e.jpg', '\\uploads\\2019-05-08\\86633be3-7fac-4657-a16e-1112f28b24dd.jpg', '11', '预定失败', '2019-05-08 17:45:35', '2019-05-08 17:48:27', '苏N3B942', '7', '13', '');
INSERT INTO `t_yuding` VALUES ('8', 'a', '312312199400000000', '17850505555', '\\uploads\\2019-05-08\\91e3c58c-a849-4290-8a45-464eda0b5204.jpg', '\\uploads\\2019-05-08\\3019efdd-c913-430c-9ccb-48f61e227d4f.jpg', '11', '预定成功', '2019-05-08 17:46:43', '2019-05-08 17:48:24', '苏N3B943', '9', '13', '无');
INSERT INTO `t_yuding` VALUES ('9', 'b', '31231199730222222', '17840401212', '\\uploads\\2019-05-08\\8820d5e1-e2eb-4427-8073-5ae33540760b.jpg', '\\uploads\\2019-05-08\\fa2d4c46-1512-445d-aaea-93ab888562ec.jpg', '14', '预定成功', '2019-05-08 17:48:03', '2019-05-08 17:48:20', '苏N3B944', '10', '13', '无');
INSERT INTO `t_yuding` VALUES ('10', 'a', '312312199400000000', '17850505555', '\\uploads\\2019-05-13\\e8fbb462-47d8-4c5e-91c5-297757b93d80.jpg', '\\uploads\\2019-05-13\\e27be0c8-9b2a-4462-9872-d5d293421ad0.jpg', '11', '预定成功', '2019-05-13 15:01:00', '2019-05-13 15:01:18', '苏N3B949', '17', '13', '无');
INSERT INTO `t_yuding` VALUES ('11', 'a', '312312199400000000', '17850505555', '\\uploads\\2019-05-13\\737a917b-0584-40b0-8798-991291847b2d.jpg', '\\uploads\\2019-05-13\\0b5b94ef-80fe-4f49-9063-82aa17781bf6.jpg', '11', '预定成功', '2019-05-13 17:00:36', '2019-05-13 17:01:10', '苏N3B950', '16', '13', '无');
INSERT INTO `t_yuding` VALUES ('12', 'a', '312312199400000000', '17850505555', '\\uploads\\2019-05-13\\4998b386-a278-43a2-b1ee-f0943b94b4d8.jpg', '\\uploads\\2019-05-13\\15a8481c-b891-48df-bf48-e1426117b5cd.jpg', '11', '预定成功', '2019-05-13 17:17:17', '2019-05-13 17:18:00', '苏N3B951', '15', '13', '无');
INSERT INTO `t_yuding` VALUES ('13', 'test', '321321100011001101', '17830303333', '\\uploads\\2019-05-13\\08ee7c35-2db2-4886-b38b-827b9194cb80.jpg', '\\uploads\\2019-05-13\\21628537-4450-4ac5-a89e-6f7b7f9abebf.jpg', '16', '预定成功', '2019-05-13 17:43:33', '2019-05-13 17:44:30', '苏N3B949', '17', '13', '');
INSERT INTO `t_yuding` VALUES ('14', 'test', '321321100011001101', '17830303333', '\\uploads\\2019-05-13\\32e28c29-c978-471a-ae90-f4508eb11086.jpg', '\\uploads\\2019-05-13\\810b110e-9d27-445f-9042-7075e66eb071.jpg', '16', '预定成功', '2019-05-13 17:43:58', '2019-05-13 17:44:27', '苏N3B951', '15', '13', '');
INSERT INTO `t_yuding` VALUES ('15', 'a', '312312199400000000', '17850505555', '\\uploads\\2019-05-13\\d28ce64f-0855-499f-90cb-2b3f9eb07e69.jpg', '\\uploads\\2019-05-13\\d85edc72-d300-42f1-81ce-723eab4bcabc.jpg', '11', '预定成功', '2019-05-13 17:45:07', '2019-05-13 17:45:22', '苏N3B948', '14', '13', '');
INSERT INTO `t_yuding` VALUES ('16', 'a', '312312199400000000', '17850505555', '\\uploads\\2019-05-13\\bd7939b8-4315-40fb-9fcd-8c85e90e1163.jpg', '\\uploads\\2019-05-13\\2189f741-fb8d-49ed-a4c0-3ba037afff53.jpg', '11', '已取消', '2019-05-13 18:19:44', null, '苏N3B948', '14', '0', '');
INSERT INTO `t_yuding` VALUES ('17', 'a', '312312199400000000', '17850505555', '\\uploads\\2019-05-13\\d5802433-aa6d-45c7-a720-e683388af055.jpg', '\\uploads\\2019-05-13\\ee35635a-3431-476d-828c-8cfac0747dd2.jpg', '11', '预定成功', '2019-05-13 18:21:01', '2019-05-13 18:21:18', '苏N3B946', '12', '13', '');

-- ----------------------------
-- Table structure for `t_yue`
-- ----------------------------
DROP TABLE IF EXISTS `t_yue`;
CREATE TABLE `t_yue` (
  `Id` int(11) NOT NULL auto_increment COMMENT '数据库主键',
  `month` varchar(255) default NULL COMMENT '月份',
  `jine` int(11) default NULL COMMENT '租金',
  `weihu` int(11) default NULL COMMENT '维护费',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='月统计';

-- ----------------------------
-- Records of t_yue
-- ----------------------------
INSERT INTO `t_yue` VALUES ('29', '2019-05', '225', '701');
