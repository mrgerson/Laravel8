-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Tecnologia','2022-08-02 23:47:26','2022-08-02 23:47:26'),(2,'Marketing','2022-08-02 23:47:26','2022-08-02 23:47:26'),(3,'Software','2022-08-02 23:47:26','2022-08-02 23:47:26'),(4,'Matematicas','2022-08-02 23:47:26','2022-08-02 23:47:26'),(5,'Historia','2022-08-02 23:47:26','2022-08-02 23:47:26');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mensaje` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` bigint(20) unsigned NOT NULL,
  `commentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_user_id_foreign` (`user_id`),
  CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'Maxime quia praesentium facere vero.','maxime-quia-praesentium-facere-vero','Optio accusantium alias sunt et. Blanditiis repellat ut alias laborum eos mollitia voluptatem nihil. Accusantium qui porro laboriosam.','Diseño web','2022-08-02 23:47:26','2022-08-02 23:47:26'),(2,'Est magni et tenetur ipsa.','est-magni-et-tenetur-ipsa','Maiores quo nihil minima est. Deleniti error ut eligendi dolore voluptatum suscipit aperiam. Autem impedit necessitatibus laboriosam. Quia est dolor dolore fugiat nisi sed quo. Libero porro optio dicta et qui.','Desarroolo Web','2022-08-02 23:47:26','2022-08-02 23:47:26'),(3,'Ea quos voluptatum quisquam odit autem recusandae.','ea-quos-voluptatum-quisquam-odit-autem-recusandae','Non aut repudiandae et quidem. Ut dolore ut necessitatibus omnis provident sint. Molestias voluptas deserunt consequuntur aperiam. Inventore quo aspernatur dolorem eius fuga possimus corporis reiciendis.','Desarroolo Web','2022-08-02 23:47:26','2022-08-02 23:47:26'),(4,'Sint adipisci accusamus commodi facilis rerum quae enim.','sint-adipisci-accusamus-commodi-facilis-rerum-quae-enim','Omnis atque cupiditate occaecati necessitatibus. Et dolor omnis eius voluptate et rem. Reprehenderit officiis culpa dolor et. Eius magni sit vitae tenetur. Distinctio quia voluptatum temporibus.','Desarroolo Web','2022-08-02 23:47:26','2022-08-02 23:47:26'),(5,'Est dolorum aliquam adipisci.','est-dolorum-aliquam-adipisci','Quod nostrum nam dolorum. Earum enim occaecati accusamus aut labore molestiae. Illo sit a laudantium accusantium assumenda.','Desarroolo Web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(6,'Non aliquam autem perspiciatis sit doloribus ut est.','non-aliquam-autem-perspiciatis-sit-doloribus-ut-est','Exercitationem et deserunt quibusdam enim. Et est fuga illum quibusdam id.','Desarroolo Web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(7,'Veniam laborum libero molestias repellat repudiandae.','veniam-laborum-libero-molestias-repellat-repudiandae','Ea ipsam laboriosam et quod accusamus voluptate accusantium. Consectetur deserunt ullam et quo. Ut et et et illum quaerat rerum. Ipsum hic porro vitae labore.','Diseño web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(8,'Exercitationem et laudantium architecto voluptatem a.','exercitationem-et-laudantium-architecto-voluptatem-a','Quia molestias temporibus dicta voluptas non sed. Quo atque reiciendis recusandae quibusdam quo quis. Provident voluptates adipisci veritatis voluptatibus. Ducimus laudantium rerum perspiciatis repellat iusto occaecati.','Diseño web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(9,'Omnis esse sit ipsa eos recusandae inventore adipisci.','omnis-esse-sit-ipsa-eos-recusandae-inventore-adipisci','Consequatur earum ullam molestiae sed ut. Pariatur doloremque rerum iusto sit sunt perspiciatis. Error ut dolor aut esse corporis. Alias corrupti impedit labore assumenda velit et.','Diseño web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(10,'Qui repudiandae ullam et id pariatur nesciunt.','qui-repudiandae-ullam-et-id-pariatur-nesciunt','Quo maxime qui iusto esse et recusandae alias. Molestias nisi vitae ducimus velit molestiae velit. Et et veritatis cumque ut magni quis. Maiores tempore suscipit non dolorem qui accusamus.','Diseño web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(11,'Laboriosam aliquam nobis eos quos ut voluptatem.','laboriosam-aliquam-nobis-eos-quos-ut-voluptatem','Quia possimus cumque adipisci. Voluptate nostrum laudantium omnis libero. Consequatur totam tempora eius dignissimos.','Desarroolo Web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(12,'Dolores laudantium placeat sint repellendus quaerat qui.','dolores-laudantium-placeat-sint-repellendus-quaerat-qui','Maxime et id qui totam incidunt. Enim facere culpa reprehenderit qui quas sunt. Autem illo accusamus autem dolorum expedita.','Diseño web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(13,'Eos ea sint nobis libero.','eos-ea-sint-nobis-libero','Eveniet impedit dolor consequatur ut similique explicabo. Et id quis reiciendis consequatur asperiores sunt neque. Est recusandae eaque unde est est veniam mollitia. Debitis atque architecto ea commodi.','Desarroolo Web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(14,'Aut ipsa minima temporibus molestiae temporibus.','aut-ipsa-minima-temporibus-molestiae-temporibus','Soluta est officiis recusandae ea nobis magnam ea. Quasi officiis vitae quibusdam autem tempore debitis. Praesentium est deleniti non. In totam ut eum.','Diseño web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(15,'Quia nihil distinctio dolorem totam consequatur temporibus accusantium.','quia-nihil-distinctio-dolorem-totam-consequatur-temporibus-accusantium','Qui itaque quis suscipit voluptate qui animi sit. Voluptatem asperiores doloribus incidunt iusto. Voluptates magnam ut vel qui alias fugiat cum. Ex aut rerum odio quaerat eos.','Desarroolo Web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(16,'Hic quia delectus in deserunt.','hic-quia-delectus-in-deserunt','Earum in animi nostrum a repellat accusamus quisquam. In possimus laboriosam et debitis fugiat iure sed. Ratione eius iste quis aut.','Desarroolo Web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(17,'Qui rerum veniam sit aperiam doloremque dolorem porro.','qui-rerum-veniam-sit-aperiam-doloremque-dolorem-porro','Eveniet nisi sed labore. Ullam reprehenderit quos commodi. Dolores enim fugit iure. Qui maxime reiciendis omnis laboriosam.','Diseño web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(18,'Ad exercitationem qui aut consequatur beatae.','ad-exercitationem-qui-aut-consequatur-beatae','Corrupti et id occaecati aut doloribus dignissimos dolorem. Nostrum nulla laudantium ea exercitationem facere cum. Fugit aut eum eum quia molestiae voluptatibus. Expedita est ipsam consequatur quis.','Desarroolo Web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(19,'Magni quidem sapiente enim fugit vero voluptatum repudiandae in.','magni-quidem-sapiente-enim-fugit-vero-voluptatum-repudiandae-in','Ducimus odit nobis consequatur veniam. Quam ut magnam dolorem et doloribus voluptatibus.','Diseño web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(20,'Omnis quo et et quaerat in sit quaerat.','omnis-quo-et-et-quaerat-in-sit-quaerat','Voluptatem quia voluptatum dolorem. Tempora minus delectus harum. Consequatur reprehenderit consequatur consequuntur eligendi repellat.','Diseño web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(21,'Hic assumenda iure facere magnam ullam.','hic-assumenda-iure-facere-magnam-ullam','Dolor esse suscipit quo cum reprehenderit. Quia ut repellendus quidem. Corrupti est quasi qui quo dolores voluptatem officia tenetur. Tempora deleniti est aut tempora expedita incidunt tempora blanditiis.','Diseño web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(22,'Ratione id neque repellendus sint autem enim et.','ratione-id-neque-repellendus-sint-autem-enim-et','Explicabo fuga minus neque consequuntur. Optio nihil accusantium ipsam impedit accusantium nulla occaecati. Dolor ut quisquam aut vero tempora voluptatum.','Diseño web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(23,'Aut rerum beatae neque quibusdam eos.','aut-rerum-beatae-neque-quibusdam-eos','Et ea ut et et aut et. Iure pariatur non ut hic. Eum itaque ex saepe ab similique id non. Aut in blanditiis sed in doloribus cum.','Desarroolo Web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(24,'Ab veritatis qui et voluptatem.','ab-veritatis-qui-et-voluptatem','Dolores est dolores qui ab blanditiis. Sit fuga quo non alias. Voluptate blanditiis accusantium aspernatur sequi aliquid modi deserunt. Autem dolore id corporis nobis at. Quia magni ut recusandae distinctio ad soluta.','Diseño web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(25,'Similique accusantium commodi commodi molestias.','similique-accusantium-commodi-commodi-molestias','Suscipit velit neque debitis eius facilis. Perspiciatis eveniet et odio culpa est aut autem. Rem nemo mollitia et aut tempora consectetur eum.','Diseño web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(26,'Voluptas reiciendis amet aut quasi.','voluptas-reiciendis-amet-aut-quasi','Non at sed non enim fugit nulla. Earum distinctio id ex in id deleniti. Nihil ut dolores impedit expedita magni quia.','Diseño web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(27,'Dolores eos dicta ullam inventore deserunt qui expedita.','dolores-eos-dicta-ullam-inventore-deserunt-qui-expedita','Labore quam consequatur sit animi fugiat. Vel dolorum sequi et consectetur nam voluptatem. Corrupti deserunt molestias accusantium rem. Veniam doloremque blanditiis laudantium quisquam tempore labore ipsa ut.','Diseño web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(28,'Rerum et ullam quam beatae minus blanditiis unde.','rerum-et-ullam-quam-beatae-minus-blanditiis-unde','Ipsum magnam facere et tempore. Sit labore error aut dolores. Qui earum aliquid ut. Et alias saepe sequi earum.','Desarroolo Web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(29,'Iste sint provident veritatis porro optio distinctio veniam consequatur.','iste-sint-provident-veritatis-porro-optio-distinctio-veniam-consequatur','Soluta laborum vitae quaerat voluptas nihil maiores commodi aut. Doloremque et consectetur fuga. Dignissimos dolor facere dolor quo est aut dolorum animi. Ut impedit omnis quibusdam nostrum neque cumque. Officia iste ut consequatur omnis.','Diseño web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(30,'Et hic eaque assumenda quia dolores delectus error assumenda.','et-hic-eaque-assumenda-quia-dolores-delectus-error-assumenda','Qui aut libero inventore omnis reiciendis. Deserunt aut et ipsum ut possimus quod dolor. Est temporibus qui pariatur laudantium eaque quia veritatis.','Desarroolo Web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(31,'Ut corporis dignissimos rerum aut corrupti harum architecto.','ut-corporis-dignissimos-rerum-aut-corrupti-harum-architecto','Id libero est laudantium fugiat doloribus est. Sint voluptatem nam veritatis natus. Voluptatem maiores labore vitae reprehenderit. Et alias velit rem.','Diseño web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(32,'Occaecati necessitatibus ea iusto.','occaecati-necessitatibus-ea-iusto','Ratione quidem odit delectus. Nisi officiis quo illum veritatis voluptate ut velit quam. Asperiores nam magnam eligendi accusamus exercitationem optio odit. Numquam natus dolores blanditiis eum ipsum.','Desarroolo Web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(33,'Aspernatur consequuntur quasi fugit veritatis quis rem nihil praesentium.','aspernatur-consequuntur-quasi-fugit-veritatis-quis-rem-nihil-praesentium','Voluptatibus voluptatibus enim quia modi totam. Esse dolor quos quibusdam rerum. Aut inventore similique assumenda eveniet libero quaerat. Dolorem nihil architecto dolor dicta voluptas id esse.','Diseño web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(34,'Explicabo est beatae sit est possimus dolore facere.','explicabo-est-beatae-sit-est-possimus-dolore-facere','Dolor incidunt facilis sed quibusdam delectus numquam. Qui corporis rerum ea nobis dolorum est maxime. Laboriosam voluptate rerum tempore rerum ut. Necessitatibus necessitatibus explicabo fugiat occaecati beatae.','Diseño web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(35,'Est quia reiciendis ut reprehenderit.','est-quia-reiciendis-ut-reprehenderit','Culpa omnis amet velit voluptatibus quia asperiores magni repellat. Nobis harum aut voluptates. Sit eveniet quae consequatur quo at. Pariatur consequatur nihil sit quibusdam id. Numquam et dolore tempore in id.','Diseño web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(36,'Expedita sunt rerum delectus et.','expedita-sunt-rerum-delectus-et','Nisi voluptatibus numquam ea. Optio aut sed et illum dicta et. Vero tempora autem a quod voluptate itaque. Aperiam quaerat architecto ipsam magnam reprehenderit accusamus quos recusandae.','Desarroolo Web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(37,'Possimus aut aperiam quas repudiandae.','possimus-aut-aperiam-quas-repudiandae','Et qui atque nam non eius. Aut laborum nisi voluptatibus voluptatem qui. Et voluptatem non minima culpa sint repellat autem velit.','Desarroolo Web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(38,'Qui blanditiis nesciunt eveniet reprehenderit ipsam maiores.','qui-blanditiis-nesciunt-eveniet-reprehenderit-ipsam-maiores','Qui sit eius est quas et laudantium. Commodi illo quis nemo eius facere accusamus qui ullam. Sed veniam accusamus dolorem ut quasi eius sed.','Desarroolo Web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(39,'Et explicabo ea dignissimos qui ut eos sit qui.','et-explicabo-ea-dignissimos-qui-ut-eos-sit-qui','Inventore distinctio provident est. Possimus repellendus ipsum dolorem eum officiis debitis occaecati voluptas. Quis quis facere aut sit.','Diseño web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(40,'Tempore suscipit hic nihil quia consequuntur ipsam consequatur.','tempore-suscipit-hic-nihil-quia-consequuntur-ipsam-consequatur','Illum vitae saepe qui adipisci. Ea ab ex repellendus. Eum vitae et et eligendi sed exercitationem.','Desarroolo Web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(41,'Ipsa tempora sit ea aperiam sapiente iusto.','ipsa-tempora-sit-ea-aperiam-sapiente-iusto','Alias libero ex quidem ratione quo nobis necessitatibus. Provident odit dignissimos praesentium nihil. A nam similique libero et. Eos odio assumenda maiores expedita.','Desarroolo Web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(42,'Eum ratione corporis dignissimos doloremque necessitatibus.','eum-ratione-corporis-dignissimos-doloremque-necessitatibus','Molestiae fuga voluptatum ipsum exercitationem est. Quia esse illo non labore ut. Natus ullam aut quis laboriosam. Ab voluptates fuga recusandae dolorem facere.','Desarroolo Web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(43,'Non sint sed corrupti eos alias ab tempore.','non-sint-sed-corrupti-eos-alias-ab-tempore','Voluptas natus velit quibusdam autem. Enim aut asperiores enim illum eaque dolor optio vel. Et architecto nemo minus dolorem soluta aspernatur quos. Iure aut doloribus est quibusdam. Dolor enim voluptate id qui dignissimos.','Desarroolo Web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(44,'Qui nulla repellat ab deserunt omnis ut.','qui-nulla-repellat-ab-deserunt-omnis-ut','Eaque sint non quaerat nulla voluptatem omnis delectus. Eos beatae iste excepturi quos. Harum rerum voluptatem dolores sed non.','Diseño web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(45,'Repudiandae commodi cum eaque pariatur quaerat temporibus dolorem minus.','repudiandae-commodi-cum-eaque-pariatur-quaerat-temporibus-dolorem-minus','Et neque veniam porro delectus quia ab. Et quod ut ea quis quaerat. Nihil quis mollitia molestiae alias possimus ut nisi facere. Hic et a ex laboriosam.','Desarroolo Web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(46,'Quam et itaque molestiae recusandae est rem tempore sunt.','quam-et-itaque-molestiae-recusandae-est-rem-tempore-sunt','Soluta non unde veniam nesciunt sapiente ut unde. Aperiam ut velit vel enim.','Diseño web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(47,'Dolores possimus et quaerat laudantium.','dolores-possimus-et-quaerat-laudantium','Exercitationem sequi non sint reiciendis blanditiis itaque. Voluptatem autem earum cum voluptas deserunt qui est. Ullam sequi ullam sunt esse quod vel et. Numquam eveniet molestiae ut est.','Diseño web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(48,'Consequuntur velit fugiat fugiat ipsa aliquid sed.','consequuntur-velit-fugiat-fugiat-ipsa-aliquid-sed','Repudiandae rerum voluptatibus ipsum dignissimos tempora incidunt adipisci. Doloremque ipsam adipisci quia iste vitae qui. Fugit doloremque doloremque nisi et.','Diseño web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(49,'Reiciendis possimus dolor dolores ut ut tenetur et.','reiciendis-possimus-dolor-dolores-ut-ut-tenetur-et','Quae eos magni omnis in. Quam quia sapiente est in est. Quas animi animi est qui.','Diseño web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(50,'Mollitia magnam pariatur ad.','mollitia-magnam-pariatur-ad','Eligendi alias animi repudiandae. Sit nostrum illo ut in quasi.','Diseño web','2022-08-02 23:47:27','2022-08-02 23:47:27'),(51,'Reac.js frameword de javascript','reacjs-frameword-de-javascript','el mejor frameword de frontend de javascript','desarrollo web','2022-08-03 00:02:58','2022-08-03 00:03:52');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_id` bigint(20) unsigned NOT NULL,
  `imageable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`imageable_id`,`imageable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_07_03_003214_create_cursos_table',1),(6,'2022_12_07_200929_create_profiles_table',2),(7,'2022_12_09_160256_create_categorias_table',2),(8,'2022_12_12_165525_create_posts_table',2),(9,'2022_12_12_175039_create_videos_table',2),(10,'2022_12_12_181113_create_roles_table',2),(11,'2022_12_12_181334_create_role_user_table',2),(12,'2022_12_12_185049_create_permisos_table',2),(13,'2022_12_12_185305_create_permiso_role_table',2),(14,'2022_12_12_192109_create_images_table',2),(15,'2022_12_12_224534_create_comments_table',2),(16,'2022_12_12_231824_create_tags_table',2),(17,'2022_12_12_232109_create_taggables_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permiso_role`
--

DROP TABLE IF EXISTS `permiso_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permiso_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `permiso_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permiso_role_permiso_id_foreign` (`permiso_id`),
  KEY `permiso_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permiso_role_permiso_id_foreign` FOREIGN KEY (`permiso_id`) REFERENCES `permisos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permiso_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permiso_role`
--

LOCK TABLES `permiso_role` WRITE;
/*!40000 ALTER TABLE `permiso_role` DISABLE KEYS */;
INSERT INTO `permiso_role` VALUES (1,1,1,'2022-08-02 23:47:26','2022-08-02 23:47:26'),(2,2,1,'2022-08-02 23:47:26','2022-08-02 23:47:26'),(3,3,1,'2022-08-02 23:47:26','2022-08-02 23:47:26'),(4,4,1,'2022-08-02 23:47:26','2022-08-02 23:47:26'),(5,5,1,'2022-08-02 23:47:26','2022-08-02 23:47:26'),(6,1,2,'2022-08-02 23:47:26','2022-08-02 23:47:26'),(7,3,2,'2022-08-02 23:47:26','2022-08-02 23:47:26'),(8,4,2,'2022-08-02 23:47:26','2022-08-02 23:47:26'),(9,5,2,'2022-08-02 23:47:26','2022-08-02 23:47:26'),(10,5,3,'2022-08-02 23:47:26','2022-08-02 23:47:26');
/*!40000 ALTER TABLE `permiso_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permisos`
--

DROP TABLE IF EXISTS `permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permisos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permisos`
--

LOCK TABLES `permisos` WRITE;
/*!40000 ALTER TABLE `permisos` DISABLE KEYS */;
INSERT INTO `permisos` VALUES (1,'Editar','2022-08-02 23:47:26','2022-08-02 23:47:26'),(2,'Eliminar','2022-08-02 23:47:26','2022-08-02 23:47:26'),(3,'Actualizar','2022-08-02 23:47:26','2022-08-02 23:47:26'),(4,'Insertar','2022-08-02 23:47:26','2022-08-02 23:47:26'),(5,'Lectura','2022-08-02 23:47:26','2022-08-02 23:47:26');
/*!40000 ALTER TABLE `permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `categoria_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`),
  KEY `posts_categoria_id_foreign` (`categoria_id`),
  CONSTRAINT `posts_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE SET NULL,
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'vue.js','Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500',1,3,'2022-08-02 23:47:26','2022-08-02 23:47:26'),(2,'angular.js','Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500',1,3,'2022-08-02 23:47:26','2022-08-02 23:47:26'),(3,'React.js','Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500',1,3,'2022-08-02 23:47:26','2022-08-02 23:47:26'),(4,'marketing','Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum',2,2,'2022-08-02 23:47:26','2022-08-02 23:47:26'),(5,'marketing redes sociales','Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum',2,2,'2022-08-02 23:47:26','2022-08-02 23:47:26');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biografia` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `profiles_user_id_unique` (`user_id`),
  CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  KEY `role_user_user_id_foreign` (`user_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (1,1,1,'2022-08-02 23:47:26','2022-08-02 23:47:26'),(2,2,1,'2022-08-02 23:47:26','2022-08-02 23:47:26'),(3,3,1,'2022-08-02 23:47:26','2022-08-02 23:47:26'),(4,2,2,'2022-08-02 23:47:26','2022-08-02 23:47:26'),(5,3,2,'2022-08-02 23:47:26','2022-08-02 23:47:26'),(6,3,3,'2022-08-02 23:47:26','2022-08-02 23:47:26'),(7,3,4,'2022-08-02 23:47:26','2022-08-02 23:47:26'),(8,2,4,'2022-08-02 23:47:26','2022-08-02 23:47:26'),(9,1,5,'2022-08-02 23:47:26','2022-08-02 23:47:26'),(10,2,5,'2022-08-02 23:47:26','2022-08-02 23:47:26'),(11,1,6,'2022-08-02 23:47:26','2022-08-02 23:47:26'),(12,2,6,'2022-08-02 23:47:26','2022-08-02 23:47:26'),(14,1,8,'2022-08-02 23:47:26','2022-08-02 23:47:26'),(15,2,8,'2022-08-02 23:47:26','2022-08-02 23:47:26');
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrador','2022-08-02 23:47:26','2022-08-02 23:47:26'),(2,'Editor','2022-08-02 23:47:26','2022-08-02 23:47:26'),(3,'Player','2022-08-02 23:47:26','2022-08-02 23:47:26');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggables`
--

DROP TABLE IF EXISTS `taggables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggables` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `taggable_id` bigint(20) unsigned NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `taggables_tag_id_foreign` (`tag_id`),
  CONSTRAINT `taggables_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggables`
--

LOCK TABLES `taggables` WRITE;
/*!40000 ALTER TABLE `taggables` DISABLE KEYS */;
/*!40000 ALTER TABLE `taggables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'gerson','simeon95@example.net','2022-08-02 23:47:26','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Gl1WZbB46H','2022-08-02 23:47:26','2022-08-02 23:47:26'),(2,'moster','rebekah27@example.net','2022-08-02 23:47:26','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','u9gmwFw3Pq','2022-08-02 23:47:26','2022-08-02 23:47:26'),(3,'boli queso','nitzsche.curtis@example.com','2022-08-02 23:47:26','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','7ZlTCgMLeA','2022-08-02 23:47:26','2022-08-02 23:47:26'),(4,'chino','layla39@example.com','2022-08-02 23:47:26','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','1LOkcA81GE','2022-08-02 23:47:26','2022-08-02 23:47:26'),(5,'recoba','bianka69@example.com','2022-08-02 23:47:26','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','nHZEgjn22x','2022-08-02 23:47:26','2022-08-02 23:47:26'),(6,'profe','vmedhurst@example.com','2022-08-02 23:47:26','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','ydQSujtjn4','2022-08-02 23:47:26','2022-08-02 23:47:26'),(7,'juancho','zlarson@example.com','2022-08-02 23:47:26','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','LcDrXlgKDG','2022-08-02 23:47:26','2022-08-02 23:47:26'),(8,'rois','mthompson@example.org','2022-08-02 23:47:26','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','sDAtWMuvKc','2022-08-02 23:47:26','2022-08-02 23:47:26'),(9,'cachama','jaydon86@example.net','2022-08-02 23:47:26','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','0qESXmMC6B','2022-08-02 23:47:26','2022-08-02 23:47:26'),(10,'vagre','gregoria.kihn@example.com','2022-08-02 23:47:26','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','964b2aodZ1','2022-08-02 23:47:26','2022-08-02 23:47:26');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `videos_user_id_foreign` (`user_id`),
  CONSTRAINT `videos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'blog'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-05 15:59:28
