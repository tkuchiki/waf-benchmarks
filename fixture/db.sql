CREATE DATABASE IF NOT EXISTS benchmark DEFAULT CHARACTER SET utf8;
GRANT ALL PRIVILEGES ON benchmark.* TO benchmark@localhost IDENTIFIED BY 'benchmark' WITH GRANT OPTION;

DROP TABLE IF EXISTS `benchmark`.`users`;

CREATE TABLE `benchmark`.`users` (
  `id` int(11) NOT NULL auto_increment,
  `name` VARCHAR(64) default NULL,
  `created_at` DATETIME default NULL,
  `updated_at` DATETIME default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `benchmark`.`users` (name, created_at, updated_at) VALUES
('user1', NOW(), NOW()),
('user2', NOW() + INTERVAL -1 DAY, NOW() + INTERVAL -1 DAY),
('user3', NOW() + INTERVAL -2 DAY, NOW() + INTERVAL -2 DAY),
('user4', NOW() + INTERVAL -3 DAY, NOW() + INTERVAL -3 DAY),
('user5', NOW() + INTERVAL -4 DAY, NOW() + INTERVAL -4 DAY),
('user6', NOW() + INTERVAL -5 DAY, NOW() + INTERVAL -5 DAY),
('user7', NOW() + INTERVAL -6 DAY, NOW() + INTERVAL -6 DAY),
('user8', NOW() + INTERVAL -7 DAY, NOW() + INTERVAL -7 DAY),
('user9', NOW() + INTERVAL -8 DAY, NOW() + INTERVAL -8 DAY),
('user10', NOW() + INTERVAL -9 DAY, NOW() + INTERVAL -9 DAY);