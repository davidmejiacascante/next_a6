CREATE DATABASE  IF NOT EXISTS `core` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `core`;
-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: core
-- ------------------------------------------------------
-- Server version	9.6.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

#SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '3548b856-04f3-11f1-a49e-74563cb7704b:1-722351';

--
-- Table structure for table `cbi_answers`
--

DROP TABLE IF EXISTS `cbi_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cbi_answers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `value` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `1_UNIQUE` (`id`),
  UNIQUE KEY `value_UNIQUE` (`name`),
  CONSTRAINT `fk_answers_questions` FOREIGN KEY (`id`) REFERENCES `cbi_questions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Possible answer for CBI survey';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cbi_questions`
--

DROP TABLE IF EXISTS `cbi_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cbi_questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(500) COLLATE utf8mb3_bin NOT NULL,
  `category` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `question_UNIQUE` (`question`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Questions for the CBI survey';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cbi_results`
--

DROP TABLE IF EXISTS `cbi_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cbi_results` (
  `id` int NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `cbi1` int NOT NULL,
  `cbi2` int NOT NULL,
  `cbi3` int NOT NULL,
  `cbi4` int NOT NULL,
  `cbi5` int NOT NULL,
  `cbi6` int NOT NULL,
  `cbi7` int NOT NULL,
  `cbi8` int NOT NULL,
  `cbi9` int NOT NULL,
  `cbi10` int NOT NULL,
  `cbi11` int NOT NULL,
  `cbi12` int NOT NULL,
  `cbi13` int NOT NULL,
  `cbi14` int NOT NULL,
  `cbi15` int NOT NULL,
  `cbi16` int NOT NULL,
  `cbi17` int NOT NULL,
  `cbi18` int NOT NULL,
  `cbi19` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ib_UNIQUE` (`id`),
  KEY `fk_cbi_employee` (`emp_id`),
  KEY `fk_cbi_cbi1` (`cbi1`),
  KEY `fk_cbi_cbi2` (`cbi2`),
  KEY `fk_cbi_cbi3` (`cbi3`),
  KEY `fk_cbi_cbi4` (`cbi4`),
  KEY `fk_cbi_cbi5` (`cbi5`),
  KEY `fk_cbi_cbi6` (`cbi6`),
  KEY `fk_cbi_cbi7` (`cbi7`),
  KEY `fk_cbi_cbi8` (`cbi8`),
  KEY `fk_cbi_cbi9` (`cbi9`),
  KEY `fk_cbi_cbi10` (`cbi10`),
  KEY `fk_cbi_cbi11` (`cbi11`),
  KEY `fk_cbi_cbi12` (`cbi12`),
  KEY `fk_cbi_cbi13` (`cbi13`),
  KEY `fk_cbi_cbi14` (`cbi14`),
  KEY `fk_cbi_cbi15` (`cbi15`),
  KEY `fk_cbi_cbi16` (`cbi16`),
  KEY `fk_cbi_cbi17` (`cbi17`),
  KEY `fk_cbi_cbi18` (`cbi18`),
  KEY `fk_cbi_cbi19` (`cbi19`),
  CONSTRAINT `fk_cbi_cbi1` FOREIGN KEY (`cbi1`) REFERENCES `cbi_answers` (`id`),
  CONSTRAINT `fk_cbi_cbi10` FOREIGN KEY (`cbi10`) REFERENCES `cbi_answers` (`id`),
  CONSTRAINT `fk_cbi_cbi11` FOREIGN KEY (`cbi11`) REFERENCES `cbi_answers` (`id`),
  CONSTRAINT `fk_cbi_cbi12` FOREIGN KEY (`cbi12`) REFERENCES `cbi_answers` (`id`),
  CONSTRAINT `fk_cbi_cbi13` FOREIGN KEY (`cbi13`) REFERENCES `cbi_answers` (`id`),
  CONSTRAINT `fk_cbi_cbi14` FOREIGN KEY (`cbi14`) REFERENCES `cbi_answers` (`id`),
  CONSTRAINT `fk_cbi_cbi15` FOREIGN KEY (`cbi15`) REFERENCES `cbi_answers` (`id`),
  CONSTRAINT `fk_cbi_cbi16` FOREIGN KEY (`cbi16`) REFERENCES `cbi_answers` (`id`),
  CONSTRAINT `fk_cbi_cbi17` FOREIGN KEY (`cbi17`) REFERENCES `cbi_answers` (`id`),
  CONSTRAINT `fk_cbi_cbi18` FOREIGN KEY (`cbi18`) REFERENCES `cbi_answers` (`id`),
  CONSTRAINT `fk_cbi_cbi19` FOREIGN KEY (`cbi19`) REFERENCES `cbi_answers` (`id`),
  CONSTRAINT `fk_cbi_cbi2` FOREIGN KEY (`cbi2`) REFERENCES `cbi_answers` (`id`),
  CONSTRAINT `fk_cbi_cbi3` FOREIGN KEY (`cbi3`) REFERENCES `cbi_answers` (`id`),
  CONSTRAINT `fk_cbi_cbi4` FOREIGN KEY (`cbi4`) REFERENCES `cbi_answers` (`id`),
  CONSTRAINT `fk_cbi_cbi5` FOREIGN KEY (`cbi5`) REFERENCES `cbi_answers` (`id`),
  CONSTRAINT `fk_cbi_cbi6` FOREIGN KEY (`cbi6`) REFERENCES `cbi_answers` (`id`),
  CONSTRAINT `fk_cbi_cbi7` FOREIGN KEY (`cbi7`) REFERENCES `cbi_answers` (`id`),
  CONSTRAINT `fk_cbi_cbi8` FOREIGN KEY (`cbi8`) REFERENCES `cbi_answers` (`id`),
  CONSTRAINT `fk_cbi_cbi9` FOREIGN KEY (`cbi9`) REFERENCES `cbi_answers` (`id`),
  CONSTRAINT `fk_cbi_employee` FOREIGN KEY (`emp_id`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6721 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Survey results December 2025';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Company departments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `job_title` int NOT NULL,
  `department` int NOT NULL,
  `start_date` date NOT NULL,
  `location` int NOT NULL,
  `salary` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_emp_title` (`job_title`),
  KEY `fk_emp_department` (`department`),
  KEY `fk_emp_location` (`location`),
  CONSTRAINT `fk_emp_department` FOREIGN KEY (`department`) REFERENCES `department` (`id`),
  CONSTRAINT `fk_emp_location` FOREIGN KEY (`location`) REFERENCES `work_type` (`id`),
  CONSTRAINT `fk_emp_title` FOREIGN KEY (`job_title`) REFERENCES `job_titles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Company employees';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `history_operation`
--

DROP TABLE IF EXISTS `history_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `history_operation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(11) COLLATE utf8mb3_bin NOT NULL,
  `year` int NOT NULL,
  `month` int NOT NULL,
  `hours_normal` int NOT NULL,
  `hours_extra` int NOT NULL,
  `absence` int NOT NULL,
  `absence_unapprove` int NOT NULL,
  `lateness` int NOT NULL,
  `rating` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_ho_emp` (`emp_id`),
  KEY `fk_ho_rating` (`rating`),
  CONSTRAINT `fk_ho_emp` FOREIGN KEY (`emp_id`) REFERENCES `employees` (`id`),
  CONSTRAINT `fk_ho_rating` FOREIGN KEY (`rating`) REFERENCES `rating` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84001 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Operating history';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `history_performance`
--

DROP TABLE IF EXISTS `history_performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `history_performance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(11) COLLATE utf8mb3_bin NOT NULL,
  `year` int NOT NULL,
  `month` int NOT NULL,
  `feedback_clients` int NOT NULL,
  `recognition` int NOT NULL,
  `help_manager` int NOT NULL,
  `help_team` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_hp_emp` (`emp_id`),
  CONSTRAINT `fk_hp_emp` FOREIGN KEY (`emp_id`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70561 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Performance History';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `job_titles`
--

DROP TABLE IF EXISTS `job_titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_titles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Employee Job Titles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `description_UNIQUE` (`description`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Employee performance ratings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `view_cbi_by_category_by_department`
--

DROP TABLE IF EXISTS `view_cbi_by_category_by_department`;
/*!50001 DROP VIEW IF EXISTS `view_cbi_by_category_by_department`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_cbi_by_category_by_department` AS SELECT 
 1 AS `Nombre`,
 1 AS `Personal(1-6)`,
 1 AS `Trabajo(7-13)`,
 1 AS `Clientes(14-19)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_cbi_resultados`
--

DROP TABLE IF EXISTS `view_cbi_resultados`;
/*!50001 DROP VIEW IF EXISTS `view_cbi_resultados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_cbi_resultados` AS SELECT 
 1 AS `EMP_ID`,
 1 AS `CBI1`,
 1 AS `CBI2`,
 1 AS `CBI3`,
 1 AS `CBI4`,
 1 AS `CBI5`,
 1 AS `CBI6`,
 1 AS `CBI7`,
 1 AS `CBI8`,
 1 AS `CBI9`,
 1 AS `CBI10`,
 1 AS `CBI11`,
 1 AS `CBI12`,
 1 AS `CBI13`,
 1 AS `CBI14`,
 1 AS `CBI15`,
 1 AS `CBI16`,
 1 AS `CBI17`,
 1 AS `CBI18`,
 1 AS `CBI19`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_employees_by_department`
--

DROP TABLE IF EXISTS `view_employees_by_department`;
/*!50001 DROP VIEW IF EXISTS `view_employees_by_department`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_employees_by_department` AS SELECT 
 1 AS `Nombre`,
 1 AS `Empleados_totales`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_operation_by_department`
--

DROP TABLE IF EXISTS `view_operation_by_department`;
/*!50001 DROP VIEW IF EXISTS `view_operation_by_department`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_operation_by_department` AS SELECT 
 1 AS `department`,
 1 AS `Horas_promedio`,
 1 AS `Horas_extra_promedio`,
 1 AS `Ausencias_totales`,
 1 AS `Ausencias_no_justificadas`,
 1 AS `Llegadas_tardias`,
 1 AS `Desempeno_promedio`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `work_type`
--

DROP TABLE IF EXISTS `work_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `description_UNIQUE` (`description`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Work type modality';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'core'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_desempeno_empleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_desempeno_empleado`(IN codigo VARCHAR(11))
BEGIN

SELECT ho.emp_id AS Empleado,
    ROUND(AVG(ho.hours_normal),1) AS Horas_Trabajo,
    ROUND(AVG(ho.hours_extra),1) AS Horas_Extra,
    ROUND(AVG(ho.absence),1) AS Ausencias,
    ROUND(AVG(ho.absence_unapprove),1) AS Faltas,
    ROUND(AVG(ho.lateness),1) AS Tardias,
    ROUND(AVG(ho.rating),1) AS Rating,
    ROUND(AVG(hp.feedback_clients),1) AS Retroalimentacion,
    ROUND(AVG(hp.recognition),1) AS Reconocimientos,
    ROUND(AVG(hp.help_manager),1) AS Ayuda_al_Jefe,
    ROUND(AVG(hp.help_team),1) AS Ayuda_al_Equipo,
    ROUND(AVG(cbi.cbi1 + cbi.cbi2 + cbi.cbi3 + cbi.cbi4 + cbi.cbi5 + cbi.cbi6), 1) AS CBI_Personal,
	ROUND(AVG(cbi.cbi7 + cbi.cbi8 + cbi.cbi9 + cbi.cbi10 + cbi.cbi11 + cbi.cbi12 + cbi.cbi13), 1) AS CBI_Trabajo,
	ROUND(AVG(cbi.cbi14 + cbi.cbi15 + cbi.cbi16 + cbi.cbi17 + cbi.cbi18 + cbi.cbi19), 1) AS CBI_Clientes
FROM history_operation AS ho
INNER JOIN history_performance as hp
ON ho.emp_id = hp.emp_id
INNER JOIN cbi_results AS cbi
ON ho.emp_id = cbi.emp_id
WHERE ho.emp_id = codigo
GROUP BY ho.emp_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_desempeno_empleado_breakdown` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_desempeno_empleado_breakdown`(IN emp_id VARCHAR(11))
BEGIN

SELECT 
	t1.year as 'Year', 
    t1.month as 'Month', 
    t1.hours_normal as 'Horas normales', 
    t1.hours_extra as 'Horas extra', 
    t1.absence as 'Ausencias justificadas', 
    t1.absence_unapprove as 'Ausencias no justificadas', 
    t1.lateness as 'Llegadas tardias', 
    t1.rating as 'Desempeño', 
    t2.feedback_clients as 'Feedback de clientes', 
    t2.recognition as 'Menciones especiales', 
    t2.help_manager as 'Ayuda a la gerencia', 
    t2.help_team as 'Ayuda al equipo'
FROM history_operation t1
INNER JOIN history_performance AS t2
ON t1.emp_id = t2.emp_id
	AND t1.year = t2.year
	AND t1.month = t2.month
WHERE t1.emp_id = emp_id
ORDER BY t1.month
AND t1.year desc;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `view_cbi_by_category_by_department`
--

/*!50001 DROP VIEW IF EXISTS `view_cbi_by_category_by_department`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_cbi_by_category_by_department` AS select `d`.`name` AS `Nombre`,round(avg((((((`e`.`cbi1` + `e`.`cbi2`) + `e`.`cbi3`) + `e`.`cbi4`) + `e`.`cbi5`) + `e`.`cbi6`)),1) AS `Personal(1-6)`,round(avg(((((((`e`.`cbi7` + `e`.`cbi8`) + `e`.`cbi9`) + `e`.`cbi10`) + `e`.`cbi11`) + `e`.`cbi12`) + `e`.`cbi13`)),1) AS `Trabajo(7-13)`,round(avg((((((`e`.`cbi14` + `e`.`cbi15`) + `e`.`cbi16`) + `e`.`cbi17`) + `e`.`cbi18`) + `e`.`cbi19`)),1) AS `Clientes(14-19)` from ((`cbi_results` `e` join `employees` `p` on((`e`.`emp_id` = `p`.`id`))) join `department` `d` on((`p`.`department` = `d`.`id`))) group by `d`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_cbi_resultados`
--

/*!50001 DROP VIEW IF EXISTS `view_cbi_resultados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_cbi_resultados` AS select `r`.`emp_id` AS `EMP_ID`,`a1`.`name` AS `CBI1`,`a2`.`name` AS `CBI2`,`a3`.`name` AS `CBI3`,`a4`.`name` AS `CBI4`,`a5`.`name` AS `CBI5`,`a6`.`name` AS `CBI6`,`a7`.`name` AS `CBI7`,`a8`.`name` AS `CBI8`,`a9`.`name` AS `CBI9`,`a10`.`name` AS `CBI10`,`a11`.`name` AS `CBI11`,`a12`.`name` AS `CBI12`,`a13`.`name` AS `CBI13`,`a14`.`name` AS `CBI14`,`a15`.`name` AS `CBI15`,`a16`.`name` AS `CBI16`,`a17`.`name` AS `CBI17`,`a18`.`name` AS `CBI18`,`a19`.`name` AS `CBI19` from (((((((((((((((((((`cbi_results` `r` left join `cbi_answers` `a1` on((`r`.`cbi1` = `a1`.`id`))) left join `cbi_answers` `a2` on((`r`.`cbi1` = `a2`.`id`))) left join `cbi_answers` `a3` on((`r`.`cbi1` = `a3`.`id`))) left join `cbi_answers` `a4` on((`r`.`cbi1` = `a4`.`id`))) left join `cbi_answers` `a5` on((`r`.`cbi1` = `a5`.`id`))) left join `cbi_answers` `a6` on((`r`.`cbi1` = `a6`.`id`))) left join `cbi_answers` `a7` on((`r`.`cbi1` = `a7`.`id`))) left join `cbi_answers` `a8` on((`r`.`cbi1` = `a8`.`id`))) left join `cbi_answers` `a9` on((`r`.`cbi1` = `a9`.`id`))) left join `cbi_answers` `a10` on((`r`.`cbi1` = `a10`.`id`))) left join `cbi_answers` `a11` on((`r`.`cbi1` = `a11`.`id`))) left join `cbi_answers` `a12` on((`r`.`cbi1` = `a12`.`id`))) left join `cbi_answers` `a13` on((`r`.`cbi1` = `a13`.`id`))) left join `cbi_answers` `a14` on((`r`.`cbi1` = `a14`.`id`))) left join `cbi_answers` `a15` on((`r`.`cbi1` = `a15`.`id`))) left join `cbi_answers` `a16` on((`r`.`cbi1` = `a16`.`id`))) left join `cbi_answers` `a17` on((`r`.`cbi1` = `a17`.`id`))) left join `cbi_answers` `a18` on((`r`.`cbi1` = `a18`.`id`))) left join `cbi_answers` `a19` on((`r`.`cbi1` = `a19`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_employees_by_department`
--

/*!50001 DROP VIEW IF EXISTS `view_employees_by_department`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_employees_by_department` AS select `d`.`name` AS `Nombre`,count(`p`.`id`) AS `Empleados_totales` from (`department` `d` left join `employees` `p` on((`p`.`department` = `d`.`id`))) group by `d`.`name` order by `d`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_operation_by_department`
--

/*!50001 DROP VIEW IF EXISTS `view_operation_by_department`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_operation_by_department` AS select `d`.`name` AS `department`,round(avg(`h`.`hours_normal`),2) AS `Horas_promedio`,round(avg(`h`.`hours_extra`),2) AS `Horas_extra_promedio`,sum(`h`.`absence`) AS `Ausencias_totales`,sum(`h`.`absence_unapprove`) AS `Ausencias_no_justificadas`,sum(`h`.`lateness`) AS `Llegadas_tardias`,round(avg(`h`.`rating`),2) AS `Desempeno_promedio` from ((`department` `d` join `employees` `p` on((`d`.`id` = `p`.`department`))) join `history_operation` `h` on((`p`.`id` = `h`.`emp_id`))) group by `d`.`name` order by `d`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-26  7:50:48
