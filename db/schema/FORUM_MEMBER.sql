DROP TABLE IF EXISTS `MEMBER`;

CREATE TABLE `MEMBER` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(30) NOT NULL DEFAULT '',
  `PASSWORD` char(60) NOT NULL DEFAULT '',
  `EMAIL` varchar(30) NOT NULL DEFAULT '',
  `CREATE_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `PASSWORD_UPDATE_DATE` datetime DEFAULT NULL,
  `IS_ADMIN` char(1) NOT NULL DEFAULT 'N',
  `TOKEN_INVALID_DATE` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;