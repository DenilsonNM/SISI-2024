-- CREATE DATABASE bd_deportes2; 

-- use bd_deportes2; 

CREATE TABLE `deportes` (
  `id` int(3) NOT NULL,
  `Nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `detalle_deportes` (
  `id_deporte` int(3) NOT NULL,
	`consecutivo` int(3) NOT NULL,
  `dia` varchar(15) NOT NULL,
  `horario` varchar(15) NOT NULL,
  `lugar` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

ALTER TABLE `deportes`
  ADD PRIMARY KEY (`id`);
  
  
  ALTER TABLE `detalle_deportes`
  ADD PRIMARY KEY (`consecutivo`),
  ADD KEY `id_deporte` (`id_deporte`);
  
  
  ALTER TABLE `deportes`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
  
  
  ALTER TABLE `detalle_deportes`
  MODIFY `consecutivo` int(3) NOT NULL AUTO_INCREMENT;
  
  
  ALTER TABLE `detalle_deportes`
  ADD CONSTRAINT `detalle_deportes_ibfk_1` FOREIGN KEY (`id_deporte`) REFERENCES `deportes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
	COMMIT;
    
--  select *from deportes; 

-- select*from detalle_deportes;   
    
