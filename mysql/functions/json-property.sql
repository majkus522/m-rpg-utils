DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `json_property`(`root` TEXT CHARSET utf8, `file` TEXT CHARSET utf8, `property` TEXT CHARSET utf8) RETURNS TEXT CHARSET utf8 COLLATE utf8_bin
    DETERMINISTIC
begin
    return replace(json_extract(convert(LOAD_FILE(concat(root, "/", file, ".json")) using utf8mb4), concat("$.", property)), '"', "");
end$$
DELIMITER;