-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2024-05-17 08:17:27','2024-05-17 08:17:27','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=504 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://localhost:10003','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://localhost:10003','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Fictional University','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@wpengine.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:183:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:11:\"campuses/?$\";s:26:\"index.php?post_type=campus\";s:41:\"campuses/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:36:\"campuses/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:28:\"campuses/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=campus&paged=$matches[1]\";s:9:\"events/?$\";s:25:\"index.php?post_type=event\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:11:\"programs/?$\";s:27:\"index.php?post_type=program\";s:41:\"programs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:36:\"programs/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:28:\"programs/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=program&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"campuses/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"campuses/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"campuses/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"campuses/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"campuses/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"campuses/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"campuses/([^/]+)/embed/?$\";s:39:\"index.php?campus=$matches[1]&embed=true\";s:29:\"campuses/([^/]+)/trackback/?$\";s:33:\"index.php?campus=$matches[1]&tb=1\";s:49:\"campuses/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:44:\"campuses/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:37:\"campuses/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&paged=$matches[2]\";s:44:\"campuses/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&cpage=$matches[2]\";s:33:\"campuses/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?campus=$matches[1]&page=$matches[2]\";s:25:\"campuses/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"campuses/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"campuses/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"campuses/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"campuses/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"campuses/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"programs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"programs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"programs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"programs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"programs/([^/]+)/embed/?$\";s:40:\"index.php?program=$matches[1]&embed=true\";s:29:\"programs/([^/]+)/trackback/?$\";s:34:\"index.php?program=$matches[1]&tb=1\";s:49:\"programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:44:\"programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:37:\"programs/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&paged=$matches[2]\";s:44:\"programs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&cpage=$matches[2]\";s:33:\"programs/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?program=$matches[1]&page=$matches[2]\";s:25:\"programs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"programs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"programs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"programs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"professor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"professor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"professor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"professor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"professor/([^/]+)/embed/?$\";s:42:\"index.php?professor=$matches[1]&embed=true\";s:30:\"professor/([^/]+)/trackback/?$\";s:36:\"index.php?professor=$matches[1]&tb=1\";s:38:\"professor/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&paged=$matches[2]\";s:45:\"professor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&cpage=$matches[2]\";s:34:\"professor/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?professor=$matches[1]&page=$matches[2]\";s:26:\"professor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"professor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"professor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"professor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=33&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:39:\"manual-image-crop/manual-image-crop.php\";i:2;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','a:2:{i:0;s:115:\"/Users/joshualin/Local Sites/fictional-university/app/public/wp-content/themes/fictional-university-theme/style.css\";i:1;s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (40,'template','fictional-university-theme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','fictional-university-theme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','57155','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','0','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','35','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','33','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1731485847','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'wp_attachment_pages_enabled','0','yes');
INSERT INTO `wp_options` VALUES (100,'initial_db_version','57155','yes');
INSERT INTO `wp_options` VALUES (101,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (102,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (103,'user_count','1','no');
INSERT INTO `wp_options` VALUES (104,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (106,'cron','a:8:{i:1716558171;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1716581848;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1716582388;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1716625048;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1716625588;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1716625590;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1716730341;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:5:\"6.5.3\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:27:\"post-content/editor-rtl.css\";i:281;s:31:\"post-content/editor-rtl.min.css\";i:282;s:23:\"post-content/editor.css\";i:283;s:27:\"post-content/editor.min.css\";i:284;s:23:\"post-date/style-rtl.css\";i:285;s:27:\"post-date/style-rtl.min.css\";i:286;s:19:\"post-date/style.css\";i:287;s:23:\"post-date/style.min.css\";i:288;s:27:\"post-excerpt/editor-rtl.css\";i:289;s:31:\"post-excerpt/editor-rtl.min.css\";i:290;s:23:\"post-excerpt/editor.css\";i:291;s:27:\"post-excerpt/editor.min.css\";i:292;s:26:\"post-excerpt/style-rtl.css\";i:293;s:30:\"post-excerpt/style-rtl.min.css\";i:294;s:22:\"post-excerpt/style.css\";i:295;s:26:\"post-excerpt/style.min.css\";i:296;s:34:\"post-featured-image/editor-rtl.css\";i:297;s:38:\"post-featured-image/editor-rtl.min.css\";i:298;s:30:\"post-featured-image/editor.css\";i:299;s:34:\"post-featured-image/editor.min.css\";i:300;s:33:\"post-featured-image/style-rtl.css\";i:301;s:37:\"post-featured-image/style-rtl.min.css\";i:302;s:29:\"post-featured-image/style.css\";i:303;s:33:\"post-featured-image/style.min.css\";i:304;s:34:\"post-navigation-link/style-rtl.css\";i:305;s:38:\"post-navigation-link/style-rtl.min.css\";i:306;s:30:\"post-navigation-link/style.css\";i:307;s:34:\"post-navigation-link/style.min.css\";i:308;s:28:\"post-template/editor-rtl.css\";i:309;s:32:\"post-template/editor-rtl.min.css\";i:310;s:24:\"post-template/editor.css\";i:311;s:28:\"post-template/editor.min.css\";i:312;s:27:\"post-template/style-rtl.css\";i:313;s:31:\"post-template/style-rtl.min.css\";i:314;s:23:\"post-template/style.css\";i:315;s:27:\"post-template/style.min.css\";i:316;s:24:\"post-terms/style-rtl.css\";i:317;s:28:\"post-terms/style-rtl.min.css\";i:318;s:20:\"post-terms/style.css\";i:319;s:24:\"post-terms/style.min.css\";i:320;s:24:\"post-title/style-rtl.css\";i:321;s:28:\"post-title/style-rtl.min.css\";i:322;s:20:\"post-title/style.css\";i:323;s:24:\"post-title/style.min.css\";i:324;s:26:\"preformatted/style-rtl.css\";i:325;s:30:\"preformatted/style-rtl.min.css\";i:326;s:22:\"preformatted/style.css\";i:327;s:26:\"preformatted/style.min.css\";i:328;s:24:\"pullquote/editor-rtl.css\";i:329;s:28:\"pullquote/editor-rtl.min.css\";i:330;s:20:\"pullquote/editor.css\";i:331;s:24:\"pullquote/editor.min.css\";i:332;s:23:\"pullquote/style-rtl.css\";i:333;s:27:\"pullquote/style-rtl.min.css\";i:334;s:19:\"pullquote/style.css\";i:335;s:23:\"pullquote/style.min.css\";i:336;s:23:\"pullquote/theme-rtl.css\";i:337;s:27:\"pullquote/theme-rtl.min.css\";i:338;s:19:\"pullquote/theme.css\";i:339;s:23:\"pullquote/theme.min.css\";i:340;s:39:\"query-pagination-numbers/editor-rtl.css\";i:341;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:342;s:35:\"query-pagination-numbers/editor.css\";i:343;s:39:\"query-pagination-numbers/editor.min.css\";i:344;s:31:\"query-pagination/editor-rtl.css\";i:345;s:35:\"query-pagination/editor-rtl.min.css\";i:346;s:27:\"query-pagination/editor.css\";i:347;s:31:\"query-pagination/editor.min.css\";i:348;s:30:\"query-pagination/style-rtl.css\";i:349;s:34:\"query-pagination/style-rtl.min.css\";i:350;s:26:\"query-pagination/style.css\";i:351;s:30:\"query-pagination/style.min.css\";i:352;s:25:\"query-title/style-rtl.css\";i:353;s:29:\"query-title/style-rtl.min.css\";i:354;s:21:\"query-title/style.css\";i:355;s:25:\"query-title/style.min.css\";i:356;s:20:\"query/editor-rtl.css\";i:357;s:24:\"query/editor-rtl.min.css\";i:358;s:16:\"query/editor.css\";i:359;s:20:\"query/editor.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}','yes');
INSERT INTO `wp_options` VALUES (123,'recovery_keys','a:1:{s:22:\"c3RFuGleatCBSr24nVENtw\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BGijzFv/dGV/i5.rMl3XbZiJcyrOx.1\";s:10:\"created_at\";i:1716526648;}}','yes');
INSERT INTO `wp_options` VALUES (124,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.5.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.5.3\";s:7:\"version\";s:5:\"6.5.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1716554681;s:15:\"version_checked\";s:5:\"6.5.3\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (129,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1716539186;s:7:\"checked\";a:1:{s:26:\"fictional-university-theme\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (130,'theme_mods_twentytwentyfour','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1715934500;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','no');
INSERT INTO `wp_options` VALUES (138,'can_compress_scripts','0','yes');
INSERT INTO `wp_options` VALUES (154,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (155,'current_theme','Fictional University','yes');
INSERT INTO `wp_options` VALUES (156,'theme_mods_fictional-university-theme','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:18:\"headerMenuLocation\";i:2;s:17:\"footerLocationTwo\";i:6;s:17:\"footerLocationOne\";i:5;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (157,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (176,'_wp_suggested_policy_text_has_changed','not-changed','yes');
INSERT INTO `wp_options` VALUES (178,'_site_transient_wp_plugin_dependencies_plugin_data','a:0:{}','no');
INSERT INTO `wp_options` VALUES (179,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (186,'_transient_health-check-site-status-result','{\"good\":17,\"recommended\":3,\"critical\":0}','yes');
INSERT INTO `wp_options` VALUES (198,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (236,'wp_calendar_block_has_published_posts','1','yes');
INSERT INTO `wp_options` VALUES (270,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (306,'acf_first_activated_version','6.2.9','yes');
INSERT INTO `wp_options` VALUES (307,'acf_version','6.2.9','yes');
INSERT INTO `wp_options` VALUES (339,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (340,'new_admin_email','dev-email@wpengine.local','yes');
INSERT INTO `wp_options` VALUES (376,'mic_make2x','true','yes');
INSERT INTO `wp_options` VALUES (485,'recovery_mode_email_last_sent','1716526648','yes');
INSERT INTO `wp_options` VALUES (496,'_site_transient_timeout_theme_roots','1716540985','no');
INSERT INTO `wp_options` VALUES (497,'_site_transient_theme_roots','a:1:{s:26:\"fictional-university-theme\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (498,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1716539186;s:8:\"response\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.3.0\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.3.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=3079482\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=3079482\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";s:6:\"tested\";s:5:\"6.5.3\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:39:\"manual-image-crop/manual-image-crop.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/manual-image-crop\";s:4:\"slug\";s:17:\"manual-image-crop\";s:6:\"plugin\";s:39:\"manual-image-crop/manual-image-crop.php\";s:11:\"new_version\";s:4:\"1.12\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/manual-image-crop/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/manual-image-crop.1.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-256x256.png?rev=1154913\";s:2:\"1x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-128x128.png?rev=1154913\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/manual-image-crop/assets/banner-1544x500.jpg?rev=781224\";s:2:\"1x\";s:71:\"https://ps.w.org/manual-image-crop/assets/banner-772x250.jpg?rev=781224\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.5\";}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.6\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.6.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}}s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.2.9\";s:39:\"manual-image-crop/manual-image-crop.php\";s:4:\"1.12\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.6\";}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=341 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,1,'_edit_lock','1715934509:1');
INSERT INTO `wp_postmeta` VALUES (6,7,'_edit_lock','1716534338:1');
INSERT INTO `wp_postmeta` VALUES (7,3,'_edit_lock','1716105243:1');
INSERT INTO `wp_postmeta` VALUES (8,3,'_wp_suggested_privacy_policy_content','a:3:{s:11:\"plugin_name\";s:9:\"WordPress\";s:11:\"policy_text\";s:4466:\"<h2 class=\"wp-block-heading\">Who we are</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:10003.</p><h2 class=\"wp-block-heading\">Comments</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h2 class=\"wp-block-heading\">Media</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h2 class=\"wp-block-heading\">Cookies</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h2 class=\"wp-block-heading\">Embedded content from other websites</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h2 class=\"wp-block-heading\">Who we share your data with</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><h2 class=\"wp-block-heading\">How long we retain your data</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2 class=\"wp-block-heading\">What rights you have over your data</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2 class=\"wp-block-heading\">Where your data is sent</h2><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\";s:5:\"added\";i:1715998315;}');
INSERT INTO `wp_postmeta` VALUES (10,13,'_edit_lock','1716107194:1');
INSERT INTO `wp_postmeta` VALUES (11,15,'_edit_lock','1716107187:1');
INSERT INTO `wp_postmeta` VALUES (12,17,'_edit_lock','1716001141:1');
INSERT INTO `wp_postmeta` VALUES (13,2,'_edit_lock','1716108121:1');
INSERT INTO `wp_postmeta` VALUES (14,19,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (15,19,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (16,19,'_menu_item_object_id','19');
INSERT INTO `wp_postmeta` VALUES (17,19,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (18,19,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (19,19,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (20,19,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (21,19,'_menu_item_url','http://localhost:10003/');
INSERT INTO `wp_postmeta` VALUES (22,19,'_menu_item_orphaned','1716113766');
INSERT INTO `wp_postmeta` VALUES (23,20,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (24,20,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (25,20,'_menu_item_object_id','3');
INSERT INTO `wp_postmeta` VALUES (26,20,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (27,20,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (28,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (29,20,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (30,20,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (32,21,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (33,21,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (34,21,'_menu_item_object_id','17');
INSERT INTO `wp_postmeta` VALUES (35,21,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (36,21,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (37,21,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (38,21,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (39,21,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (40,21,'_menu_item_orphaned','1716113766');
INSERT INTO `wp_postmeta` VALUES (41,22,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (42,22,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (43,22,'_menu_item_object_id','7');
INSERT INTO `wp_postmeta` VALUES (44,22,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (45,22,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (46,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (47,22,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (48,22,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (50,23,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (51,23,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (52,23,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (53,23,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (54,23,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (55,23,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (56,23,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (57,23,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (58,23,'_menu_item_orphaned','1716113766');
INSERT INTO `wp_postmeta` VALUES (59,24,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (60,24,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (61,24,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (62,24,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (63,24,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (64,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (65,24,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (66,24,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (67,24,'_menu_item_orphaned','1716113766');
INSERT INTO `wp_postmeta` VALUES (68,25,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (69,25,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (70,25,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (71,25,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (72,25,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (73,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (74,25,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (75,25,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (76,25,'_menu_item_orphaned','1716113766');
INSERT INTO `wp_postmeta` VALUES (113,30,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (114,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (115,30,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (116,30,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (117,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (118,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (119,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (120,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (122,31,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (123,31,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (124,31,'_menu_item_object_id','31');
INSERT INTO `wp_postmeta` VALUES (125,31,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (126,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (127,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (128,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (129,31,'_menu_item_url','https://google.com');
INSERT INTO `wp_postmeta` VALUES (131,32,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (132,32,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (133,32,'_menu_item_object_id','32');
INSERT INTO `wp_postmeta` VALUES (134,32,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (135,32,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (136,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (137,32,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (138,32,'_menu_item_url','https://www.apple.com/tw/');
INSERT INTO `wp_postmeta` VALUES (140,33,'_edit_lock','1716172279:1');
INSERT INTO `wp_postmeta` VALUES (141,35,'_edit_lock','1716126644:1');
INSERT INTO `wp_postmeta` VALUES (142,37,'_edit_lock','1716126465:1');
INSERT INTO `wp_postmeta` VALUES (144,35,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (145,35,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (146,39,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (147,40,'_edit_lock','1716128668:1');
INSERT INTO `wp_postmeta` VALUES (150,42,'_edit_lock','1716128349:1');
INSERT INTO `wp_postmeta` VALUES (153,44,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (158,47,'_edit_lock','1716183345:1');
INSERT INTO `wp_postmeta` VALUES (161,50,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (162,50,'_edit_lock','1716185779:1');
INSERT INTO `wp_postmeta` VALUES (163,51,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (164,51,'_edit_lock','1716524838:1');
INSERT INTO `wp_postmeta` VALUES (165,52,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (166,52,'_edit_lock','1716525047:1');
INSERT INTO `wp_postmeta` VALUES (167,56,'_edit_lock','1716182898:1');
INSERT INTO `wp_postmeta` VALUES (175,59,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (176,59,'_edit_lock','1716185602:1');
INSERT INTO `wp_postmeta` VALUES (177,52,'event_date','20241024');
INSERT INTO `wp_postmeta` VALUES (178,52,'_event_date','field_664ae7ad1d2f6');
INSERT INTO `wp_postmeta` VALUES (179,51,'event_date','20370905');
INSERT INTO `wp_postmeta` VALUES (180,51,'_event_date','field_664ae7ad1d2f6');
INSERT INTO `wp_postmeta` VALUES (181,50,'event_date','20240217');
INSERT INTO `wp_postmeta` VALUES (182,50,'_event_date','field_664ae7ad1d2f6');
INSERT INTO `wp_postmeta` VALUES (183,61,'_edit_lock','1716190213:1');
INSERT INTO `wp_postmeta` VALUES (184,61,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (185,61,'event_date','20000505');
INSERT INTO `wp_postmeta` VALUES (186,61,'_event_date','field_664ae7ad1d2f6');
INSERT INTO `wp_postmeta` VALUES (187,62,'_edit_lock','1716191522:1');
INSERT INTO `wp_postmeta` VALUES (188,62,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (189,62,'event_date','20730501');
INSERT INTO `wp_postmeta` VALUES (190,62,'_event_date','field_664ae7ad1d2f6');
INSERT INTO `wp_postmeta` VALUES (191,63,'_edit_lock','1716191428:1');
INSERT INTO `wp_postmeta` VALUES (192,65,'_edit_lock','1716191570:1');
INSERT INTO `wp_postmeta` VALUES (193,67,'_edit_lock','1716193108:1');
INSERT INTO `wp_postmeta` VALUES (194,67,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (195,67,'event_date','20160101');
INSERT INTO `wp_postmeta` VALUES (196,67,'_event_date','field_664ae7ad1d2f6');
INSERT INTO `wp_postmeta` VALUES (197,68,'_edit_lock','1716525136:1');
INSERT INTO `wp_postmeta` VALUES (198,69,'_edit_lock','1716524800:1');
INSERT INTO `wp_postmeta` VALUES (199,70,'_edit_lock','1716193211:1');
INSERT INTO `wp_postmeta` VALUES (200,71,'_edit_lock','1716193255:1');
INSERT INTO `wp_postmeta` VALUES (201,73,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (202,73,'_edit_lock','1716210953:1');
INSERT INTO `wp_postmeta` VALUES (203,51,'related_programs','a:2:{i:0;s:2:\"69\";i:1;s:2:\"68\";}');
INSERT INTO `wp_postmeta` VALUES (204,51,'_related_programs','field_664b0c55c28b7');
INSERT INTO `wp_postmeta` VALUES (205,51,'_','field_664b0c7dc28b8');
INSERT INTO `wp_postmeta` VALUES (206,76,'_edit_lock','1716218928:1');
INSERT INTO `wp_postmeta` VALUES (207,77,'_edit_lock','1716522175:1');
INSERT INTO `wp_postmeta` VALUES (208,77,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (209,77,'related_programs','a:1:{i:0;s:2:\"69\";}');
INSERT INTO `wp_postmeta` VALUES (210,77,'_related_programs','field_664b0c55c28b7');
INSERT INTO `wp_postmeta` VALUES (211,77,'_','field_664b0c7dc28b8');
INSERT INTO `wp_postmeta` VALUES (212,78,'_wp_attached_file','2024/05/barksalot-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (213,78,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:28:\"2024/05/barksalot-scaled.jpg\";s:8:\"filesize\";i:375246;s:5:\"sizes\";a:8:{s:9:\"2048x2048\";a:5:{s:4:\"file\";s:23:\"barksalot-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:243678;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:21:\"barksalot-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16771;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:21:\"barksalot-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:45631;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"barksalot-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7427;}s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"barksalot-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11687;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"barksalot-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:44435;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"barksalot-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:71394;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:23:\"barksalot-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:146855;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"barksalot.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (214,77,'_thumbnail_id','78');
INSERT INTO `wp_postmeta` VALUES (215,79,'_wp_attached_file','2024/05/meowsalot-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (216,79,'_wp_attachment_metadata','a:8:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:28:\"2024/05/meowsalot-scaled.jpg\";s:8:\"filesize\";i:255782;s:5:\"sizes\";a:8:{s:9:\"2048x2048\";a:5:{s:4:\"file\";s:23:\"meowsalot-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:159985;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:21:\"meowsalot-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12932;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:21:\"meowsalot-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:32761;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"meowsalot-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6682;}s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"meowsalot-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9601;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"meowsalot-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:30433;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"meowsalot-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:46937;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:23:\"meowsalot-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:92525;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"meowsalot.jpg\";s:15:\"micSelectedArea\";a:1:{s:18:\"professorLandscape\";a:5:{s:1:\"x\";s:2:\"88\";s:1:\"y\";s:2:\"42\";s:1:\"w\";s:3:\"328\";s:1:\"h\";s:18:\"213.20000000000533\";s:5:\"scale\";s:4:\"5.12\";}}}');
INSERT INTO `wp_postmeta` VALUES (217,76,'_thumbnail_id','79');
INSERT INTO `wp_postmeta` VALUES (218,76,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (219,76,'related_programs','a:2:{i:0;s:2:\"69\";i:1;s:2:\"68\";}');
INSERT INTO `wp_postmeta` VALUES (220,76,'_related_programs','field_664b0c55c28b7');
INSERT INTO `wp_postmeta` VALUES (221,76,'_','field_664b0c7dc28b8');
INSERT INTO `wp_postmeta` VALUES (222,80,'_edit_lock','1716215240:1');
INSERT INTO `wp_postmeta` VALUES (223,81,'_wp_attached_file','2024/05/frog-bio-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (224,81,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1999;s:4:\"file\";s:27:\"2024/05/frog-bio-scaled.jpg\";s:8:\"filesize\";i:297873;s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"frog-bio-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8442;}s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"frog-bio-300x234.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:234;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15271;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"frog-bio-768x600.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:50747;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"frog-bio-1024x800.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:76205;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"frog-bio-1536x1199.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1199;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:137837;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:22:\"frog-bio-2048x1599.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1599;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:211737;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:20:\"frog-bio-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19058;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:20:\"frog-bio-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:39679;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"frog-bio.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (225,80,'_thumbnail_id','81');
INSERT INTO `wp_postmeta` VALUES (226,80,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (227,80,'related_programs','');
INSERT INTO `wp_postmeta` VALUES (228,80,'_related_programs','field_664b0c55c28b7');
INSERT INTO `wp_postmeta` VALUES (229,80,'_','field_664b0c7dc28b8');
INSERT INTO `wp_postmeta` VALUES (230,82,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (231,82,'_edit_lock','1716219856:1');
INSERT INTO `wp_postmeta` VALUES (232,85,'_wp_attached_file','2024/05/field-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (233,85,'_wp_attachment_metadata','a:8:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:24:\"2024/05/field-scaled.jpg\";s:8:\"filesize\";i:825225;s:5:\"sizes\";a:9:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"field-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14540;}s:5:\"large\";a:5:{s:4:\"file\";s:18:\"field-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:127852;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"field-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7967;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"field-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:72473;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:19:\"field-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:289062;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:19:\"field-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:523394;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:17:\"field-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22478;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:17:\"field-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:59582;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:18:\"field-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:106291;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:9:\"field.jpg\";s:15:\"micSelectedArea\";a:1:{s:10:\"pageBanner\";a:5:{s:1:\"x\";s:1:\"0\";s:1:\"y\";s:2:\"93\";s:1:\"w\";s:3:\"500\";s:1:\"h\";s:18:\"116.66666666666629\";s:5:\"scale\";s:4:\"5.12\";}}}');
INSERT INTO `wp_postmeta` VALUES (234,77,'page_banner_subtitle','The leading voice on barking and biology.');
INSERT INTO `wp_postmeta` VALUES (235,77,'_page_banner_subtitle','field_664b6c4212457');
INSERT INTO `wp_postmeta` VALUES (236,77,'page_banner_background_image','85');
INSERT INTO `wp_postmeta` VALUES (237,77,'_page_banner_background_image','field_664b6c5412458');
INSERT INTO `wp_postmeta` VALUES (241,88,'_wp_attached_file','2024/05/wallpaperflare.com_wallpaper.jpg');
INSERT INTO `wp_postmeta` VALUES (242,88,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2448;s:6:\"height\";i:1836;s:4:\"file\";s:40:\"2024/05/wallpaperflare.com_wallpaper.jpg\";s:8:\"filesize\";i:725544;s:5:\"sizes\";a:9:{s:6:\"medium\";a:5:{s:4:\"file\";s:40:\"wallpaperflare.com_wallpaper-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:34628;}s:5:\"large\";a:5:{s:4:\"file\";s:41:\"wallpaperflare.com_wallpaper-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:195283;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:40:\"wallpaperflare.com_wallpaper-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:23420;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:40:\"wallpaperflare.com_wallpaper-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:119959;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:42:\"wallpaperflare.com_wallpaper-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:389395;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:42:\"wallpaperflare.com_wallpaper-2048x1536.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:620823;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:40:\"wallpaperflare.com_wallpaper-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:43753;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:40:\"wallpaperflare.com_wallpaper-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:89339;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:41:\"wallpaperflare.com_wallpaper-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:142312;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:8:\"iPhone 5\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1412434202\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"4.12\";s:3:\"iso\";s:2:\"80\";s:13:\"shutter_speed\";s:18:\"0.0083333333333333\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:3:\"256\";s:8:\"keywords\";a:0:{}}s:15:\"micSelectedArea\";a:1:{s:10:\"pageBanner\";a:5:{s:1:\"x\";s:1:\"0\";s:1:\"y\";s:3:\"129\";s:1:\"w\";s:15:\"466.66666666667\";s:1:\"h\";s:18:\"108.88888888888931\";s:5:\"scale\";s:15:\"5.2457142857143\";}}}');
INSERT INTO `wp_postmeta` VALUES (244,7,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (246,89,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (248,7,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (249,7,'page_banner_subtitle','We are a great school that has been around for a long time.');
INSERT INTO `wp_postmeta` VALUES (250,7,'_page_banner_subtitle','field_664b6c4212457');
INSERT INTO `wp_postmeta` VALUES (251,7,'page_banner_background_image','88');
INSERT INTO `wp_postmeta` VALUES (252,7,'_page_banner_background_image','field_664b6c5412458');
INSERT INTO `wp_postmeta` VALUES (253,89,'page_banner_subtitle','We are a great school that has been around for a long time.');
INSERT INTO `wp_postmeta` VALUES (254,89,'_page_banner_subtitle','field_664b6c4212457');
INSERT INTO `wp_postmeta` VALUES (255,89,'page_banner_background_image','88');
INSERT INTO `wp_postmeta` VALUES (256,89,'_page_banner_background_image','field_664b6c5412458');
INSERT INTO `wp_postmeta` VALUES (257,90,'_wp_attached_file','2024/05/wallpaperflare.com_wallpaper-1.jpg');
INSERT INTO `wp_postmeta` VALUES (258,90,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:42:\"2024/05/wallpaperflare.com_wallpaper-1.jpg\";s:8:\"filesize\";i:606799;s:5:\"sizes\";a:9:{s:6:\"medium\";a:5:{s:4:\"file\";s:42:\"wallpaperflare.com_wallpaper-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13330;}s:5:\"large\";a:5:{s:4:\"file\";s:43:\"wallpaperflare.com_wallpaper-1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:108903;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:42:\"wallpaperflare.com_wallpaper-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6266;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:42:\"wallpaperflare.com_wallpaper-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:65663;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:43:\"wallpaperflare.com_wallpaper-1-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:222821;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:44:\"wallpaperflare.com_wallpaper-1-2048x1152.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:360942;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:42:\"wallpaperflare.com_wallpaper-1-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:23859;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:42:\"wallpaperflare.com_wallpaper-1-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:58496;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:43:\"wallpaperflare.com_wallpaper-1-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:80822;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:15:\"micSelectedArea\";a:1:{s:10:\"pageBanner\";a:5:{s:1:\"x\";s:1:\"0\";s:1:\"y\";s:2:\"73\";s:1:\"w\";s:3:\"500\";s:1:\"h\";s:18:\"116.66666666666629\";s:5:\"scale\";s:4:\"5.12\";}}}');
INSERT INTO `wp_postmeta` VALUES (259,52,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (260,52,'_page_banner_subtitle','field_664b6c4212457');
INSERT INTO `wp_postmeta` VALUES (261,52,'page_banner_background_image','90');
INSERT INTO `wp_postmeta` VALUES (262,52,'_page_banner_background_image','field_664b6c5412458');
INSERT INTO `wp_postmeta` VALUES (263,52,'related_programs','a:1:{i:0;s:2:\"71\";}');
INSERT INTO `wp_postmeta` VALUES (264,52,'_related_programs','field_664b0c55c28b7');
INSERT INTO `wp_postmeta` VALUES (265,52,'_','field_664b0c7dc28b8');
INSERT INTO `wp_postmeta` VALUES (266,91,'_wp_attached_file','2024/05/wallpaperflare.com_wallpaper-2-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (267,91,'_wp_attachment_metadata','a:8:{s:5:\"width\";i:2560;s:6:\"height\";i:1706;s:4:\"file\";s:49:\"2024/05/wallpaperflare.com_wallpaper-2-scaled.jpg\";s:8:\"filesize\";i:256559;s:5:\"sizes\";a:9:{s:6:\"medium\";a:5:{s:4:\"file\";s:42:\"wallpaperflare.com_wallpaper-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21694;}s:5:\"large\";a:5:{s:4:\"file\";s:43:\"wallpaperflare.com_wallpaper-2-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:69787;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:42:\"wallpaperflare.com_wallpaper-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17504;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:42:\"wallpaperflare.com_wallpaper-2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:49441;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:44:\"wallpaperflare.com_wallpaper-2-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:117760;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:44:\"wallpaperflare.com_wallpaper-2-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:180034;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:42:\"wallpaperflare.com_wallpaper-2-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:26327;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:42:\"wallpaperflare.com_wallpaper-2-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:48592;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:43:\"wallpaperflare.com_wallpaper-2-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:41737;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"6.3\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1485698135\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:34:\"wallpaperflare.com_wallpaper-2.jpg\";s:15:\"micSelectedArea\";a:1:{s:10:\"pageBanner\";a:5:{s:1:\"x\";s:1:\"0\";s:1:\"y\";s:3:\"161\";s:1:\"w\";s:3:\"500\";s:1:\"h\";s:18:\"116.66666666666629\";s:5:\"scale\";s:4:\"5.12\";}}}');
INSERT INTO `wp_postmeta` VALUES (268,69,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (269,69,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (270,69,'_page_banner_subtitle','field_664b6c4212457');
INSERT INTO `wp_postmeta` VALUES (271,69,'page_banner_background_image','91');
INSERT INTO `wp_postmeta` VALUES (272,69,'_page_banner_background_image','field_664b6c5412458');
INSERT INTO `wp_postmeta` VALUES (273,92,'_edit_lock','1716279992:1');
INSERT INTO `wp_postmeta` VALUES (274,92,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (275,92,'page_banner_subtitle','A beautiful campus in the heart of downtown.');
INSERT INTO `wp_postmeta` VALUES (276,92,'_page_banner_subtitle','field_664b6c4212457');
INSERT INTO `wp_postmeta` VALUES (277,92,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (278,92,'_page_banner_background_image','field_664b6c5412458');
INSERT INTO `wp_postmeta` VALUES (279,93,'_edit_lock','1716524987:1');
INSERT INTO `wp_postmeta` VALUES (280,93,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (281,93,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (282,93,'_page_banner_subtitle','field_664b6c4212457');
INSERT INTO `wp_postmeta` VALUES (283,93,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (284,93,'_page_banner_background_image','field_664b6c5412458');
INSERT INTO `wp_postmeta` VALUES (285,94,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (286,94,'_edit_lock','1716279785:1');
INSERT INTO `wp_postmeta` VALUES (287,92,'map_location','a:13:{s:7:\"address\";s:63:\"Taiwan, 新北市 Yonghe District, Zhulin Road, 永和區公所\";s:3:\"lat\";d:25.009176799999999;s:3:\"lng\";d:121.5202731;s:4:\"zoom\";i:14;s:8:\"place_id\";s:27:\"ChIJq6J8s-6pQjQRp07UgWMgyyY\";s:4:\"name\";s:38:\"New Taipei City Yonghe District Office\";s:13:\"street_number\";s:3:\"200\";s:11:\"street_name\";s:11:\"Zhulin Road\";s:17:\"street_name_short\";s:9:\"Zhulin Rd\";s:5:\"state\";s:15:\"New Taipei City\";s:9:\"post_code\";s:3:\"234\";s:7:\"country\";s:6:\"Taiwan\";s:13:\"country_short\";s:2:\"TW\";}');
INSERT INTO `wp_postmeta` VALUES (288,92,'_map_location','field_664c45ab6ad5f');
INSERT INTO `wp_postmeta` VALUES (289,92,'_','field_664c45b46ad60');
INSERT INTO `wp_postmeta` VALUES (290,93,'map_location','a:10:{s:7:\"address\";s:76:\"Taiwan, New Taipei City, Yonghe District, AA Darts Shop AsiA 飛鏢用品店\";s:3:\"lat\";d:25.0142138;s:3:\"lng\";d:121.5154424;s:4:\"zoom\";i:14;s:8:\"place_id\";s:27:\"ChIJx-9si-qpQjQRoytnfoY4C2k\";s:4:\"name\";s:34:\"AA Darts Shop AsiA 飛鏢用品店\";s:5:\"state\";s:15:\"New Taipei City\";s:9:\"post_code\";s:3:\"234\";s:7:\"country\";s:6:\"Taiwan\";s:13:\"country_short\";s:2:\"TW\";}');
INSERT INTO `wp_postmeta` VALUES (291,93,'_map_location','field_664c45ab6ad5f');
INSERT INTO `wp_postmeta` VALUES (292,93,'_','field_664c45b46ad60');
INSERT INTO `wp_postmeta` VALUES (293,97,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (294,97,'_edit_lock','1716280320:1');
INSERT INTO `wp_postmeta` VALUES (295,68,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (296,68,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (297,68,'_page_banner_subtitle','field_664b6c4212457');
INSERT INTO `wp_postmeta` VALUES (298,68,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (299,68,'_page_banner_background_image','field_664b6c5412458');
INSERT INTO `wp_postmeta` VALUES (300,68,'related_campus','a:1:{i:0;s:2:\"93\";}');
INSERT INTO `wp_postmeta` VALUES (301,68,'_related_campus','field_664c5c1965edd');
INSERT INTO `wp_postmeta` VALUES (302,68,'_','field_664c5c2f65ede');
INSERT INTO `wp_postmeta` VALUES (303,100,'_edit_lock','1716309672:1');
INSERT INTO `wp_postmeta` VALUES (306,100,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (307,100,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (308,100,'_page_banner_subtitle','field_664b6c4212457');
INSERT INTO `wp_postmeta` VALUES (309,100,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (310,100,'_page_banner_background_image','field_664b6c5412458');
INSERT INTO `wp_postmeta` VALUES (311,101,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (312,101,'_page_banner_subtitle','field_664b6c4212457');
INSERT INTO `wp_postmeta` VALUES (313,101,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (314,101,'_page_banner_background_image','field_664b6c5412458');
INSERT INTO `wp_postmeta` VALUES (315,102,'_edit_lock','1716309534:1');
INSERT INTO `wp_postmeta` VALUES (316,103,'_edit_lock','1716309717:1');
INSERT INTO `wp_postmeta` VALUES (317,103,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (318,103,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (319,103,'_page_banner_subtitle','field_664b6c4212457');
INSERT INTO `wp_postmeta` VALUES (320,103,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (321,103,'_page_banner_background_image','field_664b6c5412458');
INSERT INTO `wp_postmeta` VALUES (322,104,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (323,104,'_page_banner_subtitle','field_664b6c4212457');
INSERT INTO `wp_postmeta` VALUES (324,104,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (325,104,'_page_banner_background_image','field_664b6c5412458');
INSERT INTO `wp_postmeta` VALUES (328,69,'related_campus','');
INSERT INTO `wp_postmeta` VALUES (329,69,'_related_campus','field_664c5c1965edd');
INSERT INTO `wp_postmeta` VALUES (330,69,'_','field_664c5c2f65ede');
INSERT INTO `wp_postmeta` VALUES (331,105,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (332,105,'_edit_lock','1716523867:1');
INSERT INTO `wp_postmeta` VALUES (333,69,'main_body_content','<!-- wp:paragraph -->\r\n\r\nThe biology program works closely with the math profram.\r\n\r\n<!-- /wp:paragraph --> <!-- wp:paragraph -->\r\n\r\nThis is Biology program post!!!\r\n\r\n<!-- /wp:paragraph --> <!-- wp:paragraph -->\r\n\r\nThis is Biology program post!!!\r\n\r\n<!-- /wp:paragraph -->');
INSERT INTO `wp_postmeta` VALUES (334,69,'_main_body_content','field_6650137128695');
INSERT INTO `wp_postmeta` VALUES (335,108,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (336,108,'page_banner_subtitle','We are a great school that has been around for a long time.');
INSERT INTO `wp_postmeta` VALUES (337,108,'_page_banner_subtitle','field_664b6c4212457');
INSERT INTO `wp_postmeta` VALUES (338,108,'page_banner_background_image','88');
INSERT INTO `wp_postmeta` VALUES (339,108,'_page_banner_background_image','field_664b6c5412458');
INSERT INTO `wp_postmeta` VALUES (340,109,'_edit_lock','1716534771:1');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2024-05-17 08:17:27','2024-05-17 08:17:27','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world! JP Studio','','publish','open','open','','hello-world','','','2024-05-17 08:30:50','2024-05-17 08:30:50','',0,'http://localhost:10003/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2024-05-17 08:17:27','2024-05-17 08:17:27','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:10003/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2024-05-17 08:17:27','2024-05-17 08:17:27','',0,'http://localhost:10003/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2024-05-17 08:17:27','2024-05-17 08:17:27','<!-- wp:heading {\"textAlign\":\"left\",\"level\":5} -->\n<h5 class=\"wp-block-heading has-text-align-left\">This is privacy policy~~~~</h5>\n<!-- /wp:heading -->','Privacy Policy','','publish','closed','open','','privacy-policy','','','2024-05-18 02:22:35','2024-05-18 02:22:35','',0,'http://localhost:10003/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,0,'2024-05-17 08:17:45','2024-05-17 08:17:45','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2024-05-17 08:17:45','2024-05-17 08:17:45','',0,'http://localhost:10003/navigation/',0,'wp_navigation','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2024-05-17 08:30:50','2024-05-17 08:30:50','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world! JP Studio','','inherit','closed','closed','','1-revision-v1','','','2024-05-17 08:30:50','2024-05-17 08:30:50','',1,'http://localhost:10003/?p=6',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2024-05-18 02:05:35','2024-05-18 02:05:35','<!-- wp:paragraph -->\n<p>這是關於我的作品集👍</p>\n<!-- /wp:paragraph -->','About Us','','publish','closed','closed','','about-us','','','2024-05-24 07:05:38','2024-05-24 07:05:38','',0,'http://localhost:10003/?page_id=7',0,'page','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2024-05-18 02:05:35','2024-05-18 02:05:35','<!-- wp:paragraph -->\n<p>This is the about page content.This is the about page content.This is the about page content.This is the about page content.This is the about page content.This is the about page content.This is the about page content.This is the about page content.This is the about page content.This is the about page content.This is the about page content.This is the about page content.This is the about page content.This is the about page content.This is the about page content.This is the about page content.This is the about page content.This is the about page content.</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','7-revision-v1','','','2024-05-18 02:05:35','2024-05-18 02:05:35','',7,'http://localhost:10003/?p=8',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2024-05-18 02:06:15','2024-05-18 02:06:15','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:10003.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2024-05-18 02:06:15','2024-05-18 02:06:15','',3,'http://localhost:10003/?p=9',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2024-05-18 02:22:10','2024-05-18 02:22:10','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">This is privacy policy~~~~</h2>\n<!-- /wp:heading -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2024-05-18 02:22:10','2024-05-18 02:22:10','',3,'http://localhost:10003/?p=11',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2024-05-18 02:22:35','2024-05-18 02:22:35','<!-- wp:heading {\"textAlign\":\"left\",\"level\":5} -->\n<h5 class=\"wp-block-heading has-text-align-left\">This is privacy policy~~~~</h5>\n<!-- /wp:heading -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2024-05-18 02:22:35','2024-05-18 02:22:35','',3,'http://localhost:10003/?p=12',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2024-05-18 02:46:52','2024-05-18 02:46:52','<!-- wp:paragraph -->\n<p>This is our history website page!!!This is our history website page!!!This is our history website page!!!This is our history website page!!!This is our history website page!!!This is our history website page!!!This is our history website page!!!This is our history website page!!!This is our history website page!!!This is our history website page!!!This is our history website page!!!</p>\n<!-- /wp:paragraph -->','Our History','','publish','closed','closed','','our-history','','','2024-05-18 02:46:52','2024-05-18 02:46:52','',7,'http://localhost:10003/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2024-05-18 02:46:52','2024-05-18 02:46:52','<!-- wp:paragraph -->\n<p>This is our history website page!!!This is our history website page!!!This is our history website page!!!This is our history website page!!!This is our history website page!!!This is our history website page!!!This is our history website page!!!This is our history website page!!!This is our history website page!!!This is our history website page!!!This is our history website page!!!</p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','13-revision-v1','','','2024-05-18 02:46:52','2024-05-18 02:46:52','',13,'http://localhost:10003/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2024-05-18 02:47:36','2024-05-18 02:47:36','<!-- wp:paragraph -->\n<p>This is our goals page~~~This is our goals page~~~This is our goals page~~~This is our goals page~~~This is our goals page~~~This is our goals page~~~This is our goals page~~~This is our goals page~~~This is our goals page~~~This is our goals page~~~This is our goals page~~~</p>\n<!-- /wp:paragraph -->','Our Goals','','publish','closed','closed','','our-goals','','','2024-05-19 08:28:43','2024-05-19 08:28:43','',7,'http://localhost:10003/?page_id=15',1,'page','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2024-05-18 02:47:36','2024-05-18 02:47:36','<!-- wp:paragraph -->\n<p>This is our goals page~~~This is our goals page~~~This is our goals page~~~This is our goals page~~~This is our goals page~~~This is our goals page~~~This is our goals page~~~This is our goals page~~~This is our goals page~~~This is our goals page~~~This is our goals page~~~</p>\n<!-- /wp:paragraph -->','Our Goals','','inherit','closed','closed','','15-revision-v1','','','2024-05-18 02:47:36','2024-05-18 02:47:36','',15,'http://localhost:10003/?p=16',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2024-05-18 03:01:17','2024-05-18 03:01:17','<!-- wp:paragraph -->\n<p>This is Cookie child page~~~~~~</p>\n<!-- /wp:paragraph -->','Cookie Policy','','publish','closed','closed','','cookie-policy','','','2024-05-18 03:01:17','2024-05-18 03:01:17','',3,'http://localhost:10003/?page_id=17',0,'page','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2024-05-18 03:01:17','2024-05-18 03:01:17','<!-- wp:paragraph -->\n<p>This is Cookie child page~~~~~~</p>\n<!-- /wp:paragraph -->','Cookie Policy','','inherit','closed','closed','','17-revision-v1','','','2024-05-18 03:01:17','2024-05-18 03:01:17','',17,'http://localhost:10003/?p=18',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2024-05-19 10:16:06','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2024-05-19 10:16:06','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=19',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2024-05-19 12:35:33','2024-05-19 10:17:45',' ','','','publish','closed','closed','','20','','','2024-05-19 12:35:33','2024-05-19 12:35:33','',0,'http://localhost:10003/?p=20',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2024-05-19 10:16:06','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-05-19 10:16:06','0000-00-00 00:00:00','',3,'http://localhost:10003/?p=21',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2024-05-19 12:35:33','2024-05-19 10:17:45',' ','','','publish','closed','closed','','22','','','2024-05-19 12:35:33','2024-05-19 12:35:33','',0,'http://localhost:10003/?p=22',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2024-05-19 10:16:06','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-05-19 10:16:06','0000-00-00 00:00:00','',7,'http://localhost:10003/?p=23',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2024-05-19 10:16:06','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-05-19 10:16:06','0000-00-00 00:00:00','',7,'http://localhost:10003/?p=24',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2024-05-19 10:16:06','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-05-19 10:16:06','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=25',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2024-05-19 12:53:45','2024-05-19 12:53:45',' ','','','publish','closed','closed','','30','','','2024-05-19 12:53:45','2024-05-19 12:53:45','',0,'http://localhost:10003/?p=30',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2024-05-19 12:53:45','2024-05-19 12:53:45','','Google','','publish','closed','closed','','google','','','2024-05-19 12:53:45','2024-05-19 12:53:45','',0,'http://localhost:10003/?p=31',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2024-05-19 12:54:21','2024-05-19 12:54:21','','Apple','','publish','closed','closed','','apple','','','2024-05-19 12:54:21','2024-05-19 12:54:21','',0,'http://localhost:10003/?p=32',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2024-05-19 13:32:02','2024-05-19 13:32:02','','Home testing','','publish','closed','closed','','home','','','2024-05-20 01:40:13','2024-05-20 01:40:13','',0,'http://localhost:10003/?page_id=33',0,'page','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2024-05-19 13:32:02','2024-05-19 13:32:02','','Home','','inherit','closed','closed','','33-revision-v1','','','2024-05-19 13:32:02','2024-05-19 13:32:02','',33,'http://localhost:10003/?p=34',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2024-05-19 13:32:13','2024-05-19 13:32:13','','Blog','','publish','closed','closed','','blog','','','2024-05-19 13:53:03','2024-05-19 13:53:03','',0,'http://localhost:10003/?page_id=35',0,'page','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2024-05-19 13:32:13','2024-05-19 13:32:13','','Blog','','inherit','closed','closed','','35-revision-v1','','','2024-05-19 13:32:13','2024-05-19 13:32:13','',35,'http://localhost:10003/?p=36',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2024-05-19 13:50:06','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-05-19 13:50:06','0000-00-00 00:00:00','',0,'http://localhost:10003/?page_id=37',0,'page','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2024-05-19 13:53:03','2024-05-19 13:53:03','','Blog','','inherit','closed','closed','','35-revision-v1','','','2024-05-19 13:53:03','2024-05-19 13:53:03','',35,'http://localhost:10003/?p=39',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2024-05-19 14:17:03','2024-05-19 14:17:03','<!-- wp:paragraph -->\n<p>This is Test Post 1 Content!!!!This is Test Post 1 Content!!!!This is Test Post 1 Content!!!!This is Test Post 1 Content!!!!This is Test Post 1 Content!!!!This is Test Post 1 Content!!!!This is Test Post 1 Content!!!!This is Test Post 1 Content!!!!</p>\n<!-- /wp:paragraph -->','Test Post 1','','publish','open','open','','test-post-1','','','2024-05-19 14:19:44','2024-05-19 14:19:44','',0,'http://localhost:10003/?p=40',0,'post','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2024-05-19 14:17:03','2024-05-19 14:17:03','','Test Post 1','','inherit','closed','closed','','40-revision-v1','','','2024-05-19 14:17:03','2024-05-19 14:17:03','',40,'http://localhost:10003/?p=41',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2024-05-19 14:17:15','2024-05-19 14:17:15','<!-- wp:paragraph -->\n<p>This is Test Post 2 Content~~~~This is Test Post 2 Content~~~~This is Test Post 2 Content~~~~This is Test Post 2 Content~~~~This is Test Post 2 Content~~~~This is Test Post 2 Content~~~~This is Test Post 2 Content~~~~This is Test Post 2 Content~~~~This is Test Post 2 Content~~~~</p>\n<!-- /wp:paragraph -->','Tests Post 2','','publish','open','open','','tets-post-2','','','2024-05-19 14:19:22','2024-05-19 14:19:22','',0,'http://localhost:10003/?p=42',0,'post','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2024-05-19 14:17:15','2024-05-19 14:17:15','','Tets Post 2','','inherit','closed','closed','','42-revision-v1','','','2024-05-19 14:17:15','2024-05-19 14:17:15','',42,'http://localhost:10003/?p=43',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2024-05-19 14:19:09','2024-05-19 14:19:09','<!-- wp:paragraph -->\n<p>This is Test Post 2</p>\n<!-- /wp:paragraph -->','Tests Post 2','','inherit','closed','closed','','42-autosave-v1','','','2024-05-19 14:19:09','2024-05-19 14:19:09','',42,'http://localhost:10003/?p=44',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2024-05-19 14:19:22','2024-05-19 14:19:22','<!-- wp:paragraph -->\n<p>This is Test Post 2 Content~~~~This is Test Post 2 Content~~~~This is Test Post 2 Content~~~~This is Test Post 2 Content~~~~This is Test Post 2 Content~~~~This is Test Post 2 Content~~~~This is Test Post 2 Content~~~~This is Test Post 2 Content~~~~This is Test Post 2 Content~~~~</p>\n<!-- /wp:paragraph -->','Tests Post 2','','inherit','closed','closed','','42-revision-v1','','','2024-05-19 14:19:22','2024-05-19 14:19:22','',42,'http://localhost:10003/?p=45',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2024-05-19 14:19:44','2024-05-19 14:19:44','<!-- wp:paragraph -->\n<p>This is Test Post 1 Content!!!!This is Test Post 1 Content!!!!This is Test Post 1 Content!!!!This is Test Post 1 Content!!!!This is Test Post 1 Content!!!!This is Test Post 1 Content!!!!This is Test Post 1 Content!!!!This is Test Post 1 Content!!!!</p>\n<!-- /wp:paragraph -->','Test Post 1','','inherit','closed','closed','','40-revision-v1','','','2024-05-19 14:19:44','2024-05-19 14:19:44','',40,'http://localhost:10003/?p=46',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2024-05-19 14:33:11','2024-05-19 14:33:11','<!-- wp:paragraph -->\n<p>This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~</p>\n<!-- /wp:paragraph -->','We Won An Award!!!','Our school has won another award this year.','publish','open','open','','we-won-an-award','','','2024-05-20 05:31:41','2024-05-20 05:31:41','',0,'http://localhost:10003/?p=47',0,'post','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2024-05-19 14:32:42','2024-05-19 14:32:42','<!-- wp:paragraph -->\n<p>This is testing post for category list~~~</p>\n<!-- /wp:paragraph -->','We Won An Award!!!','','inherit','closed','closed','','47-revision-v1','','','2024-05-19 14:32:42','2024-05-19 14:32:42','',47,'http://localhost:10003/?p=48',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2024-05-20 01:40:13','2024-05-20 01:40:13','','Home testing','','inherit','closed','closed','','33-revision-v1','','','2024-05-20 01:40:13','2024-05-20 01:40:13','',33,'http://localhost:10003/?p=49',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2024-05-20 02:41:47','2024-05-20 02:41:47','This is Math Meetup Event!!!','Math Meetup','','publish','closed','closed','','math-meetup','','','2024-05-20 06:16:19','2024-05-20 06:16:19','',0,'http://localhost:10003/?post_type=event&#038;p=50',0,'event','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2024-05-20 02:42:15','2024-05-20 02:42:15','This is The Science of Cats Event!!!','The Science of Cats','','publish','closed','closed','','the-science-of-cats','','','2024-05-20 11:30:07','2024-05-20 11:30:07','',0,'http://localhost:10003/?post_type=event&#038;p=51',0,'event','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2024-05-20 02:42:57','2024-05-20 02:42:57','This is Poetry Day Event!!!','Poetry Day','This is Poetry Day Event Excerpt','publish','closed','closed','','poetry-day','','','2024-05-24 04:29:51','2024-05-24 04:29:51','',0,'http://localhost:10003/?post_type=event&#038;p=52',0,'event','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2024-05-20 02:51:32','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-05-20 02:51:32','0000-00-00 00:00:00','',0,'http://localhost:10003/?post_type=event&p=53',0,'event','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2024-05-20 02:53:54','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-05-20 02:53:54','0000-00-00 00:00:00','',0,'http://localhost:10003/?post_type=event&p=54',0,'event','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2024-05-20 02:54:30','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-05-20 02:54:30','0000-00-00 00:00:00','',0,'http://localhost:10003/?post_type=event&p=55',0,'event','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2024-05-20 05:30:38','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2024-05-20 05:30:38','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=56',0,'post','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2024-05-20 05:30:56','2024-05-20 05:30:56','<!-- wp:paragraph -->\n<p>This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~</p>\n<!-- /wp:paragraph -->','We Won An Award!!!','','inherit','closed','closed','','47-revision-v1','','','2024-05-20 05:30:56','2024-05-20 05:30:56','',47,'http://localhost:10003/?p=57',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2024-05-20 05:31:41','2024-05-20 05:31:41','<!-- wp:paragraph -->\n<p>This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~This is testing post for category list~~~</p>\n<!-- /wp:paragraph -->','We Won An Award!!!','Our school has won another award this year.','inherit','closed','closed','','47-revision-v1','','','2024-05-20 05:31:41','2024-05-20 05:31:41','',47,'http://localhost:10003/?p=58',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2024-05-20 06:07:16','2024-05-20 06:07:16','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Event Date','event-date','publish','closed','closed','','group_664ae7ad76d08','','','2024-05-20 06:07:16','2024-05-20 06:07:16','',0,'http://localhost:10003/?post_type=acf-field-group&#038;p=59',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2024-05-20 06:07:16','2024-05-20 06:07:16','a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:6:\"F j, Y\";s:13:\"return_format\";s:3:\"Ymd\";s:9:\"first_day\";i:1;}','Event Date','event_date','publish','closed','closed','','field_664ae7ad1d2f6','','','2024-05-20 06:07:16','2024-05-20 06:07:16','',59,'http://localhost:10003/?post_type=acf-field&p=60',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2024-05-20 06:44:32','2024-05-20 06:44:32','<!-- wp:paragraph -->\n<p>PassPassPassPassPassPassPassPassPassPass</p>\n<!-- /wp:paragraph -->','Pass Event','','publish','closed','closed','','pass-event','','','2024-05-20 06:44:32','2024-05-20 06:44:32','',0,'http://localhost:10003/?post_type=event&#038;p=61',0,'event','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2024-05-20 07:41:19','2024-05-20 07:41:19','<!-- wp:paragraph -->\n<p>12321321321321321</p>\n<!-- /wp:paragraph -->','Winter Study Night','','publish','closed','closed','','winter-study-night','','','2024-05-20 07:41:20','2024-05-20 07:41:20','',0,'http://localhost:10003/?post_type=event&#038;p=62',0,'event','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2024-05-20 07:52:47','2024-05-20 07:52:47','','Pass Events','','publish','closed','closed','','pass-events','','','2024-05-20 07:52:47','2024-05-20 07:52:47','',0,'http://localhost:10003/?page_id=63',0,'page','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2024-05-20 07:52:47','2024-05-20 07:52:47','','Pass Events','','inherit','closed','closed','','63-revision-v1','','','2024-05-20 07:52:47','2024-05-20 07:52:47','',63,'http://localhost:10003/?p=64',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2024-05-20 07:55:14','2024-05-20 07:55:14','','Past Events','','publish','closed','closed','','past-events','','','2024-05-20 07:55:14','2024-05-20 07:55:14','',0,'http://localhost:10003/?page_id=65',0,'page','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2024-05-20 07:55:14','2024-05-20 07:55:14','','Past Events','','inherit','closed','closed','','65-revision-v1','','','2024-05-20 07:55:14','2024-05-20 07:55:14','',65,'http://localhost:10003/?p=66',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2024-05-20 08:01:56','2024-05-20 08:01:56','<!-- wp:paragraph -->\n<p>2016201620162016201620162016201620162016201620162016201620162016201620162016201620162016201620162016201620162016201620162016201620162016201620162016</p>\n<!-- /wp:paragraph -->','New Year 2016','','publish','closed','closed','','new-year-2016','','','2024-05-20 08:01:56','2024-05-20 08:01:56','',0,'http://localhost:10003/?post_type=event&#038;p=67',0,'event','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2024-05-20 08:21:51','2024-05-20 08:21:51','<!-- wp:paragraph -->\n<p>This is Math program post!!!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>This is Math program post!!!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>This is Math program post!!!</p>\n<!-- /wp:paragraph -->','Math','','publish','closed','closed','','math','','','2024-05-21 08:34:58','2024-05-21 08:34:58','',0,'http://localhost:10003/?post_type=program&#038;p=68',0,'program','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2024-05-20 08:22:28','2024-05-20 08:22:28','','Biology','','publish','closed','closed','','biology','','','2024-05-24 04:13:55','2024-05-24 04:13:55','',0,'http://localhost:10003/?post_type=program&#038;p=69',0,'program','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2024-05-20 08:22:34','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-05-20 08:22:34','0000-00-00 00:00:00','',0,'http://localhost:10003/?post_type=program&p=70',0,'program','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2024-05-20 08:23:16','2024-05-20 08:23:16','<!-- wp:paragraph -->\n<p>This is English program post!!!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>This is English program post!!!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>This is English program post!!!</p>\n<!-- /wp:paragraph -->','English','','publish','closed','closed','','english','','','2024-05-20 08:23:16','2024-05-20 08:23:16','',0,'http://localhost:10003/?post_type=program&#038;p=71',0,'program','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2024-05-20 08:39:19','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-05-20 08:39:19','0000-00-00 00:00:00','',0,'http://localhost:10003/?post_type=acf-field-group&p=72',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2024-05-20 08:42:37','2024-05-20 08:42:37','a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"professor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Related Program','related-program','publish','closed','closed','','group_664b0c55a1ad5','','','2024-05-20 13:18:11','2024-05-20 13:18:11','',0,'http://localhost:10003/?post_type=acf-field-group&#038;p=73',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2024-05-20 08:42:37','2024-05-20 08:42:37','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"program\";}s:11:\"post_status\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:13:\"return_format\";s:6:\"object\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:8:\"elements\";s:0:\"\";s:13:\"bidirectional\";i:0;s:20:\"bidirectional_target\";a:0:{}}','Related Program(s)','related_programs','publish','closed','closed','','field_664b0c55c28b7','','','2024-05-20 08:42:37','2024-05-20 08:42:37','',73,'http://localhost:10003/?post_type=acf-field&p=74',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2024-05-20 08:42:37','2024-05-20 08:42:37','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','','','publish','closed','closed','','field_664b0c7dc28b8','','','2024-05-20 08:42:37','2024-05-20 08:42:37','',73,'http://localhost:10003/?post_type=acf-field&p=75',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2024-05-20 12:53:23','2024-05-20 12:53:23','<!-- wp:paragraph -->\n<p>MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM</p>\n<!-- /wp:paragraph -->','Dr.Meowsalot','','publish','closed','closed','','dr-meowsalot','','','2024-05-20 14:14:50','2024-05-20 14:14:50','',0,'http://localhost:10003/?post_type=professor&#038;p=76',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2024-05-20 12:53:50','2024-05-20 12:53:50','<!-- wp:paragraph -->\n<p>WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>I love biology!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW</p>\n<!-- /wp:paragraph -->','Dr.Barksalot','','publish','closed','closed','','dr-barksalot','','','2024-05-24 03:42:55','2024-05-24 03:42:55','',0,'http://localhost:10003/?post_type=professor&#038;p=77',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2024-05-20 14:08:40','2024-05-20 14:08:40','','barksalot','','inherit','open','closed','','barksalot','','','2024-05-20 14:08:40','2024-05-20 14:08:40','',77,'http://localhost:10003/wp-content/uploads/2024/05/barksalot.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (79,1,'2024-05-20 14:09:27','2024-05-20 14:09:27','','meowsalot','','inherit','open','closed','','meowsalot','','','2024-05-20 14:09:27','2024-05-20 14:09:27','',76,'http://localhost:10003/wp-content/uploads/2024/05/meowsalot.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (80,1,'2024-05-20 14:27:20','2024-05-20 14:27:20','<!-- wp:paragraph -->\n<p>FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF</p>\n<!-- /wp:paragraph -->','Dr.Froggerson','','publish','closed','closed','','dr-froggerson','','','2024-05-20 14:27:20','2024-05-20 14:27:20','',0,'http://localhost:10003/?post_type=professor&#038;p=80',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2024-05-20 14:26:35','2024-05-20 14:26:35','','frog-bio','','inherit','open','closed','','frog-bio','','','2024-05-20 14:26:35','2024-05-20 14:26:35','',80,'http://localhost:10003/wp-content/uploads/2024/05/frog-bio.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (82,1,'2024-05-20 15:40:54','2024-05-20 15:40:54','a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Page Banner','page-banner','publish','closed','closed','','group_664b6c41c1893','','','2024-05-20 15:46:31','2024-05-20 15:46:31','',0,'http://localhost:10003/?post_type=acf-field-group&#038;p=82',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2024-05-20 15:40:54','2024-05-20 15:40:54','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Page Banner Subtitle','page_banner_subtitle','publish','closed','closed','','field_664b6c4212457','','','2024-05-20 15:40:54','2024-05-20 15:40:54','',82,'http://localhost:10003/?post_type=acf-field&p=83',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2024-05-20 15:40:54','2024-05-20 15:40:54','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}','Page Banner Background Image','page_banner_background_image','publish','closed','closed','','field_664b6c5412458','','','2024-05-20 15:40:54','2024-05-20 15:40:54','',82,'http://localhost:10003/?post_type=acf-field&p=84',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2024-05-20 16:01:19','2024-05-20 16:01:19','','field','','inherit','open','closed','','field','','','2024-05-20 16:01:19','2024-05-20 16:01:19','',77,'http://localhost:10003/wp-content/uploads/2024/05/field.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (88,1,'2024-05-21 02:03:54','2024-05-21 02:03:54','','wallpaperflare.com_wallpaper','','inherit','open','closed','','wallpaperflare-com_wallpaper','','','2024-05-21 02:03:54','2024-05-21 02:03:54','',7,'http://localhost:10003/wp-content/uploads/2024/05/wallpaperflare.com_wallpaper.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (89,1,'2024-05-21 02:04:33','2024-05-21 02:04:33','<!-- wp:paragraph -->\n<p>This is the about page content.This is the about page content.This is the about page content.This is the about page content.This is the about page content.This is the about page content.This is the about page content.This is the about page content.This is the about page content.This is the about page content.This is the about page content.This is the about page content.This is the about page content.This is the about page content.This is the about page content.This is the about page content.This is the about page content.This is the about page content.</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','7-revision-v1','','','2024-05-21 02:04:33','2024-05-21 02:04:33','',7,'http://localhost:10003/?p=89',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2024-05-21 03:07:15','2024-05-21 03:07:15','','wallpaperflare.com_wallpaper (1)','','inherit','open','closed','','wallpaperflare-com_wallpaper-1','','','2024-05-21 03:07:15','2024-05-21 03:07:15','',52,'http://localhost:10003/wp-content/uploads/2024/05/wallpaperflare.com_wallpaper-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (91,1,'2024-05-21 03:11:51','2024-05-21 03:11:51','','wallpaperflare.com_wallpaper (2)','','inherit','open','closed','','wallpaperflare-com_wallpaper-2','','','2024-05-21 03:11:51','2024-05-21 03:11:51','',69,'http://localhost:10003/wp-content/uploads/2024/05/wallpaperflare.com_wallpaper-2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (92,1,'2024-05-21 06:50:21','2024-05-21 06:50:21','<!-- wp:paragraph -->\n<p>This is Downtown West</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>This is Downtown West</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>This is Downtown West</p>\n<!-- /wp:paragraph -->','YongHe District Office','','publish','closed','closed','','downtown-west','','','2024-05-21 08:26:32','2024-05-21 08:26:32','',0,'http://localhost:10003/?post_type=campus&#038;p=92',0,'campus','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2024-05-21 06:55:30','2024-05-21 06:55:30','<!-- wp:paragraph -->\n<p>This is Downtown East</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>This is Downtown East</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>This is Downtown East</p>\n<!-- /wp:paragraph -->','AA Darts','','publish','closed','closed','','downtown-east','','','2024-05-21 08:25:45','2024-05-21 08:25:45','',0,'http://localhost:10003/?post_type=campus&#038;p=93',0,'campus','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2024-05-21 06:58:05','2024-05-21 06:58:05','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"campus\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Map Location','map-location','publish','closed','closed','','group_664c45ab44d80','','','2024-05-21 06:58:07','2024-05-21 06:58:07','',0,'http://localhost:10003/?post_type=acf-field-group&#038;p=94',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2024-05-21 06:58:05','2024-05-21 06:58:05','a:10:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:10:\"google_map\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"center_lat\";s:0:\"\";s:10:\"center_lng\";s:0:\"\";s:4:\"zoom\";s:0:\"\";s:6:\"height\";s:0:\"\";}','Map Location','map_location','publish','closed','closed','','field_664c45ab6ad5f','','','2024-05-21 06:58:05','2024-05-21 06:58:05','',94,'http://localhost:10003/?post_type=acf-field&p=95',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2024-05-21 06:58:05','2024-05-21 06:58:05','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','','','publish','closed','closed','','field_664c45b46ad60','','','2024-05-21 06:58:05','2024-05-21 06:58:05','',94,'http://localhost:10003/?post_type=acf-field&p=96',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2024-05-21 08:34:20','2024-05-21 08:34:20','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"program\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Related Campus(es)','related-campuses','publish','closed','closed','','group_664c5c194a495','','','2024-05-21 08:34:23','2024-05-21 08:34:23','',0,'http://localhost:10003/?post_type=acf-field-group&#038;p=97',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2024-05-21 08:34:20','2024-05-21 08:34:20','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:6:\"campus\";}s:11:\"post_status\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:8:\"elements\";s:0:\"\";s:13:\"bidirectional\";i:0;s:20:\"bidirectional_target\";a:0:{}}','Related Campus(es)','related_campus','publish','closed','closed','','field_664c5c1965edd','','','2024-05-21 08:34:20','2024-05-21 08:34:20','',97,'http://localhost:10003/?post_type=acf-field&p=98',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2024-05-21 08:34:20','2024-05-21 08:34:20','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','','','publish','closed','closed','','field_664c5c2f65ede','','','2024-05-21 08:34:20','2024-05-21 08:34:20','',97,'http://localhost:10003/?post_type=acf-field&p=99',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2024-05-21 16:02:57','2024-05-21 16:02:57','<!-- wp:paragraph -->\n<p>Cool man~~~~~~</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cool man~~~~~~</p>\n<!-- /wp:paragraph -->','Biology is Cool','','publish','open','open','','biology-is-cool','','','2024-05-21 16:02:57','2024-05-21 16:02:57','',0,'http://localhost:10003/?p=100',0,'post','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2024-05-21 16:02:57','2024-05-21 16:02:57','<!-- wp:paragraph -->\n<p>Cool man~~~~~~</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cool man~~~~~~</p>\n<!-- /wp:paragraph -->','Biology is Cool','','inherit','closed','closed','','100-revision-v1','','','2024-05-21 16:02:57','2024-05-21 16:02:57','',100,'http://localhost:10003/?p=101',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2024-05-21 16:41:17','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2024-05-21 16:41:17','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=102',0,'post','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2024-05-21 16:41:57','2024-05-21 16:41:57','<!-- wp:paragraph -->\n<p>Meow~~~~~</p>\n<!-- /wp:paragraph -->','Biology by Dr.Cat','','publish','open','open','','biology-by-dr-cat','','','2024-05-21 16:41:57','2024-05-21 16:41:57','',0,'http://localhost:10003/?p=103',0,'post','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2024-05-21 16:41:47','2024-05-21 16:41:47','<!-- wp:paragraph -->\n<p>Meow~~~~~</p>\n<!-- /wp:paragraph -->','Biology by Dr.Cat','','inherit','closed','closed','','103-revision-v1','','','2024-05-21 16:41:47','2024-05-21 16:41:47','',103,'http://localhost:10003/?p=104',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2024-05-24 04:13:20','2024-05-24 04:13:20','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"program\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Main Body Content','main-body-content','publish','closed','closed','','group_665013717db6c','','','2024-05-24 04:13:20','2024-05-24 04:13:20','',0,'http://localhost:10003/?post_type=acf-field-group&#038;p=105',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2024-05-24 04:13:20','2024-05-24 04:13:20','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}','Main Body Content','main_body_content','publish','closed','closed','','field_6650137128695','','','2024-05-24 04:13:20','2024-05-24 04:13:20','',105,'http://localhost:10003/?post_type=acf-field&p=106',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2024-05-24 04:13:20','2024-05-24 04:13:20','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','','','publish','closed','closed','','field_6650138328696','','','2024-05-24 04:13:20','2024-05-24 04:13:20','',105,'http://localhost:10003/?post_type=acf-field&p=107',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (108,1,'2024-05-24 07:05:38','2024-05-24 07:05:38','<!-- wp:paragraph -->\n<p>這是關於我的作品集👍</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','7-revision-v1','','','2024-05-24 07:05:38','2024-05-24 07:05:38','',7,'http://localhost:10003/?p=108',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (109,1,'2024-05-24 07:14:29','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-05-24 07:14:29','0000-00-00 00:00:00','',0,'http://localhost:10003/?page_id=109',0,'page','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (20,2,0);
INSERT INTO `wp_term_relationships` VALUES (22,2,0);
INSERT INTO `wp_term_relationships` VALUES (30,5,0);
INSERT INTO `wp_term_relationships` VALUES (31,5,0);
INSERT INTO `wp_term_relationships` VALUES (32,6,0);
INSERT INTO `wp_term_relationships` VALUES (40,1,0);
INSERT INTO `wp_term_relationships` VALUES (42,1,0);
INSERT INTO `wp_term_relationships` VALUES (47,7,0);
INSERT INTO `wp_term_relationships` VALUES (100,1,0);
INSERT INTO `wp_term_relationships` VALUES (103,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'nav_menu','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'category','This is awards description',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'My Main Header Menu','my-main-header-menu',0);
INSERT INTO `wp_terms` VALUES (5,'Footer Location One','footer-location-one',0);
INSERT INTO `wp_terms` VALUES (6,'Footer Location Two','footer-location-two',0);
INSERT INTO `wp_terms` VALUES (7,'Awards','awards',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Joshua C Lin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','Joshua');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','Lin');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','Joshua Info');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"37f40d0c69afe0fe992f4ba0cd891628df0ca8f7d164be9531798a65f16a9266\";a:4:{s:10:\"expiration\";i:1716693022;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36\";s:5:\"login\";i:1716520222;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','5');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_persisted_preferences','a:3:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-05-20T14:07:46.123Z\";s:4:\"core\";a:1:{s:10:\"openPanels\";a:6:{i:0;s:11:\"post-status\";i:1;s:15:\"page-attributes\";i:2;s:16:\"discussion-panel\";i:3;s:23:\"taxonomy-panel-category\";i:4;s:12:\"post-excerpt\";i:5;s:14:\"featured-image\";}}}');
INSERT INTO `wp_usermeta` VALUES (19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'nav_menu_recently_edited','6');
INSERT INTO `wp_usermeta` VALUES (22,1,'enable_custom_fields','1');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_user-settings','libraryContent=upload&mfold=o');
INSERT INTO `wp_usermeta` VALUES (24,1,'wp_user-settings-time','1716534911');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'joshua77','$P$B2WKPcOAgBqcibGwdQ4bCJxzEGWbAb1','joshua77','dev-email@wpengine.local','http://localhost:10003','2024-05-17 08:17:27','1716520154:$P$BFtGZHajlj5MqT4dRfGdAgS7.HG0gr/',0,'Joshua C Lin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-24 20:55:04
