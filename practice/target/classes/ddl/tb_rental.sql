CREATE TABLE `tb_rental` (
  `rental_idx` int(11) NOT NULL AUTO_INCREMENT,
  `car_idx` int(11) DEFAULT NULL,
  `user_idx` int(11) DEFAULT NULL,
  `rentalDate` date DEFAULT NULL,
  `dueDate` date DEFAULT NULL,
  `fee` int(11) DEFAULT NULL,
  PRIMARY KEY (`rental_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
