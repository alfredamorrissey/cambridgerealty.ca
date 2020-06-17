
-- phpMyAdmin SQL Dump
-- version 2.11.11.3
-- http://www.phpmyadmin.net
--
-- Host: 97.74.149.173
-- Generation Time: Dec 18, 2019 at 01:26 PM
-- Server version: 5.5.51
-- PHP Version: 5.1.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `senatorapts`
--

-- --------------------------------------------------------

--
-- Table structure for table `Available`
--

CREATE TABLE `Available` (
  `suite_id` varchar(4) NOT NULL DEFAULT '',
  `rent` varchar(10) DEFAULT NULL,
  `promotion` varchar(50) DEFAULT NULL,
  `month` char(2) DEFAULT NULL,
  `year` char(4) DEFAULT NULL,
  UNIQUE KEY `idx_suite` (`suite_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Available`
--


-- --------------------------------------------------------

--
-- Table structure for table `Gallery`
--

CREATE TABLE `Gallery` (
  `gallery_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`gallery_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2105 ;

--
-- Dumping data for table `Gallery`
--

INSERT INTO `Gallery` VALUES(2, '01', 'Floor Plan 01');
INSERT INTO `Gallery` VALUES(3, '02', 'Floor Plan 02');
INSERT INTO `Gallery` VALUES(4, '03', 'Floor Plan 03');
INSERT INTO `Gallery` VALUES(5, '04', 'Floor Plan 04');
INSERT INTO `Gallery` VALUES(6, '05', 'Floor Plan 05');
INSERT INTO `Gallery` VALUES(7, '06', 'Floor Plan 06');
INSERT INTO `Gallery` VALUES(8, '07', 'Floor Plan 07');
INSERT INTO `Gallery` VALUES(9, '08', 'Floor Plan 08');
INSERT INTO `Gallery` VALUES(10, 'B-1', 'Floor Plan B-1');
INSERT INTO `Gallery` VALUES(11, 'B-2', 'Floor Plan B-2');
INSERT INTO `Gallery` VALUES(12, '301CoteRoyale', '301 Cote Royale');
INSERT INTO `Gallery` VALUES(13, '45CliffordPrivate', '45 Clifford Private');
INSERT INTO `Gallery` VALUES(14, '43Alberni', '43 Alberni');
INSERT INTO `Gallery` VALUES(16, '1AFoxhillWay', '1A Foxhill Way');
INSERT INTO `Gallery` VALUES(17, '1CKnollsbrookDr', '10C Knollsbrook Dr.');
INSERT INTO `Gallery` VALUES(20, '11TraffordLane', '11 Trafford Lane');
INSERT INTO `Gallery` VALUES(27, '1985GreenvaleLane', '1985 Greenvale Lane');
INSERT INTO `Gallery` VALUES(111, '66SundbackLane', '66 Sundback Lane');
INSERT INTO `Gallery` VALUES(114, '6529ColonySquare', '6529 Colony Square');
INSERT INTO `Gallery` VALUES(117, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(835, '69CliffordPrivate', '69 Clifford Private');
INSERT INTO `Gallery` VALUES(839, '183RadwayTerrace', '1803 Radway Terrace');
INSERT INTO `Gallery` VALUES(842, '468CambridgeStreetSouth', '468 Cambridge Street South');
INSERT INTO `Gallery` VALUES(907, '32Brouage', '32 Brouage');
INSERT INTO `Gallery` VALUES(906, '32Brouage', '32 Brouage');
INSERT INTO `Gallery` VALUES(849, '647MontfortStreet', '06-407 Montfort Street');
INSERT INTO `Gallery` VALUES(900, '04-2', 'Renovated Floor Plan 04');
INSERT INTO `Gallery` VALUES(901, '05-2', 'Renovated Floor Plan 05');
INSERT INTO `Gallery` VALUES(902, '01-2', 'Renovated Floor Plan 01');
INSERT INTO `Gallery` VALUES(903, '07-2', 'Renovated Floor Plan 07');
INSERT INTO `Gallery` VALUES(898, '32RuedeBrouage', '32 Rue de Brouage');
INSERT INTO `Gallery` VALUES(908, '3tst', '3 tst');
INSERT INTO `Gallery` VALUES(909, '2test', '2 test');
INSERT INTO `Gallery` VALUES(910, '6563ColonySquare', '6563 Colony Square');
INSERT INTO `Gallery` VALUES(911, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(912, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(913, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(914, '', '');
INSERT INTO `Gallery` VALUES(915, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(916, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(917, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(918, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(919, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(920, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(921, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(922, '', '');
INSERT INTO `Gallery` VALUES(923, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(924, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(925, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(926, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(927, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(928, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(929, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(930, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(931, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(932, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(933, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(934, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(935, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(936, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(937, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(938, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(939, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(940, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(941, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(942, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(943, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(944, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(945, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(946, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(947, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(948, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(949, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(950, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(951, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(952, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(953, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(954, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(955, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(956, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(957, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(958, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(959, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(960, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(961, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(962, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(963, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(964, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(965, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(966, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(967, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(968, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(969, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(970, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(971, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(972, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(973, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(974, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(975, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(976, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(977, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(978, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(979, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(980, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(981, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(982, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(983, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(984, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(985, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(986, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(987, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(988, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(989, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(990, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(991, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(992, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(993, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(994, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(995, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(996, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(997, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(998, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(999, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1000, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1001, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1002, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1003, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1004, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1005, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1006, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1007, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1008, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1009, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1010, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1011, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1012, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1013, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1014, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1015, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1016, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1017, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1018, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1019, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1020, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1021, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1022, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1023, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1024, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1025, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1026, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1027, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1028, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1029, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1030, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1031, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1032, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1033, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1034, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1035, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1036, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1037, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1038, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1039, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1040, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1041, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1042, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1043, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1044, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1045, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1046, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1047, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1048, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1049, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1050, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1051, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1052, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1053, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1054, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1055, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1056, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1057, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1058, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1059, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1060, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1061, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1062, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1063, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1064, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1065, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1066, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1067, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1068, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1069, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1070, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1071, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1072, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1073, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1074, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1075, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1076, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1077, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1078, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1079, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1080, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1081, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1082, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1083, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1084, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1085, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1086, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1087, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1088, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1089, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1090, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1091, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1092, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1093, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1094, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1095, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1096, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1097, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1098, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1099, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1100, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1101, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1102, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1103, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1104, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1105, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1106, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1107, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1108, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1109, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1110, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1111, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1112, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1113, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1114, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1115, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1116, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1117, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1118, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1119, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1120, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1121, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1122, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1123, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1124, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1125, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1126, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1127, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1128, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1129, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1130, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1131, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1132, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1133, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1134, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1135, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1136, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1137, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1138, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1139, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1140, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1141, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1142, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1143, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1144, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1145, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1146, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1147, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1148, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1149, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1150, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1151, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1152, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1153, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1154, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1155, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1156, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1157, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1158, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1159, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1160, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1161, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1162, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1163, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1164, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1165, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1166, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1167, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1168, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1169, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1170, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1171, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1172, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1173, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1174, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1175, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1176, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1177, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1178, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1179, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1180, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1181, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1182, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1183, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1184, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1185, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1186, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1187, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1188, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1189, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1190, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1191, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1192, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1193, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1194, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1195, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1196, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1197, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1198, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1199, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1200, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1201, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1202, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1203, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1204, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1205, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1206, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1207, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1208, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1209, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1210, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1211, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1212, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1213, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1214, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1215, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1216, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1217, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1218, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1219, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1220, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1221, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1222, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1223, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1224, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1225, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1226, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1227, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1228, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1229, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1230, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1231, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1232, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1233, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1234, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1235, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1236, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1237, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1238, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1239, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1240, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1241, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1242, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1243, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1244, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1245, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1246, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1247, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1248, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1249, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1250, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1251, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1252, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1253, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1254, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1255, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1256, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1257, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1258, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1259, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1260, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1261, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1262, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1263, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1264, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1265, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1266, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1267, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1268, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1269, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1270, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1271, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1272, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1273, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1274, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1275, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1276, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1277, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1278, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1279, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1280, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1281, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1282, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1283, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1284, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1285, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1286, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1287, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1288, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1289, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1290, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1291, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1292, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1293, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1294, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1295, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1296, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1297, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1298, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1299, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1300, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1301, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1302, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1303, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1304, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1305, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1306, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1307, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1308, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1309, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1310, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1311, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1312, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1313, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1314, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1315, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1316, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1317, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1318, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1319, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1320, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1321, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1322, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1323, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1324, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1325, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1326, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1327, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1328, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1329, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1330, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1331, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1332, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1333, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1334, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1335, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1336, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1337, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1338, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1339, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1340, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1341, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1342, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1343, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1344, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1345, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1346, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1347, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1348, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1349, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1350, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1351, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1352, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1353, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1354, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1355, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1356, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1357, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1358, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1359, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1360, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1361, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1362, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1363, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1364, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1365, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1366, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1367, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1368, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1369, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1370, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1371, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1372, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1373, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1374, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1375, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1376, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1377, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1378, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1379, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1380, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1381, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1382, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1383, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1384, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1385, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1386, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1387, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1388, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1389, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1390, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1391, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1392, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1393, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1394, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1395, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1396, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1397, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1398, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1399, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1400, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1401, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1402, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1403, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1404, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1405, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1406, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1407, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1408, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1409, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1410, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1411, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1412, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1413, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1414, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1415, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1416, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1417, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1418, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1419, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1420, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1421, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1422, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1423, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1424, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1425, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1426, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1427, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1428, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1429, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1430, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1431, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1432, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1433, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1434, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1435, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1436, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1437, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1438, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1439, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1440, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1441, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1442, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1443, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1444, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1445, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1446, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1447, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1448, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1449, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1450, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1451, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1452, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1453, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1454, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1455, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1456, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1457, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1458, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1459, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1460, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1461, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1462, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1463, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1464, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1465, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1466, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1467, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1468, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1469, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1470, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1471, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1472, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1473, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1474, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1475, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1476, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1477, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1478, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1479, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1480, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1481, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1482, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1483, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1484, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1485, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1486, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1487, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1488, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1489, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1490, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1491, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1492, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1493, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1494, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1495, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1496, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1497, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1498, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1499, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1500, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1501, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1502, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1503, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1504, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1505, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1506, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1507, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1508, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1509, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1510, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1511, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1512, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1513, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1514, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1515, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1516, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1517, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1518, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1519, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1520, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1521, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1522, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1523, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1524, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1525, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1526, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1527, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1528, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1529, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1530, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1531, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1532, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1533, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1534, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1535, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1536, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1537, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1538, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1539, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1540, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1541, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1542, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1543, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1544, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1545, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1546, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1547, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1548, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1549, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1550, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1551, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1552, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1553, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1554, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1555, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1556, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1557, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1558, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1559, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1560, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1561, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1562, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1563, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1564, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1565, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1566, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1567, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1568, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1569, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1570, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1571, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1572, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1573, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1574, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1575, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1576, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1577, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1578, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1579, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1580, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1581, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1582, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1583, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1584, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1585, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1586, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1587, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1588, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1589, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1590, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1591, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1592, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1593, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1594, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1595, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1596, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1597, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1598, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1599, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1600, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1601, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1602, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1603, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1604, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1605, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1606, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1607, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1608, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1609, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1610, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1611, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1612, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1613, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1614, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1615, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1616, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1617, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1618, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1619, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1620, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1621, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1622, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1623, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1624, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1625, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1626, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1627, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1628, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1629, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1630, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1631, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1632, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1633, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1634, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1635, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1636, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1637, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1638, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1639, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1640, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1641, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1642, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1643, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1644, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1645, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1646, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1647, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1648, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1649, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1650, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1651, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1652, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1653, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1654, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1655, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1656, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1657, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1658, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1659, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1660, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1661, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1662, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1663, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1664, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1665, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1666, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1667, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1668, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1669, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1670, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1671, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1672, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1673, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1674, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1675, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1676, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1677, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1678, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1679, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1680, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1681, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1682, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1683, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1684, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1685, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1686, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1687, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1688, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1689, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1690, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1691, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1692, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1693, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1694, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1695, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1696, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1697, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1698, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1699, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1700, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1701, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1702, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1703, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1704, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1705, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1706, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1707, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1708, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1709, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1710, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1711, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1712, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1713, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1714, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1715, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1716, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1717, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1718, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1719, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1720, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1721, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1722, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1723, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1724, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1725, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1726, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1727, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1728, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1729, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1730, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1731, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1732, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1733, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1734, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1735, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1736, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1737, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1738, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1739, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1740, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1741, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1742, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1743, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1744, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1745, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1746, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1747, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1748, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1749, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1750, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1751, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1752, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1753, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1754, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1755, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1756, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1757, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1758, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1759, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1760, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1761, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1762, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1763, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1764, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1765, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1766, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1767, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1768, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1769, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1770, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1771, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1772, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1773, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1774, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1775, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1776, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1777, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1778, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1779, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1780, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1781, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1782, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1783, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1784, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1785, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1786, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1787, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1788, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1789, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1790, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1791, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1792, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1793, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1794, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1795, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1796, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1797, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1798, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1799, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1800, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1801, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1802, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1803, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1804, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1805, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1806, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1807, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1808, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1809, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1810, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1811, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1812, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1813, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1814, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1815, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1816, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1817, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1818, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1819, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1820, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1821, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1822, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1823, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1824, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1825, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1826, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1827, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1828, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1829, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1830, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1831, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1832, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1833, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1834, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1835, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1836, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1837, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1838, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1839, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1840, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1841, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1842, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1843, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1844, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1845, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1846, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1847, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1848, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1849, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1850, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1851, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1852, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1853, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1854, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1855, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1856, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1857, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1858, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1859, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1860, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1861, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1862, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1863, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1864, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1865, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1866, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1867, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1868, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1869, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1870, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1871, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1872, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1873, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1874, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1875, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1876, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1877, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1878, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1879, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1880, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1881, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1882, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1883, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1884, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1885, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1886, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1887, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1888, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1889, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1890, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1891, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1892, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1893, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1894, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1895, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1896, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1897, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1898, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1899, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1900, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1901, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1902, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1903, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1904, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1905, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1906, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1907, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1908, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1909, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1910, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1911, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1912, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1913, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1914, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1915, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1916, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1917, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1918, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1919, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1920, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1921, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1922, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1923, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1924, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1925, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1926, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1927, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1928, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1929, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1930, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1931, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1932, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1933, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1934, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1935, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1936, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1937, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1938, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1939, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1940, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1941, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1942, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1943, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1944, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1945, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1946, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1947, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1948, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1949, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1950, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1951, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1952, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1953, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1954, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1955, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1956, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1957, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1958, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1959, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1960, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1961, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1962, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1963, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1964, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1965, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1966, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1967, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1968, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1969, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1970, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1971, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1972, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1973, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1974, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1975, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1976, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1977, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1978, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1979, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1980, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1981, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1982, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1983, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1984, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1985, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1986, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1987, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1988, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1989, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1990, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1991, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1992, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1993, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1994, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1995, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1996, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1997, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1998, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(1999, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2000, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2001, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2002, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2003, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2004, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2005, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2006, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2007, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2008, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2009, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2010, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2011, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2012, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2013, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2014, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2015, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2016, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2017, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2018, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2019, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2020, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2021, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2022, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2023, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2024, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2025, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2026, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2027, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2028, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2029, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2030, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2031, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2032, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2033, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2034, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2035, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2036, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2037, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2038, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2039, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2040, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2041, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2042, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2043, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2044, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2045, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2046, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2047, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2048, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2049, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2050, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2051, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2052, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2053, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2054, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2055, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2056, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2057, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2058, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2059, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2060, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2061, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2062, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2063, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2064, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2065, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2066, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2067, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2068, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2069, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2070, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2071, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2072, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2073, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2074, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2075, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2076, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2077, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2078, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2079, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2080, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2081, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2082, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2083, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2084, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2085, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2086, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2087, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2088, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2089, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2090, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2091, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2092, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2093, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2094, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2095, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2096, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2097, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2098, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2099, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2100, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2101, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2102, '21TraffordLane', '21 Trafford Lane');
INSERT INTO `Gallery` VALUES(2103, '43Alberni', '43 Alberni');
INSERT INTO `Gallery` VALUES(2104, '43Alberni', '43 Alberni');

-- --------------------------------------------------------

--
-- Table structure for table `GalleryPhotos`
--

CREATE TABLE `GalleryPhotos` (
  `gallery_id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  UNIQUE KEY `gallery_id` (`gallery_id`,`photo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `GalleryPhotos`
--

INSERT INTO `GalleryPhotos` VALUES(2, 504);
INSERT INTO `GalleryPhotos` VALUES(2, 505);
INSERT INTO `GalleryPhotos` VALUES(2, 506);
INSERT INTO `GalleryPhotos` VALUES(2, 507);
INSERT INTO `GalleryPhotos` VALUES(2, 508);
INSERT INTO `GalleryPhotos` VALUES(2, 509);
INSERT INTO `GalleryPhotos` VALUES(3, 8);
INSERT INTO `GalleryPhotos` VALUES(3, 9);
INSERT INTO `GalleryPhotos` VALUES(3, 10);
INSERT INTO `GalleryPhotos` VALUES(3, 11);
INSERT INTO `GalleryPhotos` VALUES(4, 13);
INSERT INTO `GalleryPhotos` VALUES(4, 14);
INSERT INTO `GalleryPhotos` VALUES(4, 15);
INSERT INTO `GalleryPhotos` VALUES(5, 470);
INSERT INTO `GalleryPhotos` VALUES(5, 471);
INSERT INTO `GalleryPhotos` VALUES(5, 472);
INSERT INTO `GalleryPhotos` VALUES(5, 473);
INSERT INTO `GalleryPhotos` VALUES(5, 474);
INSERT INTO `GalleryPhotos` VALUES(5, 475);
INSERT INTO `GalleryPhotos` VALUES(5, 476);
INSERT INTO `GalleryPhotos` VALUES(6, 20);
INSERT INTO `GalleryPhotos` VALUES(6, 21);
INSERT INTO `GalleryPhotos` VALUES(6, 22);
INSERT INTO `GalleryPhotos` VALUES(6, 23);
INSERT INTO `GalleryPhotos` VALUES(7, 486);
INSERT INTO `GalleryPhotos` VALUES(7, 487);
INSERT INTO `GalleryPhotos` VALUES(7, 488);
INSERT INTO `GalleryPhotos` VALUES(7, 489);
INSERT INTO `GalleryPhotos` VALUES(7, 490);
INSERT INTO `GalleryPhotos` VALUES(7, 491);
INSERT INTO `GalleryPhotos` VALUES(7, 492);
INSERT INTO `GalleryPhotos` VALUES(8, 29);
INSERT INTO `GalleryPhotos` VALUES(8, 30);
INSERT INTO `GalleryPhotos` VALUES(8, 31);
INSERT INTO `GalleryPhotos` VALUES(9, 510);
INSERT INTO `GalleryPhotos` VALUES(9, 511);
INSERT INTO `GalleryPhotos` VALUES(9, 512);
INSERT INTO `GalleryPhotos` VALUES(9, 513);
INSERT INTO `GalleryPhotos` VALUES(9, 514);
INSERT INTO `GalleryPhotos` VALUES(9, 515);
INSERT INTO `GalleryPhotos` VALUES(10, 178);
INSERT INTO `GalleryPhotos` VALUES(10, 179);
INSERT INTO `GalleryPhotos` VALUES(10, 180);
INSERT INTO `GalleryPhotos` VALUES(10, 450);
INSERT INTO `GalleryPhotos` VALUES(11, 182);
INSERT INTO `GalleryPhotos` VALUES(11, 183);
INSERT INTO `GalleryPhotos` VALUES(11, 184);
INSERT INTO `GalleryPhotos` VALUES(11, 185);
INSERT INTO `GalleryPhotos` VALUES(12, 136);
INSERT INTO `GalleryPhotos` VALUES(12, 137);
INSERT INTO `GalleryPhotos` VALUES(12, 138);
INSERT INTO `GalleryPhotos` VALUES(12, 139);
INSERT INTO `GalleryPhotos` VALUES(12, 140);
INSERT INTO `GalleryPhotos` VALUES(12, 141);
INSERT INTO `GalleryPhotos` VALUES(12, 142);
INSERT INTO `GalleryPhotos` VALUES(12, 143);
INSERT INTO `GalleryPhotos` VALUES(13, 124);
INSERT INTO `GalleryPhotos` VALUES(13, 125);
INSERT INTO `GalleryPhotos` VALUES(13, 126);
INSERT INTO `GalleryPhotos` VALUES(13, 127);
INSERT INTO `GalleryPhotos` VALUES(13, 128);
INSERT INTO `GalleryPhotos` VALUES(13, 129);
INSERT INTO `GalleryPhotos` VALUES(13, 130);
INSERT INTO `GalleryPhotos` VALUES(13, 131);
INSERT INTO `GalleryPhotos` VALUES(13, 132);
INSERT INTO `GalleryPhotos` VALUES(13, 133);
INSERT INTO `GalleryPhotos` VALUES(13, 134);
INSERT INTO `GalleryPhotos` VALUES(13, 135);
INSERT INTO `GalleryPhotos` VALUES(14, 0);
INSERT INTO `GalleryPhotos` VALUES(14, 534);
INSERT INTO `GalleryPhotos` VALUES(14, 535);
INSERT INTO `GalleryPhotos` VALUES(14, 536);
INSERT INTO `GalleryPhotos` VALUES(14, 537);
INSERT INTO `GalleryPhotos` VALUES(14, 538);
INSERT INTO `GalleryPhotos` VALUES(14, 539);
INSERT INTO `GalleryPhotos` VALUES(14, 540);
INSERT INTO `GalleryPhotos` VALUES(14, 541);
INSERT INTO `GalleryPhotos` VALUES(14, 542);
INSERT INTO `GalleryPhotos` VALUES(14, 543);
INSERT INTO `GalleryPhotos` VALUES(14, 544);
INSERT INTO `GalleryPhotos` VALUES(14, 545);
INSERT INTO `GalleryPhotos` VALUES(14, 546);
INSERT INTO `GalleryPhotos` VALUES(14, 547);
INSERT INTO `GalleryPhotos` VALUES(14, 548);
INSERT INTO `GalleryPhotos` VALUES(14, 549);
INSERT INTO `GalleryPhotos` VALUES(14, 550);
INSERT INTO `GalleryPhotos` VALUES(14, 551);
INSERT INTO `GalleryPhotos` VALUES(16, 259);
INSERT INTO `GalleryPhotos` VALUES(16, 260);
INSERT INTO `GalleryPhotos` VALUES(16, 261);
INSERT INTO `GalleryPhotos` VALUES(16, 262);
INSERT INTO `GalleryPhotos` VALUES(16, 264);
INSERT INTO `GalleryPhotos` VALUES(16, 265);
INSERT INTO `GalleryPhotos` VALUES(16, 266);
INSERT INTO `GalleryPhotos` VALUES(16, 267);
INSERT INTO `GalleryPhotos` VALUES(16, 268);
INSERT INTO `GalleryPhotos` VALUES(16, 269);
INSERT INTO `GalleryPhotos` VALUES(16, 270);
INSERT INTO `GalleryPhotos` VALUES(17, 186);
INSERT INTO `GalleryPhotos` VALUES(17, 187);
INSERT INTO `GalleryPhotos` VALUES(17, 188);
INSERT INTO `GalleryPhotos` VALUES(17, 189);
INSERT INTO `GalleryPhotos` VALUES(17, 190);
INSERT INTO `GalleryPhotos` VALUES(17, 191);
INSERT INTO `GalleryPhotos` VALUES(17, 192);
INSERT INTO `GalleryPhotos` VALUES(17, 193);
INSERT INTO `GalleryPhotos` VALUES(17, 194);
INSERT INTO `GalleryPhotos` VALUES(20, 195);
INSERT INTO `GalleryPhotos` VALUES(20, 196);
INSERT INTO `GalleryPhotos` VALUES(20, 197);
INSERT INTO `GalleryPhotos` VALUES(20, 198);
INSERT INTO `GalleryPhotos` VALUES(20, 199);
INSERT INTO `GalleryPhotos` VALUES(20, 200);
INSERT INTO `GalleryPhotos` VALUES(20, 201);
INSERT INTO `GalleryPhotos` VALUES(20, 202);
INSERT INTO `GalleryPhotos` VALUES(20, 203);
INSERT INTO `GalleryPhotos` VALUES(20, 204);
INSERT INTO `GalleryPhotos` VALUES(20, 205);
INSERT INTO `GalleryPhotos` VALUES(20, 206);
INSERT INTO `GalleryPhotos` VALUES(20, 207);
INSERT INTO `GalleryPhotos` VALUES(27, 210);
INSERT INTO `GalleryPhotos` VALUES(27, 211);
INSERT INTO `GalleryPhotos` VALUES(27, 212);
INSERT INTO `GalleryPhotos` VALUES(27, 213);
INSERT INTO `GalleryPhotos` VALUES(27, 214);
INSERT INTO `GalleryPhotos` VALUES(27, 215);
INSERT INTO `GalleryPhotos` VALUES(27, 216);
INSERT INTO `GalleryPhotos` VALUES(27, 217);
INSERT INTO `GalleryPhotos` VALUES(27, 218);
INSERT INTO `GalleryPhotos` VALUES(27, 219);
INSERT INTO `GalleryPhotos` VALUES(27, 220);
INSERT INTO `GalleryPhotos` VALUES(27, 221);
INSERT INTO `GalleryPhotos` VALUES(27, 222);
INSERT INTO `GalleryPhotos` VALUES(111, 234);
INSERT INTO `GalleryPhotos` VALUES(111, 235);
INSERT INTO `GalleryPhotos` VALUES(111, 236);
INSERT INTO `GalleryPhotos` VALUES(111, 237);
INSERT INTO `GalleryPhotos` VALUES(111, 238);
INSERT INTO `GalleryPhotos` VALUES(111, 239);
INSERT INTO `GalleryPhotos` VALUES(111, 240);
INSERT INTO `GalleryPhotos` VALUES(111, 241);
INSERT INTO `GalleryPhotos` VALUES(111, 242);
INSERT INTO `GalleryPhotos` VALUES(111, 243);
INSERT INTO `GalleryPhotos` VALUES(114, 244);
INSERT INTO `GalleryPhotos` VALUES(114, 245);
INSERT INTO `GalleryPhotos` VALUES(114, 246);
INSERT INTO `GalleryPhotos` VALUES(114, 247);
INSERT INTO `GalleryPhotos` VALUES(114, 248);
INSERT INTO `GalleryPhotos` VALUES(114, 249);
INSERT INTO `GalleryPhotos` VALUES(114, 250);
INSERT INTO `GalleryPhotos` VALUES(117, 552);
INSERT INTO `GalleryPhotos` VALUES(117, 553);
INSERT INTO `GalleryPhotos` VALUES(117, 554);
INSERT INTO `GalleryPhotos` VALUES(117, 555);
INSERT INTO `GalleryPhotos` VALUES(117, 557);
INSERT INTO `GalleryPhotos` VALUES(117, 558);
INSERT INTO `GalleryPhotos` VALUES(117, 559);
INSERT INTO `GalleryPhotos` VALUES(117, 560);
INSERT INTO `GalleryPhotos` VALUES(117, 561);
INSERT INTO `GalleryPhotos` VALUES(117, 562);
INSERT INTO `GalleryPhotos` VALUES(117, 563);
INSERT INTO `GalleryPhotos` VALUES(117, 564);
INSERT INTO `GalleryPhotos` VALUES(835, 285);
INSERT INTO `GalleryPhotos` VALUES(835, 286);
INSERT INTO `GalleryPhotos` VALUES(835, 287);
INSERT INTO `GalleryPhotos` VALUES(835, 288);
INSERT INTO `GalleryPhotos` VALUES(835, 289);
INSERT INTO `GalleryPhotos` VALUES(835, 290);
INSERT INTO `GalleryPhotos` VALUES(835, 291);
INSERT INTO `GalleryPhotos` VALUES(835, 292);
INSERT INTO `GalleryPhotos` VALUES(835, 293);
INSERT INTO `GalleryPhotos` VALUES(835, 294);
INSERT INTO `GalleryPhotos` VALUES(839, 296);
INSERT INTO `GalleryPhotos` VALUES(839, 297);
INSERT INTO `GalleryPhotos` VALUES(839, 298);
INSERT INTO `GalleryPhotos` VALUES(839, 299);
INSERT INTO `GalleryPhotos` VALUES(839, 300);
INSERT INTO `GalleryPhotos` VALUES(839, 301);
INSERT INTO `GalleryPhotos` VALUES(839, 302);
INSERT INTO `GalleryPhotos` VALUES(839, 303);
INSERT INTO `GalleryPhotos` VALUES(839, 304);
INSERT INTO `GalleryPhotos` VALUES(839, 305);
INSERT INTO `GalleryPhotos` VALUES(839, 306);
INSERT INTO `GalleryPhotos` VALUES(842, 317);
INSERT INTO `GalleryPhotos` VALUES(842, 319);
INSERT INTO `GalleryPhotos` VALUES(842, 320);
INSERT INTO `GalleryPhotos` VALUES(842, 321);
INSERT INTO `GalleryPhotos` VALUES(842, 328);
INSERT INTO `GalleryPhotos` VALUES(842, 329);
INSERT INTO `GalleryPhotos` VALUES(842, 330);
INSERT INTO `GalleryPhotos` VALUES(842, 331);
INSERT INTO `GalleryPhotos` VALUES(842, 332);
INSERT INTO `GalleryPhotos` VALUES(898, 364);
INSERT INTO `GalleryPhotos` VALUES(898, 365);
INSERT INTO `GalleryPhotos` VALUES(898, 366);
INSERT INTO `GalleryPhotos` VALUES(898, 367);
INSERT INTO `GalleryPhotos` VALUES(898, 368);
INSERT INTO `GalleryPhotos` VALUES(898, 369);
INSERT INTO `GalleryPhotos` VALUES(898, 370);
INSERT INTO `GalleryPhotos` VALUES(898, 371);
INSERT INTO `GalleryPhotos` VALUES(898, 372);
INSERT INTO `GalleryPhotos` VALUES(898, 373);
INSERT INTO `GalleryPhotos` VALUES(898, 374);
INSERT INTO `GalleryPhotos` VALUES(900, 413);
INSERT INTO `GalleryPhotos` VALUES(900, 414);
INSERT INTO `GalleryPhotos` VALUES(900, 415);
INSERT INTO `GalleryPhotos` VALUES(900, 416);
INSERT INTO `GalleryPhotos` VALUES(900, 417);
INSERT INTO `GalleryPhotos` VALUES(900, 418);
INSERT INTO `GalleryPhotos` VALUES(900, 419);
INSERT INTO `GalleryPhotos` VALUES(900, 420);
INSERT INTO `GalleryPhotos` VALUES(900, 421);
INSERT INTO `GalleryPhotos` VALUES(900, 422);
INSERT INTO `GalleryPhotos` VALUES(901, 423);
INSERT INTO `GalleryPhotos` VALUES(901, 424);
INSERT INTO `GalleryPhotos` VALUES(901, 425);
INSERT INTO `GalleryPhotos` VALUES(901, 426);
INSERT INTO `GalleryPhotos` VALUES(901, 427);
INSERT INTO `GalleryPhotos` VALUES(901, 428);
INSERT INTO `GalleryPhotos` VALUES(901, 429);
INSERT INTO `GalleryPhotos` VALUES(901, 430);
INSERT INTO `GalleryPhotos` VALUES(901, 431);
INSERT INTO `GalleryPhotos` VALUES(902, 456);
INSERT INTO `GalleryPhotos` VALUES(902, 457);
INSERT INTO `GalleryPhotos` VALUES(902, 458);
INSERT INTO `GalleryPhotos` VALUES(902, 459);
INSERT INTO `GalleryPhotos` VALUES(902, 460);
INSERT INTO `GalleryPhotos` VALUES(902, 461);
INSERT INTO `GalleryPhotos` VALUES(902, 462);
INSERT INTO `GalleryPhotos` VALUES(902, 463);
INSERT INTO `GalleryPhotos` VALUES(903, 464);
INSERT INTO `GalleryPhotos` VALUES(903, 465);
INSERT INTO `GalleryPhotos` VALUES(903, 466);
INSERT INTO `GalleryPhotos` VALUES(903, 467);
INSERT INTO `GalleryPhotos` VALUES(903, 468);
INSERT INTO `GalleryPhotos` VALUES(903, 469);
INSERT INTO `GalleryPhotos` VALUES(906, 432);
INSERT INTO `GalleryPhotos` VALUES(906, 433);
INSERT INTO `GalleryPhotos` VALUES(906, 434);
INSERT INTO `GalleryPhotos` VALUES(906, 435);
INSERT INTO `GalleryPhotos` VALUES(906, 436);
INSERT INTO `GalleryPhotos` VALUES(906, 437);
INSERT INTO `GalleryPhotos` VALUES(906, 438);
INSERT INTO `GalleryPhotos` VALUES(906, 439);
INSERT INTO `GalleryPhotos` VALUES(906, 440);
INSERT INTO `GalleryPhotos` VALUES(907, 441);
INSERT INTO `GalleryPhotos` VALUES(907, 442);
INSERT INTO `GalleryPhotos` VALUES(907, 443);
INSERT INTO `GalleryPhotos` VALUES(907, 444);
INSERT INTO `GalleryPhotos` VALUES(907, 445);
INSERT INTO `GalleryPhotos` VALUES(907, 446);
INSERT INTO `GalleryPhotos` VALUES(907, 447);
INSERT INTO `GalleryPhotos` VALUES(907, 448);
INSERT INTO `GalleryPhotos` VALUES(907, 449);
INSERT INTO `GalleryPhotos` VALUES(910, 516);
INSERT INTO `GalleryPhotos` VALUES(910, 517);
INSERT INTO `GalleryPhotos` VALUES(910, 518);
INSERT INTO `GalleryPhotos` VALUES(910, 519);
INSERT INTO `GalleryPhotos` VALUES(910, 520);
INSERT INTO `GalleryPhotos` VALUES(910, 521);
INSERT INTO `GalleryPhotos` VALUES(910, 522);
INSERT INTO `GalleryPhotos` VALUES(910, 523);
INSERT INTO `GalleryPhotos` VALUES(910, 524);
INSERT INTO `GalleryPhotos` VALUES(910, 526);
INSERT INTO `GalleryPhotos` VALUES(910, 527);
INSERT INTO `GalleryPhotos` VALUES(910, 529);
INSERT INTO `GalleryPhotos` VALUES(910, 530);
INSERT INTO `GalleryPhotos` VALUES(910, 531);
INSERT INTO `GalleryPhotos` VALUES(910, 533);

-- --------------------------------------------------------

--
-- Table structure for table `House`
--

CREATE TABLE `House` (
  `house_id` int(11) NOT NULL AUTO_INCREMENT,
  `house_num` varchar(10) NOT NULL,
  `street` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `prov` varchar(2) NOT NULL,
  `postal_code` varchar(7) NOT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `type` enum('DETACHED','SEMI-DETACHED') NOT NULL,
  `bathrooms` varchar(3) NOT NULL,
  `powder_rooms` varchar(3) NOT NULL DEFAULT '0',
  `bedrooms` varchar(3) NOT NULL,
  `size` varchar(10) DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'if 1, the house is a soft delete',
  PRIMARY KEY (`house_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `House`
--

INSERT INTO `House` VALUES(1, '301', 'Cote Royal', 'Ottawa', 'ON', 'K1E 3L8', 'NO NEIGHBORS AT THE REAR !!\r\n\r\n3 Bedroom single house, 1.5 bathrooms, 5 appliances, storage, fireplace, yard, deck, garage. $1,299.00                                               plus utilities.\r\n\r\nThis house has a great location, only minutes from schools, parks, restaurants and coffee shops, providing young families or professionals with an affordable suburban lifestyle.', 'DETACHED', '1', '1', '3', '', 0);
INSERT INTO `House` VALUES(4, '43', 'Alberni', 'Ottawa', 'ON', 'K2J 1V8', 'This family home is an end unit on a quiet tree lined street with no neighbours to the rear. The location is in popular suburban Barrhaven within easy reach of schools, shopping, parks, public transport, restaurants and is ideal for a young family or couples. The dining room/living room features hardwood flooring and overlooks a large wooden deck and the garden. The renovated eat-in kitchen with granite counters has a large breakfast nook, both receive lots of natural light from the large windows. The ground floor has a powder room and a large ceramic tile entrance. The 2nd floor offers a spacious master bedroom with direct access to the bathroom and a large closet, as well as two bedrooms facing the garden. The basement has storage and laundry areas.\r\n\r\n3 Bedroom family home\r\n1.5 bathrooms with ceramic flooring\r\n5 appliances\r\nA/C\r\nLarge entrance\r\nBreakfast nook\r\nRenovated kitchen with granite countertops\r\nLarge dining &amp; living room\r\nGround floor features hardwood and ceramic flooring\r\nStorage\r\nYard\r\nLarge, raised wooden deck\r\nRoom to park one car on the driveway\r\n$1,870.00 plus utilities\r\n\r\nSchools, shopping, restaurants and parks are all nearby along with public transport affording easy access to downtown.\r\n\r\n613-232-2396', 'SEMI-DETACHED', '1', '1', '3', NULL, 0);
INSERT INTO `House` VALUES(3, '45', 'Clifford Private', 'Ottawa', 'ON', 'K1G 4Y3', 'ONE MONTH FREE \r\n\r\nNEWLY RENOVATED \r\n\r\n3 Bedroom house, 2.5 bathrooms, 5 appliances, breakfast nook, master bedroom with ensuite bathroom and walk-in closet, dining room, living room, large entrance, partly finished basement, storage, yard, patio, garage. $1,320.00 plus utilities.\r\n\r\nThis house has a great location, only minutes from schools, parks, restaurants and coffee shops, providing young families or professionals with an affordable suburban lifestyle.\r\n\r\nFor more information or to arrange a showing please contact our Rental Agent at 613-232-2396', 'DETACHED', '2', '1', '3', '', 0);
INSERT INTO `House` VALUES(9, '10C', 'Knollsbrook Dr.', 'Ottawa', 'ON', 'K2J 1L7', '3 Bedroom townhouse, 1.5 bathrooms, 5 appliances, storage, yard, parking, water included. $1,200.00 plus gas and electricity.', 'SEMI-DETACHED', '1', '1', '3', NULL, 0);
INSERT INTO `House` VALUES(8, '1A', 'Foxhill Way', 'Ottawa', 'ON', 'K2J 1J8', 'FEBRUARY FREE !! \r\n\r\n613-232-2396 \r\n\r\n3 Bedroom family home with 1 Â½ bathrooms with a master bedroom featuring an ensuite Â½ bathroom, 5 appliances, A/C, eat-in kitchen, dining room, a sunken living room, storage, water filtration system with spare filter, shady fenced yard, shed, patio and parking. $1,245.00 plus gas and electricity. Water is included. \r\n\r\nThis townhome is located on a quiet cul-de-sac within easy reach of schools, shopping, parks, public transport, restaurants and is ideal for a young family or couples. \r\n\r\nFor more information or to arrange a showing please contact our Rental Agent at 613-232-2396.', 'SEMI-DETACHED', '1', '2', '3', NULL, 0);
INSERT INTO `House` VALUES(10, '11', 'Trafford Lane', 'Ottawa', 'ON', 'K2J 1X6', '3 Bedroom townhouse, 2.5 bathrooms, 5 appliances, fireplace, walk in closet, partly finished basement, storage, fenced yard, patio, garage, garage door opener. $1,195.00 plus utilities.\r\n    \r\nThis well maintained home is located close to parks, bus routes, schools, and shopping. It''s ideal for a family.\r\n    \r\nFor more information or to arrange a showing please contact our Rental Agent at 613-232-2396.', 'SEMI-DETACHED', '2', '1', '3', NULL, 0);
INSERT INTO `House` VALUES(11, '1985', 'Greenvale Lane', 'Ottawa', 'ON', 'K1C 6E', '$500.00 MOVE-IN BONUS \r\n\r\nNEWLY RENOVATED \r\n\r\n613-232-2396 for more information or to arrange a showing. \r\n\r\n3 Bedroom house, 2.5 bathrooms, 5 appliances, breakfast nook, master bedroom with ensuite bathroom and walk in closet, dining room, living room, storage, yard, patio, parking. $1,250.00 plus utilities. \r\n\r\nThis house has a great location, only minutes from schools, parks, restaurants and coffee shops, provides young families or professionals with an affordable suburban lifestyle. \r\n\r\nFor more information or to arrange a showing please contact our Rental Agent at 613-232-2396', 'DETACHED', '2', '1', '3', NULL, 0);
INSERT INTO `House` VALUES(12, '66', 'Sundback Lane', 'Ottawa', 'ON', 'K2L 2W8', '$500.00 MOVE-IN BONUS !!\r\n\r\nIMMEDIATE AVAILABILITY \r\n\r\nCall 613-232-2396 for more information or to arrange a showing. \r\n\r\n3 Bedroom townhouse, 1 full and 2 half bathrooms, the master bedroom features one of the half bathrooms as an ensuite as well as a walk-in closet, air-conditioning, 5 appliances, eat-in kitchen, dining room, living room, fireplace, large entrance, storage, fenced yard, shed, patio, garage. $1,395.00 plus utilities. \r\n\r\nThis beautiful family home has a great location, only minutes from schools, parks, restaurants and coffee shops, provides young families or professionals with an affordable suburban lifestyle. \r\n\r\nFor more information or to arrange a showing please contact our Rental Agent at 613-232-2396', 'SEMI-DETACHED', '1', '2', '3', NULL, 0);
INSERT INTO `House` VALUES(13, '6529', 'Colony Square', 'Ottawa', 'ON', 'K1C 3E3', 'JANUARY FREE !!           END UNIT! \r\n\r\n613-232-2396\r\n\r\n3 Bedroom townhouse, 1.5 bathrooms, master bedroom, 5 appliances, eat-in kitchen, dining room, living room, finished rec room in the basement, storage, fenced yard, deck, garage. $1,269.00 plus utilities. \r\n\r\nThis beautiful family home has a great location, only minutes from schools, parks, restaurants and coffee shops, provides young families or professionals with an affordable suburban lifestyle. \r\n\r\nFor more information or to arrange a showing please contact our Rental Agent at 613-232-2396', 'SEMI-DETACHED', '1', '1', '3', NULL, 0);
INSERT INTO `House` VALUES(14, '21', 'Trafford Lane', 'Ottawa', 'ON', 'K2J 1X6', '3 Bedroom single family home featuring 2 &frac12; bathrooms, 5 appliances, A/C, eat-in kitchen, large dining room, sunken living room with fireplace overlooking the raised deck and garden, large master bedroom with a sitting area and ensuite bathroom, finished basement, shady yard, deck and garage with direct access from the house. $1,700.00 plus utilities.\r\n\r\nThis beautiful family home has a great location, only minutes from schools, parks, major shopping, public transport, restaurants and coffee shops, provides young families or professionals with an affordable suburban lifestyle.', 'DETACHED', '2', '1', '3', NULL, 0);
INSERT INTO `House` VALUES(15, '69', 'Clifford Private', 'Ottawa', 'ON', 'K1G 4Y2', 'NEWLY RENOVATED\r\n\r\nIMMEDIATE AVAILABILITY \r\n\r\n613-232-2396 for more information or to arrange a showing.\r\n\r\n3 Bedroom townhouse, 2.5 bathrooms, 5 appliances, breakfast nook, master bedroom with ensuite bathroom, dining room and living room with new laminate flooring, large entrance, fireplace, storage, yard, garage with direct access to the house. New flooring throughout the house. $1,449.00 plus utilities.\r\n\r\nThis house has a great location, only minutes from schools, parks, restaurants and coffee shops, provides young families or professionals with an affordable suburban lifestyle.\r\n \r\nFor more information or to arrange a showing please contact our Rental Agent at 613-232-2396', 'DETACHED', '2', '1', '3', NULL, 0);
INSERT INTO `House` VALUES(16, '1803', 'Radway Terrace', 'Ottawa', 'ON', 'K1C 5J1', 'IMMEDIATE AVAILABILITY \r\n\r\n613-232-2396 for more information or to arrange a showing.\r\n\r\n3 Bedroom House, 2 Â½ bathrooms, 5 appliances, breakfast nook, master bedroom features an ensuite bathroom, dining room and living room with laminate flooring, fireplace, storage, fenced yard with garden shed, garage. $1,399.00 plus utilities.\r\n\r\nThis house has a great location, only minutes from schools, parks, restaurants and coffee shops, provides young families or professionals with an affordable suburban lifestyle.\r\n \r\nFor more information or to arrange a showing please contact our Rental Agent at 613-232-2396', 'DETACHED', '2', '1', '3', NULL, 0);
INSERT INTO `House` VALUES(17, '468', 'Cambridge Street South', 'Ottawa', 'ON', 'K1S 4H8', '3 Bedroom house, 1 bathroom, 5 appliances, large open concept eat-in kitchen, dining room and living room with laminate flooring, parking. $1,400.00 plus utilities.\r\n\r\nThis house has a great location near downtown, only minutes from schools, parks, restaurants and coffee shops on Preston Street, provides young families or professionals with an affordable urban lifestyle.', 'DETACHED', '1', '', '3', NULL, 0);
INSERT INTO `House` VALUES(18, '407', 'Montfort Street, Unit 6', 'Ottawa', 'ON', 'K1S 4H8', '613-232-2396\r\n\r\n3 Bedroom family townhome with 1 Â½ bathrooms, 4 appliances, open concept dining room and living room with laminate flooring, storage, patio and parking. $1,250.00 plus utilities.\r\n\r\nThis townhome is located on a quiet cul-de-sac within easy reach of schools, shopping, parks, public transport, restaurants and is ideal for a young family or couples.\r\n\r\nFor more information or to arrange a showing please contact our Rental Agent at 613-232-2396.', 'DETACHED', '', '', '', NULL, 0);
INSERT INTO `House` VALUES(19, '32', 'Rue de Brouage', 'Gatineau', 'QC', 'J9J 1J5', 'The Best house in the world. Swimming pool, many fireplaces, Large Bedrooms.', 'DETACHED', '2', '2', '4', NULL, 1);
INSERT INTO `House` VALUES(20, '32', 'Rue De Brouage', 'Gatineau', 'QC', 'J9J 1J5', 'Fireplace, tile/hardwood, granite counter tops', 'DETACHED', '2', '2', '4', NULL, 1);
INSERT INTO `House` VALUES(21, '32', 'Rue De Brouage', 'Gatineau', 'QC', 'J9J 1J5', 'Fireplace, tile/hardwood, granite counter tops', 'DETACHED', '2', '2', '4', NULL, 1);
INSERT INTO `House` VALUES(22, '32', 'Brouage', 'Gatineau', 'QC', 'J9J 1J5', 'sadfasdfa', 'DETACHED', '2', '2', '4', NULL, 1);
INSERT INTO `House` VALUES(23, '32', 'Brouage', 'Gatineau', 'QC', 'J9J 1J5', 'afsdfewf', 'DETACHED', '2', '2', '4', NULL, 1);
INSERT INTO `House` VALUES(24, '2', 'test', 'Gatineau', 'QC', 'J9J 1J5', 'asdfdsaf', 'DETACHED', '1', '1', '1', NULL, 1);
INSERT INTO `House` VALUES(25, '3', 'tst', 'Gatineau', 'QC', 'J9J 1J5', 'safsdf', 'DETACHED', '1', '1', '1', NULL, 1);
INSERT INTO `House` VALUES(26, '6563', 'Colony Square', 'Ottawa', 'ON', 'K1C 3E3', '613-232-2396\r\n\r\nIMMEDIATE AVAILABILITY\r\n\r\nThis family home is an end unit located on a quiet tree lined street in popular suburban Orleans. The dining room/living room features new hardwood flooring and overlooks a large wooden deck and the private garden. The updated kitchen has granite counters and a large breakfast nook. The ground floor has a powder room and a large ceramic tile entrance. The 2nd floor offers a spacious master bedroom with a large closet. The basement has a finished rec room plus storage and laundry areas.\r\n\r\n3 Bedroom family home\r\n1 &amp;amp;amp;amp;amp;amp;frac12; bathrooms\r\n5 appliances\r\nA/C\r\nBreakfast nook\r\nUpdated kitchen \r\nLarge dining &amp;amp;amp;amp;amp;amp;amp; living room with new hardwood flooring\r\nFinished basement\r\nStorage\r\nFenced yard\r\nLarge, raised wooden deck\r\nOne car garage \r\nRoom to park one small car on the driveway\r\n$1,850.00 plus utilities.\r\n\r\nSchools, shopping, restaurants and parks are all nearby along with public transport affording easy ac', 'SEMI-DETACHED', '1', '1', '3', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `HouseAvailable`
--

CREATE TABLE `HouseAvailable` (
  `house_id` int(11) NOT NULL AUTO_INCREMENT,
  `rent` varchar(20) NOT NULL,
  `month` varchar(2) NOT NULL,
  `year` varchar(4) NOT NULL,
  `promotion` varchar(50) NOT NULL,
  PRIMARY KEY (`house_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `HouseAvailable`
--


-- --------------------------------------------------------

--
-- Table structure for table `HouseFeatures`
--

CREATE TABLE `HouseFeatures` (
  `feature_id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` int(11) NOT NULL,
  `feature` varchar(50) NOT NULL,
  PRIMARY KEY (`feature_id`),
  KEY `house_id` (`house_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `HouseFeatures`
--


-- --------------------------------------------------------

--
-- Table structure for table `HouseGallery`
--

CREATE TABLE `HouseGallery` (
  `house_id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  PRIMARY KEY (`house_id`,`gallery_id`),
  UNIQUE KEY `house_id` (`house_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `HouseGallery`
--

INSERT INTO `HouseGallery` VALUES(0, 919);
INSERT INTO `HouseGallery` VALUES(1, 12);
INSERT INTO `HouseGallery` VALUES(2, 22);
INSERT INTO `HouseGallery` VALUES(3, 13);
INSERT INTO `HouseGallery` VALUES(4, 14);
INSERT INTO `HouseGallery` VALUES(5, 23);
INSERT INTO `HouseGallery` VALUES(7, 24);
INSERT INTO `HouseGallery` VALUES(8, 16);
INSERT INTO `HouseGallery` VALUES(9, 17);
INSERT INTO `HouseGallery` VALUES(10, 20);
INSERT INTO `HouseGallery` VALUES(11, 27);
INSERT INTO `HouseGallery` VALUES(12, 111);
INSERT INTO `HouseGallery` VALUES(13, 114);
INSERT INTO `HouseGallery` VALUES(14, 117);
INSERT INTO `HouseGallery` VALUES(15, 835);
INSERT INTO `HouseGallery` VALUES(16, 839);
INSERT INTO `HouseGallery` VALUES(17, 842);
INSERT INTO `HouseGallery` VALUES(18, 849);
INSERT INTO `HouseGallery` VALUES(19, 898);
INSERT INTO `HouseGallery` VALUES(22, 906);
INSERT INTO `HouseGallery` VALUES(23, 907);
INSERT INTO `HouseGallery` VALUES(24, 909);
INSERT INTO `HouseGallery` VALUES(25, 908);
INSERT INTO `HouseGallery` VALUES(26, 910);
INSERT INTO `HouseGallery` VALUES(7385, 914);

-- --------------------------------------------------------

--
-- Table structure for table `Member`
--

CREATE TABLE `Member` (
  `member_id` int(8) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Member`
--

INSERT INTO `Member` VALUES(1, 'alfredamorrissey@gmail.com', 'ZLhUwpBTBKjLz7hXh98xKjCj8EHDwGiiWVU7qoaBxW0=');
INSERT INTO `Member` VALUES(2, 'e.674.em@gmail.com', 'YHKNdw3TI0lCz0WZA3Xfq6OkERPFLFHmF/brnN3G8cg=');

-- --------------------------------------------------------

--
-- Table structure for table `Photos`
--

CREATE TABLE `Photos` (
  `photo_id` int(11) NOT NULL AUTO_INCREMENT,
  `thumb` varchar(100) NOT NULL,
  `med` varchar(100) NOT NULL,
  `full` varchar(100) NOT NULL,
  `photo_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`photo_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=565 ;

--
-- Dumping data for table `Photos`
--

INSERT INTO `Photos` VALUES(416, 'images/imggal/04-2/thumb/4.png', '', 'images/imggal/04-2/full/4.jpg', 5);
INSERT INTO `Photos` VALUES(417, 'images/imggal/04-2/thumb/5.png', '', 'images/imggal/04-2/full/5.jpg', 6);
INSERT INTO `Photos` VALUES(418, 'images/imggal/04-2/thumb/6.png', '', 'images/imggal/04-2/full/6.jpg', 7);
INSERT INTO `Photos` VALUES(419, 'images/imggal/04-2/thumb/7.png', '', 'images/imggal/04-2/full/7.jpg', 8);
INSERT INTO `Photos` VALUES(420, 'images/imggal/04-2/thumb/8.png', '', 'images/imggal/04-2/full/8.jpg', 9);
INSERT INTO `Photos` VALUES(421, 'images/imggal/04-2/thumb/9.png', '', 'images/imggal/04-2/full/9.jpg', 10);
INSERT INTO `Photos` VALUES(422, 'images/imggal/04-2/thumb/10.png', '', 'images/imggal/04-2/full/10.jpg', 11);
INSERT INTO `Photos` VALUES(8, 'images/imggal/02/thumb/ig_thumb_02_1.png', 'images/imggal/02/med/ig_med_02_1.jpg', 'images/imggal/02/full/ig_full_02_1.jpg', 0);
INSERT INTO `Photos` VALUES(9, 'images/imggal/02/thumb/ig_thumb_02_2.png', 'images/imggal/02/med/ig_med_02_2.jpg', 'images/imggal/02/full/ig_full_02_2.jpg', 0);
INSERT INTO `Photos` VALUES(10, 'images/imggal/02/thumb/ig_thumb_02_3.png', 'images/imggal/02/med/ig_med_02_3.jpg', 'images/imggal/02/full/ig_full_02_3.jpg', 0);
INSERT INTO `Photos` VALUES(11, 'images/imggal/02/thumb/ig_thumb_02_4.png', 'images/imggal/02/med/ig_med_02_4.jpg', 'images/imggal/02/full/ig_full_02_4.jpg', 0);
INSERT INTO `Photos` VALUES(509, 'images/imggal/01/thumb/6.png', '', 'images/imggal/01/full/6.JPG', 7);
INSERT INTO `Photos` VALUES(413, 'images/imggal/04-2/thumb/1.png', '', 'images/imggal/04-2/full/1.jpg', 2);
INSERT INTO `Photos` VALUES(13, 'images/imggal/03/thumb/ig_thumb_03_1.png', 'images/imggal/03/med/ig_med_03_1.jpg', 'images/imggal/03/full/ig_full_03_1.jpg', 0);
INSERT INTO `Photos` VALUES(14, 'images/imggal/03/thumb/ig_thumb_03_2.png', 'images/imggal/03/med/ig_med_03_2.jpg', 'images/imggal/03/full/ig_full_03_2.jpg', 0);
INSERT INTO `Photos` VALUES(15, 'images/imggal/03/thumb/ig_thumb_03_3.png', 'images/imggal/03/med/ig_med_03_3.jpg', 'images/imggal/03/full/ig_full_03_3.jpg', 0);
INSERT INTO `Photos` VALUES(474, 'images/imggal/04/thumb/5.png', '', 'images/imggal/04/full/5.jpg', 6);
INSERT INTO `Photos` VALUES(475, 'images/imggal/04/thumb/6.png', '', 'images/imggal/04/full/6.jpg', 7);
INSERT INTO `Photos` VALUES(470, 'images/imggal/04/thumb/1.png', '', 'images/imggal/04/full/1.jpg', 2);
INSERT INTO `Photos` VALUES(471, 'images/imggal/04/thumb/2.png', '', 'images/imggal/04/full/2.jpg', 3);
INSERT INTO `Photos` VALUES(472, 'images/imggal/04/thumb/3.png', '', 'images/imggal/04/full/3.jpg', 4);
INSERT INTO `Photos` VALUES(473, 'images/imggal/04/thumb/4.png', '', 'images/imggal/04/full/4.jpg', 5);
INSERT INTO `Photos` VALUES(20, 'images/imggal/05/thumb/ig_thumb_05_1.png', 'images/imggal/05/med/ig_med_05_1.jpg', 'images/imggal/05/full/ig_full_05_1.jpg', 0);
INSERT INTO `Photos` VALUES(21, 'images/imggal/05/thumb/ig_thumb_05_2.png', 'images/imggal/05/med/ig_med_05_2.jpg', 'images/imggal/05/full/ig_full_05_2.jpg', 0);
INSERT INTO `Photos` VALUES(22, 'images/imggal/05/thumb/ig_thumb_05_3.png', 'images/imggal/05/med/ig_med_05_3.jpg', 'images/imggal/05/full/ig_full_05_3.jpg', 0);
INSERT INTO `Photos` VALUES(23, 'images/imggal/05/thumb/ig_thumb_05_4.png', 'images/imggal/05/med/ig_med_05_4.jpg', 'images/imggal/05/full/ig_full_05_4.jpg', 0);
INSERT INTO `Photos` VALUES(488, 'images/imggal/06/thumb/3.png', '', 'images/imggal/06/full/3.jpg', 4);
INSERT INTO `Photos` VALUES(489, 'images/imggal/06/thumb/4.png', '', 'images/imggal/06/full/4.jpg', 5);
INSERT INTO `Photos` VALUES(490, 'images/imggal/06/thumb/5.png', '', 'images/imggal/06/full/5.jpg', 6);
INSERT INTO `Photos` VALUES(491, 'images/imggal/06/thumb/6.png', '', 'images/imggal/06/full/6.jpg', 7);
INSERT INTO `Photos` VALUES(492, 'images/imggal/06/thumb/7.png', '', 'images/imggal/06/full/7.jpg', 8);
INSERT INTO `Photos` VALUES(486, 'images/imggal/06/thumb/1.png', '', 'images/imggal/06/full/1.jpg', 2);
INSERT INTO `Photos` VALUES(487, 'images/imggal/06/thumb/2.png', '', 'images/imggal/06/full/2.jpg', 3);
INSERT INTO `Photos` VALUES(29, 'images/imggal/07/thumb/ig_thumb_07_1.png', 'images/imggal/07/med/ig_med_07_1.jpg', 'images/imggal/07/full/ig_full_07_1.jpg', 0);
INSERT INTO `Photos` VALUES(30, 'images/imggal/07/thumb/ig_thumb_07_2.png', 'images/imggal/07/med/ig_med_07_2.jpg', 'images/imggal/07/full/ig_full_07_2.jpg', 0);
INSERT INTO `Photos` VALUES(31, 'images/imggal/07/thumb/ig_thumb_07_3.png', 'images/imggal/07/med/ig_med_07_3.jpg', 'images/imggal/07/full/ig_full_07_3.jpg', 0);
INSERT INTO `Photos` VALUES(512, 'images/imggal/08/thumb/3.png', '', 'images/imggal/08/full/3.JPG', 4);
INSERT INTO `Photos` VALUES(513, 'images/imggal/08/thumb/4.png', '', 'images/imggal/08/full/4.JPG', 5);
INSERT INTO `Photos` VALUES(514, 'images/imggal/08/thumb/5.png', '', 'images/imggal/08/full/5.JPG', 6);
INSERT INTO `Photos` VALUES(515, 'images/imggal/08/thumb/6.png', '', 'images/imggal/08/full/6.JPG', 7);
INSERT INTO `Photos` VALUES(516, 'images/imggal/6563ColonySquare/thumb/1.png', '', 'images/imggal/6563ColonySquare/full/1.jpg', 2);
INSERT INTO `Photos` VALUES(517, 'images/imggal/6563ColonySquare/thumb/2.png', '', 'images/imggal/6563ColonySquare/full/2.jpg', 3);
INSERT INTO `Photos` VALUES(518, 'images/imggal/6563ColonySquare/thumb/3.png', '', 'images/imggal/6563ColonySquare/full/3.jpg', 1);
INSERT INTO `Photos` VALUES(519, 'images/imggal/6563ColonySquare/thumb/4.png', '', 'images/imggal/6563ColonySquare/full/4.jpg', 0);
INSERT INTO `Photos` VALUES(178, 'images/imggal/B-1/thumb/1.png', 'images/imggal/B-1/med/1.jpg', 'images/imggal/B-1/full/1.jpg', 3);
INSERT INTO `Photos` VALUES(179, 'images/imggal/B-1/thumb/2.png', 'images/imggal/B-1/med/2.jpg', 'images/imggal/B-1/full/2.jpg', 0);
INSERT INTO `Photos` VALUES(180, 'images/imggal/B-1/thumb/3.png', 'images/imggal/B-1/med/3.jpg', 'images/imggal/B-1/full/3.jpg', 2);
INSERT INTO `Photos` VALUES(450, 'images/imggal/B-1/thumb/4.png', '', 'images/imggal/B-1/full/4.jpg', 1);
INSERT INTO `Photos` VALUES(182, 'images/imggal/B-2/thumb/1.png', 'images/imggal/B-2/med/1.jpg', 'images/imggal/B-2/full/1.jpg', 0);
INSERT INTO `Photos` VALUES(183, 'images/imggal/B-2/thumb/2.png', 'images/imggal/B-2/med/2.jpg', 'images/imggal/B-2/full/2.jpg', 0);
INSERT INTO `Photos` VALUES(184, 'images/imggal/B-2/thumb/3.png', 'images/imggal/B-2/med/3.jpg', 'images/imggal/B-2/full/3.jpg', 0);
INSERT INTO `Photos` VALUES(185, 'images/imggal/B-2/thumb/4.png', 'images/imggal/B-2/med/4.jpg', 'images/imggal/B-2/full/4.jpg', 0);
INSERT INTO `Photos` VALUES(74, 'images/imggal//thumb/4.jpg', 'images/imggal//med/4.jpg', 'images/imggal//full/4.jpg', NULL);
INSERT INTO `Photos` VALUES(75, 'images/imggal//thumb/11.jpg', 'images/imggal//med/11.jpg', 'images/imggal//full/11.jpg', NULL);
INSERT INTO `Photos` VALUES(76, 'images/imggal//thumb/12.jpg', 'images/imggal//med/12.jpg', 'images/imggal//full/12.jpg', NULL);
INSERT INTO `Photos` VALUES(143, 'images/imggal/301CoteRoyale/thumb/8.jpg', 'images/imggal/301CoteRoyale/med/8.jpg', 'images/imggal/301CoteRoyale/full/8.jpg', NULL);
INSERT INTO `Photos` VALUES(142, 'images/imggal/301CoteRoyale/thumb/7.jpg', 'images/imggal/301CoteRoyale/med/7.jpg', 'images/imggal/301CoteRoyale/full/7.jpg', NULL);
INSERT INTO `Photos` VALUES(141, 'images/imggal/301CoteRoyale/thumb/6.jpg', 'images/imggal/301CoteRoyale/med/6.jpg', 'images/imggal/301CoteRoyale/full/6.jpg', NULL);
INSERT INTO `Photos` VALUES(140, 'images/imggal/301CoteRoyale/thumb/5.jpg', 'images/imggal/301CoteRoyale/med/5.jpg', 'images/imggal/301CoteRoyale/full/5.jpg', NULL);
INSERT INTO `Photos` VALUES(139, 'images/imggal/301CoteRoyale/thumb/4.jpg', 'images/imggal/301CoteRoyale/med/4.jpg', 'images/imggal/301CoteRoyale/full/4.jpg', NULL);
INSERT INTO `Photos` VALUES(138, 'images/imggal/301CoteRoyale/thumb/3.jpg', 'images/imggal/301CoteRoyale/med/3.jpg', 'images/imggal/301CoteRoyale/full/3.jpg', NULL);
INSERT INTO `Photos` VALUES(137, 'images/imggal/301CoteRoyale/thumb/2.jpg', 'images/imggal/301CoteRoyale/med/2.jpg', 'images/imggal/301CoteRoyale/full/2.jpg', NULL);
INSERT INTO `Photos` VALUES(136, 'images/imggal/301CoteRoyale/thumb/1.jpg', 'images/imggal/301CoteRoyale/med/1.jpg', 'images/imggal/301CoteRoyale/full/1.jpg', NULL);
INSERT INTO `Photos` VALUES(124, 'images/imggal/45CliffordPrivate/thumb/1.jpg', 'images/imggal/45CliffordPrivate/med/1.jpg', 'images/imggal/45CliffordPrivate/full/1.jpg', NULL);
INSERT INTO `Photos` VALUES(125, 'images/imggal/45CliffordPrivate/thumb/2.jpg', 'images/imggal/45CliffordPrivate/med/2.jpg', 'images/imggal/45CliffordPrivate/full/2.jpg', NULL);
INSERT INTO `Photos` VALUES(126, 'images/imggal/45CliffordPrivate/thumb/3.jpg', 'images/imggal/45CliffordPrivate/med/3.jpg', 'images/imggal/45CliffordPrivate/full/3.jpg', NULL);
INSERT INTO `Photos` VALUES(127, 'images/imggal/45CliffordPrivate/thumb/4.jpg', 'images/imggal/45CliffordPrivate/med/4.jpg', 'images/imggal/45CliffordPrivate/full/4.jpg', NULL);
INSERT INTO `Photos` VALUES(128, 'images/imggal/45CliffordPrivate/thumb/5.jpg', 'images/imggal/45CliffordPrivate/med/5.jpg', 'images/imggal/45CliffordPrivate/full/5.jpg', NULL);
INSERT INTO `Photos` VALUES(129, 'images/imggal/45CliffordPrivate/thumb/6.jpg', 'images/imggal/45CliffordPrivate/med/6.jpg', 'images/imggal/45CliffordPrivate/full/6.jpg', NULL);
INSERT INTO `Photos` VALUES(130, 'images/imggal/45CliffordPrivate/thumb/7.jpg', 'images/imggal/45CliffordPrivate/med/7.jpg', 'images/imggal/45CliffordPrivate/full/7.jpg', NULL);
INSERT INTO `Photos` VALUES(131, 'images/imggal/45CliffordPrivate/thumb/8.jpg', 'images/imggal/45CliffordPrivate/med/8.jpg', 'images/imggal/45CliffordPrivate/full/8.jpg', NULL);
INSERT INTO `Photos` VALUES(132, 'images/imggal/45CliffordPrivate/thumb/9.jpg', 'images/imggal/45CliffordPrivate/med/9.jpg', 'images/imggal/45CliffordPrivate/full/9.jpg', NULL);
INSERT INTO `Photos` VALUES(133, 'images/imggal/45CliffordPrivate/thumb/10.jpg', 'images/imggal/45CliffordPrivate/med/10.jpg', 'images/imggal/45CliffordPrivate/full/10.jpg', NULL);
INSERT INTO `Photos` VALUES(134, 'images/imggal/45CliffordPrivate/thumb/11.jpg', 'images/imggal/45CliffordPrivate/med/11.jpg', 'images/imggal/45CliffordPrivate/full/11.jpg', NULL);
INSERT INTO `Photos` VALUES(135, 'images/imggal/45CliffordPrivate/thumb/12.jpg', 'images/imggal/45CliffordPrivate/med/12.jpg', 'images/imggal/45CliffordPrivate/full/12.jpg', NULL);
INSERT INTO `Photos` VALUES(543, 'images/imggal/43Alberni/thumb/10.png', '', 'images/imggal/43Alberni/full/10.jpg', 11);
INSERT INTO `Photos` VALUES(542, 'images/imggal/43Alberni/thumb/9.png', '', 'images/imggal/43Alberni/full/9.jpg', 10);
INSERT INTO `Photos` VALUES(541, 'images/imggal/43Alberni/thumb/8.png', '', 'images/imggal/43Alberni/full/8.jpg', 9);
INSERT INTO `Photos` VALUES(540, 'images/imggal/43Alberni/thumb/7.png', '', 'images/imggal/43Alberni/full/7.jpg', 8);
INSERT INTO `Photos` VALUES(539, 'images/imggal/43Alberni/thumb/6.png', '', 'images/imggal/43Alberni/full/6.jpg', 7);
INSERT INTO `Photos` VALUES(538, 'images/imggal/43Alberni/thumb/5.png', '', 'images/imggal/43Alberni/full/5.jpg', 6);
INSERT INTO `Photos` VALUES(537, 'images/imggal/43Alberni/thumb/4.png', '', 'images/imggal/43Alberni/full/4.jpg', 5);
INSERT INTO `Photos` VALUES(536, 'images/imggal/43Alberni/thumb/3.png', '', 'images/imggal/43Alberni/full/3.jpg', 4);
INSERT INTO `Photos` VALUES(535, 'images/imggal/43Alberni/thumb/2.png', '', 'images/imggal/43Alberni/full/2.jpg', 3);
INSERT INTO `Photos` VALUES(534, 'images/imggal/43Alberni/thumb/1.png', '', 'images/imggal/43Alberni/full/1.jpg', 2);
INSERT INTO `Photos` VALUES(259, 'images/imggal/1AFoxhillWay/thumb/1.JPG', 'images/imggal/1AFoxhillWay/med/1.JPG', 'images/imggal/1AFoxhillWay/full/1.JPG', NULL);
INSERT INTO `Photos` VALUES(269, 'images/imggal/1AFoxhillWay/thumb/10.JPG', 'images/imggal/1AFoxhillWay/med/10.JPG', 'images/imggal/1AFoxhillWay/full/10.JPG', NULL);
INSERT INTO `Photos` VALUES(268, 'images/imggal/1AFoxhillWay/thumb/9.JPG', 'images/imggal/1AFoxhillWay/med/9.JPG', 'images/imggal/1AFoxhillWay/full/9.JPG', NULL);
INSERT INTO `Photos` VALUES(267, 'images/imggal/1AFoxhillWay/thumb/8.JPG', 'images/imggal/1AFoxhillWay/med/8.JPG', 'images/imggal/1AFoxhillWay/full/8.JPG', NULL);
INSERT INTO `Photos` VALUES(266, 'images/imggal/1AFoxhillWay/thumb/7.JPG', 'images/imggal/1AFoxhillWay/med/7.JPG', 'images/imggal/1AFoxhillWay/full/7.JPG', NULL);
INSERT INTO `Photos` VALUES(265, 'images/imggal/1AFoxhillWay/thumb/5.JPG', 'images/imggal/1AFoxhillWay/med/5.JPG', 'images/imggal/1AFoxhillWay/full/5.JPG', NULL);
INSERT INTO `Photos` VALUES(264, 'images/imggal/1AFoxhillWay/thumb/6.JPG', 'images/imggal/1AFoxhillWay/med/6.JPG', 'images/imggal/1AFoxhillWay/full/6.JPG', NULL);
INSERT INTO `Photos` VALUES(262, 'images/imggal/1AFoxhillWay/thumb/4.JPG', 'images/imggal/1AFoxhillWay/med/4.JPG', 'images/imggal/1AFoxhillWay/full/4.JPG', NULL);
INSERT INTO `Photos` VALUES(260, 'images/imggal/1AFoxhillWay/thumb/2.JPG', 'images/imggal/1AFoxhillWay/med/2.JPG', 'images/imggal/1AFoxhillWay/full/2.JPG', NULL);
INSERT INTO `Photos` VALUES(261, 'images/imggal/1AFoxhillWay/thumb/3.JPG', 'images/imggal/1AFoxhillWay/med/3.JPG', 'images/imggal/1AFoxhillWay/full/3.JPG', NULL);
INSERT INTO `Photos` VALUES(186, 'images/imggal/1CKnollsbrookDr/thumb/1.jpg', 'images/imggal/1CKnollsbrookDr/med/1.jpg', 'images/imggal/1CKnollsbrookDr/full/1.jpg', NULL);
INSERT INTO `Photos` VALUES(187, 'images/imggal/1CKnollsbrookDr/thumb/2.jpg', 'images/imggal/1CKnollsbrookDr/med/2.jpg', 'images/imggal/1CKnollsbrookDr/full/2.jpg', NULL);
INSERT INTO `Photos` VALUES(188, 'images/imggal/1CKnollsbrookDr/thumb/3.jpg', 'images/imggal/1CKnollsbrookDr/med/3.jpg', 'images/imggal/1CKnollsbrookDr/full/3.jpg', NULL);
INSERT INTO `Photos` VALUES(189, 'images/imggal/1CKnollsbrookDr/thumb/4.jpg', 'images/imggal/1CKnollsbrookDr/med/4.jpg', 'images/imggal/1CKnollsbrookDr/full/4.jpg', NULL);
INSERT INTO `Photos` VALUES(190, 'images/imggal/1CKnollsbrookDr/thumb/5.jpg', 'images/imggal/1CKnollsbrookDr/med/5.jpg', 'images/imggal/1CKnollsbrookDr/full/5.jpg', NULL);
INSERT INTO `Photos` VALUES(191, 'images/imggal/1CKnollsbrookDr/thumb/6.jpg', 'images/imggal/1CKnollsbrookDr/med/6.jpg', 'images/imggal/1CKnollsbrookDr/full/6.jpg', NULL);
INSERT INTO `Photos` VALUES(192, 'images/imggal/1CKnollsbrookDr/thumb/7.jpg', 'images/imggal/1CKnollsbrookDr/med/7.jpg', 'images/imggal/1CKnollsbrookDr/full/7.jpg', NULL);
INSERT INTO `Photos` VALUES(193, 'images/imggal/1CKnollsbrookDr/thumb/8.jpg', 'images/imggal/1CKnollsbrookDr/med/8.jpg', 'images/imggal/1CKnollsbrookDr/full/8.jpg', NULL);
INSERT INTO `Photos` VALUES(194, 'images/imggal/1CKnollsbrookDr/thumb/9.jpg', 'images/imggal/1CKnollsbrookDr/med/9.jpg', 'images/imggal/1CKnollsbrookDr/full/9.jpg', NULL);
INSERT INTO `Photos` VALUES(195, 'images/imggal/11TraffordLane/thumb/1.jpg', 'images/imggal/11TraffordLane/med/1.jpg', 'images/imggal/11TraffordLane/full/1.jpg', NULL);
INSERT INTO `Photos` VALUES(196, 'images/imggal/11TraffordLane/thumb/2.jpg', 'images/imggal/11TraffordLane/med/2.jpg', 'images/imggal/11TraffordLane/full/2.jpg', NULL);
INSERT INTO `Photos` VALUES(197, 'images/imggal/11TraffordLane/thumb/3.jpg', 'images/imggal/11TraffordLane/med/3.jpg', 'images/imggal/11TraffordLane/full/3.jpg', NULL);
INSERT INTO `Photos` VALUES(198, 'images/imggal/11TraffordLane/thumb/4.jpg', 'images/imggal/11TraffordLane/med/4.jpg', 'images/imggal/11TraffordLane/full/4.jpg', NULL);
INSERT INTO `Photos` VALUES(199, 'images/imggal/11TraffordLane/thumb/5.jpg', 'images/imggal/11TraffordLane/med/5.jpg', 'images/imggal/11TraffordLane/full/5.jpg', NULL);
INSERT INTO `Photos` VALUES(200, 'images/imggal/11TraffordLane/thumb/6.jpg', 'images/imggal/11TraffordLane/med/6.jpg', 'images/imggal/11TraffordLane/full/6.jpg', NULL);
INSERT INTO `Photos` VALUES(201, 'images/imggal/11TraffordLane/thumb/7.jpg', 'images/imggal/11TraffordLane/med/7.jpg', 'images/imggal/11TraffordLane/full/7.jpg', NULL);
INSERT INTO `Photos` VALUES(202, 'images/imggal/11TraffordLane/thumb/8.jpg', 'images/imggal/11TraffordLane/med/8.jpg', 'images/imggal/11TraffordLane/full/8.jpg', NULL);
INSERT INTO `Photos` VALUES(203, 'images/imggal/11TraffordLane/thumb/9.jpg', 'images/imggal/11TraffordLane/med/9.jpg', 'images/imggal/11TraffordLane/full/9.jpg', NULL);
INSERT INTO `Photos` VALUES(204, 'images/imggal/11TraffordLane/thumb/10.jpg', 'images/imggal/11TraffordLane/med/10.jpg', 'images/imggal/11TraffordLane/full/10.jpg', NULL);
INSERT INTO `Photos` VALUES(205, 'images/imggal/11TraffordLane/thumb/11.jpg', 'images/imggal/11TraffordLane/med/11.jpg', 'images/imggal/11TraffordLane/full/11.jpg', NULL);
INSERT INTO `Photos` VALUES(206, 'images/imggal/11TraffordLane/thumb/12.jpg', 'images/imggal/11TraffordLane/med/12.jpg', 'images/imggal/11TraffordLane/full/12.jpg', NULL);
INSERT INTO `Photos` VALUES(207, 'images/imggal/11TraffordLane/thumb/13.jpg', 'images/imggal/11TraffordLane/med/13.jpg', 'images/imggal/11TraffordLane/full/13.jpg', NULL);
INSERT INTO `Photos` VALUES(210, 'images/imggal/1985GreenvaleLane/thumb/1.jpg', 'images/imggal/1985GreenvaleLane/med/1.jpg', 'images/imggal/1985GreenvaleLane/full/1.jpg', NULL);
INSERT INTO `Photos` VALUES(211, 'images/imggal/1985GreenvaleLane/thumb/2.jpg', 'images/imggal/1985GreenvaleLane/med/2.jpg', 'images/imggal/1985GreenvaleLane/full/2.jpg', NULL);
INSERT INTO `Photos` VALUES(212, 'images/imggal/1985GreenvaleLane/thumb/3.jpg', 'images/imggal/1985GreenvaleLane/med/3.jpg', 'images/imggal/1985GreenvaleLane/full/3.jpg', NULL);
INSERT INTO `Photos` VALUES(213, 'images/imggal/1985GreenvaleLane/thumb/4.jpg', 'images/imggal/1985GreenvaleLane/med/4.jpg', 'images/imggal/1985GreenvaleLane/full/4.jpg', NULL);
INSERT INTO `Photos` VALUES(214, 'images/imggal/1985GreenvaleLane/thumb/5.jpg', 'images/imggal/1985GreenvaleLane/med/5.jpg', 'images/imggal/1985GreenvaleLane/full/5.jpg', NULL);
INSERT INTO `Photos` VALUES(215, 'images/imggal/1985GreenvaleLane/thumb/6.jpg', 'images/imggal/1985GreenvaleLane/med/6.jpg', 'images/imggal/1985GreenvaleLane/full/6.jpg', NULL);
INSERT INTO `Photos` VALUES(216, 'images/imggal/1985GreenvaleLane/thumb/7.jpg', 'images/imggal/1985GreenvaleLane/med/7.jpg', 'images/imggal/1985GreenvaleLane/full/7.jpg', NULL);
INSERT INTO `Photos` VALUES(217, 'images/imggal/1985GreenvaleLane/thumb/8.jpg', 'images/imggal/1985GreenvaleLane/med/8.jpg', 'images/imggal/1985GreenvaleLane/full/8.jpg', NULL);
INSERT INTO `Photos` VALUES(218, 'images/imggal/1985GreenvaleLane/thumb/9.jpg', 'images/imggal/1985GreenvaleLane/med/9.jpg', 'images/imggal/1985GreenvaleLane/full/9.jpg', NULL);
INSERT INTO `Photos` VALUES(219, 'images/imggal/1985GreenvaleLane/thumb/10.jpg', 'images/imggal/1985GreenvaleLane/med/10.jpg', 'images/imggal/1985GreenvaleLane/full/10.jpg', NULL);
INSERT INTO `Photos` VALUES(220, 'images/imggal/1985GreenvaleLane/thumb/11.jpg', 'images/imggal/1985GreenvaleLane/med/11.jpg', 'images/imggal/1985GreenvaleLane/full/11.jpg', NULL);
INSERT INTO `Photos` VALUES(221, 'images/imggal/1985GreenvaleLane/thumb/12.jpg', 'images/imggal/1985GreenvaleLane/med/12.jpg', 'images/imggal/1985GreenvaleLane/full/12.jpg', NULL);
INSERT INTO `Photos` VALUES(222, 'images/imggal/1985GreenvaleLane/thumb/13.jpg', 'images/imggal/1985GreenvaleLane/med/13.jpg', 'images/imggal/1985GreenvaleLane/full/13.jpg', NULL);
INSERT INTO `Photos` VALUES(235, 'images/imggal/66SundbackLane/thumb/1.jpg', 'images/imggal/66SundbackLane/med/1.jpg', 'images/imggal/66SundbackLane/full/1.jpg', NULL);
INSERT INTO `Photos` VALUES(236, 'images/imggal/66SundbackLane/thumb/2.jpg', 'images/imggal/66SundbackLane/med/2.jpg', 'images/imggal/66SundbackLane/full/2.jpg', NULL);
INSERT INTO `Photos` VALUES(237, 'images/imggal/66SundbackLane/thumb/3.jpg', 'images/imggal/66SundbackLane/med/3.jpg', 'images/imggal/66SundbackLane/full/3.jpg', NULL);
INSERT INTO `Photos` VALUES(234, 'images/imggal/66SundbackLane/thumb/4.jpg', 'images/imggal/66SundbackLane/med/4.jpg', 'images/imggal/66SundbackLane/full/4.jpg', NULL);
INSERT INTO `Photos` VALUES(238, 'images/imggal/66SundbackLane/thumb/5.jpg', 'images/imggal/66SundbackLane/med/5.jpg', 'images/imggal/66SundbackLane/full/5.jpg', NULL);
INSERT INTO `Photos` VALUES(239, 'images/imggal/66SundbackLane/thumb/6.jpg', 'images/imggal/66SundbackLane/med/6.jpg', 'images/imggal/66SundbackLane/full/6.jpg', NULL);
INSERT INTO `Photos` VALUES(240, 'images/imggal/66SundbackLane/thumb/7.jpg', 'images/imggal/66SundbackLane/med/7.jpg', 'images/imggal/66SundbackLane/full/7.jpg', NULL);
INSERT INTO `Photos` VALUES(241, 'images/imggal/66SundbackLane/thumb/8.jpg', 'images/imggal/66SundbackLane/med/8.jpg', 'images/imggal/66SundbackLane/full/8.jpg', NULL);
INSERT INTO `Photos` VALUES(242, 'images/imggal/66SundbackLane/thumb/9.jpg', 'images/imggal/66SundbackLane/med/9.jpg', 'images/imggal/66SundbackLane/full/9.jpg', NULL);
INSERT INTO `Photos` VALUES(243, 'images/imggal/66SundbackLane/thumb/10.jpg', 'images/imggal/66SundbackLane/med/10.jpg', 'images/imggal/66SundbackLane/full/10.jpg', NULL);
INSERT INTO `Photos` VALUES(244, 'images/imggal/6529ColonySquare/thumb/1.jpg', 'images/imggal/6529ColonySquare/med/1.jpg', 'images/imggal/6529ColonySquare/full/1.jpg', NULL);
INSERT INTO `Photos` VALUES(245, 'images/imggal/6529ColonySquare/thumb/2.jpg', 'images/imggal/6529ColonySquare/med/2.jpg', 'images/imggal/6529ColonySquare/full/2.jpg', NULL);
INSERT INTO `Photos` VALUES(246, 'images/imggal/6529ColonySquare/thumb/3.jpg', 'images/imggal/6529ColonySquare/med/3.jpg', 'images/imggal/6529ColonySquare/full/3.jpg', NULL);
INSERT INTO `Photos` VALUES(247, 'images/imggal/6529ColonySquare/thumb/4.jpg', 'images/imggal/6529ColonySquare/med/4.jpg', 'images/imggal/6529ColonySquare/full/4.jpg', NULL);
INSERT INTO `Photos` VALUES(248, 'images/imggal/6529ColonySquare/thumb/5.jpg', 'images/imggal/6529ColonySquare/med/5.jpg', 'images/imggal/6529ColonySquare/full/5.jpg', NULL);
INSERT INTO `Photos` VALUES(249, 'images/imggal/6529ColonySquare/thumb/6.jpg', 'images/imggal/6529ColonySquare/med/6.jpg', 'images/imggal/6529ColonySquare/full/6.jpg', NULL);
INSERT INTO `Photos` VALUES(250, 'images/imggal/6529ColonySquare/thumb/7.jpg', 'images/imggal/6529ColonySquare/med/7.jpg', 'images/imggal/6529ColonySquare/full/7.jpg', NULL);
INSERT INTO `Photos` VALUES(560, 'images/imggal/21TraffordLane/thumb/9.png', '', 'images/imggal/21TraffordLane/full/9.jpg', 10);
INSERT INTO `Photos` VALUES(552, 'images/imggal/21TraffordLane/thumb/1.png', '', 'images/imggal/21TraffordLane/full/1.jpg', 2);
INSERT INTO `Photos` VALUES(553, 'images/imggal/21TraffordLane/thumb/2.png', '', 'images/imggal/21TraffordLane/full/2.jpg', 3);
INSERT INTO `Photos` VALUES(554, 'images/imggal/21TraffordLane/thumb/3.png', '', 'images/imggal/21TraffordLane/full/3.jpg', 4);
INSERT INTO `Photos` VALUES(555, 'images/imggal/21TraffordLane/thumb/4.png', '', 'images/imggal/21TraffordLane/full/4.jpg', 5);
INSERT INTO `Photos` VALUES(557, 'images/imggal/21TraffordLane/thumb/6.png', '', 'images/imggal/21TraffordLane/full/6.jpg', 7);
INSERT INTO `Photos` VALUES(558, 'images/imggal/21TraffordLane/thumb/7.png', '', 'images/imggal/21TraffordLane/full/7.jpg', 8);
INSERT INTO `Photos` VALUES(559, 'images/imggal/21TraffordLane/thumb/8.png', '', 'images/imggal/21TraffordLane/full/8.jpg', 9);
INSERT INTO `Photos` VALUES(270, 'images/imggal/1AFoxhillWay/thumb/11.JPG', 'images/imggal/1AFoxhillWay/med/11.JPG', 'images/imggal/1AFoxhillWay/full/11.JPG', NULL);
INSERT INTO `Photos` VALUES(285, 'images/imggal/69CliffordPrivate/thumb/1.jpg', 'images/imggal/69CliffordPrivate/med/1.jpg', 'images/imggal/69CliffordPrivate/full/1.jpg', NULL);
INSERT INTO `Photos` VALUES(286, 'images/imggal/69CliffordPrivate/thumb/2.jpg', 'images/imggal/69CliffordPrivate/med/2.jpg', 'images/imggal/69CliffordPrivate/full/2.jpg', NULL);
INSERT INTO `Photos` VALUES(287, 'images/imggal/69CliffordPrivate/thumb/3.jpg', 'images/imggal/69CliffordPrivate/med/3.jpg', 'images/imggal/69CliffordPrivate/full/3.jpg', NULL);
INSERT INTO `Photos` VALUES(288, 'images/imggal/69CliffordPrivate/thumb/4.jpg', 'images/imggal/69CliffordPrivate/med/4.jpg', 'images/imggal/69CliffordPrivate/full/4.jpg', NULL);
INSERT INTO `Photos` VALUES(289, 'images/imggal/69CliffordPrivate/thumb/5.jpg', 'images/imggal/69CliffordPrivate/med/5.jpg', 'images/imggal/69CliffordPrivate/full/5.jpg', NULL);
INSERT INTO `Photos` VALUES(290, 'images/imggal/69CliffordPrivate/thumb/6.jpg', 'images/imggal/69CliffordPrivate/med/6.jpg', 'images/imggal/69CliffordPrivate/full/6.jpg', NULL);
INSERT INTO `Photos` VALUES(291, 'images/imggal/69CliffordPrivate/thumb/7.jpg', 'images/imggal/69CliffordPrivate/med/7.jpg', 'images/imggal/69CliffordPrivate/full/7.jpg', NULL);
INSERT INTO `Photos` VALUES(292, 'images/imggal/69CliffordPrivate/thumb/8.jpg', 'images/imggal/69CliffordPrivate/med/8.jpg', 'images/imggal/69CliffordPrivate/full/8.jpg', NULL);
INSERT INTO `Photos` VALUES(293, 'images/imggal/69CliffordPrivate/thumb/9.jpg', 'images/imggal/69CliffordPrivate/med/9.jpg', 'images/imggal/69CliffordPrivate/full/9.jpg', NULL);
INSERT INTO `Photos` VALUES(294, 'images/imggal/69CliffordPrivate/thumb/10.jpg', 'images/imggal/69CliffordPrivate/med/10.jpg', 'images/imggal/69CliffordPrivate/full/10.jpg', NULL);
INSERT INTO `Photos` VALUES(297, 'images/imggal/183RadwayTerrace/thumb/1.jpg', 'images/imggal/183RadwayTerrace/med/1.jpg', 'images/imggal/183RadwayTerrace/full/1.jpg', NULL);
INSERT INTO `Photos` VALUES(296, 'images/imggal/183RadwayTerrace/thumb/2.jpg', 'images/imggal/183RadwayTerrace/med/2.jpg', 'images/imggal/183RadwayTerrace/full/2.jpg', NULL);
INSERT INTO `Photos` VALUES(298, 'images/imggal/183RadwayTerrace/thumb/3.jpg', 'images/imggal/183RadwayTerrace/med/3.jpg', 'images/imggal/183RadwayTerrace/full/3.jpg', NULL);
INSERT INTO `Photos` VALUES(299, 'images/imggal/183RadwayTerrace/thumb/4.jpg', 'images/imggal/183RadwayTerrace/med/4.jpg', 'images/imggal/183RadwayTerrace/full/4.jpg', NULL);
INSERT INTO `Photos` VALUES(300, 'images/imggal/183RadwayTerrace/thumb/5.jpg', 'images/imggal/183RadwayTerrace/med/5.jpg', 'images/imggal/183RadwayTerrace/full/5.jpg', NULL);
INSERT INTO `Photos` VALUES(301, 'images/imggal/183RadwayTerrace/thumb/6.jpg', 'images/imggal/183RadwayTerrace/med/6.jpg', 'images/imggal/183RadwayTerrace/full/6.jpg', NULL);
INSERT INTO `Photos` VALUES(302, 'images/imggal/183RadwayTerrace/thumb/7.jpg', 'images/imggal/183RadwayTerrace/med/7.jpg', 'images/imggal/183RadwayTerrace/full/7.jpg', NULL);
INSERT INTO `Photos` VALUES(303, 'images/imggal/183RadwayTerrace/thumb/8.jpg', 'images/imggal/183RadwayTerrace/med/8.jpg', 'images/imggal/183RadwayTerrace/full/8.jpg', NULL);
INSERT INTO `Photos` VALUES(304, 'images/imggal/183RadwayTerrace/thumb/9.jpg', 'images/imggal/183RadwayTerrace/med/9.jpg', 'images/imggal/183RadwayTerrace/full/9.jpg', NULL);
INSERT INTO `Photos` VALUES(305, 'images/imggal/183RadwayTerrace/thumb/10.jpg', 'images/imggal/183RadwayTerrace/med/10.jpg', 'images/imggal/183RadwayTerrace/full/10.jpg', NULL);
INSERT INTO `Photos` VALUES(306, 'images/imggal/183RadwayTerrace/thumb/11.jpg', 'images/imggal/183RadwayTerrace/med/11.jpg', 'images/imggal/183RadwayTerrace/full/11.jpg', NULL);
INSERT INTO `Photos` VALUES(317, 'images/imggal/468CambridgeStreetSouth/thumb/1.png', 'images/imggal/468CambridgeStreetSouth/med/1.jpg', 'images/imggal/468CambridgeStreetSouth/full/1.jpg', 0);
INSERT INTO `Photos` VALUES(319, 'images/imggal/468CambridgeStreetSouth/thumb/2.png', 'images/imggal/468CambridgeStreetSouth/med/2.jpg', 'images/imggal/468CambridgeStreetSouth/full/2.jpg', 0);
INSERT INTO `Photos` VALUES(320, 'images/imggal/468CambridgeStreetSouth/thumb/3.png', 'images/imggal/468CambridgeStreetSouth/med/3.jpg', 'images/imggal/468CambridgeStreetSouth/full/3.jpg', 0);
INSERT INTO `Photos` VALUES(321, 'images/imggal/468CambridgeStreetSouth/thumb/4.png', 'images/imggal/468CambridgeStreetSouth/med/4.jpg', 'images/imggal/468CambridgeStreetSouth/full/4.jpg', 0);
INSERT INTO `Photos` VALUES(331, 'images/imggal/468CambridgeStreetSouth/thumb/8.png', 'images/imggal/468CambridgeStreetSouth/med/8.jpg', 'images/imggal/468CambridgeStreetSouth/full/8.jpg', 0);
INSERT INTO `Photos` VALUES(328, 'images/imggal/468CambridgeStreetSouth/thumb/5.png', 'images/imggal/468CambridgeStreetSouth/med/5.jpg', 'images/imggal/468CambridgeStreetSouth/full/5.jpg', 0);
INSERT INTO `Photos` VALUES(329, 'images/imggal/468CambridgeStreetSouth/thumb/6.png', 'images/imggal/468CambridgeStreetSouth/med/6.jpg', 'images/imggal/468CambridgeStreetSouth/full/6.jpg', 0);
INSERT INTO `Photos` VALUES(330, 'images/imggal/468CambridgeStreetSouth/thumb/7.png', 'images/imggal/468CambridgeStreetSouth/med/7.jpg', 'images/imggal/468CambridgeStreetSouth/full/7.jpg', 0);
INSERT INTO `Photos` VALUES(332, 'images/imggal/468CambridgeStreetSouth/thumb/9.png', 'images/imggal/468CambridgeStreetSouth/med/9.jpg', 'images/imggal/468CambridgeStreetSouth/full/9.jpg', 0);
INSERT INTO `Photos` VALUES(364, 'images/imggal/32RuedeBrouage/thumb/1.png', '', 'images/imggal/32RuedeBrouage/full/1.jpg', 2);
INSERT INTO `Photos` VALUES(365, 'images/imggal/32RuedeBrouage/thumb/2.png', '', 'images/imggal/32RuedeBrouage/full/2.jpg', 3);
INSERT INTO `Photos` VALUES(366, 'images/imggal/32RuedeBrouage/thumb/3.png', '', 'images/imggal/32RuedeBrouage/full/3.jpg', 4);
INSERT INTO `Photos` VALUES(367, 'images/imggal/32RuedeBrouage/thumb/4.png', '', 'images/imggal/32RuedeBrouage/full/4.jpg', 5);
INSERT INTO `Photos` VALUES(368, 'images/imggal/32RuedeBrouage/thumb/5.png', '', 'images/imggal/32RuedeBrouage/full/5.jpg', 6);
INSERT INTO `Photos` VALUES(369, 'images/imggal/32RuedeBrouage/thumb/6.png', '', 'images/imggal/32RuedeBrouage/full/6.jpg', 7);
INSERT INTO `Photos` VALUES(370, 'images/imggal/32RuedeBrouage/thumb/7.png', '', 'images/imggal/32RuedeBrouage/full/7.jpg', 8);
INSERT INTO `Photos` VALUES(371, 'images/imggal/32RuedeBrouage/thumb/8.png', '', 'images/imggal/32RuedeBrouage/full/8.jpg', 9);
INSERT INTO `Photos` VALUES(372, 'images/imggal/32RuedeBrouage/thumb/9.png', '', 'images/imggal/32RuedeBrouage/full/9.jpg', 10);
INSERT INTO `Photos` VALUES(373, 'images/imggal/32RuedeBrouage/thumb/10.png', '', 'images/imggal/32RuedeBrouage/full/10.jpg', 11);
INSERT INTO `Photos` VALUES(374, 'images/imggal/32RuedeBrouage/thumb/11.png', '', 'images/imggal/32RuedeBrouage/full/11.jpg', 12);
INSERT INTO `Photos` VALUES(415, 'images/imggal/04-2/thumb/3.png', '', 'images/imggal/04-2/full/3.jpg', 4);
INSERT INTO `Photos` VALUES(414, 'images/imggal/04-2/thumb/2.png', '', 'images/imggal/04-2/full/2.jpg', 3);
INSERT INTO `Photos` VALUES(504, 'images/imggal/01/thumb/1.png', '', 'images/imggal/01/full/1.JPG', 2);
INSERT INTO `Photos` VALUES(510, 'images/imggal/08/thumb/1.png', '', 'images/imggal/08/full/1.JPG', 2);
INSERT INTO `Photos` VALUES(511, 'images/imggal/08/thumb/2.png', '', 'images/imggal/08/full/2.JPG', 3);
INSERT INTO `Photos` VALUES(507, 'images/imggal/01/thumb/4.png', '', 'images/imggal/01/full/4.JPG', 5);
INSERT INTO `Photos` VALUES(505, 'images/imggal/01/thumb/2.png', '', 'images/imggal/01/full/2.JPG', 3);
INSERT INTO `Photos` VALUES(506, 'images/imggal/01/thumb/3.png', '', 'images/imggal/01/full/3.JPG', 4);
INSERT INTO `Photos` VALUES(423, 'images/imggal/05-2/thumb/1.png', '', 'images/imggal/05-2/full/1.jpg', 2);
INSERT INTO `Photos` VALUES(424, 'images/imggal/05-2/thumb/2.png', '', 'images/imggal/05-2/full/2.jpg', 3);
INSERT INTO `Photos` VALUES(425, 'images/imggal/05-2/thumb/3.png', '', 'images/imggal/05-2/full/3.jpg', 4);
INSERT INTO `Photos` VALUES(426, 'images/imggal/05-2/thumb/4.png', '', 'images/imggal/05-2/full/4.jpg', 5);
INSERT INTO `Photos` VALUES(427, 'images/imggal/05-2/thumb/5.png', '', 'images/imggal/05-2/full/5.jpg', 6);
INSERT INTO `Photos` VALUES(428, 'images/imggal/05-2/thumb/6.png', '', 'images/imggal/05-2/full/6.jpg', 7);
INSERT INTO `Photos` VALUES(429, 'images/imggal/05-2/thumb/7.png', '', 'images/imggal/05-2/full/7.jpg', 8);
INSERT INTO `Photos` VALUES(430, 'images/imggal/05-2/thumb/8.png', '', 'images/imggal/05-2/full/8.jpg', 9);
INSERT INTO `Photos` VALUES(431, 'images/imggal/05-2/thumb/9.png', '', 'images/imggal/05-2/full/9.jpg', 10);
INSERT INTO `Photos` VALUES(432, 'images/imggal/32Brouage/thumb/1.png', '', 'images/imggal/32Brouage/full/1.jpg', 2);
INSERT INTO `Photos` VALUES(433, 'images/imggal/32Brouage/thumb/2.png', '', 'images/imggal/32Brouage/full/2.jpg', 3);
INSERT INTO `Photos` VALUES(434, 'images/imggal/32Brouage/thumb/3.png', '', 'images/imggal/32Brouage/full/3.jpg', 4);
INSERT INTO `Photos` VALUES(435, 'images/imggal/32Brouage/thumb/4.png', '', 'images/imggal/32Brouage/full/4.jpg', 5);
INSERT INTO `Photos` VALUES(436, 'images/imggal/32Brouage/thumb/5.png', '', 'images/imggal/32Brouage/full/5.jpg', 6);
INSERT INTO `Photos` VALUES(437, 'images/imggal/32Brouage/thumb/6.png', '', 'images/imggal/32Brouage/full/6.jpg', 7);
INSERT INTO `Photos` VALUES(438, 'images/imggal/32Brouage/thumb/7.png', '', 'images/imggal/32Brouage/full/7.jpg', 8);
INSERT INTO `Photos` VALUES(439, 'images/imggal/32Brouage/thumb/8.png', '', 'images/imggal/32Brouage/full/8.jpg', 9);
INSERT INTO `Photos` VALUES(440, 'images/imggal/32Brouage/thumb/9.png', '', 'images/imggal/32Brouage/full/9.jpg', 10);
INSERT INTO `Photos` VALUES(441, 'images/imggal/32Brouage/thumb/10.png', '', 'images/imggal/32Brouage/full/10.jpg', 11);
INSERT INTO `Photos` VALUES(442, 'images/imggal/32Brouage/thumb/11.png', '', 'images/imggal/32Brouage/full/11.jpg', 12);
INSERT INTO `Photos` VALUES(443, 'images/imggal/32Brouage/thumb/12.png', '', 'images/imggal/32Brouage/full/12.jpg', 13);
INSERT INTO `Photos` VALUES(444, 'images/imggal/32Brouage/thumb/13.png', '', 'images/imggal/32Brouage/full/13.jpg', 14);
INSERT INTO `Photos` VALUES(445, 'images/imggal/32Brouage/thumb/14.png', '', 'images/imggal/32Brouage/full/14.jpg', 15);
INSERT INTO `Photos` VALUES(446, 'images/imggal/32Brouage/thumb/15.png', '', 'images/imggal/32Brouage/full/15.jpg', 16);
INSERT INTO `Photos` VALUES(447, 'images/imggal/32Brouage/thumb/16.png', '', 'images/imggal/32Brouage/full/16.jpg', 17);
INSERT INTO `Photos` VALUES(448, 'images/imggal/32Brouage/thumb/17.png', '', 'images/imggal/32Brouage/full/17.jpg', 18);
INSERT INTO `Photos` VALUES(449, 'images/imggal/32Brouage/thumb/18.png', '', 'images/imggal/32Brouage/full/18.jpg', 19);
INSERT INTO `Photos` VALUES(461, 'images/imggal/01-2/thumb/6.png', '', 'images/imggal/01-2/full/6.jpg', 7);
INSERT INTO `Photos` VALUES(460, 'images/imggal/01-2/thumb/5.png', '', 'images/imggal/01-2/full/5.jpg', 6);
INSERT INTO `Photos` VALUES(457, 'images/imggal/01-2/thumb/2.png', '', 'images/imggal/01-2/full/2.jpg', 3);
INSERT INTO `Photos` VALUES(458, 'images/imggal/01-2/thumb/3.png', '', 'images/imggal/01-2/full/3.jpg', 4);
INSERT INTO `Photos` VALUES(459, 'images/imggal/01-2/thumb/4.png', '', 'images/imggal/01-2/full/4.jpg', 5);
INSERT INTO `Photos` VALUES(456, 'images/imggal/01-2/thumb/1.png', '', 'images/imggal/01-2/full/1.jpg', 2);
INSERT INTO `Photos` VALUES(462, 'images/imggal/01-2/thumb/7.jpg', '', 'images/imggal/01-2/full/7.jpg', 8);
INSERT INTO `Photos` VALUES(463, 'images/imggal/01-2/thumb/8.jpg', '', 'images/imggal/01-2/full/8.jpg', 9);
INSERT INTO `Photos` VALUES(464, 'images/imggal/07-2/thumb/1.png', '', 'images/imggal/07-2/full/1.jpg', 0);
INSERT INTO `Photos` VALUES(465, 'images/imggal/07-2/thumb/2.png', '', 'images/imggal/07-2/full/2.jpg', 1);
INSERT INTO `Photos` VALUES(466, 'images/imggal/07-2/thumb/3.png', '', 'images/imggal/07-2/full/3.jpg', 2);
INSERT INTO `Photos` VALUES(467, 'images/imggal/07-2/thumb/4.png', '', 'images/imggal/07-2/full/4.jpg', 4);
INSERT INTO `Photos` VALUES(468, 'images/imggal/07-2/thumb/5.png', '', 'images/imggal/07-2/full/5.jpg', 3);
INSERT INTO `Photos` VALUES(469, 'images/imggal/07-2/thumb/6.png', '', 'images/imggal/07-2/full/6.jpg', 4);
INSERT INTO `Photos` VALUES(476, 'images/imggal/04/thumb/7.png', '', 'images/imggal/04/full/7.jpg', 8);
INSERT INTO `Photos` VALUES(508, 'images/imggal/01/thumb/5.png', '', 'images/imggal/01/full/5.JPG', 6);
INSERT INTO `Photos` VALUES(520, 'images/imggal/6563ColonySquare/thumb/5.png', '', 'images/imggal/6563ColonySquare/full/5.jpg', 6);
INSERT INTO `Photos` VALUES(521, 'images/imggal/6563ColonySquare/thumb/6.png', '', 'images/imggal/6563ColonySquare/full/6.jpg', 7);
INSERT INTO `Photos` VALUES(522, 'images/imggal/6563ColonySquare/thumb/7.png', '', 'images/imggal/6563ColonySquare/full/7.jpg', 5);
INSERT INTO `Photos` VALUES(523, 'images/imggal/6563ColonySquare/thumb/8.png', '', 'images/imggal/6563ColonySquare/full/8.jpg', 4);
INSERT INTO `Photos` VALUES(524, 'images/imggal/6563ColonySquare/thumb/9.png', '', 'images/imggal/6563ColonySquare/full/9.jpg', 8);
INSERT INTO `Photos` VALUES(533, 'images/imggal/6563ColonySquare/thumb/10.png', '', 'images/imggal/6563ColonySquare/full/10.jpg', 11);
INSERT INTO `Photos` VALUES(526, 'images/imggal/6563ColonySquare/thumb/11.png', '', 'images/imggal/6563ColonySquare/full/11.jpg', 9);
INSERT INTO `Photos` VALUES(527, 'images/imggal/6563ColonySquare/thumb/12.png', '', 'images/imggal/6563ColonySquare/full/12.jpg', 10);
INSERT INTO `Photos` VALUES(545, 'images/imggal/43Alberni/thumb/12.png', '', 'images/imggal/43Alberni/full/12.jpg', 13);
INSERT INTO `Photos` VALUES(529, 'images/imggal/6563ColonySquare/thumb/14.png', '', 'images/imggal/6563ColonySquare/full/14.jpg', 13);
INSERT INTO `Photos` VALUES(530, 'images/imggal/6563ColonySquare/thumb/15.png', '', 'images/imggal/6563ColonySquare/full/15.jpg', 11);
INSERT INTO `Photos` VALUES(531, 'images/imggal/6563ColonySquare/thumb/16.png', '', 'images/imggal/6563ColonySquare/full/16.jpg', 14);
INSERT INTO `Photos` VALUES(544, 'images/imggal/43Alberni/thumb/11.png', '', 'images/imggal/43Alberni/full/11.jpg', 12);
INSERT INTO `Photos` VALUES(546, 'images/imggal/43Alberni/thumb/13.png', '', 'images/imggal/43Alberni/full/13.jpg', 14);
INSERT INTO `Photos` VALUES(547, 'images/imggal/43Alberni/thumb/14.png', '', 'images/imggal/43Alberni/full/14.jpg', 15);
INSERT INTO `Photos` VALUES(548, 'images/imggal/43Alberni/thumb/15.png', '', 'images/imggal/43Alberni/full/15.jpg', 16);
INSERT INTO `Photos` VALUES(549, 'images/imggal/43Alberni/thumb/16.png', '', 'images/imggal/43Alberni/full/16.jpg', 17);
INSERT INTO `Photos` VALUES(550, 'images/imggal/43Alberni/thumb/17.png', '', 'images/imggal/43Alberni/full/17.jpg', 18);
INSERT INTO `Photos` VALUES(551, 'images/imggal/43Alberni/thumb/18.png', '', 'images/imggal/43Alberni/full/18.jpg', 19);
INSERT INTO `Photos` VALUES(561, 'images/imggal/21TraffordLane/thumb/10.png', '', 'images/imggal/21TraffordLane/full/10.jpg', 11);
INSERT INTO `Photos` VALUES(562, 'images/imggal/21TraffordLane/thumb/11.png', '', 'images/imggal/21TraffordLane/full/11.jpg', 12);
INSERT INTO `Photos` VALUES(563, 'images/imggal/21TraffordLane/thumb/12.png', '', 'images/imggal/21TraffordLane/full/12.jpg', 13);
INSERT INTO `Photos` VALUES(564, 'images/imggal/21TraffordLane/thumb/13.png', '', 'images/imggal/21TraffordLane/full/13.jpg', 14);

-- --------------------------------------------------------

--
-- Table structure for table `Suite`
--

CREATE TABLE `Suite` (
  `suite_id` varchar(4) NOT NULL DEFAULT '',
  `bedrooms` char(1) DEFAULT NULL,
  `floor_plan` varchar(50) DEFAULT NULL,
  `suite_order` int(11) DEFAULT NULL,
  `layout_id` int(11) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`suite_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Suite`
--

INSERT INTO `Suite` VALUES('B-1', '1', 'index.php?action=floor_plan&amp;suite_id=B-1', 1, 900, 'IMMEDIATE AVAILABILITY\r\n\r\nModern, trendy two bedroom apartment with a designer kitchen and bathroom featuring:\r\n* New stainless steel appliances (fridge, stove and microwave)\r\n* Quartz countertops with breakfast bar\r\n* Hardwood Floors\r\n* Individual Unit Thermostats\r\n* Balcony\r\n* City view\r\n* Heat and Hot Water Included\r\n\r\nOur central location provides young professionals with an affordable urban lifestyle only minutes from Dow&rsquo;s Lake, Landsdown Park, the Rideau Canal, public transit, restaurants and coffee shops.\r\n\r\nThe building is quiet and well maintained with the following features:\r\n* Secured access\r\n* 24-Hour Emergency Service\r\n* Onsite superintendent\r\n* Parking\r\n* Two elevators\r\n* Laundry facilities\r\n* Individual storage locker available\r\n* Bicycle storage\r\n\r\nThis two bedroom apartment is available for $1,750.00, utilities included. A 12 month lease would start at the time you move in.\r\n\r\nParking is available for all units at $88.00/month/car.\r\n\r\nFor more information or to arrange a viewing please contact our on-site Rental Agent at 613-232-2396.');
INSERT INTO `Suite` VALUES('101', '1', 'index.php?action=floor_plan&amp;amp;amp;amp;suite_', 4, 912, 'Modern, trendy one bedroom apartment with a designer kitchen and bathroom featuring:\r\n* New stainless steel appliances (fridge, stove and microwave)\r\n* Quartz countertops with breakfast bar\r\n* Hardwood Floors\r\n* Individual Unit Thermostats\r\n* Balcony\r\n* City view\r\n* Heat and Hot Water Included\r\n\r\nOur central location provides young professionals with an affordable urban lifestyle only minutes from Dow&amp;amp;amp;rsquo;s Lake, Landsdown Park, the Rideau Canal, public transit, restaurants and coffee shops.\r\n\r\nThe building is quiet and well maintained with the following features: \r\n* Secured access\r\n* 24-Hour Emergency Service \r\n* Onsite superintendent\r\n* Parking\r\n* Two elevators\r\n* Laundry facilities\r\n* Individual storage locker available\r\n* Bicycle storage\r\n\r\nThis one bedroom apartment is available for $1,630.00, utilities included. A 12 month lease would start at the time you move in.\r\n\r\nParking is available for all units at $100.00/month/car.\r\n\r\nFor more information or to arrange a viewing please contact our on-site Rental Agent at 613-232-2396.');
INSERT INTO `Suite` VALUES('201', '1', 'index.php?action=floor_plan&suite_id=01', 10, 901, NULL);
INSERT INTO `Suite` VALUES('301', '1', 'index.php?action=floor_plan&suite_id=01', 18, 901, NULL);
INSERT INTO `Suite` VALUES('401', '1', 'index.php?action=floor_plan&amp;amp;amp;suite_id=0', 26, 912, 'Modern, trendy one bedroom apartment with a designer kitchen and bathroom featuring:\r\n* New stainless steel appliances (fridge, stove and microwave)\r\n* Quartz countertops with breakfast bar\r\n* Hardwood Floors\r\n* Individual Unit Thermostats\r\n* Balcony\r\n* City view\r\n* Heat and Hot Water Included\r\n\r\nOur central location provides young professionals with an affordable urban lifestyle only minutes from Dow&amp;amp;rsquo;s Lake, Landsdown Park, the Rideau Canal, public transit, restaurants and coffee shops.\r\n\r\nThe building is quiet and well maintained with the following features: \r\n* Secured access\r\n* 24-Hour Emergency Service \r\n* Onsite superintendent\r\n* Parking\r\n* Two elevators\r\n* Laundry facilities\r\n* Individual storage locker available\r\n* Bicycle storage\r\n\r\nThis one bedroom apartment is available for $1,655.00, utilities included. A 12 month lease would start at the time you move in.\r\n\r\nParking is available for all units at $100.00/month/car.\r\n\r\nFor more information or to arrange a viewing please contact our on-site Rental Agent at 613-232-2396.');
INSERT INTO `Suite` VALUES('501', '1', 'index.php?action=floor_plan&suite_id=01', 34, 901, NULL);
INSERT INTO `Suite` VALUES('601', '1', 'index.php?action=floor_plan&amp;amp;suite_id=01', 42, 912, 'Modern, trendy one bedroom apartment with a designer kitchen and bathroom featuring:\r\n* New stainless steel appliances (fridge, stove and microwave)\r\n* Quartz countertops with breakfast bar\r\n* Hardwood Floors\r\n* Individual Unit Thermostats\r\n* Balcony\r\n* City view\r\n* Heat and Hot Water Included\r\n\r\nOur central location provides young professionals with an affordable urban lifestyle only minutes from Dow&amp;amp;amp;rsquo;s Lake, Landsdown Park, the Rideau Canal, public transit, restaurants and coffee shops.\r\n\r\nThe building is quiet and well maintained with the following features: \r\n* Secured access\r\n* 24-Hour Emergency Service \r\n* Onsite superintendent\r\n* Parking\r\n* Two elevators\r\n* Laundry facilities\r\n* Individual storage locker available\r\n* Bicycle storage\r\n\r\nThis one bedroom apartment is available for $1,660.00, utilities included. A 12 month lease would start at the time you move in.\r\n\r\nParking is available for all units at $100.00/month/car.\r\n\r\nFor more information or to arrange a viewing please contact our on-site Rental Agent at 613-232-2396.');
INSERT INTO `Suite` VALUES('701', '1', 'index.php?action=floor_plan&suite_id=01', 50, 901, NULL);
INSERT INTO `Suite` VALUES('801', '1', 'index.php?action=floor_plan&suite_id=01', 58, 901, NULL);
INSERT INTO `Suite` VALUES('901', '1', 'index.php?action=floor_plan&suite_id=01', 66, 901, NULL);
INSERT INTO `Suite` VALUES('1001', '1', 'index.php?action=floor_plan&amp;amp;suite_id=01', 74, 901, 'Our central location, only minutes from popular parks, restaurants and coffee shops, provides young professionals with an affordable urban lifestyle. The building is quiet and well maintained with the following features: \r\n\r\n* Balcony\r\n* Hardwood Floors\r\n* Heat and Hot Water Included\r\n* Individual Unit Thermostats\r\n* Surface Parking\r\n* Cable / Internet Ready\r\n* Coin-Op Laundry Facilities\r\n* Onsite Superintendent\r\n* Storage Available\r\n* Controlled Access\r\n* 24-Hour Emergency Service\r\n\r\nThis one bedroom apartment is available as of August 2019 for $1,196.00 on a 12 month leases starting at the time you move in.\r\n\r\nParking is available for all units at $100.00/month/car.\r\n\r\nIf you would like more information or to arrange for a viewing please contact our on-site Rental Agent at 613-232-2396.');
INSERT INTO `Suite` VALUES('1101', '1', 'index.php?action=floor_plan&suite_id=01', 82, 901, NULL);
INSERT INTO `Suite` VALUES('B-2', '1', 'index.php?action=floor_plan&suite_id=B-2', 2, 902, 'IMMEDIATE AVAILABILITY\r\n\r\nModern, trendy two bedroom apartment with a designer kitchen and bathroom featuring:\r\n* New stainless steel appliances (fridge, stove and microwave)\r\n* Quartz countertops with breakfast bar\r\n* Hardwood Floors\r\n* Individual Unit Thermostats\r\n* Balcony\r\n* City view\r\n* Heat and Hot Water Included\r\n\r\nOur central location provides young professionals with an affordable urban lifestyle only minutes from Dowâ€™s Lake, Landsdown Park, the Rideau Canal, public transit, restaurants and coffee shops.\r\n\r\nThe building is quiet and well maintained with the following features:\r\n* Secured access\r\n* 24-Hour Emergency Service\r\n* Onsite superintendent\r\n* Parking\r\n* Two elevators\r\n* Laundry facilities\r\n* Individual storage locker available\r\n* Bicycle storage\r\n\r\nThis two bedroom apartment is available for $1,750.00, utilities included. A 12 month lease would start at the time you move in.\r\n\r\nParking is available for all units at $88.00/month/car.\r\n\r\nFor more information or to arrange a viewing please contact our on-site Rental Agent at 613-232-2396.');
INSERT INTO `Suite` VALUES('102', '1', 'index.php?action=floor_plan&suite_id=02', 5, 903, NULL);
INSERT INTO `Suite` VALUES('202', '1', 'index.php?action=floor_plan&suite_id=02', 11, 903, NULL);
INSERT INTO `Suite` VALUES('302', '1', 'index.php?action=floor_plan&suite_id=02', 19, 903, NULL);
INSERT INTO `Suite` VALUES('402', '1', 'index.php?action=floor_plan&amp;amp;suite_id=02', 27, 903, 'Our central location, only minutes from popular parks, restaurants and coffee shops, provides young professionals with an affordable urban lifestyle. The building is quiet and well maintained with the following features: \r\n\r\n* Balcony\r\n* Hardwood Floors\r\n* Heat and Hot Water Included\r\n* Individual Unit Thermostats\r\n* Surface Parking\r\n* Cable / Internet Ready\r\n* Coin-Op Laundry Facilities\r\n* Onsite Superintendent\r\n* Storage Available\r\n* Controlled Access\r\n* 24-Hour Emergency Service\r\n\r\nThis one bedroom apartment is available as of August 2019 for $1,230.00 on a 12 month leases starting at the time you move in.\r\n\r\nParking is available for all units at $100.00/month/car.\r\n\r\nIf you would like more information or to arrange for a viewing please contact our on-site Rental Agent at 613-232-2396.');
INSERT INTO `Suite` VALUES('502', '1', 'index.php?action=floor_plan&suite_id=02', 35, 903, NULL);
INSERT INTO `Suite` VALUES('602', '1', 'index.php?action=floor_plan&suite_id=02', 43, 903, NULL);
INSERT INTO `Suite` VALUES('702', '1', 'index.php?action=floor_plan&suite_id=02', 51, 903, NULL);
INSERT INTO `Suite` VALUES('802', '1', 'index.php?action=floor_plan&suite_id=02', 59, 903, NULL);
INSERT INTO `Suite` VALUES('902', '1', 'index.php?action=floor_plan&suite_id=02', 67, 903, NULL);
INSERT INTO `Suite` VALUES('1002', '1', 'index.php?action=floor_plan&suite_id=02', 75, 903, NULL);
INSERT INTO `Suite` VALUES('1102', '1', 'index.php?action=floor_plan&suite_id=02', 83, 903, NULL);
INSERT INTO `Suite` VALUES('B-3', 'B', NULL, 3, NULL, NULL);
INSERT INTO `Suite` VALUES('103', 'B', NULL, 6, 904, NULL);
INSERT INTO `Suite` VALUES('203', 'B', 'index.php?action=floor_plan&suite_id=03', 12, 904, NULL);
INSERT INTO `Suite` VALUES('303', 'B', 'index.php?action=floor_plan&suite_id=03', 20, 904, NULL);
INSERT INTO `Suite` VALUES('403', 'B', 'index.php?action=floor_plan&suite_id=03', 28, 904, NULL);
INSERT INTO `Suite` VALUES('503', 'B', 'index.php?action=floor_plan&suite_id=03', 36, 904, NULL);
INSERT INTO `Suite` VALUES('603', 'B', 'index.php?action=floor_plan&suite_id=03', 44, 904, NULL);
INSERT INTO `Suite` VALUES('703', 'B', 'index.php?action=floor_plan&suite_id=03', 52, 904, NULL);
INSERT INTO `Suite` VALUES('803', 'B', 'index.php?action=floor_plan&suite_id=03', 60, 904, NULL);
INSERT INTO `Suite` VALUES('903', 'B', 'index.php?action=floor_plan&suite_id=03', 68, 904, NULL);
INSERT INTO `Suite` VALUES('1003', 'B', 'index.php?action=floor_plan&suite_id=03', 76, 904, NULL);
INSERT INTO `Suite` VALUES('1103', 'B', 'index.php?action=floor_plan&suite_id=03', 84, 904, NULL);
INSERT INTO `Suite` VALUES('104', '1', 'index.php?action=floor_plan&suite_id=04', 7, 905, NULL);
INSERT INTO `Suite` VALUES('204', '1', 'index.php?action=floor_plan&suite_id=04', 13, 910, 'IMMEDIATE AVAILABILITY\r\n\r\nModern, trendy one bedroom apartment with a designer kitchen and bathroom featuring:\r\n* New stainless steel appliances (fridge, stove and microwave)\r\n* Quartz countertops with breakfast bar\r\n* Hardwood Floors\r\n* Individual Unit Thermostats\r\n* Balcony\r\n* City view\r\n* Heat and Hot Water Included\r\n\r\nOur central location provides young professionals with an affordable urban lifestyle only minutes from Dowâ€™s Lake, Landsdown Park, the Rideau Canal, public transit, restaurants and coffee shops.\r\n\r\nThe building is quiet and well maintained with the following features:\r\n* Secured access\r\n* 24-Hour Emergency Service\r\n* Onsite superintendent\r\n* Parking\r\n* Two elevators\r\n* Laundry facilities\r\n* Individual storage locker available\r\n* Bicycle storage\r\n\r\nThis one bedroom apartment is available for $1,520.00, utilities included. A 12 month lease would start at the time you move in.\r\n\r\nParking is available for all units at $88.00/month/car.\r\n\r\nFor more information or to arrange a viewing please contact our on-site Rental Agent at 613-232-2396.');
INSERT INTO `Suite` VALUES('304', '1', 'index.php?action=floor_plan&suite_id=04', 21, 905, NULL);
INSERT INTO `Suite` VALUES('404', '1', 'index.php?action=floor_plan&suite_id=04', 29, 905, NULL);
INSERT INTO `Suite` VALUES('504', '1', 'index.php?action=floor_plan&suite_id=04', 37, 905, NULL);
INSERT INTO `Suite` VALUES('604', '1', 'index.php?action=floor_plan&suite_id=04', 45, 910, 'IMMEDIATE AVAILABILITY\r\n\r\nModern, trendy one bedroom apartment with a designer kitchen and bathroom featuring:\r\n* New stainless steel appliances (fridge, stove and microwave)\r\n* Quartz countertops with breakfast bar\r\n* Hardwood Floors\r\n* Individual Unit Thermostats\r\n* Balcony\r\n* City view\r\n* Heat and Hot Water Included\r\n\r\nOur central location provides young professionals with an affordable urban lifestyle only minutes from Dowâ€™s Lake, Landsdown Park, the Rideau Canal, public transit, restaurants and coffee shops.\r\n\r\nThe building is quiet and well maintained with the following features: \r\n* Secured access\r\n* 24-Hour Emergency Service \r\n* Onsite superintendent\r\n* Parking\r\n* Two elevators\r\n* Laundry facilities\r\n* Individual storage locker available\r\n* Bicycle storage\r\n\r\nThis one bedroom apartment is available for $1,560.00, utilities included. A 12 month lease would start at the time you move in.\r\n\r\nParking is available for all units at $88.00/month/car.\r\n\r\nFor more information or to arrange a viewing please contact our on-site Rental Agent at 613-232-2396.');
INSERT INTO `Suite` VALUES('704', '1', 'index.php?action=floor_plan&suite_id=04', 53, 905, NULL);
INSERT INTO `Suite` VALUES('804', '1', 'index.php?action=floor_plan&suite_id=04', 61, 905, NULL);
INSERT INTO `Suite` VALUES('904', '1', 'index.php?action=floor_plan&suite_id=04', 69, 905, NULL);
INSERT INTO `Suite` VALUES('1004', '1', 'index.php?action=floor_plan&suite_id=04', 77, 905, NULL);
INSERT INTO `Suite` VALUES('1104', '1', 'index.php?action=floor_plan&suite_id=04', 85, 905, NULL);
INSERT INTO `Suite` VALUES('105', '2', 'index.php?action=floor_plan&suite_id=05', 8, 906, NULL);
INSERT INTO `Suite` VALUES('205', '2', 'index.php?action=floor_plan&suite_id=05', 14, 906, NULL);
INSERT INTO `Suite` VALUES('305', '2', 'index.php?action=floor_plan&suite_id=05', 22, 906, NULL);
INSERT INTO `Suite` VALUES('405', '2', 'index.php?action=floor_plan&suite_id=05', 30, 906, NULL);
INSERT INTO `Suite` VALUES('505', '2', 'index.php?action=floor_plan&suite_id=05', 38, 906, NULL);
INSERT INTO `Suite` VALUES('605', '2', 'index.php?action=floor_plan&suite_id=05', 46, 906, NULL);
INSERT INTO `Suite` VALUES('705', '2', 'index.php?action=floor_plan&suite_id=05', 54, 911, 'IMMEDIATE AVAILABILITY\r\n\r\nModern, trendy two bedroom apartment with a designer kitchen and bathroom featuring:\r\n* New stainless steel appliances (fridge, stove and microwave)\r\n* Quartz countertops with breakfast bar\r\n* Hardwood Floors\r\n* Individual Unit Thermostats\r\n* Balcony\r\n* City view\r\n* Heat and Hot Water Included\r\n\r\nOur central location provides young professionals with an affordable urban lifestyle only minutes from Dowâ€™s Lake, Landsdown Park, the Rideau Canal, public transit, restaurants and coffee shops.\r\n\r\nThe building is quiet and well maintained with the following features:\r\n* Secured access\r\n* 24-Hour Emergency Service\r\n* Onsite superintendent\r\n* Parking\r\n* Two elevators\r\n* Laundry facilities\r\n* Individual storage locker available\r\n* Bicycle storage\r\n\r\nThis two bedroom apartment is available for $1,750.00, utilities included. A 12 month lease would start at the time you move in.\r\n\r\nParking is available for all units at $88.00/month/car.\r\n\r\nFor more information or to arrange a viewing please contact our on-site Rental Agent at 613-232-2396.');
INSERT INTO `Suite` VALUES('805', '2', 'index.php?action=floor_plan&suite_id=05', 62, 906, NULL);
INSERT INTO `Suite` VALUES('905', '2', 'index.php?action=floor_plan&suite_id=05', 70, 906, NULL);
INSERT INTO `Suite` VALUES('1005', '2', 'index.php?action=floor_plan&suite_id=05', 78, 906, NULL);
INSERT INTO `Suite` VALUES('1105', '2', 'index.php?action=floor_plan&suite_id=05', 86, 906, NULL);
INSERT INTO `Suite` VALUES('106', '1', 'index.php?action=floor_plan&amp;amp;amp;amp;suite_', 9, 907, 'IMMEDIATE AVAILABILITY\r\n\r\nFULLY UPDATED:\r\nQuartz counters, new hardwood and ceramic floors, new microwave and dishwasher! All the little luxuries you expect at an affordable price since heat, hydro and water are included in the rent. \r\n\r\nEnjoy all the benefits of living in an apartment along with all the freedom of living in a townhouse. This apartment is unique in that it is situated on the ground floor of the apartment building with a personal back door giving a private access to the parking lot. \r\n\r\nThe up to date look of the apartment is ideal for anyone interested in an affordable urban lifestyle. The apartment has been extensively renovated featuring:\r\n* Private access to the parking lot\r\n* Quartz countertops in the kitchen and bathroom\r\n* New microwave and dishwasher\r\n* New hardwood floors\r\n* New ceramic floors\r\n* Individual Unit Thermostats\r\n* Heat, hydro and hot water included \r\n\r\nOur central location is only minutes from Dow''s Lake Landsdown Park, the Rideau Canal, public transit, restaurants and coffee shops.\r\n\r\nThe building is quiet and well maintained with the following features: \r\n* Secured access\r\n* 24-Hour Emergency Service \r\n* Onsite superintendent\r\n* Parking\r\n* Two elevators\r\n* Laundry facilities\r\n* Individual storage locker available\r\n* Bicycle storage\r\n\r\nThis one bedroom apartment is available at $1,450.00, utilities included. A 12 month lease would start at the time you move in.\r\n\r\nParking is available for all units at $100.00/month/car.\r\n\r\nFor more information or to arrange a viewing please contact our on-site Rental Agent at 613-232-2396.');
INSERT INTO `Suite` VALUES('206', '1', 'index.php?action=floor_plan&suite_id=06', 15, 907, NULL);
INSERT INTO `Suite` VALUES('306', '1', 'index.php?action=floor_plan&suite_id=06', 23, 907, NULL);
INSERT INTO `Suite` VALUES('406', '1', 'index.php?action=floor_plan&suite_id=06', 31, 907, NULL);
INSERT INTO `Suite` VALUES('506', '1', 'index.php?action=floor_plan&suite_id=06', 39, 907, NULL);
INSERT INTO `Suite` VALUES('606', '1', 'index.php?action=floor_plan&suite_id=06', 47, 907, NULL);
INSERT INTO `Suite` VALUES('706', '1', 'index.php?action=floor_plan&suite_id=06', 55, 907, NULL);
INSERT INTO `Suite` VALUES('806', '1', 'index.php?action=floor_plan&suite_id=06', 63, 907, NULL);
INSERT INTO `Suite` VALUES('906', '1', 'index.php?action=floor_plan&suite_id=06', 71, 907, NULL);
INSERT INTO `Suite` VALUES('1006', '1', 'index.php?action=floor_plan&suite_id=06', 79, 907, NULL);
INSERT INTO `Suite` VALUES('1106', '1', 'index.php?action=floor_plan&suite_id=06', 87, 907, NULL);
INSERT INTO `Suite` VALUES('207', '1', 'index.php?action=floor_plan&suite_id=07', 16, 913, 'IMMEDIATE AVAILABILITY\r\n\r\nModern, trendy one bedroom apartment with a designer kitchen and bathroom featuring:\r\n* New stainless steel appliances (fridge, stove and microwave)\r\n* Quartz countertops with breakfast bar\r\n* Hardwood Floors\r\n* Individual Unit Thermostats\r\n* Balcony\r\n* City view\r\n* Heat and Hot Water Included\r\n\r\nOur central location provides young professionals with an affordable urban lifestyle only minutes from Dowâ€™s Lake, Landsdown Park, the Rideau Canal, public transit, restaurants and coffee shops.\r\n\r\nThe building is quiet and well maintained with the following features: \r\n* Secured access\r\n* 24-Hour Emergency Service \r\n* Onsite superintendent\r\n* Parking\r\n* Two elevators\r\n* Laundry facilities\r\n* Individual storage locker available\r\n* Bicycle storage\r\n\r\nThis one bedroom apartment is available for $1,560.00, utilities included. A 12 month lease would start at the time you move in.\r\n\r\nParking is available for all units at $88.00/month/car.\r\n\r\nFor more information or to arrange a viewing please contact our on-site Rental Agent at 613-232-2396.');
INSERT INTO `Suite` VALUES('307', '1', 'index.php?action=floor_plan&suite_id=07', 24, 908, NULL);
INSERT INTO `Suite` VALUES('407', '1', 'index.php?action=floor_plan&suite_id=07', 32, 908, NULL);
INSERT INTO `Suite` VALUES('507', '1', 'index.php?action=floor_plan&suite_id=07', 40, 908, NULL);
INSERT INTO `Suite` VALUES('607', '1', 'index.php?action=floor_plan&amp;amp;suite_id=07', 48, 908, 'Phone: 613-232-2396 for more information or to arrange a showing.\r\nOur central location, only minutes from popular parks, restaurants and coffee shops, provides young professionals with an affordable urban lifestyle. The building is quiet and well maintained with the following features: \r\n\r\n* Balcony\r\n* Hardwood Floors\r\n* Heat and Hot Water Included\r\n* Individual Unit Thermostats\r\n* Surface Parking\r\n* Cable / Internet Ready\r\n* Coin-Op Laundry Facilities\r\n* Onsite Superintendent\r\n* Storage Available\r\n* Controlled Access\r\n* 24-Hour Emergency Service\r\n\r\nThis one bedroom apartment is available as of December 2019 for $1,250.00 on a 12 month leases starting at the time you move in.\r\n\r\nParking is available for all units at $130.00/month/car.\r\n\r\nIf you would like more information or to arrange for a viewing please contact our on-site Rental Agent at 613-232-2396.');
INSERT INTO `Suite` VALUES('707', '1', 'index.php?action=floor_plan&suite_id=07', 56, 908, NULL);
INSERT INTO `Suite` VALUES('807', '1', 'index.php?action=floor_plan&suite_id=07', 64, 908, NULL);
INSERT INTO `Suite` VALUES('907', '1', 'index.php?action=floor_plan&suite_id=07', 72, 908, NULL);
INSERT INTO `Suite` VALUES('1007', '1', 'index.php?action=floor_plan&suite_id=07', 80, 908, NULL);
INSERT INTO `Suite` VALUES('1107', '1', 'index.php?action=floor_plan&suite_id=07', 88, 908, NULL);
INSERT INTO `Suite` VALUES('208', '1', 'index.php?action=floor_plan&suite_id=08', 17, 909, NULL);
INSERT INTO `Suite` VALUES('308', '1', 'index.php?action=floor_plan&amp;amp;suite_id=08', 25, 912, 'Modern, trendy one bedroom apartment with a designer kitchen and bathroom featuring:\r\n* New stainless steel appliances (fridge, stove and microwave)\r\n* Quartz countertops with breakfast bar\r\n* Hardwood Floors\r\n* Individual Unit Thermostats\r\n* Balcony\r\n* City view\r\n* Heat and Hot Water Included\r\n\r\nOur central location provides young professionals with an affordable urban lifestyle only minutes from Dow&amp;amp;rsquo;s Lake, Landsdown Park, the Rideau Canal, public transit, restaurants and coffee shops.\r\n\r\nThe building is quiet and well maintained with the following features: \r\n* Secured access\r\n* 24-Hour Emergency Service \r\n* Onsite superintendent\r\n* Parking\r\n* Two elevators\r\n* Laundry facilities\r\n* Individual storage locker available\r\n* Bicycle storage\r\n\r\nThis one bedroom apartment is available for $1,650.00, utilities included. A 12 month lease would start at the time you move in.\r\n\r\nParking is available for all units at $100.00/month/car.\r\n\r\nFor more information or to arrange a viewing please contact our on-site Rental Agent at 613-232-2396.');
INSERT INTO `Suite` VALUES('408', '1', 'index.php?action=floor_plan&suite_id=08', 33, 909, NULL);
INSERT INTO `Suite` VALUES('508', '1', 'index.php?action=floor_plan&suite_id=08', 41, 909, NULL);
INSERT INTO `Suite` VALUES('608', '1', 'index.php?action=floor_plan&suite_id=08', 49, 909, NULL);
INSERT INTO `Suite` VALUES('708', '1', 'index.php?action=floor_plan&suite_id=08', 57, 909, NULL);
INSERT INTO `Suite` VALUES('808', '1', 'index.php?action=floor_plan&suite_id=08', 65, 909, NULL);
INSERT INTO `Suite` VALUES('908', '1', 'index.php?action=floor_plan&amp;suite_id=08', 73, 909, 'Our central location, only minutes from popular parks, restaurants and coffee shops, provides young professionals with an affordable urban lifestyle. The building is quiet and well maintained with the following features: \r\n\r\n* Balcony\r\n* Hardwood Floors\r\n* Heat and Hot Water Included\r\n* Individual Unit Thermostats\r\n* Surface Parking\r\n* Cable / Internet Ready\r\n* Coin-Op Laundry Facilities\r\n* Onsite Superintendent\r\n* Storage Available\r\n* Controlled Access\r\n* 24-Hour Emergency Service\r\n\r\nThis one bedroom apartment is available as of August 2019 for $1,195.00 on a 12 month leases starting at the time you move in.\r\n\r\nParking is available for all units at $100.00/month/car.\r\n\r\nIf you would like more information or to arrange for a viewing please contact our on-site Rental Agent at 613-232-2396.');
INSERT INTO `Suite` VALUES('1008', '1', 'index.php?action=floor_plan&suite_id=08', 81, 909, NULL);
INSERT INTO `Suite` VALUES('1108', '1', 'index.php?action=floor_plan&suite_id=08', 89, 909, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SuiteLayout`
--

CREATE TABLE `SuiteLayout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) NOT NULL,
  `gallery_id` int(11) DEFAULT NULL,
  `floorplan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=914 ;

--
-- Dumping data for table `SuiteLayout`
--

INSERT INTO `SuiteLayout` VALUES(900, 'B-1', 10, 'images/gallery-floor-plans/full/0 - 13.jpg');
INSERT INTO `SuiteLayout` VALUES(901, '01', 2, 'images/gallery-floor-plans/full/0 - 01.jpg');
INSERT INTO `SuiteLayout` VALUES(902, 'B-2', 11, 'images/gallery-floor-plans/full/0 - 14.jpg');
INSERT INTO `SuiteLayout` VALUES(903, '02', 3, 'images/gallery-floor-plans/full/0 - 03.jpg');
INSERT INTO `SuiteLayout` VALUES(904, '03', 4, 'images/gallery-floor-plans/full/0 - 04.jpg');
INSERT INTO `SuiteLayout` VALUES(905, '04', 900, 'images/gallery-floor-plans/full/0 - 05.jpg');
INSERT INTO `SuiteLayout` VALUES(906, '05', 6, 'images/gallery-floor-plans/full/0 - 07.jpg');
INSERT INTO `SuiteLayout` VALUES(907, '06', 7, 'images/gallery-floor-plans/full/0 - 09.jpg');
INSERT INTO `SuiteLayout` VALUES(908, '07', 8, 'images/gallery-floor-plans/full/0 - 10.jpg');
INSERT INTO `SuiteLayout` VALUES(909, '08', 9, 'images/gallery-floor-plans/full/0 - 12.jpg');
INSERT INTO `SuiteLayout` VALUES(910, '04-2', 5, 'images/gallery-floor-plans/full/0 - 06.jpg');
INSERT INTO `SuiteLayout` VALUES(911, '05-2', 901, 'images/gallery-floor-plans/full/0 - 08.jpg');
INSERT INTO `SuiteLayout` VALUES(912, '01-2', 902, 'images/gallery-floor-plans/full/0 - 02.jpg');
INSERT INTO `SuiteLayout` VALUES(913, '07-2', 903, 'images/gallery-floor-plans/full/0 - 11.jpg');
