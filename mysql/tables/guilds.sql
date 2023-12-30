CREATE TABLE `guilds`
(
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL UNIQUE,
  `leader` int(11) UNSIGNED NULL UNIQUE,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`leader`) REFERENCES `players`(id) ON DELETE SET NULL ON UPDATE CASCADE
);