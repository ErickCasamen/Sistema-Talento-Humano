-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: talento_humano
-- ------------------------------------------------------
-- Server version	8.0.35

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

--
-- Table structure for table `asistencia`
--

DROP TABLE IF EXISTS `asistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistencia` (
  `idASISTENCIA` int NOT NULL AUTO_INCREMENT,
  `DOCENTE_id_cedula` int NOT NULL,
  `asis_nombredocente` varchar(45) NOT NULL,
  `asis_cargo` varchar(20) NOT NULL,
  `asis_fecha` varchar(50) NOT NULL,
  `asis_horaentrada` varchar(50) NOT NULL,
  `asis_horasalida` varchar(50) NOT NULL,
  `asis_observacion` varchar(50) NOT NULL,
  PRIMARY KEY (`idASISTENCIA`,`DOCENTE_id_cedula`),
  KEY `fk_ASISTENCIA_DOCENTE1_idx` (`DOCENTE_id_cedula`),
  CONSTRAINT `fk_ASISTENCIA_DOCENTE1` FOREIGN KEY (`DOCENTE_id_cedula`) REFERENCES `docente` (`id_cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia`
--

LOCK TABLES `asistencia` WRITE;
/*!40000 ALTER TABLE `asistencia` DISABLE KEYS */;
INSERT INTO `asistencia` VALUES (1,1754377685,'Damian','Docente','2024-01-23','08:30','15:30','Ninguna');
/*!40000 ALTER TABLE `asistencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capacitaciones`
--

DROP TABLE IF EXISTS `capacitaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capacitaciones` (
  `idCAPACITACIONES` int NOT NULL AUTO_INCREMENT,
  `DOCENTE_id_cedula` int NOT NULL,
  `cap_nombrevento` varchar(45) NOT NULL,
  `cap_tipo` varchar(45) NOT NULL,
  `cap_auspiciante` varchar(30) NOT NULL,
  `cap_horas` varchar(40) NOT NULL,
  `cap_tipocertificado` varchar(30) NOT NULL,
  `cap_institucion` varchar(30) NOT NULL,
  `cap_fechainicio` varchar(40) NOT NULL,
  `cap_fechafinal` varchar(40) NOT NULL,
  PRIMARY KEY (`idCAPACITACIONES`,`DOCENTE_id_cedula`),
  KEY `fk_CAPACITACIONES_DOCENTE1_idx` (`DOCENTE_id_cedula`),
  CONSTRAINT `fk_CAPACITACIONES_DOCENTE1` FOREIGN KEY (`DOCENTE_id_cedula`) REFERENCES `docente` (`id_cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capacitaciones`
--

LOCK TABLES `capacitaciones` WRITE;
/*!40000 ALTER TABLE `capacitaciones` DISABLE KEYS */;
INSERT INTO `capacitaciones` VALUES (1,1754377685,'UCE','Formal','Universidad Central','80','Asistencia','Universidad Central','2024-01-31','2024-01-31'),(6,1713794996,'Evento','Evento tipo','Auspiciente','123123','Certificado Tipo','UEC','2024-02-01','2024-02-28');
/*!40000 ALTER TABLE `capacitaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactoemergencia`
--

DROP TABLE IF EXISTS `contactoemergencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactoemergencia` (
  `idCONTACTOEMERGENCIA` int NOT NULL AUTO_INCREMENT,
  `DOCENTE_id_cedula` int NOT NULL,
  `cont_nombres` varchar(20) NOT NULL,
  `cont_apellidos` varchar(20) NOT NULL,
  `cont_telefono` varchar(10) NOT NULL,
  PRIMARY KEY (`idCONTACTOEMERGENCIA`,`DOCENTE_id_cedula`),
  KEY `fk_CONTACTOEMERGENCIA_DOCENTE1_idx` (`DOCENTE_id_cedula`),
  CONSTRAINT `fk_CONTACTOEMERGENCIA_DOCENTE1` FOREIGN KEY (`DOCENTE_id_cedula`) REFERENCES `docente` (`id_cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactoemergencia`
--

LOCK TABLES `contactoemergencia` WRITE;
/*!40000 ALTER TABLE `contactoemergencia` DISABLE KEYS */;
INSERT INTO `contactoemergencia` VALUES (1,1754377685,'Amaya','Landeta','0987683541');
/*!40000 ALTER TABLE `contactoemergencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conyugue`
--

DROP TABLE IF EXISTS `conyugue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conyugue` (
  `idCONYUGE` int NOT NULL AUTO_INCREMENT,
  `DOCENTE_id_cedula` int NOT NULL,
  `cony_tiporelacion` varchar(25) DEFAULT NULL,
  `cony_cedula` varchar(12) NOT NULL,
  `cony_apellidos` varchar(45) NOT NULL,
  `cony_nombres` varchar(45) NOT NULL,
  PRIMARY KEY (`idCONYUGE`,`DOCENTE_id_cedula`),
  KEY `fk_CONYUGUE_DOCENTE1_idx` (`DOCENTE_id_cedula`),
  CONSTRAINT `fk_CONYUGUE_DOCENTE1` FOREIGN KEY (`DOCENTE_id_cedula`) REFERENCES `docente` (`id_cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conyugue`
--

LOCK TABLES `conyugue` WRITE;
/*!40000 ALTER TABLE `conyugue` DISABLE KEYS */;
INSERT INTO `conyugue` VALUES (1,1754377685,'Conviviente','1754377685','Daniela','Maldonado'),(3,1754377685,'Esposo','1234567890','Apellidos','Nombres');
/*!40000 ALTER TABLE `conyugue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discapacidad`
--

DROP TABLE IF EXISTS `discapacidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discapacidad` (
  `idDISCAPACIDAD` int NOT NULL AUTO_INCREMENT,
  `DOCENTE_id_cedula` int NOT NULL,
  `disc_situacion` varchar(45) NOT NULL,
  `disc_tiporelacion` varchar(45) NOT NULL,
  `disc_nroconadis` varchar(20) NOT NULL,
  `disc_certificado_enfermedad` varchar(80) NOT NULL,
  `disc_tipodiscapacidad` varchar(45) NOT NULL,
  `disc_porcentaje` varchar(50) NOT NULL,
  `disc_tipoenfermedad` varchar(45) NOT NULL,
  PRIMARY KEY (`idDISCAPACIDAD`,`DOCENTE_id_cedula`),
  KEY `fk_DISCAPACIDAD_DOCENTE1_idx` (`DOCENTE_id_cedula`),
  CONSTRAINT `fk_DISCAPACIDAD_DOCENTE1` FOREIGN KEY (`DOCENTE_id_cedula`) REFERENCES `docente` (`id_cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discapacidad`
--

LOCK TABLES `discapacidad` WRITE;
/*!40000 ALTER TABLE `discapacidad` DISABLE KEYS */;
INSERT INTO `discapacidad` VALUES (1,1754377685,'Na','Otra','0145698','Nuevo Documento de Microsoft Word.docx','FÃ­sica','10','visual');
/*!40000 ALTER TABLE `discapacidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docente`
--

DROP TABLE IF EXISTS `docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docente` (
  `id_cedula` int NOT NULL,
  `doc_nombres` varchar(20) NOT NULL,
  `doc_apellidos` varchar(45) NOT NULL,
  `doc_nacionalidad` varchar(20) NOT NULL,
  `doc_fechanacimiento` varchar(20) NOT NULL,
  `doc_direccion` varchar(30) NOT NULL,
  `doc_provincia` varchar(45) NOT NULL,
  `doc_tipoetnia` varchar(25) NOT NULL,
  `doc_tipogenero` varchar(10) NOT NULL,
  `doc_estadocivil` varchar(20) NOT NULL,
  `doc_tiposangre` varchar(10) NOT NULL,
  `doc_celular` varchar(10) NOT NULL,
  `doc_telefono` varchar(12) NOT NULL,
  `doc_correo` varchar(45) NOT NULL,
  `doc_antservpublico` varchar(45) NOT NULL,
  `doc_declaracionbienes` varchar(45) NOT NULL,
  `doc_tipousuario` varchar(45) NOT NULL,
  `doc_usuario` varchar(45) NOT NULL,
  `doc_contraseña` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docente`
--

LOCK TABLES `docente` WRITE;
/*!40000 ALTER TABLE `docente` DISABLE KEYS */;
INSERT INTO `docente` VALUES (179865426,'Maria','Rojas','ecuatoriano','1998-02-21','Ibarra','pichincha','mestizo','femenino','soltero','A-','0916798541','021369874','maria@gmail.com','2023-02-29','2024-01-18','administrador','maria','null'),(1713794996,'Monica','Velasquez','ecuatoriano','1976-08-29','Cayambe','pichincha','afroecuatoriano','femenino','soltero','B+','0968506459','022128048','monica@gmail.com','2023-02-29','2024-01-18','invitado','Erick','null'),(1754377685,'Damian','Casamen','ecuatoriano','2001-02-08','Juan Montalvo','pichincha','afroecuatoriano','masculino','soltero','B+','0985958368','022128048','erickdamiancasame@gmail.com','2021-02-04','2022-02-03','invitado','Erick','null'),(1755889233,'Daniela','Maldonado','ecuatoriano','2001-08-31','Olmedo e Independencia','pichincha','afroecuatoriano','femenino','soltero','B+','0996555598','021369874','danielamald@gmail.com','2001-02-08','2023-05-02','administrador','Daniela','null'),(1759874635,'Erick','Flores','extranjero','1998-02-01','Olmedo','pichincha','afroecuatoriano','masculino','soltero','B+','0917896457','026987456','ek@gmail.com','2001-02-08','2023-09-01','invitado','Erick','null'),(1789487547,'asadasd','asdasdas','ecuatoriano','asdasd','asdasd','pastaza','shuar','femenino','soltero','AB-','0986763158','023478964','asdasdas@gmail.com','2001-02-08','2003-04.02','administrador','damian','null'),(1789684752,'Roberto','Casanoba','ecuatoriano','1998-02-05','Ibarra','bolivar','afroecuatoriano','femenino','casado','O+','0986874563','0247896324','r@gmail.com','2001-02-01','2022-02-03','docente','asd',NULL);
/*!40000 ALTER TABLE `docente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluacion`
--

DROP TABLE IF EXISTS `evaluacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluacion` (
  `idEVALUACION` int NOT NULL AUTO_INCREMENT,
  `DOCENTE_id_cedula` int NOT NULL,
  `eva_periodoinicio` varchar(50) NOT NULL,
  `eva_periodohasta` varchar(50) NOT NULL,
  `eva_nombre` varchar(45) NOT NULL,
  `eva_puntaje` varchar(50) NOT NULL,
  `eva_calificacion` varchar(20) NOT NULL,
  `eva_observacion` varchar(20) NOT NULL,
  PRIMARY KEY (`idEVALUACION`,`DOCENTE_id_cedula`),
  KEY `fk_EVALUACION_DOCENTE1_idx` (`DOCENTE_id_cedula`),
  CONSTRAINT `fk_EVALUACION_DOCENTE1` FOREIGN KEY (`DOCENTE_id_cedula`) REFERENCES `docente` (`id_cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion`
--

LOCK TABLES `evaluacion` WRITE;
/*!40000 ALTER TABLE `evaluacion` DISABLE KEYS */;
INSERT INTO `evaluacion` VALUES (1,1754377685,'2024-01-10','2024-01-24','Tendencias','80','8.0','Ninguna');
/*!40000 ALTER TABLE `evaluacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formacionacademica`
--

DROP TABLE IF EXISTS `formacionacademica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formacionacademica` (
  `idFORMACIONACADEMICA` int NOT NULL AUTO_INCREMENT,
  `DOCENTE_id_cedula` int NOT NULL,
  `form_nivelinstruccion` varchar(30) NOT NULL,
  `form_nrocersenecyt` varchar(20) NOT NULL,
  `form_institucioneducativa` varchar(30) NOT NULL,
  `form_añosaprovados` varchar(60) NOT NULL,
  `form_areaconocimiento` varchar(30) NOT NULL,
  `form_egresado_graduado` varchar(20) NOT NULL,
  `form_titulobtenido` varchar(50) NOT NULL,
  `form_pais` varchar(20) NOT NULL,
  PRIMARY KEY (`idFORMACIONACADEMICA`,`DOCENTE_id_cedula`),
  KEY `fk_FORMACIONACADEMICA_DOCENTE1_idx` (`DOCENTE_id_cedula`),
  CONSTRAINT `fk_FORMACIONACADEMICA_DOCENTE1` FOREIGN KEY (`DOCENTE_id_cedula`) REFERENCES `docente` (`id_cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formacionacademica`
--

LOCK TABLES `formacionacademica` WRITE;
/*!40000 ALTER TABLE `formacionacademica` DISABLE KEYS */;
INSERT INTO `formacionacademica` VALUES (1,1754377685,'Superior','2757567','UCE','16','Desarollo de Software','egresado','Ing','Ecuador ');
/*!40000 ALTER TABLE `formacionacademica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hijos`
--

DROP TABLE IF EXISTS `hijos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hijos` (
  `idHIJOS` int NOT NULL AUTO_INCREMENT,
  `DOCENTE_id_cedula` int NOT NULL,
  `hi_cedula` varchar(12) NOT NULL,
  `hi_nombres` varchar(45) NOT NULL,
  `hi_apellidos` varchar(45) NOT NULL,
  `hi_nivelinstitucional` varchar(45) NOT NULL,
  PRIMARY KEY (`idHIJOS`,`DOCENTE_id_cedula`),
  KEY `fk_HIJOS_DOCENTE_idx` (`DOCENTE_id_cedula`),
  CONSTRAINT `fk_HIJOS_DOCENTE` FOREIGN KEY (`DOCENTE_id_cedula`) REFERENCES `docente` (`id_cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hijos`
--

LOCK TABLES `hijos` WRITE;
/*!40000 ALTER TABLE `hijos` DISABLE KEYS */;
INSERT INTO `hijos` VALUES (1,1754377685,'1759683641','Henry','Casamen','Inicial');
/*!40000 ALTER TABLE `hijos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inclusionlaboral`
--

DROP TABLE IF EXISTS `inclusionlaboral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inclusionlaboral` (
  `idINCLUSIONLABORAL` int NOT NULL AUTO_INCREMENT,
  `DOCENTE_id_cedula` int NOT NULL,
  `inc_nacionalidad` varchar(45) NOT NULL,
  `inc_embarazo` varchar(25) NOT NULL,
  `inc_mesesembarazo` varchar(45) NOT NULL,
  `inc_licencia` varchar(45) NOT NULL,
  `inc_porcentaje` varchar(45) NOT NULL,
  PRIMARY KEY (`idINCLUSIONLABORAL`,`DOCENTE_id_cedula`),
  KEY `fk_INCLUSIONLABORAL_DOCENTE1_idx` (`DOCENTE_id_cedula`),
  CONSTRAINT `fk_INCLUSIONLABORAL_DOCENTE1` FOREIGN KEY (`DOCENTE_id_cedula`) REFERENCES `docente` (`id_cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inclusionlaboral`
--

LOCK TABLES `inclusionlaboral` WRITE;
/*!40000 ALTER TABLE `inclusionlaboral` DISABLE KEYS */;
INSERT INTO `inclusionlaboral` VALUES (1,1754377685,'Ecuatoriana','No','0','NA','0');
/*!40000 ALTER TABLE `inclusionlaboral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informacionbancaria`
--

DROP TABLE IF EXISTS `informacionbancaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `informacionbancaria` (
  `idINFORMACIONBANCARIA` int NOT NULL AUTO_INCREMENT,
  `DOCENTE_id_cedula` int NOT NULL,
  `inf_insfinanciera` varchar(45) NOT NULL,
  `inf_tipocuenta` varchar(45) NOT NULL,
  `inf_nrocuenta` varchar(15) NOT NULL,
  PRIMARY KEY (`idINFORMACIONBANCARIA`,`DOCENTE_id_cedula`),
  KEY `fk_INFORMACIONBANCARIA_DOCENTE1_idx` (`DOCENTE_id_cedula`),
  CONSTRAINT `fk_INFORMACIONBANCARIA_DOCENTE1` FOREIGN KEY (`DOCENTE_id_cedula`) REFERENCES `docente` (`id_cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informacionbancaria`
--

LOCK TABLES `informacionbancaria` WRITE;
/*!40000 ALTER TABLE `informacionbancaria` DISABLE KEYS */;
INSERT INTO `informacionbancaria` VALUES (1,1754377685,'Pichincha','Cuenta de Ahorros','0147895302');
/*!40000 ALTER TABLE `informacionbancaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permisos`
--

DROP TABLE IF EXISTS `permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permisos` (
  `idPERMISOS` int NOT NULL AUTO_INCREMENT,
  `DOCENTE_id_cedula` int NOT NULL,
  `per_fecha` varchar(50) NOT NULL,
  `per_provincia` varchar(50) NOT NULL,
  `per_regimen` varchar(45) NOT NULL,
  `per_Apellidos` varchar(45) NOT NULL,
  `per_Nombres` varchar(45) NOT NULL,
  `per_cedula` varchar(12) NOT NULL,
  `per_cordinacionzonal` varchar(35) NOT NULL,
  `per_direccionunidad` varchar(30) NOT NULL,
  `per_motivo` varchar(45) NOT NULL,
  `per_horas` varchar(50) NOT NULL,
  `per_dias` varchar(45) NOT NULL,
  `per_valordescontar` varchar(45) NOT NULL,
  PRIMARY KEY (`idPERMISOS`,`DOCENTE_id_cedula`),
  KEY `fk_PERMISOS_DOCENTE1_idx` (`DOCENTE_id_cedula`),
  CONSTRAINT `fk_PERMISOS_DOCENTE1` FOREIGN KEY (`DOCENTE_id_cedula`) REFERENCES `docente` (`id_cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permisos`
--

LOCK TABLES `permisos` WRITE;
/*!40000 ALTER TABLE `permisos` DISABLE KEYS */;
INSERT INTO `permisos` VALUES (1,1754377685,'2024-01-03','pichincha','losep','Damian','Casamen','1754377685','null','7','formacion','24','1','0');
/*!40000 ALTER TABLE `permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `senecyt`
--

DROP TABLE IF EXISTS `senecyt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `senecyt` (
  `idSENECYT` int NOT NULL AUTO_INCREMENT,
  `DOCENTE_id_cedula` int NOT NULL,
  `sist_fechaingreso` varchar(45) NOT NULL,
  `sist_fechasalida` varchar(45) NOT NULL,
  `sist_unidad` varchar(45) NOT NULL,
  `sist_modalidad` varchar(45) NOT NULL,
  `sist_grupocupacional` varchar(20) NOT NULL,
  `sist_puesto` varchar(45) NOT NULL,
  PRIMARY KEY (`idSENECYT`,`DOCENTE_id_cedula`),
  KEY `fk_SENECYT_DOCENTE1_idx` (`DOCENTE_id_cedula`),
  CONSTRAINT `fk_SENECYT_DOCENTE1` FOREIGN KEY (`DOCENTE_id_cedula`) REFERENCES `docente` (`id_cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `senecyt`
--

LOCK TABLES `senecyt` WRITE;
/*!40000 ALTER TABLE `senecyt` DISABLE KEYS */;
INSERT INTO `senecyt` VALUES (1,1754377685,'2024-01-01','2024-01-02','7','Precencial','Buena','Docente');
/*!40000 ALTER TABLE `senecyt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trayectorialaboral`
--

DROP TABLE IF EXISTS `trayectorialaboral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trayectorialaboral` (
  `idTRAYECTORIALABORAL` int NOT NULL AUTO_INCREMENT,
  `DOCENTE_id_cedula` int NOT NULL,
  `tray_institucion` varchar(45) NOT NULL,
  `tray_organizacionnombre` varchar(45) NOT NULL,
  `tray_unidadministrativa` varchar(45) NOT NULL,
  `tray_denominacionpuesto` varchar(45) NOT NULL,
  `tray_fechaingreso` varchar(30) NOT NULL,
  `tray_fechasalida` varchar(50) NOT NULL,
  `tray_tipoingreso` varchar(30) NOT NULL,
  `tray_motivosalida` varchar(30) NOT NULL,
  PRIMARY KEY (`idTRAYECTORIALABORAL`,`DOCENTE_id_cedula`),
  KEY `fk_TRAYECTORIALABORAL_DOCENTE1_idx` (`DOCENTE_id_cedula`),
  CONSTRAINT `fk_TRAYECTORIALABORAL_DOCENTE1` FOREIGN KEY (`DOCENTE_id_cedula`) REFERENCES `docente` (`id_cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trayectorialaboral`
--

LOCK TABLES `trayectorialaboral` WRITE;
/*!40000 ALTER TABLE `trayectorialaboral` DISABLE KEYS */;
INSERT INTO `trayectorialaboral` VALUES (1,1754377685,'UCE','Educacion Superior','Losep','Docente','2024-01-01','2024-01-31','Contrato','Fin Contrato');
/*!40000 ALTER TABLE `trayectorialaboral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'talento_humano'
--
/*!50003 DROP PROCEDURE IF EXISTS `getAllAsistencia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllAsistencia`()
BEGIN
    -- Cuerpo del procedimiento
    SELECT * FROM asistencia;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllCapacitaciones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllCapacitaciones`()
BEGIN
    -- Cuerpo del procedimiento
    SELECT * FROM capacitaciones;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllContactoEmergencia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllContactoEmergencia`()
BEGIN
    -- Cuerpo del procedimiento
    SELECT * FROM contactoemergencia;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllConyugue` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllConyugue`()
BEGIN
    -- Cuerpo del procedimiento
    SELECT * FROM conyugue;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllDiscapacidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllDiscapacidad`()
BEGIN
    -- Cuerpo del procedimiento
    SELECT * FROM discapacidad;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllDocente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllDocente`()
BEGIN
    -- Cuerpo del procedimiento
    SELECT * FROM docente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllEvaluacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllEvaluacion`()
BEGIN
    -- Cuerpo del procedimiento
    SELECT * FROM evaluacion;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllFormacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllFormacion`()
BEGIN
    -- Cuerpo del procedimiento
    SELECT * FROM formacionacademica;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllHijos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllHijos`()
BEGIN
    -- Cuerpo del procedimiento
    SELECT * FROM hijos;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllInclusion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllInclusion`()
BEGIN
    -- Cuerpo del procedimiento
    SELECT * FROM inclusionlaboral;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllInformacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllInformacion`()
BEGIN
    -- Cuerpo del procedimiento
    SELECT * FROM informacionbancaria;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllPermisos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllPermisos`()
BEGIN
    -- Cuerpo del procedimiento
    SELECT * FROM permisos;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllSenecyt` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllSenecyt`()
BEGIN
    -- Cuerpo del procedimiento
    SELECT * FROM senecyt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllTrayectoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllTrayectoria`()
BEGIN
    -- Cuerpo del procedimiento
    SELECT * FROM trayectorialaboral;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-02 15:41:34
