CREATE TABLE `guilds`
(
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `leader` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`leader`) REFERENCES `players`(id) ON DELETE CASCADE ON UPDATE CASCADE
);