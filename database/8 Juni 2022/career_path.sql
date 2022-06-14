-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jun 2022 pada 13.55
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `career_path`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id_roles` int(11) NOT NULL,
  `name_roles` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id_roles`, `name_roles`) VALUES
(1, 'Business Analyst'),
(2, 'Business/Operational Liaisons'),
(3, 'Center of Excellent Specialist'),
(4, 'Data Analyst'),
(5, 'Data Center Operation'),
(6, 'Data Engineer/EDW'),
(7, 'Data Scientist'),
(8, 'Database Administrator'),
(9, 'DevOps Engineer'),
(10, 'Helpdesk/Support (Aplikasi/Jaringan/Infra)'),
(11, 'Helpdesk/Support (Data)'),
(12, 'Infrastructure Design'),
(13, 'IT Human Capital'),
(14, 'IT Procurement'),
(15, 'IT Strategic'),
(16, 'IT/Infra Compliance/Risk/Governance'),
(17, 'Librarian (KM Officer / Content Creator'),
(18, 'Management'),
(19, 'Network Engineer'),
(20, 'Product Manager'),
(21, 'Programmer'),
(22, 'Project Management Officer'),
(23, 'Project Manager'),
(24, 'Quality Assurance'),
(25, 'Scrum Master'),
(26, 'Security Engineer'),
(27, 'System Analyst'),
(28, 'System Engineer'),
(29, 'Technical Support'),
(30, 'Technical Writer'),
(31, 'Tester'),
(32, 'UI/UX Designer'),
(33, 'Windows/System Administrator');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles_skills`
--

CREATE TABLE `roles_skills` (
  `id_roles_skill` int(11) NOT NULL,
  `id_roles` int(11) DEFAULT NULL,
  `id_skill` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `roles_skills`
--

INSERT INTO `roles_skills` (`id_roles_skill`, `id_roles`, `id_skill`) VALUES
(1, 1, 5),
(2, 1, 6),
(3, 1, 8),
(4, 1, 10),
(5, 1, 25),
(6, 1, 30),
(7, 1, 70),
(8, 2, 5),
(9, 2, 10),
(10, 2, 30),
(11, 2, 68),
(12, 2, 70),
(13, 3, 8),
(14, 3, 17),
(15, 3, 40),
(16, 3, 59),
(17, 3, 68),
(18, 3, 84),
(19, 4, 1),
(20, 4, 22),
(21, 4, 27),
(22, 5, 18),
(23, 5, 21),
(24, 6, 22),
(25, 6, 23),
(26, 6, 24),
(27, 6, 25),
(28, 6, 27),
(29, 7, 1),
(30, 7, 22),
(31, 7, 26),
(32, 7, 27),
(33, 7, 48),
(34, 8, 2),
(35, 8, 4),
(36, 8, 11),
(37, 8, 28),
(38, 8, 32),
(39, 8, 58),
(40, 8, 72),
(41, 9, 13),
(42, 9, 15),
(43, 9, 42),
(44, 9, 62),
(45, 9, 69),
(46, 9, 72),
(47, 9, 83),
(48, 9, 85),
(49, 10, 3),
(50, 10, 20),
(51, 10, 27),
(52, 10, 32),
(53, 10, 41),
(54, 10, 49),
(55, 10, 74),
(56, 11, 1),
(57, 11, 22),
(58, 11, 27),
(59, 12, 39),
(60, 13, 14),
(61, 13, 47),
(62, 13, 60),
(63, 13, 71),
(64, 14, 19),
(65, 14, 43),
(66, 14, 78),
(67, 15, 76),
(68, 15, 77),
(69, 16, 10),
(70, 16, 16),
(71, 16, 18),
(72, 16, 31),
(73, 16, 33),
(74, 16, 37),
(75, 16, 67),
(76, 17, 34),
(77, 17, 35),
(78, 17, 45),
(79, 17, 46),
(80, 17, 47),
(81, 18, 10),
(82, 18, 20),
(83, 18, 52),
(84, 18, 55),
(85, 18, 56),
(86, 18, 61),
(87, 18, 68),
(88, 18, 74),
(89, 18, 77),
(90, 18, 78),
(91, 19, 39),
(92, 19, 51),
(93, 20, 7),
(94, 20, 8),
(95, 20, 9),
(96, 20, 40),
(97, 20, 59),
(98, 20, 70),
(99, 20, 86),
(100, 20, 88),
(101, 20, 89),
(102, 21, 29),
(103, 21, 62),
(104, 21, 69),
(105, 21, 75),
(106, 21, 79),
(107, 21, 85),
(108, 21, 88),
(109, 22, 64),
(110, 23, 5),
(111, 23, 10),
(112, 23, 12),
(113, 23, 63),
(114, 24, 1),
(115, 24, 16),
(116, 24, 38),
(117, 24, 49),
(118, 24, 65),
(119, 24, 66),
(120, 24, 70),
(121, 24, 73),
(122, 24, 85),
(123, 25, 45),
(124, 25, 57),
(125, 25, 62),
(126, 25, 63),
(127, 25, 68),
(128, 25, 70),
(129, 25, 81),
(130, 26, 38),
(131, 26, 53),
(132, 26, 72),
(133, 27, 29),
(134, 27, 69),
(135, 27, 70),
(136, 27, 75),
(137, 27, 80),
(138, 28, 2),
(139, 28, 13),
(140, 28, 15),
(141, 28, 42),
(142, 28, 49),
(143, 28, 50),
(144, 28, 58),
(145, 28, 69),
(146, 28, 72),
(147, 28, 83),
(148, 29, 3),
(149, 29, 32),
(150, 29, 41),
(151, 29, 58),
(152, 29, 72),
(153, 29, 82),
(154, 29, 83),
(155, 30, 34),
(156, 30, 35),
(157, 30, 68),
(158, 31, 1),
(159, 31, 50),
(160, 31, 54),
(161, 31, 65),
(162, 31, 68),
(163, 31, 79),
(164, 31, 85),
(165, 32, 86),
(166, 32, 87),
(167, 32, 88),
(168, 32, 89),
(169, 33, 2),
(170, 33, 4),
(171, 33, 11),
(172, 33, 15),
(173, 33, 32),
(174, 33, 44),
(175, 33, 58),
(176, 33, 72);

-- --------------------------------------------------------

--
-- Struktur dari tabel `skills`
--

CREATE TABLE `skills` (
  `id_skill` int(11) NOT NULL,
  `name_skill` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `skills`
--

INSERT INTO `skills` (`id_skill`, `name_skill`) VALUES
(1, 'Analytics (ANAL)'),
(2, 'Analytics (INAN)'),
(3, 'Application Support (ASUP)'),
(4, 'Availability Management (AVMT)'),
(5, 'Benefits Management (BENM)'),
(6, 'Business Analyst (BUAN)'),
(7, 'Business Modelling (BSMO)'),
(8, 'Business Process Improvement (BPRE)'),
(9, 'Business Process Testing (BPTS)'),
(10, 'Business Risk Management (BURM)'),
(11, 'Capacity Management (CPMG)'),
(12, 'Change Implementation Planning and Management (CIPM)'),
(13, 'Change Management (CHMG)'),
(14, 'Competency Assessment (LEDA)'),
(15, 'Configuration Management (CFMG)'),
(16, 'Conformance Review (CORE)'),
(17, 'Consultancy (CNSL)'),
(18, 'Continuity Management (COPL)'),
(19, 'Contract Management (ITCM)'),
(20, 'Customer Service Support (ITMG)'),
(21, 'Data Center Operation (DCOP)'),
(22, 'Data Collection (DATC)'),
(23, 'Data Engineering (DENG)'),
(24, 'Data Management (DATM)'),
(25, 'Data Modelling and Design (DTAN)'),
(26, 'Data Science (DATS)'),
(27, 'Data Visualization (VISL)'),
(28, 'Database Administration / Developer (DBAD)'),
(29, 'Database Design (DBDS)'),
(30, 'Demand Management (DEMM)'),
(31, 'Enterprise IT Governance (GOVN)'),
(32, 'Incident Management (USUP)'),
(33, 'Information Assurance (INAS)'),
(34, 'Information Content Authoring (INCA)'),
(35, 'Information Content Publishing (ICPM'),
(36, 'Information Content Publishing (ICPM)'),
(37, 'Information Governance (IRMG)'),
(38, 'Information Security (SCTY)'),
(39, 'Infrastructure Design (IFDS)'),
(40, 'Innovation (INOV)'),
(41, 'IT Infrastructure (ITOP)'),
(42, 'IT Infrastructure (Virtualization) (ITOP)'),
(43, 'IT Procurement (PROC)'),
(44, 'IT System Software (SYSP)'),
(45, 'Knowledge Management (KNOW)'),
(46, 'Learning Delivery (ETDL)'),
(47, 'Learning Design and Development (TMCR)'),
(48, 'Machine Learning (MLNG)'),
(49, 'Measurement (MEAS)'),
(50, 'Methods and Tools (METL)'),
(51, 'Network Support (NTAS)'),
(52, 'Organizational Capability Development (OCDV)'),
(53, 'Penetration Testing (PENT)'),
(54, 'Penetration Testing* (PENT) (Khusus untuk Security Tester)'),
(55, 'Performance Management (PEMT)'),
(56, 'Portfolio Management (POMG)'),
(57, 'Portfolio Programme and Project Support (PROF)'),
(58, 'Problem Management (PBMG)'),
(59, 'Product Management (PROD)'),
(60, 'Professional Development (PDSV)'),
(61, 'Programme Management (PGMG)'),
(62, 'Programming/ Software Development (PROG)'),
(63, 'Project Management (PRMG)'),
(64, 'Project Management Officer (PMOP)'),
(65, 'Quality Assurance (QUAS)'),
(66, 'Quality Management (QUMG)'),
(67, 'Relationship Management (PBMG)'),
(68, 'Relationship Management (RLMT)'),
(69, 'Release and Deployment (RELM)'),
(70, 'Requirements Definition & Management (REQM)'),
(71, 'Resourcing (RESC)'),
(72, 'Security Administration (SCAD)'),
(73, 'Service Acceptance (SEAC)'),
(74, 'Service Level Management (SLMO)'),
(75, 'Software Design (SWDN)'),
(76, 'Solution Architecture (ARCH)'),
(77, 'Strategic Planning (ITSP)'),
(78, 'Supplier Management (SUPP)'),
(79, 'System Integration (SINT)'),
(80, 'Systems Design (DESN)'),
(81, 'Systems Development Management (DLMG)'),
(82, 'Systems Installation/ Decommissioning (HSIN)'),
(83, 'Systems Integration and Building (SINT)'),
(84, 'Technology Specialist (TECH)'),
(85, 'Testing (TEST)'),
(86, 'User Experience Analysis (UNAN)'),
(87, 'User Experience Design (HCEV)'),
(88, 'User Experience Evaluation (USEV)'),
(89, 'User Research (URCH)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `upload`
--

CREATE TABLE `upload` (
  `id_upload` int(11) NOT NULL,
  `id_roles` int(11) DEFAULT NULL,
  `current_role` varchar(255) DEFAULT NULL,
  `skill_role_owned` int(11) NOT NULL,
  `goal_roles` varchar(255) NOT NULL,
  `skill_role_goal` int(11) NOT NULL,
  `skill_role_dont_have` int(11) NOT NULL,
  `name_skills` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `upload`
--

INSERT INTO `upload` (`id_upload`, `id_roles`, `current_role`, `skill_role_owned`, `goal_roles`, `skill_role_goal`, `skill_role_dont_have`, `name_skills`) VALUES
(1, 1, 'Business Analyst', 7, 'Business Analyst', 7, 0, '[]'),
(2, 1, 'Business Analyst', 7, 'Business/Operational Liaisons', 5, 1, '[\'Relationship Management (RLMT)\']'),
(3, 1, 'Business Analyst', 7, 'Project Manager', 7, 5, '[\'Change Implementation Planning and Management (CIPM)\', \'Portfolio Programme and Project Support (PROF)\', \'Project Management (PRMG)\', \'Relationship Management RLMT\', \'Systems Development Management (DLMG)\']'),
(4, 1, 'Business Analyst', 7, 'Product Manager', 9, 7, '[\'Business Modelling (BSMO)\', \'Business Process Testing (BPTS)\', \'Innovation (INOV)\', \'Product Management (PROD)\', \'User Experience Analysis (UNAN)\', \'User Experience Evaluation (USEV)\', \'User Research (URCH)\']'),
(5, 2, 'Business/Operational Liaisons', 5, 'Business/Operational Liaisons', 5, 0, '[]'),
(6, 2, 'Business/Operational Liaisons', 5, 'Business Analyst', 7, 3, '[\'Business Analyst (BUAN)\', \'Business Process Improvement (BPRE)\', \'Data Modelling and Design (DTAN)\']'),
(7, 2, 'Business/Operational Liaisons', 5, 'Project Manager', 7, 5, '[\'Change Implementation Planning and Management (CIPM)\', \'Portfolio Programme and Project Support (PROF)\', \'Project Management (PRMG)\', \'Relationship Management RLMT\', \'Systems Development Management (DLMG)\']'),
(8, 2, 'Business/Operational Liaisons', 5, 'Scrum Master', 7, 5, '[\'Knowledge Management (KNOW)\', \'Portfolio Programme and Project Support (PROF)\', \'Programming/ Software Development (PROG)\', \'Project Management (PRMG)\', \'Systems Development Management (DLMG)\']'),
(9, 2, 'Business/Operational Liaisons', 5, 'Management', 10, 8, '[\'Customer Service Support (ITMG)\', \'Organizational Capability Development (OCDV)\', \'Performance Management (PEMT)\', \'Portfolio Management (POMG)\', \'Programme Management (PGMG)\', \'Service Level Management (SLMO)\', \'Strategic Planning (ITSP)\', \'Supplier Ma'),
(10, 3, 'Center of Excellent Specialist', 6, 'Center of Excellent Specialist', 6, 0, '[]'),
(11, 3, 'Center of Excellent Specialist', 6, 'Product Manager', 9, 6, '[\'Business Modelling (BSMO)\', \'Business Process Testing (BPTS)\', \'Requirements Definition & Management (REQM)\', \'User Experience Analysis (UNAN)\', \'User Experience Evaluation (USEV)\', \'User Research (URCH)\']'),
(12, 4, 'Data Analyst', 3, 'Helpdesk/Support (Data)', 3, 0, '[]'),
(13, 4, 'Data Analyst', 3, 'Data Analyst', 3, 0, '[]'),
(14, 4, 'Data Analyst', 3, 'Data Scientist', 5, 2, '[\'Data Science (DATS)\', \'Machine Learning (MLNG)\']'),
(15, 4, 'Data Analyst', 3, 'Data Engineer/EDW', 5, 3, '[\'Data Engineering (DENG)\', \'Data Management (DATM)\', \'Data Modelling and Design (DTAN)\']'),
(16, 5, 'Data Center Operation', 2, 'Data Center Operation', 2, 0, '[]'),
(17, 6, 'Data Engineer/EDW', 5, 'Data Engineer/EDW', 5, 0, '[]'),
(18, 6, 'Data Engineer/EDW', 5, 'Helpdesk/Support (Data)', 3, 1, '[\'Analytics (ANAL)\']'),
(19, 6, 'Data Engineer/EDW', 5, 'Data Analyst', 3, 1, '[\'Analytics (ANAL)\']'),
(20, 6, 'Data Engineer/EDW', 5, 'Data Scientist', 5, 3, '[\'Analytics (ANAL)\', \'Data Science (DATS)\', \'Machine Learning (MLNG)\']'),
(21, 7, 'Data Scientist', 5, 'Helpdesk/Support (Data)', 3, 0, '[]'),
(22, 7, 'Data Scientist', 5, 'Data Scientist', 5, 0, '[]'),
(23, 7, 'Data Scientist', 5, 'Data Analyst', 3, 0, '[]'),
(24, 7, 'Data Scientist', 5, 'Data Engineer/EDW', 5, 3, '[\'Data Engineering (DENG)\', \'Data Management (DATM)\', \'Data Modelling and Design (DTAN)\']'),
(25, 8, 'Database Administrator', 7, 'Database Administrator', 7, 0, '[]'),
(26, 8, 'Database Administrator', 7, 'Windows/System Administrator', 8, 2, '[\'Configuration Management (CFMG)\', \'IT System Software (SYSP)\']'),
(27, 8, 'Database Administrator', 7, 'Technical Support', 7, 4, '[\'Application Support (ASUP)\', \'IT Infrastructure (ITOP)\', \'Systems Installation/ Decommissioning (HSIN)\', \'Systems Integration and Building (SINT)\']'),
(28, 8, 'Database Administrator', 7, 'System Engineer', 10, 7, '[\'Change Management (CHMG)\', \'Configuration Management (CFMG)\', \'IT Infrastructure (Virtualization) (ITOP)\', \'Measurement (MEAS)\', \'Methods and Tools (METL)\', \'Release and Deployment (RELM)\', \'Systems Integration and Building (SINT)\']'),
(29, 9, 'DevOps Engineer', 8, 'DevOps Engineer', 8, 0, '[]'),
(30, 9, 'DevOps Engineer', 8, 'System Engineer', 10, 4, '[\'Analytics (INAN)\', \'Measurement (MEAS)\', \'Methods and Tools (METL)\', \'Problem Management (PBMG)\']'),
(31, 9, 'DevOps Engineer', 8, 'Programmer', 7, 4, '[\'Database Design (DBDS)\', \'Software Design (SWDN)\', \'System Integration (SINT)\', \'User Experience Evaluation (USEV)\']'),
(32, 9, 'DevOps Engineer', 8, 'System Analyst', 8, 5, '[\'Database Design (DBDS)\', \'Requirements Definition & Management (REQM)\', \'Software Design (SWDN)\', \'System Integration (SINT)\', \'Systems Design (DESN)\']'),
(33, 9, 'DevOps Engineer', 8, 'Technical Support', 7, 5, '[\'Application Support (ASUP)\', \'IT Infrastructure (ITOP)\', \'Incident Management (USUP)\', \'Problem Management (PBMG)\', \'Systems Installation/ Decommissioning (HSIN)\']'),
(34, 9, 'DevOps Engineer', 8, 'Windows/System Administrator', 8, 6, '[\'Analytics (INAN)\', \'Availability Management (AVMT)\', \'Capacity Management (CPMG)\', \'IT System Software (SYSP)\', \'Incident Management (USUP)\', \'Problem Management (PBMG)\']'),
(35, 10, 'Helpdesk/Support (Aplikasi/Jaringan/Infra)', 7, 'Helpdesk/Support (Aplikasi/Jaringan/Infra)', 7, 0, '[]'),
(36, 10, 'Helpdesk/Support (Aplikasi/Jaringan/Infra)', 7, 'Technical Support', 7, 4, '[\'Problem Management (PBMG)\', \'Security Administration (SCAD)\', \'Systems Installation/ Decommissioning (HSIN)\', \'Systems Integration and Building (SINT)\']'),
(37, 10, 'Helpdesk/Support (Aplikasi/Jaringan/Infra)', 7, 'Management', 10, 8, '[\'Business Risk Management (BURM)\', \'Organizational Capability Development (OCDV)\', \'Performance Management (PEMT)\', \'Portfolio Management (POMG)\', \'Programme Management (PGMG)\', \'Relationship Management (RLMT)\', \'Strategic Planning (ITSP)\', \'Supplier Man'),
(38, 11, 'Helpdesk/Support (Data)', 3, 'Helpdesk/Support (Data)', 3, 0, '[]'),
(39, 11, 'Helpdesk/Support (Data)', 3, 'Data Analyst', 3, 0, '[]'),
(40, 11, 'Helpdesk/Support (Data)', 3, 'Data Scientist', 5, 2, '[\'Data Science (DATS)\', \'Machine Learning (MLNG)\']'),
(41, 11, 'Helpdesk/Support (Data)', 3, 'Data Engineer/EDW', 5, 3, '[\'Data Engineering (DENG)\', \'Data Management (DATM)\', \'Data Modelling and Design (DTAN)\']'),
(42, 12, 'Infrastructure Design', 1, 'Infrastructure Design', 1, 0, '[]'),
(43, 13, 'IT Human Capital', 4, 'IT Human Capital', 4, 0, '[]'),
(44, 14, 'IT Procurement', 3, 'IT Procurement', 3, 0, '[]'),
(45, 15, 'IT Strategic', 2, 'IT Strategic', 2, 0, '[]'),
(46, 16, 'IT/Infra Compliance/Risk/Governance', 7, 'IT/Infra Compliance/Risk/Governance', 7, 0, '[]'),
(47, 17, 'Librarian (KM Officer / Content Creator', 5, 'Librarian (KM Officer / Content Creator', 5, 0, '[]'),
(48, 18, 'Management', 10, 'Management', 10, 0, '[]'),
(49, 18, 'Management', 10, 'Business/Operational Liaisons', 5, 3, '[\'Benefits Management (BENM)\', \'Demand Management (DEMM)\', \'Requirements Definition & Management (REQM)\']'),
(50, 18, 'Management', 10, 'Helpdesk/Support (Aplikasi/Jaringan/Infra)', 7, 5, '[\'Application Support (ASUP)\', \'Data Visualization (VISL)\', \'IT Infrastructure (ITOP)\', \'Incident Management (USUP)\', \'Measurement (MEAS)\']'),
(51, 19, 'Network Engineer', 2, 'Infrastructure Design', 1, 0, '[]'),
(52, 19, 'Network Engineer', 2, 'Network Engineer', 2, 0, '[]'),
(53, 20, 'Product Manager', 9, 'Product Manager', 9, 0, '[]'),
(54, 20, 'Product Manager', 9, 'UI/UX Designer', 4, 1, '[\'User Experience Design (HCEV)\']'),
(55, 20, 'Product Manager', 9, 'Center of Excellent Specialist', 6, 3, '[\'Consultancy (CNSL)\', \'Relationship Management (RLMT)\', \'Technology Specialist (TECH)\']'),
(56, 20, 'Product Manager', 9, 'Business Analyst', 7, 5, '[\'Benefits Management (BENM)\', \'Business Analyst (BUAN)\', \'Business Risk Management (BURM)\', \'Data Modelling and Design (DTAN)\', \'Demand Management (DEMM)\']'),
(57, 21, 'Programmer', 7, 'Programmer', 7, 0, '[]'),
(58, 21, 'Programmer', 7, 'System Analyst', 8, 2, '[\'Requirements Definition & Management (REQM)\', \'Systems Design (DESN)\']'),
(59, 21, 'Programmer', 7, 'Tester', 7, 5, '[\'Analytics (ANAL)\', \'Methods and Tools (METL)\', \'Penetration Testing* (PENT) (Khusus untuk Security Tester)\', \'Quality Assurance (QUAS)\', \'Relationship Management (RLMT)\']'),
(60, 21, 'Programmer', 7, 'DevOps Engineer', 8, 5, '[\'Change Management (CHMG)\', \'Configuration Management (CFMG)\', \'IT Infrastructure (Virtualization) (ITOP)\', \'Security Administration (SCAD)\', \'Systems Integration and Building (SINT)\']'),
(61, 22, 'Project Management Officer', 1, 'Project Management Officer', 1, 0, '[]'),
(62, 23, 'Project Manager', 7, 'Project Manager', 7, 0, '[]'),
(63, 23, 'Project Manager', 7, 'Business/Operational Liaisons', 5, 3, '[\'Demand Management (DEMM)\', \'Relationship Management (RLMT)\', \'Requirements Definition & Management (REQM)\']'),
(64, 23, 'Project Manager', 7, 'Scrum Master', 7, 4, '[\'Knowledge Management (KNOW)\', \'Programming/ Software Development (PROG)\', \'Relationship Management (RLMT)\', \'Requirements Definition & Management (REQM)\']'),
(65, 23, 'Project Manager', 7, 'Business Analyst', 7, 5, '[\'Business Analyst (BUAN)\', \'Business Process Improvement (BPRE)\', \'Data Modelling and Design (DTAN)\', \'Demand Management (DEMM)\', \'Requirements Definition & Management (REQM)\']'),
(66, 24, 'Quality Assurance', 9, 'Quality Assurance', 9, 0, '[]'),
(67, 24, 'Quality Assurance', 9, 'Tester', 7, 4, '[\'Methods and Tools (METL)\', \'Penetration Testing* (PENT) (Khusus untuk Security Tester)\', \'Relationship Management (RLMT)\', \'System Integration (SINT)\']'),
(68, 24, 'Quality Assurance', 9, 'System Analyst', 8, 6, '[\'Database Design (DBDS)\', \'Programming/ Software Development (PROG)\', \'Release and Deployment (RELM)\', \'Software Design (SWDN)\', \'System Integration (SINT)\', \'Systems Design (DESN)\']'),
(69, 25, 'Scrum Master', 7, 'Scrum Master', 7, 0, '[]'),
(70, 25, 'Scrum Master', 7, 'Business/Operational Liaisons', 5, 3, '[\'Benefits Management (BENM)\', \'Business Risk Management (BURM)\', \'Demand Management (DEMM)\']'),
(71, 25, 'Scrum Master', 7, 'Project Manager', 7, 4, '[\'Benefits Management (BENM)\', \'Business Risk Management (BURM)\', \'Change Implementation Planning and Management (CIPM)\', \'Relationship Management RLMT\']'),
(72, 25, 'Scrum Master', 7, 'System Analyst', 8, 6, '[\'Database Design (DBDS)\', \'Release and Deployment (RELM)\', \'Software Design (SWDN)\', \'System Integration (SINT)\', \'Systems Design (DESN)\', \'Testing (TEST)\']'),
(73, 26, 'Security Engineer', 3, 'Security Engineer', 3, 0, '[]'),
(74, 27, 'System Analyst', 8, 'System Analyst', 8, 0, '[]'),
(75, 27, 'System Analyst', 8, 'Programmer', 7, 1, '[\'User Experience Evaluation (USEV)\']'),
(76, 27, 'System Analyst', 8, 'Tester', 7, 5, '[\'Analytics (ANAL)\', \'Methods and Tools (METL)\', \'Penetration Testing* (PENT) (Khusus untuk Security Tester)\', \'Quality Assurance (QUAS)\', \'Relationship Management (RLMT)\']'),
(77, 27, 'System Analyst', 8, 'DevOps Engineer', 8, 5, '[\'Change Management (CHMG)\', \'Configuration Management (CFMG)\', \'IT Infrastructure (Virtualization) (ITOP)\', \'Security Administration (SCAD)\', \'Systems Integration and Building (SINT)\']'),
(78, 27, 'System Analyst', 8, 'Scrum Master', 7, 5, '[\'Knowledge Management (KNOW)\', \'Portfolio Programme and Project Support (PROF)\', \'Project Management (PRMG)\', \'Relationship Management (RLMT)\', \'Systems Development Management (DLMG)\']'),
(79, 27, 'System Analyst', 8, 'Quality Assurance', 9, 7, '[\'Analytics (ANAL)\', \'Conformance Review (CORE)\', \'Information Security (SCTY)\', \'Measurement (MEAS)\', \'Quality Assurance (QUAS)\', \'Quality Management (QUMG)\', \'Service Acceptance (SEAC)\']'),
(80, 28, 'System Engineer', 10, 'System Engineer', 10, 0, '[]'),
(81, 28, 'System Engineer', 10, 'DevOps Engineer', 8, 2, '[\'Programming/ Software Development (PROG)\', \'Testing (TEST)\']'),
(82, 28, 'System Engineer', 10, 'Technical Support', 7, 4, '[\'Application Support (ASUP)\', \'IT Infrastructure (ITOP)\', \'Incident Management (USUP)\', \'Systems Installation/ Decommissioning (HSIN)\']'),
(83, 28, 'System Engineer', 10, 'Database Administrator', 7, 4, '[\'Availability Management (AVMT)\', \'Capacity Management (CPMG)\', \'Database Administration / Developer (DBAD)\', \'Incident Management (USUP)\']'),
(84, 28, 'System Engineer', 10, 'Windows/System Administrator', 8, 4, '[\'Availability Management (AVMT)\', \'Capacity Management (CPMG)\', \'IT System Software (SYSP)\', \'Incident Management (USUP)\']'),
(85, 29, 'Technical Support', 7, 'Technical Support', 7, 0, '[]'),
(86, 29, 'Technical Support', 7, 'Database Administrator', 7, 4, '[\'Analytics (INAN)\', \'Availability Management (AVMT)\', \'Capacity Management (CPMG)\', \'Database Administration / Developer (DBAD)\']'),
(87, 29, 'Technical Support', 7, 'Helpdesk/Support (Aplikasi/Jaringan/Infra)', 7, 4, '[\'Customer Service Support (ITMG)\', \'Data Visualization (VISL)\', \'Measurement (MEAS)\', \'Service Level Management (SLMO)\']'),
(88, 29, 'Technical Support', 7, 'Windows/System Administrator', 8, 5, '[\'Analytics (INAN)\', \'Availability Management (AVMT)\', \'Capacity Management (CPMG)\', \'Configuration Management (CFMG)\', \'IT System Software (SYSP)\']'),
(89, 29, 'Technical Support', 7, 'DevOps Engineer', 8, 6, '[\'Change Management (CHMG)\', \'Configuration Management (CFMG)\', \'IT Infrastructure (Virtualization) (ITOP)\', \'Programming/ Software Development (PROG)\', \'Release and Deployment (RELM)\', \'Testing (TEST)\']'),
(90, 29, 'Technical Support', 7, 'System Engineer', 10, 7, '[\'Analytics (INAN)\', \'Change Management (CHMG)\', \'Configuration Management (CFMG)\', \'IT Infrastructure (Virtualization) (ITOP)\', \'Measurement (MEAS)\', \'Methods and Tools (METL)\', \'Release and Deployment (RELM)\']'),
(91, 30, 'Technical Writer', 3, 'Technical Writer', 3, 0, '[]'),
(92, 31, 'Tester', 7, 'Tester', 7, 0, '[]'),
(93, 31, 'Tester', 7, 'Programmer', 7, 5, '[\'Database Design (DBDS)\', \'Programming/ Software Development (PROG)\', \'Release and Deployment (RELM)\', \'Software Design (SWDN)\', \'User Experience Evaluation (USEV)\']'),
(94, 31, 'Tester', 7, 'Quality Assurance', 9, 6, '[\'Conformance Review (CORE)\', \'Information Security (SCTY)\', \'Measurement (MEAS)\', \'Quality Management (QUMG)\', \'Requirements Definition & Management (REQM)\', \'Service Acceptance (SEAC)\']'),
(95, 31, 'Tester', 7, 'System Analyst', 8, 6, '[\'Database Design (DBDS)\', \'Programming/ Software Development (PROG)\', \'Release and Deployment (RELM)\', \'Requirements Definition & Management (REQM)\', \'Software Design (SWDN)\', \'Systems Design (DESN)\']'),
(96, 32, 'UI/UX Designer', 4, 'UI/UX Designer', 4, 0, '[]'),
(97, 32, 'UI/UX Designer', 4, 'Product Manager', 9, 6, '[\'Business Modelling (BSMO)\', \'Business Process Improvement (BPRE)\', \'Business Process Testing (BPTS)\', \'Innovation (INOV)\', \'Product Management (PROD)\', \'Requirements Definition & Management (REQM)\']'),
(98, 33, 'Windows/System Administrator', 8, 'Windows/System Administrator', 8, 0, '[]'),
(99, 33, 'Windows/System Administrator', 8, 'Database Administrator', 7, 1, '[\'Database Administration / Developer (DBAD)\']'),
(100, 33, 'Windows/System Administrator', 8, 'Technical Support', 7, 4, '[\'Application Support (ASUP)\', \'IT Infrastructure (ITOP)\', \'Systems Installation/ Decommissioning (HSIN)\', \'Systems Integration and Building (SINT)\']'),
(101, 33, 'Windows/System Administrator', 8, 'System Engineer', 10, 6, '[\'Change Management (CHMG)\', \'IT Infrastructure (Virtualization) (ITOP)\', \'Measurement (MEAS)\', \'Methods and Tools (METL)\', \'Release and Deployment (RELM)\', \'Systems Integration and Building (SINT)\']'),
(102, 33, 'Windows/System Administrator', 8, 'DevOps Engineer', 8, 6, '[\'Change Management (CHMG)\', \'IT Infrastructure (Virtualization) (ITOP)\', \'Programming/ Software Development (PROG)\', \'Release and Deployment (RELM)\', \'Systems Integration and Building (SINT)\', \'Testing (TEST)\']');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_roles`);

--
-- Indeks untuk tabel `roles_skills`
--
ALTER TABLE `roles_skills`
  ADD PRIMARY KEY (`id_roles_skill`);

--
-- Indeks untuk tabel `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id_skill`);

--
-- Indeks untuk tabel `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`id_upload`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id_roles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `roles_skills`
--
ALTER TABLE `roles_skills`
  MODIFY `id_roles_skill` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT untuk tabel `skills`
--
ALTER TABLE `skills`
  MODIFY `id_skill` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT untuk tabel `upload`
--
ALTER TABLE `upload`
  MODIFY `id_upload` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
