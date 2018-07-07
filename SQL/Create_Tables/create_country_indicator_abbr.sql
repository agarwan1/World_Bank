CREATE TABLE `country_indicator_abbr` (
  `country_indicator_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `indicator_code` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `indicator_id` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `indicator_value` double DEFAULT NULL,
  PRIMARY KEY (`country_indicator_id`),
  KEY `idx1_country_code` (`country_code`),
  KEY `idx2_indicator_code` (`indicator_code`)
) ENGINE=InnoDB AUTO_INCREMENT=5341098 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;