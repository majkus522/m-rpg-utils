CREATE TABLE `players`
(
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `email` varchar(320) NOT NULL,
  `password` text NOT NULL,
  `level` int(11) NOT NULL DEFAULT 1,
  `exp` int(11) NOT NULL DEFAULT 0,
  `money` float NOT NULL DEFAULT 0,
  `clazz` enum('warrior','archer','mage','tank', 'sorcerer', 'warlock') DEFAULT NULL,
  `str` int(11) NOT NULL DEFAULT 1,
  `agl` int(11) NOT NULL DEFAULT 1,
  `chr` int(11) NOT NULL DEFAULT 1,
  `intl` int(11) NOT NULL DEFAULT 1,
  `def` int(11) NOT NULL DEFAULT 1,
  `vtl` int(11) NOT NULL DEFAULT 1,
  `dex` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
);