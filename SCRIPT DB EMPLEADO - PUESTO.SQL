CREATE TABLE `empleados` (
  `id_empleado` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(20) DEFAULT NULL,
  `nombres` varchar(60) DEFAULT NULL,
  `apellidos` varchar(60) DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `telefono` varchar(8) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `id_puesto` int DEFAULT NULL,
  `DPI` varchar(13) DEFAULT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `FechaIngresoRegistro` datetime DEFAULT NULL,
  PRIMARY KEY (`id_empleado`),
  KEY `fk_id_puesto_puestos_idx` (`id_puesto`),
  CONSTRAINT `fk_id_puesto_puestos` FOREIGN KEY (`id_puesto`) REFERENCES `puestos` (`id_puesto`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci