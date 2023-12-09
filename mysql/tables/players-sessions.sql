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