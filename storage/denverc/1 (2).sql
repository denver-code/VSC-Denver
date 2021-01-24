-- --------------------------------------------------------
-- Хост:                         minecraft.italent.org.ua
-- Версия сервера:               5.7.30-0ubuntu0.18.04.1 - (Ubuntu)
-- Операционная система:         Linux
-- HeidiSQL Версия:              11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица italent7_bot.MC_PERMS_actions
CREATE TABLE IF NOT EXISTS `MC_PERMS_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` bigint(20) NOT NULL,
  `actor_uuid` varchar(36) NOT NULL,
  `actor_name` varchar(100) NOT NULL,
  `type` char(1) NOT NULL,
  `acted_uuid` varchar(36) NOT NULL,
  `acted_name` varchar(36) NOT NULL,
  `action` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы italent7_bot.MC_PERMS_actions: 102 rows
DELETE FROM `MC_PERMS_actions`;
/*!40000 ALTER TABLE `MC_PERMS_actions` DISABLE KEYS */;
INSERT INTO `MC_PERMS_actions` (`id`, `time`, `actor_uuid`, `actor_name`, `type`, `acted_uuid`, `acted_name`, `action`) VALUES
	(1, 1591541782, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'default', 'webeditor add act.group.default true'),
	(2, 1591541782, '00000000-0000-0000-0000-000000000000', 'Console', 'U', '4ef9503d-d1a1-4a35-a3d9-2004270918e2', 'rikonardo', 'webeditor add group.adm true'),
	(3, 1591541783, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'adm', 'webeditor add displayname.Admin true'),
	(4, 1591541783, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'adm', 'webeditor add * true'),
	(5, 1591541783, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'adm', 'webeditor add act.group.adm true'),
	(6, 1591541783, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add act.group.mod true'),
	(7, 1591541783, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add displayname.Moderator true'),
	(8, 1593204303, '00000000-0000-0000-0000-000000000000', 'Console', 'U', '0509f7de-598c-4b3e-bee0-43bdea9c9a9a', 'rikonardo', 'parent add adm'),
	(9, 1594240995, '00000000-0000-0000-0000-000000000000', 'Console', 'U', '0509f7de-598c-4b3e-bee0-43bdea9c9a9a', 'rikonardo', 'parent clear'),
	(10, 1594241571, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'adm', 'webeditor remove * true'),
	(11, 1594242155, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'default', 'webeditor add essentials.tpa true'),
	(12, 1594242155, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'default', 'webeditor add essentials.mail true'),
	(13, 1594242155, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'default', 'webeditor add essentials.ignore true'),
	(14, 1594242155, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'default', 'webeditor add essentials.tpaccept true'),
	(15, 1594242155, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'default', 'webeditor add essentials.warp true'),
	(16, 1594242155, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'default', 'webeditor add essentials.tpacancel true'),
	(17, 1594242155, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'default', 'webeditor add essentials.spawn true'),
	(18, 1594242355, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'default', 'webeditor add essentials.msg true'),
	(19, 1594243777, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'default', 'webeditor add essentials.tpahere true'),
	(20, 1594243777, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'default', 'webeditor add essentials.sethome true'),
	(21, 1594243777, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'default', 'webeditor add essentials.home true'),
	(22, 1594243777, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'default', 'webeditor remove essentials.mail true'),
	(23, 1594251281, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'adm', 'webeditor add group.mod true'),
	(24, 1594251281, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add essentials.tempban true'),
	(25, 1594251281, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add commandwhitelist.override.gmsp true'),
	(26, 1594251281, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add commandwhitelist.override.gmc true'),
	(27, 1594251281, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add essentials.kick true'),
	(28, 1594251281, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add commandwhitelist.override.tempban true'),
	(29, 1594251281, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add commandwhitelist.override.vanish true'),
	(30, 1594251281, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add essentials.gamemode.* true'),
	(31, 1594251281, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add commandwhitelist.override.gma true'),
	(32, 1594251281, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add commandwhitelist.override.kick true'),
	(33, 1594251281, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add group.default true'),
	(34, 1594251281, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add essentials.vanish true'),
	(35, 1594251281, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add commandwhitelist.override.gm true'),
	(36, 1594251281, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add commandwhitelist.override.gms true'),
	(37, 1594251281, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add commandwhitelist.override.v true'),
	(38, 1594251513, '00000000-0000-0000-0000-000000000000', 'Console', 'U', '0509f7de-598c-4b3e-bee0-43bdea9c9a9a', 'rikonardo', 'parent add mod'),
	(39, 1594251680, '00000000-0000-0000-0000-000000000000', 'Console', 'U', '0509f7de-598c-4b3e-bee0-43bdea9c9a9a', 'rikonardo', 'parent remove mod'),
	(40, 1594251821, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'adm', 'webeditor add act.prefix.adm true'),
	(41, 1594251822, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'default', 'webeditor add act.prefix.default true'),
	(42, 1594251822, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add act.prefix.mod true'),
	(43, 1594251930, '00000000-0000-0000-0000-000000000000', 'Console', 'U', '0509f7de-598c-4b3e-bee0-43bdea9c9a9a', 'rikonardo', 'parent add mod'),
	(44, 1594252074, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'adm', 'webeditor add aztectabcompleter.group.adm true'),
	(45, 1594252074, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add aztectabcompleter.group.mod true'),
	(46, 1594252826, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'adm', 'webeditor add tab.group.adm true'),
	(47, 1594252826, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add tab.group.mod true'),
	(48, 1594253012, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'default', 'webeditor add tab.group.default true'),
	(49, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add commandwhitelist.override.repair true'),
	(50, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add commandwhitelist.override.broadcast true'),
	(51, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add commandwhitelist.override.tp true'),
	(52, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add commandwhitelist.override.bc true'),
	(53, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add essentials.god true'),
	(54, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add commandwhitelist.override.delwarp true'),
	(55, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add essentials.tphere true'),
	(56, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add commandwhitelist.override.banip true'),
	(57, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add essentials.delwarp true'),
	(58, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add essentials.fly.* true'),
	(59, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add commandwhitelist.override.fly true'),
	(60, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add essentials.speed true'),
	(61, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add essentials.mute true'),
	(62, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add commandwhitelist.override.unmute true'),
	(63, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add essentials.ban true'),
	(64, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add essentials.feed true'),
	(65, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add commandwhitelist.override.unban true'),
	(66, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add essentials.broadcast true'),
	(67, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add commandwhitelist.override.god true'),
	(68, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add commandwhitelist.override.setwarp true'),
	(69, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add essentials.unbanip true'),
	(70, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add commandwhitelist.override.speed true'),
	(71, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add essentials.heal true'),
	(72, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add essentials.tp true'),
	(73, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add essentials.repair true'),
	(74, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add commandwhitelist.override.ban true'),
	(75, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add commandwhitelist.override.unbanip true'),
	(76, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add essentials.setwarp true'),
	(77, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add commandwhitelist.override.tphere true'),
	(78, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add commandwhitelist.override.mute true'),
	(79, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add essentials.unban true'),
	(80, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add commandwhitelist.override.heal true'),
	(81, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add essentials.banip true'),
	(82, 1594254017, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add commandwhitelist.override.feed true'),
	(83, 1594254169, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor remove essentials.mute true'),
	(84, 1594254169, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor remove commandwhitelist.override.mute true'),
	(85, 1594254263, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add essentials.fly true'),
	(86, 1594254312, '00000000-0000-0000-0000-000000000000', 'Console', 'U', '0509f7de-598c-4b3e-bee0-43bdea9c9a9a', 'rikonardo', 'parent clear'),
	(87, 1594254385, '00000000-0000-0000-0000-000000000000', 'Console', 'U', '0509f7de-598c-4b3e-bee0-43bdea9c9a9a', 'rikonardo', 'parent add adm'),
	(88, 1594254513, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'adm', 'webeditor add tab.group.mod false'),
	(89, 1594254646, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add act.suffix.tick true'),
	(90, 1594255757, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add essentials.tppos true'),
	(91, 1594255757, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add commandwhitelist.override.tppos true'),
	(92, 1594256697, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'default', 'webeditor add betterrtp.use true'),
	(93, 1594256697, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'default', 'webeditor add betterrtp.world.* true'),
	(94, 1594257925, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add commandwhitelist.override.back true'),
	(95, 1594257925, '00000000-0000-0000-0000-000000000000', 'Console', 'G', 'null', 'mod', 'webeditor add essentials.back true'),
	(96, 1594911018, '0509f7de-598c-4b3e-bee0-43bdea9c9a9a', 'Rikonardo', 'U', 'ac1bc0e3-146f-42f1-9a27-1cb57ffb73e5', '167tjtc68p6', 'parent set mod'),
	(97, 1594911033, '0509f7de-598c-4b3e-bee0-43bdea9c9a9a', 'Rikonardo', 'U', '5ef5eb33-3d3f-460e-92f7-565c53610c6f', 'bcyw7tppce', 'parent set mod'),
	(98, 1594913286, '0509f7de-598c-4b3e-bee0-43bdea9c9a9a', 'Rikonardo', 'U', '43c330b8-a2d7-4276-a082-1a17b209cbff', 'tb8pzmvpv2', 'parent set mod'),
	(99, 1594917607, '0509f7de-598c-4b3e-bee0-43bdea9c9a9a', 'Rikonardo', 'U', '2ffbb61f-751b-4d28-89de-267d9d556ea2', 'ommkf9rqaq', 'parent set adm'),
	(100, 1594989588, '00000000-0000-0000-0000-000000000000', 'Console', 'U', 'b3b59a03-1945-4c0c-a706-9e50ede78d24', 'dn4lhhujoy', 'parent set mod'),
	(101, 1594990901, '00000000-0000-0000-0000-000000000000', 'Console', 'U', '5ef5eb33-3d3f-460e-92f7-565c53610c6f', 'bcyw7tppce', 'parent set adm'),
	(102, 1595158130, '00000000-0000-0000-0000-000000000000', 'Console', 'U', '85f17fb2-6f98-4af6-b9d1-38013fb610fa', 'qavqbm1jku', 'parent set mod');
/*!40000 ALTER TABLE `MC_PERMS_actions` ENABLE KEYS */;

-- Дамп структуры для таблица italent7_bot.MC_PERMS_groups
CREATE TABLE IF NOT EXISTS `MC_PERMS_groups` (
  `name` varchar(36) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы italent7_bot.MC_PERMS_groups: 3 rows
DELETE FROM `MC_PERMS_groups`;
/*!40000 ALTER TABLE `MC_PERMS_groups` DISABLE KEYS */;
INSERT INTO `MC_PERMS_groups` (`name`) VALUES
	('adm'),
	('default'),
	('mod');
/*!40000 ALTER TABLE `MC_PERMS_groups` ENABLE KEYS */;

-- Дамп структуры для таблица italent7_bot.MC_PERMS_group_permissions
CREATE TABLE IF NOT EXISTS `MC_PERMS_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(36) NOT NULL,
  `permission` varchar(200) NOT NULL,
  `value` tinyint(1) NOT NULL,
  `server` varchar(36) NOT NULL,
  `world` varchar(36) NOT NULL,
  `expiry` bigint(20) NOT NULL,
  `contexts` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MC_PERMS_group_permissions_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы italent7_bot.MC_PERMS_group_permissions: 79 rows
DELETE FROM `MC_PERMS_group_permissions`;
/*!40000 ALTER TABLE `MC_PERMS_group_permissions` DISABLE KEYS */;
INSERT INTO `MC_PERMS_group_permissions` (`id`, `name`, `permission`, `value`, `server`, `world`, `expiry`, `contexts`) VALUES
	(1, 'default', 'act.group.default', 1, 'global', 'global', 0, '{}'),
	(7, 'default', 'essentials.tpa', 1, 'global', 'global', 0, '{}'),
	(3, 'adm', 'act.group.adm', 1, 'global', 'global', 0, '{}'),
	(4, 'adm', 'displayname.Admin', 1, 'global', 'global', 0, '{}'),
	(5, 'mod', 'displayname.Moderator', 1, 'global', 'global', 0, '{}'),
	(6, 'mod', 'act.group.mod', 1, 'global', 'global', 0, '{}'),
	(8, 'default', 'essentials.warp', 1, 'global', 'global', 0, '{}'),
	(9, 'default', 'essentials.ignore', 1, 'global', 'global', 0, '{}'),
	(10, 'default', 'essentials.tpaccept', 1, 'global', 'global', 0, '{}'),
	(15, 'default', 'essentials.tpahere', 1, 'global', 'global', 0, '{}'),
	(12, 'default', 'essentials.tpacancel', 1, 'global', 'global', 0, '{}'),
	(13, 'default', 'essentials.spawn', 1, 'global', 'global', 0, '{}'),
	(14, 'default', 'essentials.msg', 1, 'global', 'global', 0, '{}'),
	(16, 'default', 'essentials.home', 1, 'global', 'global', 0, '{}'),
	(17, 'default', 'essentials.sethome', 1, 'global', 'global', 0, '{}'),
	(18, 'adm', 'group.mod', 1, 'global', 'global', 0, '{}'),
	(19, 'mod', 'commandwhitelist.override.v', 1, 'global', 'global', 0, '{}'),
	(20, 'mod', 'commandwhitelist.override.kick', 1, 'global', 'global', 0, '{}'),
	(21, 'mod', 'essentials.kick', 1, 'global', 'global', 0, '{}'),
	(22, 'mod', 'group.default', 1, 'global', 'global', 0, '{}'),
	(23, 'mod', 'commandwhitelist.override.gm', 1, 'global', 'global', 0, '{}'),
	(24, 'mod', 'essentials.vanish', 1, 'global', 'global', 0, '{}'),
	(25, 'mod', 'commandwhitelist.override.vanish', 1, 'global', 'global', 0, '{}'),
	(26, 'mod', 'commandwhitelist.override.gms', 1, 'global', 'global', 0, '{}'),
	(27, 'mod', 'essentials.tempban', 1, 'global', 'global', 0, '{}'),
	(28, 'mod', 'commandwhitelist.override.gma', 1, 'global', 'global', 0, '{}'),
	(29, 'mod', 'commandwhitelist.override.gmc', 1, 'global', 'global', 0, '{}'),
	(30, 'mod', 'essentials.gamemode.*', 1, 'global', 'global', 0, '{}'),
	(31, 'mod', 'commandwhitelist.override.gmsp', 1, 'global', 'global', 0, '{}'),
	(32, 'mod', 'commandwhitelist.override.tempban', 1, 'global', 'global', 0, '{}'),
	(33, 'adm', 'act.prefix.adm', 1, 'global', 'global', 0, '{}'),
	(34, 'default', 'act.prefix.default', 1, 'global', 'global', 0, '{}'),
	(35, 'mod', 'act.prefix.mod', 1, 'global', 'global', 0, '{}'),
	(36, 'adm', 'aztectabcompleter.group.adm', 1, 'global', 'global', 0, '{}'),
	(37, 'mod', 'aztectabcompleter.group.mod', 1, 'global', 'global', 0, '{}'),
	(38, 'adm', 'tab.group.adm', 1, 'global', 'global', 0, '{}'),
	(39, 'mod', 'tab.group.mod', 1, 'global', 'global', 0, '{}'),
	(40, 'default', 'tab.group.default', 1, 'global', 'global', 0, '{}'),
	(41, 'mod', 'essentials.tphere', 1, 'global', 'global', 0, '{}'),
	(42, 'mod', 'commandwhitelist.override.unbanip', 1, 'global', 'global', 0, '{}'),
	(43, 'mod', 'commandwhitelist.override.tphere', 1, 'global', 'global', 0, '{}'),
	(44, 'mod', 'commandwhitelist.override.heal', 1, 'global', 'global', 0, '{}'),
	(45, 'mod', 'commandwhitelist.override.feed', 1, 'global', 'global', 0, '{}'),
	(46, 'mod', 'commandwhitelist.override.bc', 1, 'global', 'global', 0, '{}'),
	(47, 'mod', 'essentials.broadcast', 1, 'global', 'global', 0, '{}'),
	(48, 'mod', 'commandwhitelist.override.unban', 1, 'global', 'global', 0, '{}'),
	(49, 'mod', 'essentials.delwarp', 1, 'global', 'global', 0, '{}'),
	(50, 'mod', 'commandwhitelist.override.banip', 1, 'global', 'global', 0, '{}'),
	(51, 'mod', 'essentials.heal', 1, 'global', 'global', 0, '{}'),
	(52, 'mod', 'essentials.repair', 1, 'global', 'global', 0, '{}'),
	(53, 'mod', 'commandwhitelist.override.delwarp', 1, 'global', 'global', 0, '{}'),
	(54, 'mod', 'essentials.feed', 1, 'global', 'global', 0, '{}'),
	(55, 'mod', 'essentials.speed', 1, 'global', 'global', 0, '{}'),
	(56, 'mod', 'commandwhitelist.override.fly', 1, 'global', 'global', 0, '{}'),
	(57, 'mod', 'essentials.tp', 1, 'global', 'global', 0, '{}'),
	(58, 'mod', 'commandwhitelist.override.repair', 1, 'global', 'global', 0, '{}'),
	(59, 'mod', 'commandwhitelist.override.speed', 1, 'global', 'global', 0, '{}'),
	(60, 'mod', 'essentials.setwarp', 1, 'global', 'global', 0, '{}'),
	(61, 'mod', 'commandwhitelist.override.setwarp', 1, 'global', 'global', 0, '{}'),
	(62, 'mod', 'commandwhitelist.override.tp', 1, 'global', 'global', 0, '{}'),
	(63, 'mod', 'commandwhitelist.override.god', 1, 'global', 'global', 0, '{}'),
	(64, 'mod', 'essentials.god', 1, 'global', 'global', 0, '{}'),
	(65, 'mod', 'commandwhitelist.override.unmute', 1, 'global', 'global', 0, '{}'),
	(76, 'adm', 'tab.group.mod', 0, 'global', 'global', 0, '{}'),
	(75, 'mod', 'essentials.fly', 1, 'global', 'global', 0, '{}'),
	(68, 'mod', 'commandwhitelist.override.ban', 1, 'global', 'global', 0, '{}'),
	(69, 'mod', 'essentials.ban', 1, 'global', 'global', 0, '{}'),
	(70, 'mod', 'essentials.banip', 1, 'global', 'global', 0, '{}'),
	(71, 'mod', 'commandwhitelist.override.broadcast', 1, 'global', 'global', 0, '{}'),
	(72, 'mod', 'essentials.unbanip', 1, 'global', 'global', 0, '{}'),
	(73, 'mod', 'essentials.fly.*', 1, 'global', 'global', 0, '{}'),
	(74, 'mod', 'essentials.unban', 1, 'global', 'global', 0, '{}'),
	(77, 'mod', 'act.suffix.tick', 1, 'global', 'global', 0, '{}'),
	(78, 'mod', 'commandwhitelist.override.tppos', 1, 'global', 'global', 0, '{}'),
	(79, 'mod', 'essentials.tppos', 1, 'global', 'global', 0, '{}'),
	(80, 'default', 'betterrtp.world.*', 1, 'global', 'global', 0, '{}'),
	(81, 'default', 'betterrtp.use', 1, 'global', 'global', 0, '{}'),
	(82, 'mod', 'essentials.back', 1, 'global', 'global', 0, '{}'),
	(83, 'mod', 'commandwhitelist.override.back', 1, 'global', 'global', 0, '{}');
/*!40000 ALTER TABLE `MC_PERMS_group_permissions` ENABLE KEYS */;

-- Дамп структуры для таблица italent7_bot.MC_PERMS_messenger
CREATE TABLE IF NOT EXISTS `MC_PERMS_messenger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `msg` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы italent7_bot.MC_PERMS_messenger: 0 rows
DELETE FROM `MC_PERMS_messenger`;
/*!40000 ALTER TABLE `MC_PERMS_messenger` DISABLE KEYS */;
/*!40000 ALTER TABLE `MC_PERMS_messenger` ENABLE KEYS */;

-- Дамп структуры для таблица italent7_bot.MC_PERMS_players
CREATE TABLE IF NOT EXISTS `MC_PERMS_players` (
  `uuid` varchar(36) NOT NULL,
  `username` varchar(16) NOT NULL,
  `primary_group` varchar(36) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `MC_PERMS_players_username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы italent7_bot.MC_PERMS_players: 9 rows
DELETE FROM `MC_PERMS_players`;
/*!40000 ALTER TABLE `MC_PERMS_players` DISABLE KEYS */;
INSERT INTO `MC_PERMS_players` (`uuid`, `username`, `primary_group`) VALUES
	('5ef5eb33-3d3f-460e-92f7-565c53610c6f', 'rutukute', 'adm'),
	('0509f7de-598c-4b3e-bee0-43bdea9c9a9a', 'rikonardo', 'default'),
	('ac1bc0e3-146f-42f1-9a27-1cb57ffb73e5', '167tjtc68p6', 'mod'),
	('43c330b8-a2d7-4276-a082-1a17b209cbff', 'tb8pzmvpv2', 'mod'),
	('2ffbb61f-751b-4d28-89de-267d9d556ea2', 'ommkf9rqaq', 'adm'),
	('85f17fb2-6f98-4af6-b9d1-38013fb610fa', 'qavqbm1jku', 'mod'),
	('b3b59a03-1945-4c0c-a706-9e50ede78d24', 'bohdan', 'mod'),
	('80cdac4c-6ee2-413a-ac5a-7a1caadaf935', 't3kucr2rtq', 'default'),
	('9846c36e-49ca-4826-9149-81edc61036cc', 'lsyf8db4pa', 'default');
/*!40000 ALTER TABLE `MC_PERMS_players` ENABLE KEYS */;

-- Дамп структуры для таблица italent7_bot.MC_PERMS_tracks
CREATE TABLE IF NOT EXISTS `MC_PERMS_tracks` (
  `name` varchar(36) NOT NULL,
  `groups` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы italent7_bot.MC_PERMS_tracks: 0 rows
DELETE FROM `MC_PERMS_tracks`;
/*!40000 ALTER TABLE `MC_PERMS_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `MC_PERMS_tracks` ENABLE KEYS */;

-- Дамп структуры для таблица italent7_bot.MC_PERMS_user_permissions
CREATE TABLE IF NOT EXISTS `MC_PERMS_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(36) NOT NULL,
  `permission` varchar(200) NOT NULL,
  `value` tinyint(1) NOT NULL,
  `server` varchar(36) NOT NULL,
  `world` varchar(36) NOT NULL,
  `expiry` bigint(20) NOT NULL,
  `contexts` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MC_PERMS_user_permissions_uuid` (`uuid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы italent7_bot.MC_PERMS_user_permissions: 8 rows
DELETE FROM `MC_PERMS_user_permissions`;
/*!40000 ALTER TABLE `MC_PERMS_user_permissions` DISABLE KEYS */;
INSERT INTO `MC_PERMS_user_permissions` (`id`, `uuid`, `permission`, `value`, `server`, `world`, `expiry`, `contexts`) VALUES
	(9, '0509f7de-598c-4b3e-bee0-43bdea9c9a9a', 'group.default', 1, 'global', 'global', 0, '{}'),
	(10, '0509f7de-598c-4b3e-bee0-43bdea9c9a9a', 'group.adm', 1, 'global', 'global', 0, '{}'),
	(11, 'ac1bc0e3-146f-42f1-9a27-1cb57ffb73e5', 'group.mod', 1, 'global', 'global', 0, '{}'),
	(16, '5ef5eb33-3d3f-460e-92f7-565c53610c6f', 'group.adm', 1, 'global', 'global', 0, '{}'),
	(13, '43c330b8-a2d7-4276-a082-1a17b209cbff', 'group.mod', 1, 'global', 'global', 0, '{}'),
	(14, '2ffbb61f-751b-4d28-89de-267d9d556ea2', 'group.adm', 1, 'global', 'global', 0, '{}'),
	(15, 'b3b59a03-1945-4c0c-a706-9e50ede78d24', 'group.mod', 1, 'global', 'global', 0, '{}'),
	(17, '85f17fb2-6f98-4af6-b9d1-38013fb610fa', 'group.mod', 1, 'global', 'global', 0, '{}');
/*!40000 ALTER TABLE `MC_PERMS_user_permissions` ENABLE KEYS */;

-- Дамп структуры для таблица italent7_bot.MC_sessions
CREATE TABLE IF NOT EXISTS `MC_sessions` (
  `ID` text NOT NULL,
  `sID` text NOT NULL,
  `Token` text NOT NULL,
  `Created` bigint(20) NOT NULL DEFAULT '0',
  `LastUse` bigint(20) NOT NULL DEFAULT '0',
  `Type` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы italent7_bot.MC_sessions: 18 rows
DELETE FROM `MC_sessions`;
/*!40000 ALTER TABLE `MC_sessions` DISABLE KEYS */;
INSERT INTO `MC_sessions` (`ID`, `sID`, `Token`, `Created`, `LastUse`, `Type`) VALUES
	('476332365006897162', 'MByUHfgBLSBrAdh0hebue1dM91EfiSgG', 'dZwGzBMGICOyNFc2WLPPHk8tdzh6kpsb', 1594900296, 1594900296, 1),
	('276436425229205505', 'MUfsmnWxpkQWHT7r0zV3Ypp4Wres5rSn', 'WsIlMJKlWjjt9M7NpebTBapQ9GDKqBJS', 1594851190, 1594851190, 1),
	('356092004859379713', 'vkwgzWayyQTz2XAXWPSq7p89tLtKWAup', 'uEyTZCXUANkjXklYKpCMFqqbRBCmBH0m', 1602346540, 1602346540, 1),
	('335368226932523010', 'XvQoXuiMKDMxRqMceBiCupfdBz5ibmU1', 'zZUsNhpTh5bSwUJKQ9Mon10yx0CXUMS5', 1594853689, 1594853689, 1),
	('413279193313443851', 'AbEHw7eQy7RKRVeIfvWLUSeMUeMgMrcH', 'RDNG2LpKb2CeJRhmqThG1VHzD9sQy3rh', 1594912191, 1594912191, 1),
	('374249671763296256', 'sIChQQwt2dUcWxgxDUQNfl8UZo8pCjMw', 'BbsiAw1fgfqsm2xDMutMrPbOi3WOhmdL', 1594917073, 1594917073, 1),
	('387645737925738506', 'pH2AUR4qX7ABbV1HzaSKuRezjZOO7eBg', 'WgmkDHZW0qlHtjxlmtJFapMLOItRhjXd', 1594917493, 1594917493, 1),
	('292633801526607872', 'jTCWVbWMIG2Mun4rmOcouJBiduBtAwts', 'kRqj8FYf6v4R9muUZuoMu0wzXvkrnrl2', 1594963613, 1594963613, 1),
	('292633801526607872', '9RCgqUDvhLjltScO574WnZ7M9LpJdmsI', '75cTT9uckhrQtgcF51yG5lWRJa4UWzu5', 1594963613, 1594963613, 1),
	('292633801526607872', 'qcQlG1WQXvSJONQ0eF2JGzQxvgbjfylj', 'QMbRFqBIq9vlVXDkLu8S2lv4bfRsuK9c', 1594963613, 1594963613, 1),
	('292633801526607872', 'IdTP5GCPCzW8gpy8N9VVDhPw82m0MPbF', 'yCRntua3KKCxBlUveM3MRNiTMhFG0Qf0', 1594963613, 1594963613, 1),
	('292633801526607872', 'j2VjsK2Kdw2hqNMQazJbxNmokZxw1ww1', 'N37yMPtQBdzG78x5NNJcEn8JjxTBX6CP', 1594963613, 1594963613, 1),
	('292633801526607872', 'TY2VeWeIQZC0L5s4NwbiWT6aB2mruFLb', 'hqoM6yMX2hq0uLGnMjJmYLEGPhSrVxU1', 1594963613, 1594963613, 1),
	('292633801526607872', 'kilCVMMKucg2gPuOls78zL2UpFVrNvfq', 'kAsbvOj7Hg2pkN0kkmTphoh1ZqIGW1Wp', 1594963613, 1594963613, 1),
	('292633801526607872', 'XSKL1d0hLifZDu1EStFwl3Uicl8MPpuR', 'ik2nRSwdwDSxCPjgi40lzsNYQlKrSzwl', 1594963613, 1594963613, 1),
	('292633801526607872', '3FjVJ2YDCsWDPu70yrTEleCBuTN0ql0X', '0fT6Mc9T9rQQAeddwVxQZpBYRSLtSici', 1594963613, 1594963613, 1),
	('292633801526607872', '7zBQqho1EiBIeEikVGJH7G23NzKeAa6N', '5LlRuGFCx64FpOFwvNMlskLJmI28JsLA', 1594990786, 1594990786, 1),
	('215831619980886016', 'AiSqZgHr2OLBeKMczWlbaQJyLSR8JTKU', 'bgTFOjeq44gaMVciqjvfQ7hT7cAMaL3P', 1596312540, 1596312540, 1);
/*!40000 ALTER TABLE `MC_sessions` ENABLE KEYS */;

-- Дамп структуры для таблица italent7_bot.MC_users
CREATE TABLE IF NOT EXISTS `MC_users` (
  `ID` text,
  `UUID` text,
  `Nick` text,
  `MCToken` text,
  `MCExpire` bigint(20) DEFAULT '0',
  `Skin` text,
  `Cape` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы italent7_bot.MC_users: 9 rows
DELETE FROM `MC_users`;
/*!40000 ALTER TABLE `MC_users` DISABLE KEYS */;
INSERT INTO `MC_users` (`ID`, `UUID`, `Nick`, `MCToken`, `MCExpire`, `Skin`, `Cape`) VALUES
	('335368226932523010', '0509f7de598c4b3ebee043bdea9c9a9a', 'Rikonardo', 'Af8xxsMosW4BVvlBy0y5SDW7zeMZAvXM', 160234634910, 'iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAFcElEQVR42u1aTUskSRSsw8A2oqsjC3sRBhYvjRcZwevOj/AH+T+E3X/ggrBePOkweFgRFEYWvHgSwYuHEQYvtUaNUUS9fplZ1V1dbfWa8OisrMyujHjxXmZ9ZB9/+yXPImXhp3f58vJyYaiXtrBQ1otz9vilnrVUOAcY2waDwQc9jzmUc32ut3JhBaQXKQC/gK4ca1tLBCh4vT7J0GtnbZfSmwbYyLGY562Jrm9A27r2LR0nBLWmgBFvPx8vLS3l3//507U2PMJrhVQQ8nxrYWA9WgmH598QeFpbCgh5vy2lRQkoGXcSYlcEhLyfTbtUCHCS3rQJiIXCVD1vLxxa5roiwAuH9jzMrO6ARX11dbUwJLzoPsCOtf8d2CeoNz1gdhWwBFhFhMjxxmZ2IzOy6XkhQIlge0GIsxy6GyNDsM0pNsYVWGWMjGUOsHkh9J+uguwkbLzzPEkAaCXBEueZ5hELwko7lfHVo5iL59kY6BESKow6EwVY1BHPGgokxI6x+4SQAnhePZha25vuFkN7hsp2WT1Z8fzLL4CiMOMTeNFmY9rmAee3iQKaJmtvh+g5pqKY0FZTQSkB3OFZAjzPe8BDCggluHG3zKqgmAoyN/tL/eeVX6PLnJfpR5QUiGmrgEnu5EI5I5QUy2uEklmdNV5JcJdCr26WyTb37lYFoZWkklDfr6zkalYR5+fn+fHxcX50dJRfXl7mtr+1VHGToVjq/9fX1/PhcJhvbGwUZp2RGm8tScDV1VVhp6en+f7+fm0CdnZ2KtYWAQBNEvDbCQEADzs4OKhFAAB/+7yXf/vyR/7937/zx/P9koS2FEAVTJ0AhADAQ/57e3u1CUDyLBLo178KAh4eHlohgMBBRCsEpCaUsrOzs/zm5qYMFdQBlhPiKoI2mPbD2JOTk6J+cXGRX19fF+dQ5zFAUu4ETmMeUEJsv6kT8Pj4WHgWIAj+7u6uBM5ftOEc+6FgLEDe3t4WbTi+v78vjtmuSU9BKxEaEqyzb2cEsNDTCl4VoAVjAZLnrEENFrBHhEcQj2dCALxtCaACLAFUDezp6alCAFSg8W1VZdu9tk4JoIQxeTsptOGc7U8FWCJ5zgOWIkCJ6pQAglQVqPd5TkHCy1YZKFBDSgEpMjohgJMHGJWwEqCyRh+SRplbAtgXK0Ed2ccI6YwAgoOXYSEFkCSOAUh6HKYkUAGxGI8RMjYBa2trhTUhgJMnAboXIHiY9iUBJI8GhfBcCqBnjQggWDUW75w1JUDBewpgklQCNATYhyGAjdLIA9bQA9cxd5ZZHZAx0ySoBFgF0KgCu2p4ZpPgOBbZsn96vh/+lKVuX3EPoGbLYDAI2u7ubmGxPimbGgEA/8PaLVtbW3nMsnkvIaD/KwLGOfdGQN8lv729nYxzLyfoOO/41ROACeukUY8RwP52jAW/ubk50u79xto6IdC7cIosO2kLNgQspBQdY/+nkxDAhQCiSQhYQCTCtukDjnGssxxQJwRIFD1uvcV2EtGJB9tSQB3ZxeLek3RvkqB6NJUErdTV217sv3oCFECdEAjlAIZG3SX11YVAk32Al9G9nNCbEGiyEVJwnsftSoBxw+HVBxj/Z3Fx8XcY69pHz3W6E6yze4vdJXrL4tzfO3gh0HtQ9pEUXqji2wJ8Y4AXranx+orLe/3dOwLwTQHeLvOlaGq8gp8LAvBNAb8vqEOAvuj0Xn/3jgAAPzw8LH6bhkAvCJj0xYq9efHeAKsi7Lm5IUBfcduPHOx3QdoWu41OPStoZZmdlADrXQtcPa592VbnWUGMoJkTMOlz/5k/L5g1Ab3PAW8EvBEwhwQ0+b6g9wRM+n3BXBLQxHpPAG90aE3LrAn4D6X2BbY/d+tyAAAAAElFTkSuQmCC', 0),
	('276436425229205505', '5ef5eb333d3f460e92f7565c53610c6f', 'Rutukute', 'EXrWR2t73M0sG0tEwZkNcZgokcwHhwrW', 159534346310, NULL, 0),
	('476332365006897162', 'ac1bc0e3146f42f19a271cb57ffb73e5', '167tJtC68p6', 'HPigPQMDjqo1Oa83AOurbItaHh4v8SGh', 159536444810, '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', 0),
	('413279193313443851', '43c330b8a2d74276a0821a17b209cbff', 'TB8PzmVPV2', 'dyxK3spRiZl5sDoz1GyWNaBUXZN8oPmE', 159491502110, 'iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAMAAACdt4HsAAADAFBMVEUAAAB2e4f/29//29+Fa3WLb3qRdH+Ud4GYeoadf4ujhI+miJGnhpPEyNPIzNbIzdbO0tnO09nUjqnelanmnqrt1dft5+Pww8ny2N7y7uv07u71yc/17e/27vD33dz33+X38fL49vT65ur79vf8z9b80df80tf86+787vD89Pb89/f96u799/n++/z/2d3/297/4+P/5N3/5ub/5uj/6+v/7e3/7u3/9PD/9vL/+vf///8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACLOh1VAAAABHRSTlMAJzNm3iuXogAABHJJREFUeNqtV+tv2zYQP1KyK9mTU6dJUQ/bAOeFYC1SZOu++P9HgG1YgxYbNqRp/GFd3QVdgtazrciSuOORlKhXYrejE90dTf14vBfPDPRo85RDylPQNILVhmsYzlwGXHAjwroAKRdEtASwvgZm53QdBXIAAMZASC0e4f/lygAsN6LW/THRPxbrH4E0QJh7KN2ITzBiotxY0uzOI5T9D2vGg4t7Mb0h03srOZ83VnIgqcI5LS7Nz+V6Rg8jaxqblZ0UPd1elgF4thk8pD97c5Zr4HmML1jIPK8CQPbGR/wW4G0MmWwoDR/ZECWUOyWAlNY+iWOHbW8zJ46fSFmkal6kbV85KZ0DzGFO8wjYVvN+28U1jpC2/v7Vl7DY/wkiKWM4CEOl8aywMLKmjsMEBtA/wPrbAJvhe3YlZSaAKRq54sbFT9JOpCeiBIXQYTeJnicrBW7sonGSy1JtuCcS3MVhUz1/xNMOJD83JVPNaB1NIfg982Qhy/nOhZxoANhyIb5COqW/28bqid+wmgV0kFhpErtxLFAvvik1SAEtYHLiUDld+/4lPnYBXuMRDlX669Ptwa8bcA3sPszvXwP0kLcTYu5Z5EIZ0SFyGJl82Q/hA7B4JtqYDRuSl3nBDkP5/WxmKT8kDPdv+0ADgFf7ck/Pi7FIg9xJhgSwswOVEvQMiYyHY6lBqF5N6ClnviB/fdh4I/aI15lOsbj1Jy37eqryRM65QwUwMRqcAnwHL3osmHR6QLxaIAsdRJvERyTsit3XCKDehJkF8xytj87ZNrwqHPRcWrw24qCkwbuPUrvracDSq2octCD35pAQqhpIxUU/6ruB2oaCR6TQcG+5fTLuZGB0I+bYWqHqwrOkqagqxwzOiXQHcHqMhjs97kBgAGRdePb8KflqaRtkR5qBDWw34hf/EuxX+HijsnBJodz6trDsR3WZ4smYFUSTGg09COtuEyHTGS2U3pmNYd37KqrGFHfrpXMJRXwewA5+8nqg6k5gmFWKS8GIge4O9Ov+8QmMTlWL4IU+LLyqKbQRdU2c1rQdTHmgeMVZQ6fzSEkn9BwR4wE7kYxnwCTAEfnkjKYOvJeZEeuG53XpOlZSF/wudMFskBHO93jmgtGoSOX6B1tVgIINuCMBWG30OVbt6858PuvOmoxYjAOjwWot1rh6tZ1AFUA0Ig7zu2Y0LH61qNSDOoCLZuX8gkV8vzYSHfxkqTwo0rJbV2l17XrQxzvSdyCbwL5gCpu/fMbtnP5f1/snA/C7bIB1AHRd6KPLWOzo6pk435T7gnJZ75Gvr7UY9NSb+1rWfUOhL2jygh5PdZ+gq330PssueX39ddtPHrsFz5kHeUOAEaEBDnSfcJYDjEwetNVpz6liovgubwhMe4CMrj9nNUf4oaCB/oXQ0tLyxYpHaDrSsuk30+NM/u2yLgQ+liZHefpXjvCIyqHJv8U8tTVILhs0GE3GxVtrriuqP+/WHek2DR6qftOMc1hJg0HWI03yagdWCKnu7KpGmf8ADWKdUlAuDycAAAAASUVORK5CYII=', 0),
	('374249671763296256', '2ffbb61f751b4d2889de267d9d556ea2', 'Ommkf9RQaQ', '2DD5UtUcTyL3O8P8SPavpr5cobzIjVFX', 159491708110, NULL, 0),
	('387645737925738506', '85f17fb26f984af6b9d138013fb610fa', 'QaVqbM1JKU', 'OtVYulNOmJWOpo2O5IuKeIgHM0oE5gG6', 159692221010, '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', 0),
	('292633801526607872', 'b3b59a0319454c0ca7069e50ede78d24', 'Bohdan', 'qfE1Zaryge5XcLp5cRkSywljXEDeHUdq', 159540318110, 'iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAADbklEQVR42u2aS2/aQBDHfanEmQvvt8Q7BFECVKjpIainKMo1as8hlao0B6p+xkp8jnyNyYyFU1ivvWvv2rB0Lf0VWBvH8/PszNg7DgA4YZp/cCBM8PdPuATnFwk38AQ7OQHi7Ree3wQAEGAs7zM7dhYADgwK8QCuV6gCEP6DhAFAiItLTQnTPUAGUKx9ZwNAdYpZAP87gH1jKHCIDBYp6jlkg5YPvETQlKkTHN6FqBgf9Ry+nB7BC2XSprCO4F2ICgCIAUCmcJGFICyM4njA/pzW7QEQMW8LvUBQN/j+hgU27/Pr66tvnMb2jxHBkQIQMYAFxgIOAGAUCCAgkvvB0MY5Nm7cgBgAolSvoVNAmMpiKk4QVClrg+JAaBBMynhZOQpTIOrzCzcNsj+u1+vQaDRcVatVd66TttutK1n6EDDvVJ/efOdVLLx8A7VaDfZFW1QAvKdExwIwEECr1Yo/BdgLO1UArMF1/EtxgOZ/uVyGQqHwrnw+DxUco2NoX7PZlHpZ4kR8i8MLXLElAkBG93o96HQ6cDEYwKDfhxoaX6lUoFQqHQAglYpFKON4u92Gbrcbmm4gYIxT/nK3VABMx2OYMCLjyAOKaCzddRZCC+88AaNjtQL4d9HpAfixXsPm5QV+bzawfnyE+7s7+DSfu2mQAORyuQPj6e6T1yzwmC/X1/oA+C88HQCj4RCG6PaeBrvpQHGAALB33wWAHkC/IzlRn7/D5jkDIhUA89kMlng3l4sFzKZTmE4m0EcIngf4YgACoH2fl0uYXV3p8QDG9VMF8O3hAX4+PcGv52f4jp+/rlYwvrx0jeQFQVIDveP+9hZWNzf6AaTtAS009IJcHyN6F4NfE79TeqMsUERjeV5AqXCAGaOPvzM+BoxHI9ftP6IoBXrz36sBuKlwFwhpqhifBVSKFNFjp446gG4Eq2w2C5lM5l30nTdGx8YC4NX/pwBA+ZFbBMB9tbXb2LrfU9i4jjSotPaoCuDUFy6OvjJkAVgAFoAFYAFYABaABWABWAAWgAVgAVgAFoBQqv0Fuhc/UwegurxuAZwTgDj9BcYBUO0vSPq9f+IAdPQXGA1AR3+B0QB09BcYDUC1v8B4ADr6C4wGoKO/wOwsoKG/wGgAOvoLjAag2l+Q9Pr/UQBE6i9IePk7cQCq/QXHBvAGpsJpxixG5tkAAAAASUVORK5CYII=', 0),
	('215831619980886016', '80cdac4c6ee2413aac5a7a1caadaf935', 't3kuCR2Rtq', 'ESmB9iSvZdE99Vyo4RaMl4sDU6efDZRo', 159640119810, NULL, 0),
	('356092004859379713', '9846c36e49ca4826914981edc61036cc', 'LSyF8dB4Pa', 'jjCyfwIz9xdwr1uRWhCVwyJCiAiGUtca', 160246115910, NULL, 0);
/*!40000 ALTER TABLE `MC_users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
