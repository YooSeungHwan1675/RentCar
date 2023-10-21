CREATE TABLE `tb_car` (
  `car_idx` int(11) NOT NULL AUTO_INCREMENT COMMENT '차량 식별자',
  `carInfo_idx` int(11) NOT NULL COMMENT '차량정보',
  `carNumber` varchar(100) NOT NULL COMMENT '차량번호',
  `year` varchar(100) NOT NULL COMMENT '연식',
  `status` varchar(100) NOT NULL DEFAULT '''입고''' COMMENT '대기, 출고, 정비',
  `fee` int(11) NOT NULL,
  PRIMARY KEY (`car_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8
