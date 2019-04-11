/*
 Navicat Premium Data Transfer

 Source Server         : 阿里云
 Source Server Type    : MySQL
 Source Server Version : 50529
 Source Host           : 47.98.146.5:3306
 Source Schema         : cloud

 Target Server Type    : MySQL
 Target Server Version : 50529
 File Encoding         : 65001

 Date: 11/04/2019 00:41:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for champion
-- ----------------------------
DROP TABLE IF EXISTS `champion`;
CREATE TABLE `champion`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '称号',
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名字',
  `Voucher` int(255) NULL DEFAULT NULL COMMENT '游戏点券',
  `Currency` int(255) NULL DEFAULT NULL COMMENT '游戏币/蓝色精萃',
  `Grouping` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类',
  `HeadPortrait` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `ReleaseDate` datetime NULL DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of champion
-- ----------------------------
INSERT INTO `champion` VALUES ('Aatrox', '暗裔剑魔', '亚托克斯', NULL, NULL, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Aatrox.png', NULL);
INSERT INTO `champion` VALUES ('Ahri', '九尾妖狐', '阿狸', NULL, NULL, '刺客|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Ahri.png', NULL);
INSERT INTO `champion` VALUES ('Akali', '离群之刺', '阿卡丽', NULL, NULL, '刺客', 'http://ossweb-img.qq.com/images/lol/img/champion/Akali.png', NULL);
INSERT INTO `champion` VALUES ('Alistar', '牛头酋长', '阿利斯塔', NULL, NULL, '辅助|坦克', 'http://ossweb-img.qq.com/images/lol/img/champion/Alistar.png', NULL);
INSERT INTO `champion` VALUES ('Amumu', '殇之木乃伊', '阿木木', NULL, NULL, '坦克|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Amumu.png', NULL);
INSERT INTO `champion` VALUES ('Anivia', '冰晶凤凰', '艾尼维亚', 1750, 4800, '辅助|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Anivia.png', NULL);
INSERT INTO `champion` VALUES ('Annie', '黑暗之女', '安妮', 1000, 4800, '法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Annie.png', NULL);
INSERT INTO `champion` VALUES ('Ashe', '寒冰射手', '艾希', NULL, NULL, '辅助|射手', 'http://ossweb-img.qq.com/images/lol/img/champion/Ashe.png', NULL);
INSERT INTO `champion` VALUES ('AurelionSol', '铸星龙王', '奥瑞利安·索尔', NULL, NULL, '法师|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/AurelionSol.png', NULL);
INSERT INTO `champion` VALUES ('Azir', '沙漠皇帝', '阿兹尔', NULL, NULL, '射手|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Azir.png', NULL);
INSERT INTO `champion` VALUES ('Bard', '星界游神', '巴德', 1750, 4800, '辅助|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Bard.png', NULL);
INSERT INTO `champion` VALUES ('Blitzcrank', '蒸汽机器人', '布里茨', NULL, NULL, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Blitzcrank.png', NULL);
INSERT INTO `champion` VALUES ('Brand', '复仇焰魂', '布兰德', NULL, NULL, '法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Brand.png', NULL);
INSERT INTO `champion` VALUES ('Braum', '弗雷尔卓德之心', '布隆', NULL, NULL, '辅助|坦克', 'http://ossweb-img.qq.com/images/lol/img/champion/Braum.png', NULL);
INSERT INTO `champion` VALUES ('Caitlyn', '皮城女警', '凯特琳', NULL, NULL, '射手', 'http://ossweb-img.qq.com/images/lol/img/champion/Caitlyn.png', NULL);
INSERT INTO `champion` VALUES ('Camille', '青钢影', '卡蜜尔', NULL, NULL, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Camille.png', NULL);
INSERT INTO `champion` VALUES ('Cassiopeia', '魔蛇之拥', '卡西奥佩娅', 1250, 4800, '法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Cassiopeia.png', NULL);
INSERT INTO `champion` VALUES ('Chogath', '虚空恐惧', '科加斯', NULL, NULL, '坦克|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Chogath.png', NULL);
INSERT INTO `champion` VALUES ('Corki', '英勇投弹手', '库奇', 1750, 6300, '射手', 'http://ossweb-img.qq.com/images/lol/img/champion/Corki.png', NULL);
INSERT INTO `champion` VALUES ('Darius', '诺克萨斯之手', '德莱厄斯', NULL, NULL, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Darius.png', NULL);
INSERT INTO `champion` VALUES ('Diana', '皎月女神', '黛安娜', NULL, NULL, '法师|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Diana.png', NULL);
INSERT INTO `champion` VALUES ('Draven', '荣耀行刑官', '德莱文', NULL, NULL, '射手', 'http://ossweb-img.qq.com/images/lol/img/champion/Draven.png', NULL);
INSERT INTO `champion` VALUES ('DrMundo', '祖安狂人', '蒙多医生', NULL, NULL, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/DrMundo.png', NULL);
INSERT INTO `champion` VALUES ('Ekko', '时间刺客', '艾克', 2250, 6300, '刺客|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Ekko.png', NULL);
INSERT INTO `champion` VALUES ('Elise', '蜘蛛女皇', '伊莉丝', NULL, NULL, '法师|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Elise.png', NULL);
INSERT INTO `champion` VALUES ('Evelynn', '痛苦之拥', '伊芙琳', NULL, NULL, '刺客|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Evelynn.png', NULL);
INSERT INTO `champion` VALUES ('Ezreal', '探险家', '伊泽瑞尔', NULL, NULL, '射手|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Ezreal.png', NULL);
INSERT INTO `champion` VALUES ('Fiddlesticks', '末日使者', '费德提克', NULL, NULL, '辅助|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Fiddlesticks.png', NULL);
INSERT INTO `champion` VALUES ('Fiora', '无双剑姬', '菲奥娜', NULL, NULL, '刺客|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Fiora.png', NULL);
INSERT INTO `champion` VALUES ('Fizz', '潮汐海灵', '菲兹', NULL, NULL, '刺客|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Fizz.png', NULL);
INSERT INTO `champion` VALUES ('Galio', '正义巨像', '加里奥', NULL, NULL, '坦克|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Galio.png', NULL);
INSERT INTO `champion` VALUES ('Gangplank', '海洋之灾', '普朗克', 1250, 3150, '战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Gangplank.png', NULL);
INSERT INTO `champion` VALUES ('Garen', '德玛西亚之力', '盖伦', NULL, NULL, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Garen.png', NULL);
INSERT INTO `champion` VALUES ('Gnar', '迷失之牙', '纳尔', NULL, NULL, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Gnar.png', NULL);
INSERT INTO `champion` VALUES ('Gragas', '酒桶', '古拉加斯', NULL, NULL, '法师|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Gragas.png', NULL);
INSERT INTO `champion` VALUES ('Graves', '法外狂徒', '格雷福斯', NULL, NULL, '射手', 'http://ossweb-img.qq.com/images/lol/img/champion/Graves.png', NULL);
INSERT INTO `champion` VALUES ('Hecarim', '战争之影', '赫卡里姆', 1750, 4800, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Hecarim.png', NULL);
INSERT INTO `champion` VALUES ('Heimerdinger', '大发明家', '黑默丁格', NULL, NULL, '辅助|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Heimerdinger.png', NULL);
INSERT INTO `champion` VALUES ('Illaoi', '海兽祭司', '俄洛伊', NULL, NULL, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Illaoi.png', NULL);
INSERT INTO `champion` VALUES ('Irelia', '刀锋舞者', '艾瑞莉娅', NULL, NULL, '刺客|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Irelia.png', NULL);
INSERT INTO `champion` VALUES ('Ivern', '翠神', '艾翁', NULL, NULL, '辅助|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Ivern.png', NULL);
INSERT INTO `champion` VALUES ('Janna', '风暴之怒', '迦娜', NULL, NULL, '辅助|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Janna.png', NULL);
INSERT INTO `champion` VALUES ('JarvanIV', '德玛西亚皇子', '嘉文四世', NULL, NULL, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/JarvanIV.png', NULL);
INSERT INTO `champion` VALUES ('Jax', '武器大师', '贾克斯', NULL, NULL, '刺客|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Jax.png', NULL);
INSERT INTO `champion` VALUES ('Jayce', '未来守护者', '杰斯', NULL, NULL, '射手|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Jayce.png', NULL);
INSERT INTO `champion` VALUES ('Jhin', '戏命师', '烬', NULL, NULL, '刺客|射手', 'http://ossweb-img.qq.com/images/lol/img/champion/Jhin.png', NULL);
INSERT INTO `champion` VALUES ('Jinx', '暴走萝莉', '金克丝', 2250, 6300, '射手', 'http://ossweb-img.qq.com/images/lol/img/champion/Jinx.png', NULL);
INSERT INTO `champion` VALUES ('Kaisa', '虚空之女', '卡莎', NULL, NULL, '射手', 'http://ossweb-img.qq.com/images/lol/img/champion/Kaisa.png', NULL);
INSERT INTO `champion` VALUES ('Kalista', '复仇之矛', '卡莉丝塔', NULL, NULL, '射手', 'http://ossweb-img.qq.com/images/lol/img/champion/Kalista.png', NULL);
INSERT INTO `champion` VALUES ('Karma', '天启者', '卡尔玛', NULL, NULL, '辅助|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Karma.png', NULL);
INSERT INTO `champion` VALUES ('Karthus', '死亡颂唱者', '卡尔萨斯', 1500, 4800, '法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Karthus.png', NULL);
INSERT INTO `champion` VALUES ('Kassadin', '虚空行者', '卡萨丁', NULL, NULL, '刺客|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Kassadin.png', NULL);
INSERT INTO `champion` VALUES ('Katarina', '不祥之刃', '卡特琳娜', 1250, 3150, '刺客|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Katarina.png', NULL);
INSERT INTO `champion` VALUES ('Kayle', '审判天使', '凯尔', NULL, NULL, '辅助|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Kayle.png', NULL);
INSERT INTO `champion` VALUES ('Kayn', '影流之镰', '凯隐', NULL, NULL, '刺客|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Kayn.png', NULL);
INSERT INTO `champion` VALUES ('Kennen', '狂暴之心', '凯南', NULL, NULL, '射手|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Kennen.png', NULL);
INSERT INTO `champion` VALUES ('Khazix', '虚空掠夺者', '卡兹克', NULL, NULL, '刺客|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Khazix.png', NULL);
INSERT INTO `champion` VALUES ('Kindred', '永猎双子', '千珏', NULL, NULL, '射手', 'http://ossweb-img.qq.com/images/lol/img/champion/Kindred.png', NULL);
INSERT INTO `champion` VALUES ('Kled', '暴怒骑士', '克烈', 2250, 6300, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Kled.png', NULL);
INSERT INTO `champion` VALUES ('KogMaw', '深渊巨口', '克格莫', NULL, NULL, '射手|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/KogMaw.png', NULL);
INSERT INTO `champion` VALUES ('Leblanc', '诡术妖姬', '乐芙兰', NULL, NULL, '刺客|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Leblanc.png', NULL);
INSERT INTO `champion` VALUES ('LeeSin', '盲僧', '李青', NULL, NULL, '刺客|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/LeeSin.png', NULL);
INSERT INTO `champion` VALUES ('Leona', '曙光女神', '蕾欧娜', NULL, NULL, '辅助|坦克', 'http://ossweb-img.qq.com/images/lol/img/champion/Leona.png', NULL);
INSERT INTO `champion` VALUES ('Lissandra', '冰霜女巫', '丽桑卓', NULL, NULL, '法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Lissandra.png', NULL);
INSERT INTO `champion` VALUES ('Lucian', '圣枪游侠', '卢锡安', NULL, NULL, '射手', 'http://ossweb-img.qq.com/images/lol/img/champion/Lucian.png', NULL);
INSERT INTO `champion` VALUES ('Lulu', '仙灵女巫', '璐璐', NULL, NULL, '辅助|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Lulu.png', NULL);
INSERT INTO `champion` VALUES ('Lux', '光辉女郎', '拉克丝', NULL, NULL, '辅助|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Lux.png', NULL);
INSERT INTO `champion` VALUES ('Malphite', '熔岩巨兽', '墨菲特', NULL, NULL, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Malphite.png', NULL);
INSERT INTO `champion` VALUES ('Malzahar', '虚空先知', '玛尔扎哈', NULL, NULL, '刺客|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Malzahar.png', NULL);
INSERT INTO `champion` VALUES ('Maokai', '扭曲树精', '茂凯', NULL, NULL, '坦克|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Maokai.png', NULL);
INSERT INTO `champion` VALUES ('MasterYi', '无极剑圣', '易', NULL, NULL, '刺客|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/MasterYi.png', NULL);
INSERT INTO `champion` VALUES ('MissFortune', '赏金猎人', '厄运小姐', NULL, NULL, '射手', 'http://ossweb-img.qq.com/images/lol/img/champion/MissFortune.png', NULL);
INSERT INTO `champion` VALUES ('MonkeyKing', '齐天大圣', '孙悟空', NULL, NULL, '战士', 'http://ossweb-img.qq.com/images/lol/img/champion/MonkeyKing.png', NULL);
INSERT INTO `champion` VALUES ('Mordekaiser', '铁铠冥魂', '莫德凯撒', NULL, NULL, '战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Mordekaiser.png', NULL);
INSERT INTO `champion` VALUES ('Morgana', '堕落天使', '莫甘娜', NULL, NULL, '辅助|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Morgana.png', NULL);
INSERT INTO `champion` VALUES ('Nami', '唤潮鲛姬', '娜美', NULL, NULL, '辅助|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Nami.png', NULL);
INSERT INTO `champion` VALUES ('Nasus', '沙漠死神', '内瑟斯', NULL, NULL, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Nasus.png', NULL);
INSERT INTO `champion` VALUES ('Nautilus', '深海泰坦', '诺提勒斯', NULL, NULL, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Nautilus.png', NULL);
INSERT INTO `champion` VALUES ('Neeko', '万花通灵', '妮蔻', 4500, 6300, '辅助|法师', 'https://ossweb-img.qq.com/images/lol/img/champion/Neeko.png', NULL);
INSERT INTO `champion` VALUES ('Nidalee', '狂野女猎手', '奈德丽', NULL, NULL, '刺客|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Nidalee.png', NULL);
INSERT INTO `champion` VALUES ('Nocturne', '永恒梦魇', '魔腾', NULL, NULL, '刺客|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Nocturne.png', NULL);
INSERT INTO `champion` VALUES ('Nunu', '雪原双子', '努努和威朗普', NULL, NULL, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Nunu.png', NULL);
INSERT INTO `champion` VALUES ('Olaf', '狂战士', '奥拉夫', NULL, NULL, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Olaf.png', NULL);
INSERT INTO `champion` VALUES ('Orianna', '发条魔灵', '奥莉安娜', NULL, NULL, '辅助|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Orianna.png', NULL);
INSERT INTO `champion` VALUES ('Ornn', '山隐之焰', '奥恩', NULL, NULL, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Ornn.png', NULL);
INSERT INTO `champion` VALUES ('Pantheon', '战争之王', '潘森', 750, 3150, '刺客|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Pantheon.png', NULL);
INSERT INTO `champion` VALUES ('Poppy', '圣锤之毅', '波比', NULL, NULL, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Poppy.png', NULL);
INSERT INTO `champion` VALUES ('Pyke', '血港鬼影', '派克', NULL, NULL, '刺客|辅助', 'http://ossweb-img.qq.com/images/lol/img/champion/Pyke.png', NULL);
INSERT INTO `champion` VALUES ('Quinn', '德玛西亚之翼', '奎因', NULL, NULL, '射手|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Quinn.png', NULL);
INSERT INTO `champion` VALUES ('Rakan', '幻翎', '洛', NULL, NULL, '辅助', 'http://ossweb-img.qq.com/images/lol/img/champion/Rakan.png', NULL);
INSERT INTO `champion` VALUES ('Rammus', '披甲龙龟', '拉莫斯', NULL, NULL, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Rammus.png', NULL);
INSERT INTO `champion` VALUES ('RekSai', '虚空遁地兽', '雷克塞', NULL, NULL, '战士', 'http://ossweb-img.qq.com/images/lol/img/champion/RekSai.png', NULL);
INSERT INTO `champion` VALUES ('Renekton', '荒漠屠夫', '雷克顿', NULL, NULL, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Renekton.png', NULL);
INSERT INTO `champion` VALUES ('Rengar', '傲之追猎者', '雷恩加尔', NULL, NULL, '刺客|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Rengar.png', NULL);
INSERT INTO `champion` VALUES ('Riven', '放逐之刃', '锐雯', NULL, NULL, '刺客|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Riven.png', NULL);
INSERT INTO `champion` VALUES ('Rumble', '机械公敌', '兰博', 1500, 4800, '法师|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Rumble.png', NULL);
INSERT INTO `champion` VALUES ('Ryze', '符文法师', '瑞兹', NULL, NULL, '法师|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Ryze.png', NULL);
INSERT INTO `champion` VALUES ('Sejuani', '北地之怒', '瑟庄妮', NULL, NULL, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Sejuani.png', NULL);
INSERT INTO `champion` VALUES ('Shaco', '恶魔小丑', '萨科', 1000, 4800, '刺客', 'http://ossweb-img.qq.com/images/lol/img/champion/Shaco.png', NULL);
INSERT INTO `champion` VALUES ('Shen', '暮光之眼', '慎', NULL, NULL, '坦克', 'http://ossweb-img.qq.com/images/lol/img/champion/Shen.png', NULL);
INSERT INTO `champion` VALUES ('Shyvana', '龙血武姬', '希瓦娜', NULL, NULL, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Shyvana.png', NULL);
INSERT INTO `champion` VALUES ('Singed', '炼金术士', '辛吉德', NULL, NULL, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Singed.png', NULL);
INSERT INTO `champion` VALUES ('Sion', '亡灵战神', '赛恩', NULL, NULL, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Sion.png', NULL);
INSERT INTO `champion` VALUES ('Sivir', '战争女神', '希维尔', NULL, NULL, '射手', 'http://ossweb-img.qq.com/images/lol/img/champion/Sivir.png', NULL);
INSERT INTO `champion` VALUES ('Skarner', '水晶先锋', '斯卡纳', NULL, NULL, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Skarner.png', NULL);
INSERT INTO `champion` VALUES ('Sona', '琴瑟仙女', '娑娜', NULL, NULL, '辅助|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Sona.png', NULL);
INSERT INTO `champion` VALUES ('Soraka', '众星之子', '索拉卡', NULL, NULL, '辅助|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Soraka.png', NULL);
INSERT INTO `champion` VALUES ('Swain', '诺克萨斯统领', '斯维因', 1500, 4800, '法师|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Swain.png', NULL);
INSERT INTO `champion` VALUES ('Syndra', '暗黑元首', '辛德拉', NULL, NULL, '辅助|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Syndra.png', NULL);
INSERT INTO `champion` VALUES ('TahmKench', '河流之王', '塔姆', NULL, NULL, '辅助|坦克', 'http://ossweb-img.qq.com/images/lol/img/champion/TahmKench.png', NULL);
INSERT INTO `champion` VALUES ('Taliyah', '岩雀', '塔莉垭', NULL, NULL, '辅助|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Taliyah.png', NULL);
INSERT INTO `champion` VALUES ('Talon', '刀锋之影', '泰隆', 2250, 6300, '刺客|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Talon.png', NULL);
INSERT INTO `champion` VALUES ('Taric', '瓦洛兰之盾', '塔里克', NULL, NULL, '辅助|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Taric.png', NULL);
INSERT INTO `champion` VALUES ('Teemo', '迅捷斥候', '提莫', 1750, 6300, '刺客|射手', 'http://ossweb-img.qq.com/images/lol/img/champion/Teemo.png', NULL);
INSERT INTO `champion` VALUES ('Thresh', '魂锁典狱长', '锤石', NULL, NULL, '辅助|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Thresh.png', NULL);
INSERT INTO `champion` VALUES ('Tristana', '麦林炮手', '崔丝塔娜', NULL, NULL, '刺客|射手', 'http://ossweb-img.qq.com/images/lol/img/champion/Tristana.png', NULL);
INSERT INTO `champion` VALUES ('Trundle', '巨魔之王', '特朗德尔', NULL, NULL, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Trundle.png', NULL);
INSERT INTO `champion` VALUES ('Tryndamere', '蛮族之王', '泰达米尔', NULL, NULL, '刺客|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Tryndamere.png', NULL);
INSERT INTO `champion` VALUES ('TwistedFate', '卡牌大师', '崔斯特', NULL, NULL, '法师', 'http://ossweb-img.qq.com/images/lol/img/champion/TwistedFate.png', NULL);
INSERT INTO `champion` VALUES ('Twitch', '瘟疫之源', '图奇', NULL, NULL, '刺客|射手', 'http://ossweb-img.qq.com/images/lol/img/champion/Twitch.png', NULL);
INSERT INTO `champion` VALUES ('Udyr', '兽灵行者', '乌迪尔', 1250, 3150, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Udyr.png', NULL);
INSERT INTO `champion` VALUES ('Urgot', '无畏战车', '厄加特', NULL, NULL, '射手|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Urgot.png', NULL);
INSERT INTO `champion` VALUES ('Varus', '惩戒之箭', '韦鲁斯', NULL, NULL, '射手|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Varus.png', NULL);
INSERT INTO `champion` VALUES ('Vayne', '暗夜猎手', '薇恩', NULL, NULL, '刺客|射手', 'http://ossweb-img.qq.com/images/lol/img/champion/Vayne.png', NULL);
INSERT INTO `champion` VALUES ('Veigar', '邪恶小法师', '维迦', NULL, NULL, '法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Veigar.png', NULL);
INSERT INTO `champion` VALUES ('Velkoz', '虚空之眼', '维克兹', NULL, NULL, '法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Velkoz.png', NULL);
INSERT INTO `champion` VALUES ('Vi', '皮城执法官', '蔚', 2250, 6300, '刺客|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Vi.png', NULL);
INSERT INTO `champion` VALUES ('Viktor', '机械先驱', '维克托', NULL, NULL, '法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Viktor.png', NULL);
INSERT INTO `champion` VALUES ('Vladimir', '猩红收割者', '弗拉基米尔', NULL, NULL, '坦克|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Vladimir.png', NULL);
INSERT INTO `champion` VALUES ('Volibear', '雷霆咆哮', '沃利贝尔', NULL, NULL, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Volibear.png', NULL);
INSERT INTO `champion` VALUES ('Warwick', '祖安怒兽', '沃里克', 1250, 3150, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Warwick.png', NULL);
INSERT INTO `champion` VALUES ('Xayah', '逆羽', '霞', NULL, NULL, '射手', 'http://ossweb-img.qq.com/images/lol/img/champion/Xayah.png', NULL);
INSERT INTO `champion` VALUES ('Xerath', '远古巫灵', '泽拉斯', 1250, 4800, '刺客|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Xerath.png', NULL);
INSERT INTO `champion` VALUES ('XinZhao', '德邦总管', '赵信', NULL, NULL, '刺客|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/XinZhao.png', NULL);
INSERT INTO `champion` VALUES ('Yasuo', '疾风剑豪', '亚索', NULL, NULL, '刺客|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Yasuo.png', NULL);
INSERT INTO `champion` VALUES ('Yorick', '牧魂人', '约里克', NULL, NULL, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Yorick.png', NULL);
INSERT INTO `champion` VALUES ('Zac', '生化魔人', '扎克', NULL, NULL, '坦克|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Zac.png', NULL);
INSERT INTO `champion` VALUES ('Zed', '影流之主', '劫', NULL, NULL, '刺客|战士', 'http://ossweb-img.qq.com/images/lol/img/champion/Zed.png', NULL);
INSERT INTO `champion` VALUES ('Ziggs', '爆破鬼才', '吉格斯', 2250, 6300, '法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Ziggs.png', NULL);
INSERT INTO `champion` VALUES ('Zilean', '时光守护者', '基兰', NULL, NULL, '辅助|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Zilean.png', NULL);
INSERT INTO `champion` VALUES ('Zoe', '暮光星灵', '佐伊', NULL, NULL, '辅助|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Zoe.png', NULL);
INSERT INTO `champion` VALUES ('Zyra', '荆棘之兴', '婕拉', NULL, NULL, '辅助|法师', 'http://ossweb-img.qq.com/images/lol/img/champion/Zyra.png', NULL);

-- ----------------------------
-- Table structure for championandsummoner
-- ----------------------------
DROP TABLE IF EXISTS `championandsummoner`;
CREATE TABLE `championandsummoner`  (
  `SummonerId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '召唤师账号',
  `SummonerServerId` int(11) NOT NULL COMMENT '召唤师所在服务器id',
  `ChampionId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '英雄id',
  `PurchaseTime` datetime NULL DEFAULT NULL COMMENT '购买日期',
  PRIMARY KEY (`SummonerId`, `SummonerServerId`, `ChampionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of championandsummoner
-- ----------------------------
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Ahri', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Akali', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Amumu', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Ashe', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Azir', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Blitzcrank', '2018-11-20 16:15:15');
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Caitlyn', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Draven', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Elise', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Evelynn', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Ezreal', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Fiddlesticks', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Fiora', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Galio', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Gragas', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Ivern', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Janna', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'JarvanIV', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Jax', '2019-01-06 00:00:00');
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Jayce', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Jhin', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Kalista', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Karma', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Kayle', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Kennen', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Khazix', '2018-11-16 14:24:59');
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Kindred', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'KogMaw', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'LeeSin', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Lissandra', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Lucian', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Malphite', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Malzahar', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Maokai', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'MasterYi', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'MissFortune', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Morgana', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Nami', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Nasus', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Nautilus', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Nidalee', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Nocturne', '2018-11-16 14:24:00');
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Nunu', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Olaf', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Orianna', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Poppy', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Rakan', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Rammus', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'RekSai', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Rengar', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Ryze', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Shaco', '2018-12-30 00:00:00');
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Shen', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Sion', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Sivir', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Skarner', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Sona', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Soraka', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Syndra', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Taliyah', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Tristana', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Trundle', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Tryndamere', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'TwistedFate', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Twitch', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Urgot', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Varus', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Veigar', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Viktor', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Volibear', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Yasuo', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Zed', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Zilean', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 1, 'Zyra', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Aatrox', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Alistar', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Amumu', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Anivia', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Annie', '2018-11-23 18:24:51');
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Ashe', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'AurelionSol', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Bard', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Brand', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Braum', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Camille', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Cassiopeia', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Chogath', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Corki', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Darius', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Diana', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Draven', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'DrMundo', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Ekko', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Elise', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Evelynn', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Ezreal', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Fiddlesticks', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Fizz', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Galio', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Gangplank', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Garen', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Gnar', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Gragas', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Graves', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Hecarim', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Heimerdinger', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Illaoi', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Irelia', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Janna', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'JarvanIV', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Jax', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Jayce', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Jhin', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Jinx', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Kaisa', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Kalista', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Karma', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Karthus', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Kassadin', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Katarina', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Kayle', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Kayn', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Kennen', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Kled', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'KogMaw', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Leblanc', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'LeeSin', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Leona', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Lissandra', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Lucian', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Lulu', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Lux', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Malphite', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'MasterYi', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'MissFortune', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'MonkeyKing', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Mordekaiser', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Morgana', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Nami', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Nasus', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Nautilus', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Neeko', '2018-12-16 00:00:00');
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Nunu', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Olaf', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Orianna', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Ornn', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Pantheon', '2018-11-23 18:14:26');
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Poppy', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Pyke', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Quinn', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Rakan', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Rammus', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'RekSai', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Renekton', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Rengar', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Riven', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Rumble', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Ryze', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Sejuani', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Shen', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Shyvana', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Singed', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Sion', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Sivir', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Soraka', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Swain', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Syndra', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'TahmKench', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Taliyah', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Talon', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Taric', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Teemo', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Thresh', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Tristana', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Tryndamere', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'TwistedFate', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Twitch', '2018-12-18 13:51:51');
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Udyr', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Urgot', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Varus', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Vayne', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Veigar', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Velkoz', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Vi', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Viktor', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Vladimir', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Volibear', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Warwick', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Xayah', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Xerath', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'XinZhao', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Yasuo', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Yorick', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Zac', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Ziggs', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Zilean', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Zoe', NULL);
INSERT INTO `championandsummoner` VALUES ('87804245', 10, 'Zyra', NULL);

-- ----------------------------
-- Table structure for championgrouping
-- ----------------------------
DROP TABLE IF EXISTS `championgrouping`;
CREATE TABLE `championgrouping`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Champions` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of championgrouping
-- ----------------------------
INSERT INTO `championgrouping` VALUES (1, '战士', 'Aatrox,AurelionSol,Blitzcrank,Camille,Darius,Diana,DrMundo,Ekko,Elise,Fiora,Fizz,Gangplank,Garen,Gnar,Gragas,Hecarim,Illaoi,Irelia,JarvanIV,Jax,Jayce,Kayle,Kayn,Khazix,Kled,LeeSin,Malphite,MasterYi,MonkeyKing,Mordekaiser,Nasus,Nautilus,Nidalee,Nocturne,Nunu,Olaf,Ornn,Pantheon,Poppy,Quinn,Rammus,RekSai,Renekton,Rengar,Riven,Rumble,Ryze,Sejuani,Shyvana,Singed,Sion,Skarner,Swain,Talon,Taric,Thresh,Trundle,Tryndamere,Udyr,Urgot,Vi,Volibear,Warwick,XinZhao,Yasuo,Yorick,Zac,Zed');
INSERT INTO `championgrouping` VALUES (2, '法师', 'Ahri,Amumu,Anivia,Annie,AurelionSol,Azir,Bard,Brand,Cassiopeia,Chogath,Diana,Elise,Evelynn,Ezreal,Fiddlesticks,Galio,Gragas,Heimerdinger,Ivern,Janna,Karma,Karthus,Kassadin,Katarina,Kennen,KogMaw,Leblanc,Lissandra,Lulu,Lux,Malzahar,Maokai,Morgana,Nami,Orianna,Rumble,Ryze,Sona,Soraka,Swain,Syndra,Taliyah,TwistedFate,Varus,Veigar,Velkoz,Viktor,Vladimir,Xerath,Ziggs,Zilean,Zoe,Zyra');
INSERT INTO `championgrouping` VALUES (3, '刺客', 'Ahri,Akali,Ekko,Evelynn,Fiora,Fizz,Irelia,Jax,Jhin,Kassadin,Katarina,Kayn,Khazix,Leblanc,LeeSin,Malzahar,MasterYi,Nidalee,Nocturne,Pantheon,Pyke,Rengar,Riven,Shaco,Talon,Teemo,Tristana,Tryndamere,Twitch,Vayne,Vi,Xerath,XinZhao,Yasuo,Zed');
INSERT INTO `championgrouping` VALUES (4, '坦克', 'Aatrox,Alistar,Amumu,Blitzcrank,Braum,Camille,Chogath,Darius,DrMundo,Galio,Garen,Gnar,Hecarim,Illaoi,JarvanIV,Kled,Leona,Malphite,Maokai,Nasus,Nautilus,Nunu,Olaf,Ornn,Poppy,Rammus,Renekton,Sejuani,Shen,Shyvana,Singed,Sion,Skarner,TahmKench,Trundle,Udyr,Vladimir,Volibear,Warwick,Yorick,Zac');
INSERT INTO `championgrouping` VALUES (5, '射手', 'Ashe,Azir,Caitlyn,Corki,Draven,Ezreal,Graves,Jayce,Jhin,Jinx,Kaisa,Kalista,Kennen,Kindred,KogMaw,Lucian,MissFortune,Quinn,Sivir,Teemo,Tristana,Twitch,Urgot,Varus,Vayne,Xayah');
INSERT INTO `championgrouping` VALUES (6, '辅助', 'Alistar,Anivia,Ashe,Bard,Braum,Fiddlesticks,Heimerdinger,Ivern,Janna,Karma,Kayle,Leona,Lulu,Lux,Morgana,Nami,Orianna,Pyke,Rakan,Sona,Soraka,Syndra,TahmKench,Taliyah,Taric,Thresh,Zilean,Zoe,Zyra');

-- ----------------------------
-- Table structure for server
-- ----------------------------
DROP TABLE IF EXISTS `server`;
CREATE TABLE `server`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `network` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在网络',
  `SerialNumber` int(11) NULL DEFAULT NULL COMMENT '区服序号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of server
-- ----------------------------
INSERT INTO `server` VALUES (1, '艾欧尼亚', '电信', 1);
INSERT INTO `server` VALUES (2, '祖安', '电信', 2);
INSERT INTO `server` VALUES (3, '诺克萨斯', '电信', 3);
INSERT INTO `server` VALUES (4, '班德尔城', '电信', 4);
INSERT INTO `server` VALUES (5, '皮尔特沃夫', '电信', 5);
INSERT INTO `server` VALUES (6, '战争学院', '电信', 6);
INSERT INTO `server` VALUES (7, '巨神峰', '电信', 7);
INSERT INTO `server` VALUES (8, '雷瑟守备', '电信', 8);
INSERT INTO `server` VALUES (9, '裁决之地', '电信', 9);
INSERT INTO `server` VALUES (10, '黑色玫瑰', '电信', 10);
INSERT INTO `server` VALUES (11, '暗影岛', '电信', 11);
INSERT INTO `server` VALUES (12, '钢铁烈阳', '电信', 12);
INSERT INTO `server` VALUES (13, '均衡教派', '电信', 13);
INSERT INTO `server` VALUES (14, '水晶之痕', '电信', 14);
INSERT INTO `server` VALUES (15, '影流', '电信', 15);
INSERT INTO `server` VALUES (16, '守望之海', '电信', 16);
INSERT INTO `server` VALUES (17, '征服之海', '电信', 17);
INSERT INTO `server` VALUES (18, '卡拉曼达', '电信', 18);
INSERT INTO `server` VALUES (19, '皮城警备', '电信', 19);
INSERT INTO `server` VALUES (20, '比尔吉沃特', '网通', 1);
INSERT INTO `server` VALUES (21, '德玛西亚', '网通', 2);
INSERT INTO `server` VALUES (22, '弗雷尔卓德', '网通', 3);
INSERT INTO `server` VALUES (23, '无畏先锋', '网通', 4);
INSERT INTO `server` VALUES (24, '恕瑞玛', '网通', 5);
INSERT INTO `server` VALUES (25, '扭曲丛林', '网通', 6);
INSERT INTO `server` VALUES (26, '巨龙之巢', '网通', 7);
INSERT INTO `server` VALUES (27, '男爵领域', '全网络', 1);
INSERT INTO `server` VALUES (28, '峡谷之巅', '全网络', 2);
INSERT INTO `server` VALUES (29, '教育网专区', '其他', 1);

-- ----------------------------
-- Table structure for summoner
-- ----------------------------
DROP TABLE IF EXISTS `summoner`;
CREATE TABLE `summoner`  (
  `UserName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `PassWord` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `ServerId` int(11) NULL DEFAULT NULL COMMENT '所在大区',
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '召唤师名字',
  `Level` int(255) NULL DEFAULT NULL COMMENT '召唤师等级',
  `GameVoucher` int(255) NULL DEFAULT NULL COMMENT '游戏点券',
  `GameCurrency` int(255) NULL DEFAULT NULL COMMENT '游戏币/蓝色精萃',
  `HeadPortrait` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '召唤师头像'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of summoner
-- ----------------------------
INSERT INTO `summoner` VALUES ('87804245', '******', 1, '潜伏的丶蜗牛', 65, NULL, NULL, NULL);
INSERT INTO `summoner` VALUES ('87804245', '******', 10, '江月何年初丶照人', 87, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `USERID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名字',
  `SEX` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `BIRTHDAY` datetime NULL DEFAULT NULL COMMENT '生日',
  `PHONE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `EMAIL` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电子邮箱',
  `PHOTO` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `TOKEN` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATUS` int(11) NULL DEFAULT NULL COMMENT '状态',
  `FIRSTTIME` datetime NULL DEFAULT NULL COMMENT '注册时间',
  `LASTTIME` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  PRIMARY KEY (`USERID`, `USERNAME`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '123456', '管理员', '1', '2019-04-03 22:34:12', NULL, 'admin@qq.com', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `Id` bigint(255) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Create_Time` datetime NULL DEFAULT NULL,
  `Update_Time` datetime NULL DEFAULT NULL,
  `Status` int(1) UNSIGNED ZEROFILL NULL DEFAULT 0,
  `File_Path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Cover_Picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES (28, '呃呃呃2223', '2019-04-03 18:02:40', '2019-04-08 11:46:33', 2, '123', '123', '11', '22');
INSERT INTO `video` VALUES (29, '111', '2019-04-03 18:02:40', '2019-04-04 23:53:00', 3, '22', '33', '11', '22');
INSERT INTO `video` VALUES (30, '111', '2019-04-03 18:02:40', '2019-04-03 18:02:42', 0, '22', '33', '11', '22');
INSERT INTO `video` VALUES (31, '111', '2019-04-03 18:02:40', '2019-04-03 18:02:42', 0, '22', '33', '11', '22');
INSERT INTO `video` VALUES (32, '111', '2019-04-03 18:02:40', '2019-04-03 18:02:42', 0, '', '', '11', '22');
INSERT INTO `video` VALUES (33, '111', '2019-04-03 18:02:40', '2019-04-03 18:02:42', 0, '22', '33', '11', '22');
INSERT INTO `video` VALUES (34, '111', '2019-04-03 18:02:40', '2019-04-03 18:02:42', 0, '22', '33', '11', '22');
INSERT INTO `video` VALUES (35, '111222', '2019-04-03 18:02:40', '2019-04-03 18:02:42', 0, '', '', '11', '22');
INSERT INTO `video` VALUES (36, '111', '2019-04-03 18:02:40', '2019-04-03 18:02:42', 0, '22', '33', '11', '22');
INSERT INTO `video` VALUES (37, '111', '2019-04-03 18:02:40', '2019-04-03 18:02:42', 0, '22', '33', '11', '22');
INSERT INTO `video` VALUES (38, '111', '2019-04-03 18:02:40', '2019-04-03 18:02:42', 0, '22', '33', '11', '22');
INSERT INTO `video` VALUES (39, '111', '2019-04-03 18:02:40', '2019-04-03 18:02:42', 0, '22', '33', '11', '22');
INSERT INTO `video` VALUES (40, '111', '2019-04-03 18:02:40', '2019-04-03 18:02:42', 0, '22', '33', '11', '22');
INSERT INTO `video` VALUES (41, '111', '2019-04-03 18:02:40', '2019-04-03 18:02:42', 0, '22', '33', '11', '22');
INSERT INTO `video` VALUES (42, '111', '2019-04-03 18:02:40', '2019-04-03 18:02:42', 0, '22', '33', '11', '22');
INSERT INTO `video` VALUES (43, '111', '2019-04-03 18:02:40', '2019-04-03 18:02:42', 0, '22', '33', '11', '22');
INSERT INTO `video` VALUES (44, '111', '2019-04-03 18:02:40', '2019-04-03 18:02:42', 0, '22', '33', '11', '22');
INSERT INTO `video` VALUES (45, '111', '2019-04-03 18:02:40', '2019-04-03 18:02:42', 0, '22', '33', '11', '22');
INSERT INTO `video` VALUES (46, '111', '2019-04-03 18:02:40', '2019-04-03 18:02:42', 0, '22', '33', '11', '22');
INSERT INTO `video` VALUES (49, 'asdf', NULL, NULL, 1, 'asdf', 'asdf', 'asdf', 'asdf');
INSERT INTO `video` VALUES (50, 'rrr', NULL, NULL, 2, 'rrr', 'rrr', 'rrr', 'rrr');
INSERT INTO `video` VALUES (52, 'yyy', NULL, NULL, 0, '', '', '', '');
INSERT INTO `video` VALUES (53, '222555', NULL, NULL, 0, '', '', '', '');
INSERT INTO `video` VALUES (54, 'fffffffffffffffffff', NULL, NULL, 0, 'fff', 'ffff', 'fffffffffffffff', 'ffffffffffffffffff');
INSERT INTO `video` VALUES (55, 'ffas', NULL, NULL, 0, '', '', '', '');
INSERT INTO `video` VALUES (58, '111', '2019-04-08 11:46:46', NULL, 2, '123', '21', '12', '1233');
INSERT INTO `video` VALUES (59, '111', '2019-04-08 11:46:47', NULL, 2, '123', '21', '12', '1233');

SET FOREIGN_KEY_CHECKS = 1;
