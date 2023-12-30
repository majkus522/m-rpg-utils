CREATE DATABASE `m-rpg`;

USE `m-rpg`;

CREATE TABLE `players`
(
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL UNIQUE,
  `email` varchar(320) NOT NULL UNIQUE,
  `password` text NOT NULL,
  `level` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `exp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `money` float NOT NULL DEFAULT 0,
  `clazz` enum('warrior','archer','mage','tank', 'sorcerer', 'warlock') DEFAULT NULL,
  `str` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `agl` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `chr` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `intl` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `def` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `vtl` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `dex` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `guild` int(11) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `fake-status`
(
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `player` int(11) UNSIGNED NOT NULL UNIQUE,
  `level` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `money` float NOT NULL DEFAULT 0,
  `clazz` enum('warrior','archer','mage','tank', 'sorcerer', 'warlock') DEFAULT NULL,
  `str` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `agl` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `chr` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `intl` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `def` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `vtl` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `dex` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`player`) REFERENCES `players`(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `guilds`
(
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL UNIQUE,
  `leader` int(11) UNSIGNED NULL UNIQUE,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`leader`) REFERENCES `players`(id) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE `password-recovery`
(
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `player` int(11) UNSIGNED NOT NULL,
  `code` text NOT NULL UNIQUE,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  FOREIGN KEY (`player`) REFERENCES `players`(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `players-sessions`
(
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `player` int(11) UNSIGNED NOT NULL,
  `type` varchar(7) NOT NULL,
  `key` text NOT NULL,
  `temp` tinyint(1) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`player`) REFERENCES `players`(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `skills`
(
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `player` int(11) UNSIGNED NOT NULL,
  `skill` varchar(35) NOT NULL,
  `toggle` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`player`) REFERENCES `players`(id) ON DELETE CASCADE ON UPDATE CASCADE
);

ALTER TABLE `players` ADD FOREIGN KEY (`guild`) REFERENCES `guilds`(id) ON DELETE SET NULL ON UPDATE CASCADE;

CREATE VIEW `view-players` AS SELECT
    `players`.`id` AS `id`,
    `players`.`username` AS `username`,
    `players`.`email` AS `email`,
    `players`.`level` AS `level`,
    `players`.`exp` AS `exp`,
    `players`.`money` AS `money`,
    `players`.`clazz` AS `clazz`,
    `players`.`str` AS `str`,
    `players`.`agl` AS `agl`,
    `players`.`chr` AS `chr`,
    `players`.`intl` AS `intl`,
    `players`.`def` AS `def`,
    `players`.`vtl` AS `vtl`,
    `players`.`dex` AS `dex`,
    `guilds`.`slug` AS `guild`
FROM `players`
LEFT JOIN `guilds` ON `guilds`.`id` = `players`.`guild`;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `json_property`(`root` TEXT CHARSET utf8, `file` TEXT CHARSET utf8, `property` TEXT CHARSET utf8) RETURNS TEXT CHARSET utf8 COLLATE utf8_bin
    DETERMINISTIC
begin
    return replace(json_extract(convert(LOAD_FILE(concat(root, "/", file, ".json")) using utf8mb4), concat("$.", property)), '"', "");
end$$
DELIMITER ;