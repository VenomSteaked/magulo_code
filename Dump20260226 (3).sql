-- MySQL dump 10.13  Distrib 8.4.8, for Linux (x86_64)
--
-- Host: localhost    Database: daetworshippers
-- ------------------------------------------------------
-- Server version	8.4.8

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
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `user_username` varchar(45) NOT NULL,
  `user_password` varchar(162) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (1,'test','test@gmail.com','scrypt:32768:8:1$QWdeR32a4zWJ64CS$4c08cab201bd3505d2206329f2fb5c718cbdc8d4a9b4ec3e0a920e89f6adc8949daf7161fc1f25517fc9c3577f1fbee050369c88f4393f7c642b7e64d9b56a7e'),(2,'yes','fuckme@gmail.com','scrypt:32768:8:1$pMC71BSCq5uXSD3n$1e0a1ced80355fdc954d818ecccfc0be2b6b0dfeff35e24c5e492f503999cf6f055f933d0507d33ece1db8b420cc372d1f02138d9d6fa032e296111975f50104'),(3,'test','usernamecom@proton.me','scrypt:32768:8:1$PIi4uBVmLi36UDw1$031460e014349d4bb683b7b6c0c56c4977c77fb7c23757f55e6540a595466821bcd6a0b7de324293ec849f29ee2710ebe4475359d3569561e75db03e7fe13385'),(4,'yes','no@gmail.com','scrypt:32768:8:1$upvUoQuLkd5PNMnF$a12288b931980cf5a1017b645f71e8cb87cc093c62d7190d40c102ee8963d138bafdab1cf46ba8ac79cfffc062992316fb140e93b21616e9c07cf9253b613719'),(5,'test','email@gmail.com','scrypt:32768:8:1$Y2jjio2ZYPLckLQ4$6f0e787153f75bca3fed6ad7c054d199713731dab158a334cdf846affbc6578b8410a559fdea22b7ef797e34c32d0590cc57ee907b7cb8c6061ed9d3fafa8696'),(6,'rwar','user@gmail.com','scrypt:32768:8:1$eDKwKoxB5JMUdqt3$1d6a3d34e49fb21257b4b21b21ee3a418974fb5e34af4e096e679223ede513f63e63217736215493bfaebedf812564f6990faff5757f3bcb9d3e2b9d5b3694e1'),(7,'LBD','lbd@gmail.com','scrypt:32768:8:1$DSSxbSzSy7QGCElj$ecfb2590930c5cdd987d2ecd8045deed77bc1e88a14d6a7bc0cc4a994903a7fe31a296d585bc41fe202aabec3f979be72f0cd022a1bd331f8f3c1639e696289c'),(8,'test','testtest@gmail.com','scrypt:32768:8:1$eUu9zbiMm3tR1z1L$216b1cd26e666c4063429caf24bb97f38e6496d3592c71939131f942b90b6bf9bd3655e11b72933fb78cb1e3669390444e9bc8f46ec3c241c8a2a7c75aae1ec2'),(9,'newuser','newuser@gmail.com','scrypt:32768:8:1$WRjqT83Ez5ps9iLH$976c374fea912f8159af100f0987f651eda17814b963646a6ebe7b9005bd45a956dc1962477152d5fc03382b09bb834c84d062610560db562b98526967a22a25'),(10,'shaun','shaun@gmail.com','scrypt:32768:8:1$wNKNScXbsksRbAsR$17eaa076bc25c844dfe8911e48c4d80d80953cbd14283f0df0be71a339bfdf9750f10346ea1d6cfffb5a9c0457b4017f4c679d99316d7056440a15c8572b42bd'),(11,'fafwgfawfjalk','another@gmail.com','scrypt:32768:8:1$WLUFL2ycBEXKyeia$cdf51f8344b6dd19e213b7daae85f91a2bd004f89ce75111fb91f668b7b5f168f728e9c381e6e1a4f7cde73a7423d3a01cc777459db8ac344bc178991d558ae1'),(12,'test','test2@gmail.com','scrypt:32768:8:1$LELaTRpq1z9Yaz84$dbfa7a52a70565e7792545291a701e48ce050bea3bd0f2d2c88ece729cbed4cf2a774e11d7487801128404299a3f02733e9c02c98bacc2195a4275496a58f650'),(13,'test','test222@gmail.com','scrypt:32768:8:1$dWpQbnHmJtpdfcJE$ee9c46dc6c9bfaef45693e16d6045942c4dff8e905242cc3329bc002b9648d573ff22574cb5e51e0b2877d6c92aadbd9063380cfa06b39d6843c314098819561'),(14,'test','test3@gmail.com','scrypt:32768:8:1$AE0kKYBljXVn7ZLk$8ebdcc78eaea553e603c74e989a2dd826d72c354e541748c92f1dc33ca87f39bdca233f56ba198568b56bc5b230a0774dd6dc61267b913ae386bb28201c48238'),(15,'test','test4@gmail.com','scrypt:32768:8:1$yTxt770kyR5pKFnE$3ff004fca9a3530a6508264641109bc98231da6c11cb5053f733cf163c1e5fa9b7fd7a7cd38e509765f14741daa6311c040d73f3908e8df37d537e78adeeaa91'),(16,'test','test@hotmail.com','scrypt:32768:8:1$SKpFG95U4L6I7jX8$a69d7b31b5e8f6b3c886992b8449993b0581371e4e891b017e27a887e626daba5544da04ed2fb6384e52e56010a526d0d85476c9ea7b9d81f35ead655f164b7c'),(17,'test','teswt@gmail.com','scrypt:32768:8:1$ietqucSGD0V3iULa$f18165eaa533f0fdfce91a1b3b0c95215495b26ad941421d1475468e5956c9bf7bada191f74eda0fda75a5f76b1bea1433b7bff4f314f7f26b65f749db05f3e3'),(18,'test','test42132@gmail.com','scrypt:32768:8:1$PZ4eewhUjUnFruCx$4aa698e53a591aafc7e32f7541f485097053fbfb60c25fd6528b931854915b63195e5a24267c7f4a337af355d500f5a78be7975537f07c22f3be3a64ddf9d66e'),(19,'testaewsfawe','tesfasefaw@gmail.com','scrypt:32768:8:1$wsfuNMxcIA7Y2a2d$29d39cf39c9a3b7f298c72683051912c169e26888f8bdf04760bc984b52d47be1f97abbd4acb16566b6cf7ef90273291f4fe49c19d8b349410ea4f024710dd4a'),(20,'test','test2@gad.com','scrypt:32768:8:1$wOsFZfAUQNDebMRz$df8445d1d877c6288ecdff1973ff3afcc7870022ed0c61d3e6eb85a608dad4e0f17f975015f545111f9b96171ccc58e4f5adcd85b87caf409265f0305019a807'),(21,'test','test2@gmfail.com','scrypt:32768:8:1$vHGQlh4n4kXXThK5$dad1411b083f9593c57d87a32cd2cf841f0e5e6eea91e7bc3c80d0eee51714f65082325167dd9016b8448f08042c8bf63b33b6a48ecb0a845deda45c3c99f612'),(22,'test','test2@gmaiasfl.com','scrypt:32768:8:1$5fhvf9Dghj6VZS8R$713612e39a9f7055ffa85f8a061601923801a9f6f1a499c548d8cd3727871f818429738144f6cf928f2f067bbb0b044aa4d82343ec950209a3e6df4500cf1422'),(23,'test','test2@gmail.caom','scrypt:32768:8:1$aSBYJ2V7G1eaAZYQ$c974a48c663e778cce52284de9d5a71ad8024df2891a071cd96e975f69c6244cb90d8db9ef3c7f3c07645ebf2ca84a249c4f68d2903fbe76df00fad2fdad9ce3'),(24,'we','test2@gmail.come','scrypt:32768:8:1$I4fbvf67i0H0ZhMl$69d756f6cef0f2c9ef245db2d7f533f7eb4ea74bc2719190f75f8aa54e75b089481ed301ff1f4ce447ecda2fea15929885752d8221aacf289b79676594a6d4a4'),(25,'wt','test2@gmail.coma','scrypt:32768:8:1$BA4nIQWdb4R7QWE9$b53b43dd0384f2f7330577046e72e5e7cf7477f330dd9d255a0ee67c016bd694c4874c3f5dea1467d3577854dba730b6ecd01787b16ceef83c91068ce89f0f78'),(26,'test','test2@gmail.comf','scrypt:32768:8:1$vVUe9yEZJCFpHX8D$7ad261dbf25fb07ab0c5a903f6ba456d3c2b758bd590fce0cfa8a9d6814258d0830fd91e911f80415eaabfa580a0292b0335df427f73d95c8078559d220ba168'),(27,'test','test2@gmw3ail.com','scrypt:32768:8:1$diD38htSBhT8Qv54$2cdf757cc525dec71dfa90f3ffec5d552927bf55d63aa77d06233c4e002221c930d79eb9964251a51a67aaaa0ee1e5f18e15805c4c203454b2c961a955feccd2');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'daetworshippers'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_makeUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_makeUser`(
    IN p_name VARCHAR(45),
    IN p_username VARCHAR(45),
    IN p_password VARCHAR(162)
)
BEGIN
    if ( select exists (select 1 from tbl_user where user_username = p_username) ) THEN
        select 'Username Exists !!';
    ELSE
        insert into tbl_user
        (
            user_name,
            user_username,
            user_password
        )
        values
        (
            p_name,
            p_username,
            p_password
        );
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_validateLogin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_validateLogin`(
IN p_username VARCHAR(50)
)
BEGIN
    select * from tbl_user where user_username = p_username;
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

-- Dump completed on 2026-02-26 23:10:32
