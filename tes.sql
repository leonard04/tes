-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.14-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table cypher4_new.general_report
CREATE TABLE IF NOT EXISTS `general_report` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rpt_wh` char(15) DEFAULT NULL,
  `rpt_subject` varchar(255) DEFAULT NULL,
  `rpt_text` text DEFAULT NULL,
  `rpt_time` datetime DEFAULT NULL,
  `approve_by` varchar(35) DEFAULT NULL,
  `approve_time` datetime DEFAULT NULL,
  `approve_notes` text DEFAULT NULL,
  `create_by` varchar(35) DEFAULT NULL,
  `created_by` varchar(35) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` varchar(35) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_by` varchar(35) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table cypher4_new.general_report_activity
CREATE TABLE IF NOT EXISTS `general_report_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_report` int(11) DEFAULT 0,
  `rep_from` varchar(50) DEFAULT NULL,
  `rep_to` varchar(50) DEFAULT NULL,
  `rep_desc` text DEFAULT NULL,
  `created_by` varchar(35) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` varchar(35) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_by` varchar(35) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table cypher4_new.general_report_attach
CREATE TABLE IF NOT EXISTS `general_report_attach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_report` int(11) DEFAULT NULL,
  `filename` text DEFAULT NULL,
  `created_by` varchar(35) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` varchar(35) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_by` varchar(35) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
