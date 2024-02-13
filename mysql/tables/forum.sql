CREATE TABLE `forum`
(
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `player` int(11) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `master` int(11) UNSIGNED NULL DEFAULT NULL,
  `title` text NULL,
  `slug` text NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`player`) REFERENCES `players`(id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`master`) REFERENCES `forum`(id) ON DELETE CASCADE ON UPDATE CASCADE
);