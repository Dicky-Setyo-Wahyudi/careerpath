-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jun 2022 pada 05.35
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
-- Struktur dari tabel `tes_upload`
--

CREATE TABLE `tes_upload` (
  `id_roles_skill` int(11) NOT NULL,
  `id_roles` int(11) DEFAULT NULL,
  `id_skill` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tes_upload`
--

INSERT INTO `tes_upload` (`id_roles_skill`, `id_roles`, `id_skill`) VALUES
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
-- Indeks untuk tabel `tes_upload`
--
ALTER TABLE `tes_upload`
  ADD PRIMARY KEY (`id_roles_skill`);

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
-- AUTO_INCREMENT untuk tabel `tes_upload`
--
ALTER TABLE `tes_upload`
  MODIFY `id_roles_skill` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
