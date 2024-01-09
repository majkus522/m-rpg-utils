CREATE TABLE `players-sessions`
(
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `player` int(11) UNSIGNED NOT NULL,
  `key` text NOT NULL,
  `date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`player`) REFERENCES `players`(id) ON DELETE CASCADE ON UPDATE CASCADE
);