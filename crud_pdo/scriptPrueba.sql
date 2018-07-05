CREATE DATABASE IF NOT EXISTS `crud`;
USE `crud`;

CREATE TABLE IF NOT EXISTS `solicitud`(
 `id` int NOT NULL AUTO_INCREMENT,
  `nombre`varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellido`varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `registro` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=11 ; 


CREATE TABLE IF NOT EXISTS `producto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `marca` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `volumen` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio` varchar(6) COLLATE utf8_spanish_ci DEFAULT NULL,
  `empaque` varchar(6) COLLATE utf8_spanish_ci DEFAULT NULL,
  `registro` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=11 ; 

INSERT INTO `solicitud` (`id`, `nombre`, `apellido`,`email`, `registro`) VALUES
(1, 'Isra', 'Aldaz','israel965@yahoo.es', '2013-02-23'),
(2, 'Andrés','Lopez', 'andres@mail.com', '2013-02-23'),
(3, 'Manuel', 'Alvaro','manuel@mail.com', '2013-02-23'),
(4, 'Vanessa','Mejia', 'vanessa@mail.com', '2013-02-23'),
(5, 'Enrrique', 'segobiano','sonia@mail.com', '2013-02-23');

INSERT INTO `producto` (`id`, `marca`, `volumen`,`precio`,`empaque`, `registro`) VALUES
(1, 'CocaCola', '50ml','5.50', '2X3', '2013-02-23'),
(2, 'Sprite','100ml', '5.15', '2X3','2013-02-23'),
(3, 'Pepsi', '200ml','8.50', '5X3','2013-02-23'),
(4, 'Fanta','50ml', '5.25', '4X3','2013-02-23'),
(5, 'CocaCola', '200ml','10.00', '2X3','2013-02-23');
