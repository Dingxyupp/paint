-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2021-04-29 15:16:53
-- 服务器版本： 5.6.47-log
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wbbg`
--

-- --------------------------------------------------------

--
-- 表的结构 `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `id` int(11) NOT NULL COMMENT '地址表id',
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL COMMENT '地址',
  `state` int(1) NOT NULL COMMENT '1.默认地址  2.其他地址'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `address`
--

INSERT INTO `address` (`id`, `userid`, `username`, `address`, `state`) VALUES
(1, 3, '李四', '水木清华', 1);

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(255) unsigned NOT NULL,
  `username` varchar(255) NOT NULL COMMENT '账户名',
  `password` varchar(255) NOT NULL,
  `role` int(255) NOT NULL DEFAULT '1' COMMENT '0 超级  1普通',
  `hash` varchar(255) NOT NULL COMMENT '根据时间简历的hash值'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `role`, `hash`) VALUES
(1, 'admin', 'd6c75f4fa9409c95017f6b7f8f9fe8e6', 0, 'b4932d3b757d5ae07a252d0e7b43d53b'),
(2, '张三', '9d7d3cfb01c6e1a5ce4061a655a11ed6', 1, '5af4e726767d347cd560f5e75ec53d3e'),
(3, '王五', '89e3ba269ea5aeae22f570b8ed2679a5', 1, 'd81a104e10e0d1d3162c39112ad23242'),
(4, '马六', 'fe44acf8bd29f7b7d2e7645237fb7e7e', 1, 'db34ea1e8b31737e1362c57de247681c'),
(5, '赵四', 'ac3f5a5bf55d4c22346606aa90694f8b', 1, '81b6de935882047ee92788a1485995a3');

-- --------------------------------------------------------

--
-- 表的结构 `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
  `id` int(11) NOT NULL,
  `text` varchar(255) NOT NULL COMMENT '内容'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `brand`
--

INSERT INTO `brand` (`id`, `text`) VALUES
(1, 'Noo以美化和保护人们的生活为己任，不断创造出品质优越的产品，让美丽的色彩足迹遍及中国每一角落,致力于成为涂料行业的全方位服务商.');

-- --------------------------------------------------------

--
-- 表的结构 `brushdiscuss`
--

CREATE TABLE IF NOT EXISTS `brushdiscuss` (
  `id` int(11) NOT NULL COMMENT '编号',
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `goodsid` int(11) NOT NULL,
  `goodsname` varchar(255) NOT NULL,
  `commonent` varchar(255) NOT NULL COMMENT '评论内容',
  `packing` varchar(255) NOT NULL DEFAULT '1' COMMENT '数量',
  `date` datetime DEFAULT NULL COMMENT '评论日期',
  `state` int(255) NOT NULL DEFAULT '1' COMMENT '1  好评  2.中评  3 差评'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `brushdiscuss`
--

INSERT INTO `brushdiscuss` (`id`, `userid`, `username`, `goodsid`, `goodsname`, `commonent`, `packing`, `date`, `state`) VALUES
(1, 3, '王五', 3, '器具', '好评', '1', '2020-05-09 23:53:04', 1),
(2, 3, '王五', 2, '黄金搭档内墙面漆滚筒（超效款）', 'bad', '件', '2020-05-17 16:48:16', 3),
(3, 3, '王五', 3, '全能大师滚筒', '耐用，效率高', '件', '2020-05-17 16:55:39', 1);

-- --------------------------------------------------------

--
-- 表的结构 `discuss`
--

CREATE TABLE IF NOT EXISTS `discuss` (
  `id` int(11) NOT NULL COMMENT '编号',
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `goodsid` int(11) NOT NULL,
  `goodsname` varchar(255) NOT NULL,
  `commonent` varchar(255) NOT NULL COMMENT '评论内容',
  `date` datetime DEFAULT NULL COMMENT '评论日期',
  `packing` varchar(255) NOT NULL COMMENT '包装',
  `state` int(255) NOT NULL DEFAULT '1' COMMENT '1  好评  2.中评  3 差评'
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `discuss`
--

INSERT INTO `discuss` (`id`, `userid`, `username`, `goodsid`, `goodsname`, `commonent`, `date`, `packing`, `state`) VALUES
(1, 3, '王五', 1, '油漆', '好评', '2020-05-09 20:29:35', '20L', 1),
(2, 3, '王五', 1, '油漆', '中评', '2020-05-09 20:29:35', '20L', 2),
(3, 3, '王五', 1, '油漆', '差评', '2020-05-09 20:29:35', '20L', 3),
(4, 3, '王五', 4, '立邦漆', '123', '2020-05-13 20:18:26', '20L', 1),
(5, 3, '王五', 4, '立邦漆', '1234', '2020-05-13 20:21:22', '20L', 2),
(6, 3, '王五', 4, '立邦漆', '234', '2020-05-13 20:25:40', '20L', 1),
(9, 3, '王五', 3, '立邦漆', '商品一般', '2020-05-17 15:00:19', '20L', 2);

-- --------------------------------------------------------

--
-- 表的结构 `indexshow`
--

CREATE TABLE IF NOT EXISTS `indexshow` (
  `id` int(11) NOT NULL,
  `detail` varchar(255) NOT NULL COMMENT '图片地址',
  `interview` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '文章标题'
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `indexshow`
--

INSERT INTO `indexshow` (`id`, `detail`, `interview`, `title`) VALUES
(1, '/uploads/20200515/942536c537982b46644ba11c897c1a30.jpg', '2020年，是全新的十年的开始，以“从心出发”为年度主题，宛若新生、象征着蓬勃生命力的“豆蔻青”（45GY 55/052）成为年度色彩。', '新生活新呼吸'),
(2, '/uploads/20200515/1ba3f0d730bb37c9b336263bb9622a5e.jpg', '革命性淳零科技，在配方选择和产品生产过程中未人为添加甲醛、苯及其他挥发性有机化合物（VOC）和半挥发性有机化合物（SVOC），实现涂刷后半挥发性有机化合物（SVOC）释放量趋于0。涂刷完成24小时后，您即可安心入住新家，室内空气臻如自然。', '大中华区空间色彩奖正式招募'),
(3, '/uploads/20200515/099476c306e00495b4ab599d332a98ab.jpg', '空间色彩奖是由多乐士发起的年度设计盛事。大赛鼓励广大室内设计师以色彩作为引领家居风格的主角，借由墙面色彩改变空间氛围，激发更多设计灵感。快来参与比赛，下一位色彩大师就是你！', '2020年度色彩'),
(4, '/uploads/20200515/a1680a2666c26cba2af73ae793ffc2ce.jpg', 'asffa', '双方发生发生发生');

-- --------------------------------------------------------

--
-- 表的结构 `lbt`
--

CREATE TABLE IF NOT EXISTS `lbt` (
  `id` int(11) NOT NULL,
  `interview` varchar(255) NOT NULL COMMENT '轮播图介绍',
  `detail` varchar(255) NOT NULL COMMENT '图片地址'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `lbt`
--

INSERT INTO `lbt` (`id`, `interview`, `detail`) VALUES
(1, '服务页轮播图', '/uploads/20200515/a02644a5a55a36c84b269925155de049.jpg'),
(2, 'asdad7890', '/uploads/20200404/e08333c8cf4451222357793d3ecf59d0.jpg'),
(3, 'fdsgsg', '/uploads/20200404/86569f1c20a49d5ed3246b56d55a401c.jpg'),
(4, 'cat', '/uploads/20200404/8763770bf7ea0123950fa627f1bf6fca.jpg'),
(5, '图片', '/uploads/20200404/3d3f864b82ce142f00cf109fc934e639.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `money`
--

CREATE TABLE IF NOT EXISTS `money` (
  `goodsid` int(3) NOT NULL DEFAULT '0' COMMENT '商品id',
  `goodsname` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `todaymoney` varchar(255) DEFAULT NULL COMMENT '今日下单金额',
  `yesmoney` varchar(255) DEFAULT NULL COMMENT '昨日下单金额',
  `daygain` varchar(255) DEFAULT '0' COMMENT '单日涨幅',
  `yestotalmoney` varchar(255) DEFAULT NULL COMMENT '截至到前日的总金额',
  `daytotalmoney` varchar(255) DEFAULT NULL COMMENT '截至到今日的总金额',
  `totalmoneygain` varchar(255) DEFAULT '0' COMMENT '总额涨幅'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `money`
--

INSERT INTO `money` (`goodsid`, `goodsname`, `todaymoney`, `yesmoney`, `daygain`, `yestotalmoney`, `daytotalmoney`, `totalmoneygain`) VALUES
(3, '立邦漆', '1940', '1230', '0', '0', '1940', '0'),
(4, '立邦漆', '520', '0', '0', '0', '520', '0'),
(2, '黄金搭档内墙面漆滚筒（超效款）', '280', '0', '0', '0', '280', '0');

-- --------------------------------------------------------

--
-- 表的结构 `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `orderid` int(11) unsigned NOT NULL COMMENT '订单编号',
  `goodsid` int(11) NOT NULL COMMENT '商品编号',
  `goodsname` varchar(255) NOT NULL COMMENT '商品名称',
  `picture` varchar(255) NOT NULL COMMENT '商品缩略图',
  `money` varchar(255) NOT NULL COMMENT '金额',
  `count` int(11) NOT NULL COMMENT '购买数量',
  `color` varchar(255) NOT NULL COMMENT '颜色',
  `packing` varchar(255) NOT NULL COMMENT '包装',
  `date` datetime NOT NULL COMMENT '请求时间',
  `userid` varchar(11) NOT NULL COMMENT '用户编号',
  `nickname` varchar(255) NOT NULL COMMENT '昵称',
  `username` varchar(255) NOT NULL COMMENT '用户姓名',
  `phone` varchar(255) NOT NULL COMMENT '联系电话',
  `address` varchar(255) NOT NULL COMMENT '收货地址',
  `finishdate` varchar(255) DEFAULT NULL COMMENT '交易完成时间',
  `logistics` varchar(255) DEFAULT NULL COMMENT '物流信息',
  `commonets` varchar(255) DEFAULT '无' COMMENT '用户评论',
  `category` int(11) NOT NULL DEFAULT '1' COMMENT '1.油漆   2.涂刷配件',
  `state` varchar(255) NOT NULL DEFAULT '1' COMMENT '1>未审核订单   2>已审核订单  3>未通过订单 4>已发货订单  5>交易成功订单',
  `checkstate` varchar(255) NOT NULL DEFAULT '0' COMMENT '0>未被算入金额  1>已被算入金额',
  `paystate` varchar(255) NOT NULL DEFAULT '0' COMMENT '支付状态  0代表未支付  1代表已支付',
  `appraisestate` varchar(255) NOT NULL DEFAULT '0' COMMENT '订单评价状态  0表示未评价   1表示已经评价'
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `order`
--

