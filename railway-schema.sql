-- Create PDA table first (since it's referenced by list_report)
CREATE TABLE IF NOT EXISTS `pda` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create list_report table second (since it's referenced by accomplish-report)
CREATE TABLE IF NOT EXISTS `list_report` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact no.` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `service_description` varchar(100) NOT NULL,
  `proof` longtext DEFAULT NULL,
  `nature of service` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `proof_type` varchar(50) DEFAULT NULL,
  `plumber_id` int DEFAULT NULL,
  `status` varchar(20) DEFAULT 'pending',
  `completed_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plumber_id` (`plumber_id`),
  CONSTRAINT `fk_plumber` FOREIGN KEY (`plumber_id`) REFERENCES `pda` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create accomplish-report table
CREATE TABLE IF NOT EXISTS `accomplish-report` (
  `id` int NOT NULL AUTO_INCREMENT,
  `report_id` int DEFAULT NULL,
  `departure_time` varchar(10) DEFAULT NULL,
  `arrival_time` varchar(10) DEFAULT NULL,
  `accomplish_date` date DEFAULT NULL,
  `accomplish_proof` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_report` (`report_id`),
  CONSTRAINT `fk_report` FOREIGN KEY (`report_id`) REFERENCES `list_report` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create approved_reports table
CREATE TABLE IF NOT EXISTS `approved_reports` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_name` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `address` text DEFAULT NULL,
  `contact_no` varchar(20) DEFAULT NULL,
  `service_description` text DEFAULT NULL,
  `nature_of_service` varchar(255) DEFAULT NULL,
  `location` text DEFAULT NULL,
  `proof` longtext DEFAULT NULL,
  `proof_type` varchar(50) DEFAULT NULL,
  `approved_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `departure_time` time DEFAULT NULL,
  `arrival_time` time DEFAULT NULL,
  `accomplish_date` date DEFAULT NULL,
  `accomplish_proof` longtext DEFAULT NULL,
  `plumber_username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;