INSERT INTO `order` (`orderid`, `goodsid`, `goodsname`, `picture`, `money`, `count`, `color`, `packing`, `date`, `userid`, `nickname`, `username`, `phone`, `address`, `finishdate`, `logistics`, `commonets`, `category`, `state`, `checkstate`, `paystate`, `appraisestate`) VALUES
(1, 3, '立邦漆', 'https://cube.elemecdn.com/6/94/4d3ea53c084bad6931a56d5158a48jpeg.jpeg', '520', 23, '黑色', '20L', '2020-05-01 22:37:29', '3', '123asd', '王五', '13623489952', '水木清华', NULL, '出仓', NULL, 1, '3', '0', '0', '0'),
(2, 3, '立邦漆', 'https://cube.elemecdn.com/6/94/4d3ea53c084bad6931a56d5158a48jpeg.jpeg', '520', 23, '黑色', '20L', '2020-05-01 22:37:29', '3', '123asd', '王五', '13623489952', '水木清华', NULL, '大同市云岗区', NULL, 1, '2', '0', '0', '0'),
(3, 3, '立邦漆', 'https://cube.elemecdn.com/6/94/4d3ea53c084bad6931a56d5158a48jpeg.jpeg', '520', 23, '黑色', '20L', '2020-05-01 22:37:29', '3', '123asd', '王五', '13623489952', '水木清华', NULL, '朔州市上城区', NULL, 1, '3', '0', '0', '0'),
(41, 12, '多乐士恒钻清味木器漆（清漆）', 'http://www.wbbg.com/uploads/20200509/239b569ba2e175a6376a36e8811f659c.jpg', '52', 2, '高光', '20升', '2020-05-14 22:45:08', '0', '123asd', '王五', '15689758426', '水木清华水水水水是随谁是', '', '', '', 1, '1', '0', '1', '0'),
(42, 6, '家丽安净味哑光墙面漆', 'http://www.wbbg.com/uploads/20200508/cd277666c8043e2e64f47b69198e7d64.jpg', '40', 2, '哑光', '20升', '2020-05-14 23:07:24', '0', '123asd', '王五', '15689758426', '水木清华水水水水是随谁是', '', '', '', 1, '1', '0', '0', '0'),
(35, 1, '家立安墙面漆', 'http://www.wbbg.com/uploads/20200508/bb32109200a53cb99d2fd3350d25ee89.jpg', '21', 1, '哑光', '20升', '2020-05-14 21:08:00', '0', '123asd', '王五', '15689758426', '水木清华水水水水是随谁是', '', '', '', 1, '1', '0', '0', '0'),
(36, 1, '家立安墙面漆', 'http://www.wbbg.com/uploads/20200508/bb32109200a53cb99d2fd3350d25ee89.jpg', '21', 1, '哑光', '20升', '2020-05-14 21:08:00', '0', '123asd', '王五', '15689758426', '水木清华水水水水是随谁是', '', '陕西西安碑林区', '', 1, '4', '0', '0', '0'),
(8, 3, '立邦漆', 'https://cube.elemecdn.com/6/94/4d3ea53c084bad6931a56d5158a48jpeg.jpeg', '520', 23, '黑色', '20L', '2020-05-01 22:37:29', '3', '123asd', '王五', '13623489952', '水木清华', '2020-5-17 14:37:24', '辽宁鞍山其他', NULL, 1, '5', '1', '0', '0'),
(9, 3, '立邦漆', 'https://cube.elemecdn.com/6/94/4d3ea53c084bad6931a56d5158a48jpeg.jpeg', '520', 23, '黑色', '20L', '2020-05-01 22:37:29', '3', '123asd', '王五', '13623489952', '水木清华', '2020-05-02 16:19:34', '辽宁鞍山其他', '商品一般', 1, '5', '1', '1', '1'),
(45, 10, '多乐士保丽居通用耐久外墙漆', 'http://www.wbbg.com/uploads/20200509/3dc2f34da6d46983bf772b32a9872c71.jpg', '40', 2, '哑光', '20升', '2020-05-17 14:08:42', '3', '123asd', '王五', '15689758426', '水木清华水水水水是随谁是', '', '', '', 1, '1', '0', '0', '0'),
(44, 12, '多乐士恒钻清味木器漆（清漆）', 'http://www.wbbg.com/uploads/20200509/239b569ba2e175a6376a36e8811f659c.jpg', '52', 2, '高光', '20升', '2020-05-17 14:01:08', '3', '123asd', '王五', '15689758426', '水木清华水水水水是随谁是', '', '', '', 1, '1', '0', '1', '0'),
(46, 3, '家立安底漆', 'http://www.wbbg.com/uploads/20200508/bbc1c1d1191d61d52b6337f48cfde9fc.jpg', '21', 1, '哑光', '20升', '2020-05-17 14:28:00', '3', '123asd', '王五', '15689758426', '水木清华水水水水是随谁是', '', '', '', 1, '1', '0', '0', '0'),
(47, 6, '家丽安净味哑光墙面漆', 'http://www.wbbg.com/uploads/20200508/cd277666c8043e2e64f47b69198e7d64.jpg', '40', 2, '哑光', '20升', '2020-05-17 14:32:44', '3', '123asd', '王五', '15689758426', '水木清华水水水水是随谁是', '', '', '', 1, '1', '0', '0', '0'),
(48, 5, '洁易白乳胶漆', 'http://www.wbbg.com/uploads/20200508/aa879dc0f8a1ff2705e8f72d64c47a30.jpg', '40', 2, '哑光', '20升', '2020-05-17 14:33:57', '3', '123asd', '王五', '15689758426', '水木清华水水水水是随谁是', '', '', '', 1, '1', '0', '1', '0'),
(49, 6, '家丽安净味哑光墙面漆', 'http://www.wbbg.com/uploads/20200508/cd277666c8043e2e64f47b69198e7d64.jpg', '40', 2, '哑光', '20升', '2020-05-17 14:36:04', '3', '123asd', '王五', '15689758426', '水木清华水水水水是随谁是', '', '重庆重庆江北区', '', 1, '4', '0', '0', '0'),
(55, 3, '全能大师滚筒', 'http://www.wbbg.com/uploads/20200509/19b501e68578145ecf88109c2f6094f1.png', '380', 2, '', '件', '2020-05-17 16:52:46', '3', '123asd', '王五', '15689758426', '水木清华水水水水是随谁是', '2020-5-17 16:55:16', '山东济南槐荫区', '耐用，效率高', 2, '5', '1', '0', '1'),
(54, 2, '黄金搭档内墙面漆滚筒（超效款）', 'http://www.wbbg.com/uploads/20200509/1ff43d8b26f583fd14fcdf0a3f238dcf.png', '280', 2, '', '件', '2020-05-17 16:29:12', '3', '123asd', '王五', '15689758426', '水木清华水水水水是随谁是', '2020-5-17 16:35:49', '宁夏银川金凤区', 'bad', 2, '5', '0', '0', '1'),
(56, 1, '家立安墙面漆', 'http://49.233.5.161/uploads/20200508/bb32109200a53cb99d2fd3350d25ee89.jpg', '294.00', 14, '哑光', '20公斤', '2020-07-31 17:38:13', '10', '654dsa', '赵六', '13623489952', '水木清华', '', '', '', 1, '1', '0', '0', '0');

-- --------------------------------------------------------

--
-- 表的结构 `paint`
--

CREATE TABLE IF NOT EXISTS `paint` (
  `id` int(3) unsigned zerofill NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '油漆名称',
  `picture` varchar(255) DEFAULT NULL COMMENT '油漆图片',
  `price` varchar(10) NOT NULL COMMENT '金额',
  `color` varchar(255) DEFAULT NULL COMMENT '光泽',
  `property` varchar(255) DEFAULT NULL COMMENT '特点',
  `series` varchar(255) DEFAULT NULL COMMENT '产品系列',
  `use` varchar(255) DEFAULT NULL COMMENT '用途',
  `count` int(11) DEFAULT NULL COMMENT '数量',
  `state` varchar(255) DEFAULT '1' COMMENT '1：室内漆   2：室外漆   3：木器漆   4：涂刷配件',
  `brushrate` varchar(255) DEFAULT NULL COMMENT '涂布率',
  `drytime` varchar(255) DEFAULT NULL COMMENT '干燥时间（用汉语描述）',
  `brushnumber` int(5) DEFAULT NULL COMMENT '涂刷层数',
  `productintd` varchar(255) DEFAULT NULL COMMENT '产品介绍',
  `workguide` varchar(500) DEFAULT NULL COMMENT '施工指南',
  `productdes` varchar(500) DEFAULT NULL COMMENT '产品说明(文档上传)'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `paint`
--

INSERT INTO `paint` (`id`, `name`, `picture`, `price`, `color`, `property`, `series`, `use`, `count`, `state`, `brushrate`, `drytime`, `brushnumber`, `productintd`, `workguide`, `productdes`) VALUES
(001, '家立安墙面漆', '/uploads/20200508/bb32109200a53cb99d2fd3350d25ee89.jpg', '21', '哑光', '柔光效果  遮盖力强', '面漆', '墙壁', 41, '1', '9-15', '通常需涂两遍，正常情况下每遍间隔至少2小时待干透', 3, '采用优质环保配方，其独特的柔光配方使成型后的漆膜焕发出丝绸般柔滑的视觉效果，令居家空间更添摩登质感。特别添加防霉因子，能长时间保持墙面洁净如新。', '1.可用刷涂、滚涂或喷涂方法来上漆。通常需涂两遍，正常情况下每遍间隔至少2小时待干透。 2.本产品要用清水稀释，通常在五至十份油漆中加一份水(10-20%，体积比)；最多不可加超过30％（体积比）的水稀释此产品。 如要得到最佳的丝光效果，请控制稀释比例在10%(体积比) 以内。 涂漆层数：一遍底漆，两遍面漆', '/uploads/20200409/46c6890e502e32a93084e6d63b25c5aa.pdf'),
(002, '清新居', '/uploads/20200508/2b953f99dfeaad427eba7d85a731038c.jpg', '204', '高光', '除醛科技  竹炭因子', '面漆', '墙壁', 13, '1', '4-12', '通常需涂两遍，正常情况下每遍间隔至少2小时待干透', 2, '多乐士竹炭清新居5合1墙面漆是一款具有空气净化功能的5合1超高档墙面漆。除了秉承多乐士5合1系列的优良功效：抗碱防霉*、高遮盖力、强效耐擦洗、覆盖细微裂纹、环保配方五大功能.', '1.可用刷涂、滚涂或喷涂方法来上漆。通常需涂两遍，正常情况下每遍间隔至少2小时待干透。2.本产品要用清水稀释，通常在五至十份油漆中加一份水 10-20%(体积比)；最多不可加超过30％(体积比)的水稀释此产品。3.涂漆层数：一遍底漆，两遍面漆。搭配多乐士无添加5合1底漆，效果更佳。 清洁方法：用过的工具应立即用肥皂及温水清洗干净。不准重复使用接触过不同型号、不同性能漆料的器具。如有需要应将其残留物清除干净并彻底洗净后才能使用。', '/uploads/20200409/b0f9a922203d92e6f2dfb366bcf80096.pdf'),
(003, '家立安底漆', '/uploads/20200508/bbc1c1d1191d61d52b6337f48cfde9fc.jpg', '21', '哑光', '强效抗碱  遮盖力强', '底漆', '墙壁', 12, '1', '4-15', '通常需涂一遍', 3, ' ', '1.可用刷涂、滚涂或喷涂方法来上漆。通常需涂两遍，正常情况下每遍间隔至少2小时待干透。 2.本产品要用清水稀释，通常在五至十份油漆中加一份水(10-20%，体积比)；最多不可加超过30％（体积比）的水稀释此产品。 涂漆层数：一遍底漆 清洁方法：用过的工具应立即用肥皂及温水清洗干净。不准重复使用接触过不同型号、不同性能漆料的器具。如有需要应将其残留物清除干净并彻底洗净后才能使用。', '/uploads/20200409/5df3728d5e2323d40c7a77b7d8bf4ca5.pdf'),
(004, '至尊抗碱无添加底漆', '/uploads/20200508/0719dac7e27ca0ff5531ed4cdd53c599.jpg', '20', '哑光', '抗碱封闭  附着力强', '底漆', '墙壁', 14, '1', '9-15', '三个小时', 1, '是一款采用无添加*净化科技的优质内墙水性底漆。 “无添加净化科技”，在产品配方和生产过程中未人为添加甲醛、苯及其他挥发性有机化合物（VOC**）。 ', '1.可用刷涂、滚涂或喷涂方法来上漆。通常需涂一遍，正常情况下间隔至少2小时待干透。 2.本产品要用清水稀释，通常在五至十份油漆中加一份水水10-20%（体积比）；最多不可加超过30％（体积比）的水稀释此产品。 3. 涂漆层数：一遍底漆，两遍面漆。清洁方法：用过的工具应立即用肥皂及温水清洗干净。不准重复使用接触过不同型号、不同性能漆料的器具。如有需要应将其残留物清除干净并彻底洗净后才能使用。', '/uploads/20200409/55925ca85ecff9c2a8abfa8d33120364.pdf'),
(005, '洁易白乳胶漆', '/uploads/20200508/aa879dc0f8a1ff2705e8f72d64c47a30.jpg', '20', '哑光', '易施工', '底漆', '墙壁', 12, '1', '9-12', '通常需涂两遍，正常情况下每遍间隔至少2小时待干透', 2, '是经济型内墙乳胶漆。具有良好的遮盖力，是一种省钱省工的产品。适用于装饰及保护室内基层墙面，如抹灰面，石膏板面等。', '1.可用刷涂或滚涂的方法来上漆。通常需涂两遍，正常情况下每遍间隔至少2小时待干透。 2.本产品无需稀释，如必须稀释，可加入不超过5％(体积比)的清水。切勿过度稀释，否则会导致起粉。 涂漆层数：一遍底漆，两遍面漆 清洁方法：用过的工具应立即用肥皂及温水清洗干净。不准重复使用接触过不同型号、不同性能漆料的器具。如有需要应将其残留物清除干净并彻底洗净后才能使用。', '/uploads/20200409/ba97df6e8ad2b78d350aef45d3f1f0f7.pdf'),
(006, '家丽安净味哑光墙面漆', '/uploads/20200508/cd277666c8043e2e64f47b69198e7d64.jpg', '20', '哑光', '遮盖力强  耐擦洗佳', '面漆', '墙壁', 13, '1', '5-14', '通常需涂两遍，正常情况下每遍间隔至少2小时待干透', 1, '多乐士家丽安净味哑光墙面漆，采用净味配方和先进生产工艺，充分祛除有害杂质，气味低更环保。通过中国权威环境标志认证，让您使用更安全、更放心。', '1. 可用刷涂、滚涂或喷涂方法来上漆。通常需涂两遍，正常情况下每遍间隔至少2小时待干透。 2. 本产品要用清水稀释，通常在五至十份涂料中加一份水10-20%（体积比）；最多不可加超过30％（体积比）的水稀释此产品。 3.涂漆层数：一遍底漆，两遍面漆。搭配多乐士通用无添加底漆，效果更佳。 清洁方法：用过的工具应立即用肥皂及温水清洗干净。不准重复使用接触过不同型号、不同性能涂料的器具。如有需要应将其残留物清除干净并彻底洗净后才能使用。', '/uploads/20200409/a85388790c7af41725e664eb33df400f.pdf'),
(007, '多乐士保丽居耐候外墙漆', '/uploads/20200509/6147c7390f279ff116d6cf10f57d667f.jpg', '24', '哑光', '抗碱封闭  附着力强', '面漆', '墙壁', 14, '2', '9-15', '两个小时', 2, '具有良好的耐候性、存色性及耐沾污性，配合其防霉抗碱性能，能为外墙带来出色的装饰及保护效果。任岁月流逝，墙面依然历久弥新。 *新老产品包装更替中', '1.可用刷涂或滚涂方法来上漆。通常需涂两遍，正常情况下每遍间隔至少2小时待干透。 2.本产品要用清水稀释，通常在五至十份油漆中加一份水10%－20％（体积比），最多不可加超过30％（体积比）的水稀释此产品。 3.涂漆层数：一遍底漆，两遍面漆。搭配多乐士保丽居外墙底漆(耐候专用)使用，效果更佳。 清洁方法：用过的工具应立即用肥皂及温水清洗干净。不准重复使用接触过不同型号、不同性能漆料的器具。如有需要应将其残留物清除干净并彻底洗净后才能使用。', '/uploads/20200409/60e1d18d8feb7c42bf099e5ca6a21c7b.pdf'),
(008, '多乐士弹性晴雨漆', '/uploads/20200509/b4f5c67087b7bce03356c27cc4b2762b.jpg', '20', '高光', '卓越的弹性  卓越的耐候性', '底漆', '墙壁', 46, '2', '8-14', '三个小时', 2, '多乐士弹性晴雨漆，是一款功能齐全的高档外墙漆。严选高品质纯丙烯酸材料，使成型后的漆膜保持极佳的弹性，其卓越的弹性拉伸度，远胜于普通外墙漆达数倍以上*，可轻松弥盖细微裂纹。同时，在墙体表面形成的保护层兼具极佳的耐候性和耐水性，能够持久抵御日晒或雨淋，全面解决各种墙面问题。 *根据国家建筑工程材料质量监督检验中心测试数据，与多乐士保丽居耐候外墙漆相比。', '1.可用刷涂或滚涂方法来上漆。通常需涂两遍，正常情况下每遍间隔至少2小时待干透。 2.本产品要用清水稀释，通常在十份油漆中加一份水(10%体积比)； 3.涂漆层数：一遍底漆，两遍面漆。搭配多乐士保丽居外墙底漆(弹性专用)使用，效果更佳。 清洁方法：用过的工具应立即用肥皂及温水清洗干净。不准重复使用接触过不同型号、不同性能漆料的器具。如有需要应将其残留物清除干净并彻底洗净后才能使用。', '/uploads/20200409/5321745794554554c5a074fc902a2fa7.pdf'),
(009, '多乐士保丽居外墙底漆(弹性专用)', '/uploads/20200509/798f265067e1305a9b99692ad8d09ac1.jpg', '20', '高光', '抗碱性强', '面漆', '墙壁', 35, '2', '12-15', '三个小时', 1, '具备卓越的抗碱封闭性，能深层渗透并封固疏松墙面，易涂刷同时对墙体起到更强保护。配合配套面漆，能有效预防剥落、裂纹等问题，使漆面色彩更丰盈持久。', '1.可用刷涂或滚涂方法来上漆。 2.本产品要用清水稀释，通常在五至十份油漆中加一份水10%－20％（体积比），最多不可加超过20％（体积比）的水稀释此产品。 3.涂漆层数：一遍底漆，两遍面漆。搭配多乐士保丽居弹性外墙漆使用，效果更佳。 清洁方法：用过的工具应立即用肥皂及温水清洗干净。不准重复使用接触过不同型号、不同性能漆料的器具。如有需要应将其残留物清除干净并彻底洗净后才能使用。', '/uploads/20200409/7b8cd8e4391653c9c8b94ecf19dd7365.pdf'),
(010, '多乐士保丽居通用耐久外墙漆', '/uploads/20200509/3dc2f34da6d46983bf772b32a9872c71.jpg', '20', '哑光', '多彩调色  耐候耐久', '底漆', '墙壁', 90, '2', '14-25', '三个小时', 1, '多乐士保丽居通用耐久外墙漆是一款是专业的外墙保护涂料，采用长效耐久配方，抵抗户外气候侵蚀墙面。更能提供大桶专业调色，可调制一千八百多种颜色，色泽丰盈饱满，满足专业颜色需求。优异的抗碱性和遮盖力能有效防止墙面剥落、裂纹等问题，保护墙面施工效果。搭配多乐士保丽居通用外墙底漆，能使墙面效果更持久亮丽。', '1、多乐士保丽居通用耐久外墙漆 可 用 刷 涂 、 滚 涂 或 喷 涂 方 法 来 上 漆。通 常 需 涂 两 遍 ， 正 常 情 况 下 每 遍 间 隔 至 少 2 小 时 待 干 透 。 2、多乐士保丽居通用耐久外墙漆 要 用 清 水 稀 释， 通 常 在 五 至 十 份 油 漆 中 加 一 份 水10-20%（体积比）；最 多 不 可 加 超 过 30% （体积比）的 水 稀 释 此 产 品。 3.具体请参照AkzoNobel的施工指南 涂漆层数：一遍底漆，两遍面漆', '/uploads/20200409/b6365646c4d644a6356b32574a18a433.pdf'),
(011, '多乐士保丽居通用耐久外墙底漆', '/uploads/20200509/11696a6083a94ae379253edd1d1f6668.jpg', '20', '柔光', '强效抗碱  抗碱封闭', '面漆', '墙壁', 150, '2', '12-14', '三个小时', 1, '多乐士保丽居通用外墙底漆是一款专业外墙底漆，具有良好的附着能力、强效抗碱，能有效防止剥落，裂纹等墙面问题的产生，持久保护墙面施工效果。', '1、多乐士保丽居通用耐久外墙底漆 可 用 刷 涂 、 滚 涂 或 喷 涂 方 法 来 上 漆。通 常 需 涂 一 遍 ， 上 面 漆 前 通 常 间 隔 至 少 间 隔 至 少 2 小 时 待 干 透 。 2、多乐士保丽居通用耐久外墙底漆 要 用 清 水 稀 释， 通 常 在 五 至 十 份 油 漆 中 加 一 份 水10-20%（体积比）；最 多 不 可 加 超 过 30% （体积比）的 水 稀 释 此 产 品。 3.具体请参照AkzoNobel的施工指南 涂漆层数：一遍底漆，两遍面漆', '/uploads/20200409/79415db34ca32e4269b549b87d865321.pdf'),
(012, '多乐士恒钻清味木器漆（清漆）', '/uploads/20200509/239b569ba2e175a6376a36e8811f659c.jpg', '26', '高光', '气味清新，通过CCEL,更低VOC  耐磨损性能出众', '面漆', '木材', 12, '3', '10-15', '5个小时', 3, '多乐士恒钻清味木器漆是一种高档双组分PU漆，它不仅采用清味配方，更含有精炼大豆油酸，三苯含量比国际要求更低25％以上，更环保。同时，它的耐磨损性能佳，能更有效地对抗各种划痕，使漆膜持久亮丽如新。', '施工：只能用漆扫方法来上漆，从健康角度考虑，不建议用喷涂的方法施工。通常在涂完每一道漆，待干透以后，需用砂纸轻轻打磨平整。除去表面的杂质即可再涂油漆。每道相隔3－4个小时。 稀释比例：请使用配套的多乐士木器漆专用稀释剂，根据施工条件的不同，可调整适当的稀释比例。过多的稀释剂会影响遮盖率。 稀释剂必须在主漆与固化剂充分混合均匀后，方可加入稀释。 不要与其它的稀释剂，否则对产品的干燥时间和施工性能将有极大影响。 稀释剂的选用是根据施工环境而定（例如温度，湿度等） 注意：主漆在配漆前和施工时请混合搅拌均匀。 干燥时间(25℃):指触干：15－25分钟 实干：6－8小时 重涂时间：3－4小时以上 实际干燥时间将会因施工的膜厚的不同而有所影响。', '/uploads/20200509/809c56b9574eefb4a2e2085719fae932.pdf'),
(013, '全效儿童漆（无添加）', '/uploads/20200508/48d1559c59fe5375abdec19b05bdd003.jpg', '20', '哑光', '无添加*  符合法国A+标准，获得美国UL认证', '面漆', '墙壁', 12, '1', '10-20', '三个小时', 1, '秉承多乐士全效系列卓越表现，全面解决多种常见的墙面问题。同时有甲醛、甲苯净化功能，并能有效祛除多种细菌，持续净化室内空气。创新采用“无添加净化科技”，更进一步呵护孩子健康成长。', '1.可用刷涂、滚涂或喷涂方法来上漆。通常需涂两遍，正常情况下每遍间隔至少2小时待干透。2.本产品要用清水稀释，通常在五至十份油漆中加一份水 10-20%(体积比)；最多不可加超过30％(体积比)的水稀释此产品。3.涂漆层数：一遍底漆，两遍面漆。搭配多乐士无添加全效底漆，效果更佳。 清洁方法：用过的工具应立即用肥皂及温水清洗干净。不准重复使用接触过不同型号、不同性能漆料的器具。如有需要应将其残留物清除干净并彻底洗净后才能使用。', '/uploads/20200409/5d94547c1afa65bea2a9ea2f730262cf.pdf'),
(015, '多乐士木饰雅木器漆（清漆）', '/uploads/20200509/9923f8249d657df759c5dc8fcfca5e32.jpg', '20', '柔光', '通过CCEL,更低VOC', '面漆', '木材', 13, '3', '12-16', '三个小时', 2, '多乐士木饰雅木器清漆是一种经济型的双组份PU木器漆。该产品经济省料，混合后游离TDI（甲苯二异氰酸酯）含量≤0.1％，低于国家标准，并且通过CCEL（中国环境标志）认证，是现代家庭装饰美化的好帮手。 多乐士木饰雅木器清漆还有配套底漆可供使用', '施工：只能用漆扫方法来上漆，从健康角度考虑，不建议用喷涂的方法施工。通常在涂完每一道漆，待干透以后，需用砂纸轻轻打磨平整。除去表面的杂质即可再涂油漆。每道相隔3－4个小时。 稀释比例：请使用配套的多乐士木器漆专用稀释剂，根据施工条件的不同，可调整适当的稀释比例。过多的稀释剂会影响遮盖率。 稀释剂必须在主漆与固化剂充分混合均匀后，方可加入稀释。 不要与其它的稀释剂，否则对产品的干燥时间和施工性能将有极大影响。 稀释剂的选用是根据施工环境而定（例如温度，湿度等） 注意：主漆在配漆前和施工时请混合搅拌均匀。 干燥时间(25℃):指触干：15－25分钟 实干：6－8小时 重涂时间：3－4小时以上 实际干燥时间将会因施工的膜厚的不同而有所影响。', '/uploads/20200410/d0ba4c7674a1a3d7ed68de0a04261229.pdf'),
(123, '无添加全效底漆', '/uploads/20200508/e940672cd6b2f7e99ea39c46f0428ac1.jpg', '124', '哑光', '无添加*  符合法国A+标准，获得美国UL认证', '底漆', '墙壁', 16, '1', '12-10', '通常需涂一遍', 3, '多乐士无添加全效底漆是一款采用无添加净化科技的超高档全效内墙水性底漆。“无添加*净化科技”，在产品配方和生产过程中未人为添加甲醛、苯及其他挥发性有机化合物（VOC**）。', '1.可用刷涂、滚涂或喷涂方法来上漆。 2.本产品要用清水稀释，通常在五至十份油漆中加一份水 10-20%(体积比)；最多不可加超过30％(体积比)的水稀释此产品。 3.涂漆层数：一遍底漆，两遍面漆。搭配多乐士无添加全效系列产品，效果更佳。 清洁方法：用过的工具应立即用肥皂及温水清洗干净。不准重复使用接触过不同型号、不同性能漆料的器具。如有需要应将其残留物清除干净并彻底洗净后才能使用。', '/uploads/20200502/6bc7a3fb42daffd4ce0cdb129c5c4457.pdf'),
(234, '通用无添加底漆', '/uploads/20200508/c8382602757e2ea9559c00aeb2eb789f.jpg', '450', '高光', '无添加*  符合法国A+标准，获得美国UL认证', '底漆', '墙壁', 123, '1', '10-15', '通常需涂一遍', 1, '多乐士通用无添加底漆是一款采用无添加*净化科技的优质内墙水性底漆。“无添加净化科技”，在产品配方和生产过程中未人为添加甲醛、苯及其他挥发性有机化合物（VOC**）。', '1.可用刷涂、滚涂或喷涂方法来上漆。通常需涂一遍，正常情况下间隔至少2小时待干透。 2.本产品要用清水稀释，通常在五至十份油漆中加一份水10-20%（体积比）；最多不可加超过30％（体积比）的水稀释此产品。 3. 涂漆层数：一遍底漆，两遍面漆。清洁方法：用过的工具应立即用肥皂及温水清洗干净。不准重复使用接触过不同型号、不同性能漆料的器具。如有需要应将其残留物清除干净并彻底洗净后才能使用。', '/uploads/20200508/4a9649cbb5cf0884e8818ce4f56d5764.pdf'),
(235, '洁易白乳胶漆', '/uploads/20200508/aa879dc0f8a1ff2705e8f72d64c47a30.jpg', '20', '哑光', '易施工', '底漆', '墙壁', 12, '1', '9-12', '通常需涂两遍，正常情况下每遍间隔至少2小时待干透', 2, '是经济型内墙乳胶漆。具有良好的遮盖力，是一种省钱省工的产品。适用于装饰及保护室内基层墙面，如抹灰面，石膏板面等。', '1.可用刷涂或滚涂的方法来上漆。通常需涂两遍，正常情况下每遍间隔至少2小时待干透。 2.本产品无需稀释，如必须稀释，可加入不超过5％(体积比)的清水。切勿过度稀释，否则会导致起粉。 涂漆层数：一遍底漆，两遍面漆 清洁方法：用过的工具应立即用肥皂及温水清洗干净。不准重复使用接触过不同型号、不同性能漆料的器具。如有需要应将其残留物清除干净并彻底洗净后才能使用。', '/uploads/20200409/ba97df6e8ad2b78d350aef45d3f1f0f7.pdf'),
(016, '多乐士保丽居弹性外墙漆', '/uploads/20200509/e8e378a9a5db8c709b841bf701dbb260.jpg', '205', '高光', '不易沾污', '面漆', '墙壁', 15, '2', '12-15', '两个小时', 2, '可调配出高达2000余种颜色，赋予房屋丰富色彩。漆膜具备良好的低温弹性性能，可弥盖墙体的细微裂纹并防止漆膜开裂，更能长久抵御多变气候、耐水、耐沾污，加倍持久地保护墙面。', '1.可用刷涂、滚涂或喷涂方法来上漆。通常需涂两遍，正常情况下每遍间隔至少2小时待干透。 2.本产品要用清水稀释，通常在十份油漆中加一份水(10%体积比)；施工深色或颜色产品时。请控制稀释比例在5％（体积比）以内或不稀释。 3.涂漆层数：一遍底漆，两遍面漆。搭配多乐士保丽居外墙底漆(弹性专用)使用，效果更佳。 清洁方法：使用后请立即用清水清洗', '/uploads/20200509/9563b07b90785b51ec96b88c4edc60f4.pdf'),
(017, '多乐士水性木器封闭底漆', '/uploads/20200509/ba0a383780b154e6465f608cfe0c351e.jpg', '50', '哑光', 'VOC更低，健康更环保', '底漆', '木材', 156, '3', '10-15', '两个小时', 2, '多乐士水性封闭底漆采用水性乳液体系，确保施工过程或施工后都不会产生刺激性气味，健康环保。它对于易渗色板材（已染色板材、带结疤板材如松木、深色板材如黑胡桃、红枫、红橡等）具有良好的封闭性，同时具有优异的附着力。多乐士水性木器漆封闭底漆是现代家庭室内装饰美化的必备产品。', '表面预处理：对于底材表面，要求干燥、清洁、无油污。无论是未上漆的原木，还是已染色板材，都必须用砂纸先对底材彻底打磨光滑，以清除松浮物质，并擦拭干净，获得最佳的效果。 施工：多乐士水性木器漆封闭底漆在罐内呈白色或乳黄色半透明液体状，涂刷后即形成清澈、透明的漆膜。可用刷涂或喷涂方法来施工大面积施工建议喷涂。一般平面及立面建议薄刷或者薄喷，平面厚刷施工建议使用聚酯刷。 推荐工艺：建议一般薄涂2道多乐士水性木器封闭底漆，以保证漆面效果不受底材影响，第1道封闭底漆可稍作打磨去除多余毛刺，第2遍封闭底漆无需打磨；然后涂2~3道多乐士臻彩木器色漆底漆（净味），最后涂2~3道多乐士臻彩木器色漆面漆哑光（净味）。每道施工间隔至少4小时。', '/uploads/20200509/59c3b02a7f436b6cef9a47fc7129f8dc.pdf');

-- --------------------------------------------------------

--
-- 表的结构 `paintbrush`
--

CREATE TABLE IF NOT EXISTS `paintbrush` (
  `id` int(3) unsigned zerofill NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `price` varchar(100) NOT NULL COMMENT '价格',
  `productintd` varchar(255) NOT NULL COMMENT '产品介绍',
  `specifications` varchar(255) NOT NULL COMMENT '规格',
  `cleaning` varchar(255) NOT NULL COMMENT '工具清洗',
  `temperature` varchar(255) NOT NULL COMMENT '施工温度',
  `method` varchar(255) NOT NULL COMMENT '施工方法',
  `count` int(11) NOT NULL COMMENT '数量',
  `state` varchar(255) NOT NULL DEFAULT '4' COMMENT '状态 用4表示'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `paintbrush`
--

INSERT INTO `paintbrush` (`id`, `name`, `picture`, `price`, `productintd`, `specifications`, `cleaning`, `temperature`, `method`, `count`, `state`) VALUES
(002, '黄金搭档内墙面漆滚筒（超效款）', '/uploads/20200509/1ff43d8b26f583fd14fcdf0a3f238dcf.png', '140', '纹理细腻、施工高效。', '9寸 毛高：11MM', '涂装中途停顿及涂装完毕后，请及时使用清水清洗所有器具。', '请不要在潮湿或寒冷的天气（气温低于5℃，相对湿度大于85％）情况下施工，否则不能达到预期的涂装效果。', '滚涂', 132, '4'),
(003, '全能大师滚筒', '/uploads/20200509/19b501e68578145ecf88109c2f6094f1.png', '190', ' 进口毛料，滚毛交织工艺专利技术。', '9寸', '涂装中途停顿及涂装完毕后，请及时使用清水清洗所有器具。', '请不要在潮湿或寒冷的天气（气温低于5℃，相对湿度大于85％）情况下施工，否则不能达到预期的涂装效果。', '滚涂', 13, '4');

-- --------------------------------------------------------

--
-- 表的结构 `response`
--

CREATE TABLE IF NOT EXISTS `response` (
  `id` int(3) unsigned zerofill NOT NULL,
  `userid` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `date` datetime NOT NULL COMMENT '提交时间',
  `content` varchar(500) NOT NULL COMMENT '问题描述',
  `answer` varchar(500) DEFAULT '暂无回复' COMMENT '回复',
  `state` int(2) NOT NULL DEFAULT '1' COMMENT '1.未回复  2.已回复',
  `readystate` int(2) NOT NULL DEFAULT '1' COMMENT '1 未读  2.已读'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `response`
--

INSERT INTO `response` (`id`, `userid`, `username`, `date`, `content`, `answer`, `state`, `readystate`) VALUES
(003, '3', '王五', '2020-05-14 15:11:18', 'hello', '暂无回复', 1, 2),
(010, '10', '赵六', '2020-05-14 15:21:09', '我是新用户赵六', '暂无回复', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `servelbt`
--

CREATE TABLE IF NOT EXISTS `servelbt` (
  `id` int(11) NOT NULL,
  `interview` varchar(255) NOT NULL COMMENT '图片简介',
  `detail` varchar(255) NOT NULL COMMENT '详情，存放图片地址'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `servelbt`
--

INSERT INTO `servelbt` (`id`, `interview`, `detail`) VALUES
(1, '服务页轮播图', '/uploads/20200407/0d9c1f5517f0335f03c0713ce64895b9.jpeg'),
(2, 'asdad', '/uploads/20200405/71151251834b97540b260c56cc4e8c3d.jpg'),
(3, 'fgh', '/uploads/20200408/8bb2fe4442847caa449c3dab18ac70d0.jpg'),
(4, '45', '/uploads/20200405/eaee8c54baf64d5e499dae1ef4ba961c.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `serveorder`
--

CREATE TABLE IF NOT EXISTS `serveorder` (
  `id` int(3) unsigned zerofill NOT NULL,
  `username` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `phonenumber` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `serve` varchar(255) NOT NULL COMMENT '客户所选服务',
  `date` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '提交日期',
  `content` varchar(255) DEFAULT NULL COMMENT '客户备注信息',
  `state` tinyint(255) NOT NULL DEFAULT '1' COMMENT '完成状态  1：未完成   2：进行中   3：已完成'
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `serveorder`
--

INSERT INTO `serveorder` (`id`, `username`, `sex`, `phonenumber`, `city`, `address`, `serve`, `date`, `content`, `state`) VALUES
(001, '张三', '男', '13623489952', '山西省朔州市朔城区', '开发区塬上园小区', '刷新服务&&墙面基检', '2020-04-02 00:44:46', '唔56a哈哈', 1),
(002, '李四', '男', '18506935869', '山东省青岛市咕噜咕咕区', '谷粒谷谷小区', '刷新服务', '2020-04-02 22:02:57', '啊世界大赛降低', 2),
(003, '刘鹏', '女', '18723658974', '山西省朔州市朔城区', '开发区咕噜咕咕小区', '刷新服务', '2020-04-04 00:44:31', '一日三餐没烦恼，就吃老八秘制小憨包，既实惠，还管饱。奥利给！', 3),
(004, '王文元', '男', '14569872365', '阿斯顿', '啊放沙发', '刷新服务', '2020-04-23 17:23:48', '阿萨萨达', 1),
(005, '王文元', '男', '14569872365', '阿斯顿', '啊放沙发', '刷新服务', '2020-04-23 17:23:48', '阿萨萨达', 1),
(006, '张三', '男', '13623489952', '山西省朔州市朔城区', '开发区塬上园小区', '刷新服务&&墙面基检', '2020-04-02 00:44:46', '唔56a哈哈', 1),
(007, '张三', '男', '13623489952', '山西省朔州市朔城区', '开发区塬上园小区', '刷新服务&&墙面基检', '2020-04-02 00:44:46', '唔56a哈哈', 1),
(008, '张三', '男', '13623489952', '山西省朔州市朔城区', '开发区塬上园小区', '刷新服务&&墙面基检', '2020-04-06 18:34:53', '唔56a哈哈', 1),
(009, '张三', '男', '13623489952', '山西省朔州市朔城区', '开发区塬上园小区', '刷新服务&&墙面基检', '2020-04-06 18:45:17', '唔56a哈哈', 1),
(010, '张三', '男', '13623489952', '山西省朔州市朔城区', '开发区塬上园小区', '刷新服务&&墙面基检', '2020-04-06 18:51:21', '唔56a哈哈', 3),
(011, '阿斯顿', '男', '13623489952', '吉林省吉林市昌邑区', 'asda', '刷新服务专业墙面基检', '2020-05-06 16:16:07', '12314', 1),
(013, '李思', '女', '18406586017', '内蒙古赤峰市松山区', '阳光小区', '刷新服务&&专业墙面基检', '2020-05-06 16:37:06', '你好', 1),
(014, '张伟', '男', '15665458987', '浙江省绍兴市城关镇', '阳光小区', '刷新服务&&专业墙面基检', '2020-05-06 16:40:10', 'test', 1),
(015, '曹操', '男', '16585658978', '福建省南平市邵武市', '吴国', '刷新服务&&专业墙面基检', '2020-05-06 16:41:53', 'test', 1),
(016, '滑稽', '女', '13623489952', '内蒙古通辽市开鲁县', 'asda是', '刷新服务&&专业墙面基检', '2020-05-06 17:18:28', '12312', 1),
(017, '阿斯顿', '男', '13623489952', '北京市崇文区', 'asda的', '刷新服务&&专业墙面基检', '2020-05-06 17:19:01', '123', 1);

-- --------------------------------------------------------

--
-- 表的结构 `shopcar`
--

CREATE TABLE IF NOT EXISTS `shopcar` (
  `shopcarid` int(11) NOT NULL COMMENT '编号',
  `userid` int(11) NOT NULL COMMENT '用户id',
  `addtime` datetime NOT NULL COMMENT '加入购物车时间',
  `goodsid` int(11) NOT NULL COMMENT '商品编号',
  `goodsname` varchar(255) NOT NULL COMMENT '物品名称',
  `picture` varchar(255) NOT NULL COMMENT '缩略图',
  `color` varchar(255) DEFAULT NULL COMMENT '颜色',
  `count` int(11) NOT NULL COMMENT '商品数量',
  `packing` varchar(255) NOT NULL COMMENT '包装',
  `price` varchar(255) NOT NULL COMMENT '价格',
  `paystate` varchar(255) NOT NULL DEFAULT '0' COMMENT '支付状态  0未  1已支付   加这个主要是为了方便用户结算时向订单数据库添加支付状态，不用我们自己在添加',
  `goodsstate` int(255) NOT NULL COMMENT '商品状态  1.paint   2.brushpaint'
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `shopcar`
--

INSERT INTO `shopcar` (`shopcarid`, `userid`, `addtime`, `goodsid`, `goodsname`, `picture`, `color`, `count`, `packing`, `price`, `paystate`, `goodsstate`) VALUES
(1, 4, '2020-05-10 09:22:42', 1, '家立安墙面漆', 'http://www.wbbg.com/uploads/20200508/bb32109200a53cb99d2fd3350d25ee89.jpg', '哑光', 1, '20升', '21', '0', 1),
(2, 4, '2020-05-10 09:23:30', 1, '家立安墙面漆', 'http://www.wbbg.com/uploads/20200508/bb32109200a53cb99d2fd3350d25ee89.jpg', '哑光', 1, '20升', '21', '0', 1),
(3, 4, '2020-05-10 09:23:30', 1, '家立安墙面漆', 'http://www.wbbg.com/uploads/20200508/bb32109200a53cb99d2fd3350d25ee89.jpg', '哑光', 1, '20升', '21', '0', 1),
(4, 4, '2020-05-10 09:23:30', 1, '家立安墙面漆', 'http://www.wbbg.com/uploads/20200508/bb32109200a53cb99d2fd3350d25ee89.jpg', '哑光', 1, '20升', '21', '0', 1),
(5, 4, '2020-05-10 09:23:30', 1, '家立安墙面漆', 'http://www.wbbg.com/uploads/20200508/bb32109200a53cb99d2fd3350d25ee89.jpg', '哑光', 1, '20升', '21', '0', 1),
(6, 4, '2020-05-10 09:23:30', 1, '家立安墙面漆', 'http://www.wbbg.com/uploads/20200508/bb32109200a53cb99d2fd3350d25ee89.jpg', '哑光', 1, '20升', '21', '0', 1),
(7, 0, '2020-05-10 20:02:42', 1, '家立安墙面漆', 'http://www.wbbg.com/uploads/20200508/bb32109200a53cb99d2fd3350d25ee89.jpg', '哑光', 2, '20升', '42', '0', 1),
(8, 0, '2020-05-10 20:10:03', 1, '家立安墙面漆', 'http://www.wbbg.com/uploads/20200508/bb32109200a53cb99d2fd3350d25ee89.jpg', '哑光', 1, '20升', '21', '0', 1),
(9, 0, '2020-05-10 20:10:05', 1, '家立安墙面漆', 'http://www.wbbg.com/uploads/20200508/bb32109200a53cb99d2fd3350d25ee89.jpg', '哑光', 1, '20升', '21', '0', 1),
(10, 0, '2020-05-14 16:34:18', 3, '家立安底漆', 'http://www.wbbg.com/uploads/20200508/bbc1c1d1191d61d52b6337f48cfde9fc.jpg', '哑光', 1, '20升', '21', '0', 1),
(16, 3, '2020-05-14 21:08:00', 1, '家立安墙面漆', 'http://www.wbbg.com/uploads/20200508/bb32109200a53cb99d2fd3350d25ee89.jpg', '哑光', 1, '20升', '21', '1', 1),
(17, 3, '2020-05-14 21:23:01', 5, '洁易白乳胶漆', 'http://www.wbbg.com/uploads/20200508/aa879dc0f8a1ff2705e8f72d64c47a30.jpg', '哑光', 2, '20升', '40', '1', 1),
(18, 3, '2020-05-14 22:39:53', 3, '家立安底漆', 'http://www.wbbg.com/uploads/20200508/bbc1c1d1191d61d52b6337f48cfde9fc.jpg', '哑光', 2, '20升', '42', '1', 1),
(19, 3, '2020-05-14 22:43:38', 8, '多乐士弹性晴雨漆', 'http://www.wbbg.com/uploads/20200509/b4f5c67087b7bce03356c27cc4b2762b.jpg', '高光', 2, '20升', '40', '1', 1),
(20, 3, '2020-05-14 22:45:08', 12, '多乐士恒钻清味木器漆（清漆）', 'http://www.wbbg.com/uploads/20200509/239b569ba2e175a6376a36e8811f659c.jpg', '高光', 2, '20升', '52', '1', 1),
(21, 3, '2020-05-14 23:07:24', 6, '家丽安净味哑光墙面漆', 'http://www.wbbg.com/uploads/20200508/cd277666c8043e2e64f47b69198e7d64.jpg', '哑光', 2, '20升', '40', '1', 1),
(22, 3, '2020-05-14 23:10:30', 3, '全能大师滚筒', 'http://www.wbbg.com/uploads/20200509/19b501e68578145ecf88109c2f6094f1.png', '', 2, '件', '380', '1', 1),
(23, 3, '2020-05-17 14:01:08', 12, '多乐士恒钻清味木器漆（清漆）', 'http://www.wbbg.com/uploads/20200509/239b569ba2e175a6376a36e8811f659c.jpg', '高光', 2, '20升', '52', '1', 1),
(24, 3, '2020-05-17 14:08:42', 10, '多乐士保丽居通用耐久外墙漆', 'http://www.wbbg.com/uploads/20200509/3dc2f34da6d46983bf772b32a9872c71.jpg', '哑光', 2, '20升', '40', '1', 1),
(25, 3, '2020-05-17 14:28:00', 3, '家立安底漆', 'http://www.wbbg.com/uploads/20200508/bbc1c1d1191d61d52b6337f48cfde9fc.jpg', '哑光', 1, '20升', '21', '1', 1),
(26, 3, '2020-05-17 14:32:44', 6, '家丽安净味哑光墙面漆', 'http://www.wbbg.com/uploads/20200508/cd277666c8043e2e64f47b69198e7d64.jpg', '哑光', 2, '20升', '40', '1', 1),
(27, 3, '2020-05-17 14:33:57', 5, '洁易白乳胶漆', 'http://www.wbbg.com/uploads/20200508/aa879dc0f8a1ff2705e8f72d64c47a30.jpg', '哑光', 2, '20升', '40', '1', 1),
(28, 3, '2020-05-17 14:36:04', 6, '家丽安净味哑光墙面漆', 'http://www.wbbg.com/uploads/20200508/cd277666c8043e2e64f47b69198e7d64.jpg', '哑光', 2, '20升', '40', '1', 1),
(29, 3, '2020-05-17 15:11:08', 2, '黄金搭档内墙面漆滚筒（超效款）', 'http://www.wbbg.com/uploads/20200509/1ff43d8b26f583fd14fcdf0a3f238dcf.png', '', 2, '件', '280', '1', 1),
(46, 3, '2020-05-17 16:11:00', 3, '全能大师滚筒', 'http://www.wbbg.com/uploads/20200509/19b501e68578145ecf88109c2f6094f1.png', '', 2, '件', '380', '1', 2),
(49, 3, '2020-05-17 16:19:31', 2, '黄金搭档内墙面漆滚筒（超效款）', 'http://www.wbbg.com/uploads/20200509/1ff43d8b26f583fd14fcdf0a3f238dcf.png', '', 2, '件', '280', '1', 2),
(50, 3, '2020-05-17 16:23:58', 3, '全能大师滚筒', 'http://www.wbbg.com/uploads/20200509/19b501e68578145ecf88109c2f6094f1.png', '', 2, '件', '380', '1', 2),
(51, 3, '2020-05-17 16:29:12', 2, '黄金搭档内墙面漆滚筒（超效款）', 'http://www.wbbg.com/uploads/20200509/1ff43d8b26f583fd14fcdf0a3f238dcf.png', '', 2, '件', '280', '1', 2),
(52, 3, '2020-05-17 16:52:46', 3, '全能大师滚筒', 'http://www.wbbg.com/uploads/20200509/19b501e68578145ecf88109c2f6094f1.png', '', 2, '件', '380', '1', 2),
(53, 0, '2020-07-31 17:37:42', 1, '家立安墙面漆', 'http://49.233.5.161/uploads/20200508/bb32109200a53cb99d2fd3350d25ee89.jpg', '哑光', 1, '20升', '21', '0', 1),
(54, 10, '2020-07-31 17:38:13', 1, '家立安墙面漆', 'http://49.233.5.161/uploads/20200508/bb32109200a53cb99d2fd3350d25ee89.jpg', '哑光', 14, '20公斤', '294', '1', 1);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userid` int(11) NOT NULL,
  `headpicture` varchar(255) DEFAULT NULL COMMENT '头像',
  `username` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `cardnumber` varchar(255) DEFAULT NULL COMMENT '身份证号',
  `userorder` varchar(255) DEFAULT NULL COMMENT '用户拥有的订单编号',
  `password` varchar(255) NOT NULL COMMENT '用户密码',
  `account` varchar(255) NOT NULL COMMENT '账号'
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`userid`, `headpicture`, `username`, `sex`, `phone`, `address`, `cardnumber`, `userorder`, `password`, `account`) VALUES
(3, '/uploads/20200510/b06daf0bb580e8461b6756dc3d95dd48.jpg', '王五', '女', '15689758426', '水木清华水水水水是随谁是', '140622199712074714', '1 2 3', '1234567d', '123asd'),
(4, '/uploads/20200510/b06daf0bb580e8461b6756dc3d95dd48.jpg', '张三', '男', '15689758426', '水木清华水水水水是随谁是', '140622199712074714', '1 2 3', '123654df', 'user1'),
(10, '/uploads/20200517/5dd8b11f4dd85b6455c1aa4617ced8f2.jpg', '赵六', '男', '13623489952', '水木清华', '140622199712074714', NULL, '1234567d', '654dsa'),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1234567d', '送佛送到西'),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1234567d', 'ding1997');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `brushdiscuss`
--
ALTER TABLE `brushdiscuss`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `discuss`
--
ALTER TABLE `discuss`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `indexshow`
--
ALTER TABLE `indexshow`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `lbt`
--
ALTER TABLE `lbt`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `money`
--
ALTER TABLE `money`
  ADD PRIMARY KEY (`goodsid`) USING BTREE;

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`orderid`) USING BTREE;

--
-- Indexes for table `paint`
--
ALTER TABLE `paint`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `paintbrush`
--
ALTER TABLE `paintbrush`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `response`
--
ALTER TABLE `response`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `servelbt`
--
ALTER TABLE `servelbt`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `serveorder`
--
ALTER TABLE `serveorder`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `shopcar`
--
ALTER TABLE `shopcar`
  ADD PRIMARY KEY (`shopcarid`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `brushdiscuss`
--
ALTER TABLE `brushdiscuss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `discuss`
--
ALTER TABLE `discuss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `indexshow`
--
ALTER TABLE `indexshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `orderid` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单编号',AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `serveorder`
--
ALTER TABLE `serveorder`
  MODIFY `id` int(3) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `shopcar`
--
ALTER TABLE `shopcar`
  MODIFY `shopcarid` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
DELIMITER $$
--
-- 事件
--
CREATE DEFINER=`root`@`localhost` EVENT `auto_update_money_todaymoneyAndyesmoney` ON SCHEDULE EVERY 1 DAY STARTS '2020-05-03 00:00:00' ON COMPLETION NOT PRESERVE ENABLE DO call update_dxy()$$

DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
