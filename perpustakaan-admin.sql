-- phpMyAdmin SQL Dump-- version 3.2.0.1-- http://www.phpmyadmin.net---- Host: localhost-- Generation Time: Feb 21, 2011 at 07:11 AM-- Server version: 5.1.44-- PHP Version: 5.3.0SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";---- Database: `perpustakaan`---- ------------------------------------------------------------ Table structure for table `anggota`--DROP TABLE IF EXISTS `anggota`;CREATE TABLE IF NOT EXISTS `anggota` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `nim` varchar(14) NOT NULL,  `jurusan_id` int(11) NOT NULL,  `nama` varchar(40) NOT NULL,  `kota_lahir` varchar(30) DEFAULT NULL,  `tanggal_lahir` date DEFAULT NULL,  `alamat` varchar(60) DEFAULT NULL,  `email` varchar(30) DEFAULT NULL,  `telepon` varchar(15) DEFAULT NULL,  `tanggal_register` date DEFAULT NULL,  `akhir_register` date DEFAULT NULL,  PRIMARY KEY (`id`),  UNIQUE KEY `nim` (`nim`),  KEY `FK_anggota_jurusan` (`jurusan_id`)) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;---- Dumping data for table `anggota`--INSERT INTO `anggota` (`id`, `nim`, `jurusan_id`, `nama`, `kota_lahir`, `tanggal_lahir`, `alamat`, `email`, `telepon`, `tanggal_register`, `akhir_register`) VALUES(8, '43A87006020120', 6, 'Muhamad Nur', 'Bekasi', '1979-08-05', 'Puri Cendana Blok A5 No 7, RT 15 RW 05 Tambun Selatan', 'ahza07@gmail.com', '021-89896597', '2011-02-12', '2012-02-12'),(9, '43A87006020001', 7, 'Indah Aryanti', 'Bekasi', '1982-06-22', 'Jl.Duren jaya I bekasi', 'terus_terang22@yahoo.com', '021-70541111', '2011-02-12', '2012-02-12'),(10, '43A87006020124', 6, 'Ninik Ismiantini', 'Blora', '1982-10-04', 'Purii Cendana Blok A5 No 7 RT 15 RW 05 Sumber Jaya, Bekasi', 'bunda_ahza@gmail.com', '081382601645', '2011-02-12', '2012-02-12'),(11, '43A87006020126', 6, 'Fauzi', 'Jakarta', '1971-02-01', 'JL. Jababeka Cikarang Baru, Bekasi', 'mangpao@gmail.com', '021-98548574', '2011-02-12', '2012-02-12'),(12, '43A87006030062', 6, 'Syaiful', 'Jakarta', '1979-08-02', 'Kompas Indah, Bekasi', 'ipoel@gmail.com', '021-98796876', '2011-02-16', '2012-02-16'),(13, '43A98879867645', 6, 'Koko Eko Purwoko', 'Jakarta', '1979-04-05', 'Rawalumbu, Bekasi Selatan', 'asdsadsa@,gmail.com', '021-13435435', '2011-02-17', '2012-02-17'),(14, '43A87006090181', 9, 'Ahza Khoiru Fathan', 'Bekasi', '2008-07-06', 'Puri Cendana Blok A5 No 7, Tambun Selatan Bekasi', 'ahza_79@yahoo.com', '021-8979645', '2011-02-20', '2012-02-20');-- ------------------------------------------------------------ Table structure for table `buku`--DROP TABLE IF EXISTS `buku`;CREATE TABLE IF NOT EXISTS `buku` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `jenis_id` int(11) NOT NULL,  `kategori_id` int(11) NOT NULL,  `judul` varchar(60) NOT NULL,  `pengarang` varchar(40) NOT NULL,  `penerbit_id` int(11) NOT NULL,  `isbn` varchar(30) DEFAULT NULL,  `tahun` int(11) DEFAULT NULL,  `jumlah_tersedia` int(11) DEFAULT NULL,  `jumlah_terpinjam` int(11) DEFAULT NULL,  `jumlah_total` int(11) DEFAULT NULL,  PRIMARY KEY (`id`),  KEY `fk_kategori` (`jenis_id`),  KEY `fk_jenis` (`kategori_id`),  KEY `FK_penerbit_buku` (`penerbit_id`)) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;---- Dumping data for table `buku`--INSERT INTO `buku` (`id`, `jenis_id`, `kategori_id`, `judul`, `pengarang`, `penerbit_id`, `isbn`, `tahun`, `jumlah_tersedia`, `jumlah_terpinjam`, `jumlah_total`) VALUES(14, 7, 7, 'Mastering Java', 'Rachmad Hakim', 7, '978-979-27-4353-1', 2009, 11, 1, 12),(15, 7, 9, 'Metode Numerik', 'Rinaldi Munir', 6, '979-3338-09-1', 2006, 7, 3, 10),(16, 7, 8, 'Menguasai Oracle SQL dan PL/SQL', 'Imam Heryanto', 6, '979-3338-80-6', 2009, 11, 1, 12),(17, 7, 7, 'Pemrograman Visual Dengan C Sharp', 'Rinaldi Munir, MKom', 7, '12457-7854-7845', 2010, 10, 2, 12),(18, 7, 7, 'Web Programming dengan Visual Basic 2010', 'Edy. W, Ali Zaki & SmithDev Com ', 7, '9789792792508 ', 2011, 13, 2, 15),(19, 7, 7, 'KUPAS TUNTAS DREAMWEAVER CS5 DENGAN PEMROGRAMAN PHP & MYSQL', 'MADCOMS ', 8, '978-979-291-757-4 ', 2011, 7, 1, 8),(20, 7, 7, 'TUTORIAL 5 HARI BELAJAR PEMROGRAMAN VISUAL BASIC 2010', 'Wahana Komputer ', 8, '978-979-291-750-5 ', 2011, 4, 1, 5),(21, 7, 13, 'Seri Buku Pintar : Menjadi Administrator Jaringan Komputer  ', 'Wahana Komputer ', 7, '979-731-731-5 ', 2011, 5, 0, 5);-- ------------------------------------------------------------ Table structure for table `jenisbuku`--DROP TABLE IF EXISTS `jenisbuku`;CREATE TABLE IF NOT EXISTS `jenisbuku` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `nama_jenis` varchar(30) DEFAULT NULL,  PRIMARY KEY (`id`)) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;---- Dumping data for table `jenisbuku`--INSERT INTO `jenisbuku` (`id`, `nama_jenis`) VALUES(7, 'Buku'),(8, 'Majalah'),(9, 'Skripsi'),(10, 'Surat Kabar'),(11, 'CD/Installer');-- ------------------------------------------------------------ Table structure for table `jurusan`--DROP TABLE IF EXISTS `jurusan`;CREATE TABLE IF NOT EXISTS `jurusan` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `nama_jurusan` varchar(40) NOT NULL,  PRIMARY KEY (`id`)) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;---- Dumping data for table `jurusan`--INSERT INTO `jurusan` (`id`, `nama_jurusan`) VALUES(6, 'Teknik Informatika'),(7, 'Sistem Informasi'),(8, 'Manajemen Informatika'),(9, 'Teknik Komputer'),(10, 'Komputer Akuntansi');-- ------------------------------------------------------------ Table structure for table `kategoribuku`--DROP TABLE IF EXISTS `kategoribuku`;CREATE TABLE IF NOT EXISTS `kategoribuku` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `nama_kategori` varchar(30) NOT NULL,  PRIMARY KEY (`id`)) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;---- Dumping data for table `kategoribuku`--INSERT INTO `kategoribuku` (`id`, `nama_kategori`) VALUES(7, 'Pemrograman'),(8, 'Database'),(9, 'Analysis'),(10, 'Kalkulus'),(11, 'Desain'),(13, 'Jarinigan'),(14, 'Management');-- ------------------------------------------------------------ Stand-in structure for view `listanggota`--DROP VIEW IF EXISTS `listanggota`;CREATE TABLE IF NOT EXISTS `listanggota` (`Id Anggota` int(11),`NIM` varchar(14),`Nama` varchar(40),`Jurusan` varchar(40),`Tempat Lahir` varchar(30),`Tanggal Lahir` date,`Alamat` varchar(60),`Email` varchar(30),`Telepon` varchar(15),`Tanggal register` date,`Akhir Register` date);-- ------------------------------------------------------------ Stand-in structure for view `listbuku`--DROP VIEW IF EXISTS `listbuku`;CREATE TABLE IF NOT EXISTS `listbuku` (`ID Buku` int(11),`Jenis` varchar(30),`Kategori` varchar(30),`Judul` varchar(60),`Pengarang` varchar(40),`Penerbit` varchar(40),`ISBN` varchar(30),`Tahun` int(11),`Terpinjam` int(11),`Tersedia` int(11),`Jumlah` int(11));-- ------------------------------------------------------------ Stand-in structure for view `listdetailpinjam`--DROP VIEW IF EXISTS `listdetailpinjam`;CREATE TABLE IF NOT EXISTS `listdetailpinjam` (`No Pinjam` int(11),`No Detail` int(11),`ID Buku` int(11),`Judul` varchar(60),`Tanggal Kembali` varbinary(10),`Terlambat` int(11),`Denda` double);-- ------------------------------------------------------------ Stand-in structure for view `listpeminjaman`--DROP VIEW IF EXISTS `listpeminjaman`;CREATE TABLE IF NOT EXISTS `listpeminjaman` (`No Pinjam` int(11),`Tanggal` date,`NIM` varchar(14),`Nama` varchar(40),`No Detail` int(11),`Judul Buku` varchar(60),`Tanggal Kembali` date,`Status` varchar(12),`User` varchar(30));-- ------------------------------------------------------------ Stand-in structure for view `listpinjam`--DROP VIEW IF EXISTS `listpinjam`;CREATE TABLE IF NOT EXISTS `listpinjam` (`No Pinjam` int(11),`Tanggal` date,`ID Anggota` int(11),`NIM` varchar(14),`Nama` varchar(40),`User` varchar(30));-- ------------------------------------------------------------ Stand-in structure for view `listuser`--DROP VIEW IF EXISTS `listuser`;CREATE TABLE IF NOT EXISTS `listuser` (`No User` int(11),`User Id` varchar(10),`Password` varchar(60),`Nama` varchar(30),`Type User` varchar(30));-- ------------------------------------------------------------ Table structure for table `penerbit`--DROP TABLE IF EXISTS `penerbit`;CREATE TABLE IF NOT EXISTS `penerbit` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `nama_penerbit` varchar(40) NOT NULL,  `alamat` varchar(60) DEFAULT NULL,  `kota` varchar(30) DEFAULT NULL,  `email` varchar(30) DEFAULT NULL,  `telepon` varchar(15) DEFAULT NULL,  PRIMARY KEY (`id`)) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;---- Dumping data for table `penerbit`--INSERT INTO `penerbit` (`id`, `nama_penerbit`, `alamat`, `kota`, `email`, `telepon`) VALUES(6, 'Informatika', 'pasar Buku Palasari 82  40264', 'Bandung', 'admin@biobes.com', '021-9868757'),(7, 'Elexmedia Komputindo', 'JL. Palmerah Selatan 22 10270', 'Jakarta', 'admin@elexmedia.co.id', '021-9897874'),(8, 'Andi Offset', 'JL Gajah Mada 45 Yogyakarta', 'Yogyakarta', 'admin@andioffset.co.id', '025-34567874');-- ------------------------------------------------------------ Table structure for table `pinjam`--DROP TABLE IF EXISTS `pinjam`;CREATE TABLE IF NOT EXISTS `pinjam` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `tanggal` date NOT NULL,  `anggota_id` int(11) NOT NULL,  `user` int(11) NOT NULL,  PRIMARY KEY (`id`),  KEY `FK_user` (`user`),  KEY `FK_pinjam_anggota` (`anggota_id`)) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;---- Dumping data for table `pinjam`--INSERT INTO `pinjam` (`id`, `tanggal`, `anggota_id`, `user`) VALUES(33, '2011-02-12', 8, 1),(34, '2011-02-12', 9, 1),(35, '2011-02-15', 8, 1),(36, '2011-02-16', 12, 1),(37, '2011-02-16', 12, 1),(38, '2011-02-17', 13, 1),(39, '2011-02-19', 11, 9),(40, '2011-02-20', 14, 1);-- ------------------------------------------------------------ Table structure for table `pinjamdetail`--DROP TABLE IF EXISTS `pinjamdetail`;CREATE TABLE IF NOT EXISTS `pinjamdetail` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `pinjam_id` int(11) DEFAULT NULL,  `buku_id` int(11) NOT NULL,  `tanggal_kembali` date DEFAULT '1900-01-01',  `terlambat` int(11) DEFAULT '0',  `denda` double DEFAULT '0',  PRIMARY KEY (`id`),  KEY `FK_pinjamdetail` (`pinjam_id`),  KEY `FK_buku_pinjamdetail` (`buku_id`)) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=91 ;---- Dumping data for table `pinjamdetail`--INSERT INTO `pinjamdetail` (`id`, `pinjam_id`, `buku_id`, `tanggal_kembali`, `terlambat`, `denda`) VALUES(71, 33, 14, '2011-02-13', 0, 0),(72, 33, 16, '2011-02-20', 1, 1000),(73, 33, 17, '2011-02-12', 0, 0),(74, 34, 14, '2011-02-20', 1, 1000),(75, 34, 16, '1900-01-01', 0, 0),(76, 34, 17, '1900-01-01', 0, 0),(77, 35, 15, '1900-01-01', 0, 0),(78, 35, 16, '2011-02-15', 0, 0),(79, 36, 14, '2011-02-16', 0, 0),(80, 36, 16, '2011-02-16', 0, 0),(81, 37, 15, '1900-01-01', 0, 0),(82, 38, 15, '2011-02-17', 0, 0),(83, 38, 16, '2011-02-19', 0, 0),(84, 38, 17, '1900-01-01', 0, 0),(85, 39, 14, '1900-01-01', 0, 0),(86, 39, 18, '1900-01-01', 0, 0),(87, 39, 15, '1900-01-01', 0, 0),(88, 40, 19, '1900-01-01', 0, 0),(89, 40, 20, '1900-01-01', 0, 0),(90, 40, 18, '1900-01-01', 0, 0);-- ------------------------------------------------------------ Table structure for table `typeuser`--DROP TABLE IF EXISTS `typeuser`;CREATE TABLE IF NOT EXISTS `typeuser` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `nama` varchar(30) NOT NULL,  `privilege` varchar(80) DEFAULT NULL,  PRIMARY KEY (`id`)) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;---- Dumping data for table `typeuser`--INSERT INTO `typeuser` (`id`, `nama`, `privilege`) VALUES(4, 'Admin', 'POWERED BY MUHAMAD NUR*CA3C9340A513CE61D1F78E4FCD5F4877AC94F15F111111111111'),(7, 'User', 'POWERED BY MUHAMAD NUR*CA3C9340A513CE61D1F78E4FCD5F4877AC94F15F111111100111'),(8, 'Anggota', 'POWERED BY MUHAMAD NUR*CA3C9340A513CE61D1F78E4FCD5F4877AC94F15F100110000000');-- ------------------------------------------------------------ Table structure for table `users`--DROP TABLE IF EXISTS `users`;CREATE TABLE IF NOT EXISTS `users` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `type` int(11) NOT NULL,  `user_id` varchar(10) NOT NULL,  `password` varchar(60) NOT NULL,  `nama` varchar(30) DEFAULT NULL,  PRIMARY KEY (`id`),  UNIQUE KEY `user_id` (`user_id`),  KEY `fk_type` (`type`)) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;---- Dumping data for table `users`--INSERT INTO `users` (`id`, `type`, `user_id`, `password`, `nama`) VALUES(1, 4, 'Ahza', '*DDC5E14EE0754EE6FED554482BC82A943892E0F3', 'Muhamad Nur'),(9, 7, 'ninik', '*BFAE967F557A94730D5AC1753E341C501AA41C3D', 'Ninik Ismiantini'),(11, 8, 'alif', '*839486DE9A5B2076AC9424F195D74169F19A594C', 'Alifudin');-- ------------------------------------------------------------ Stand-in structure for view `viewpinjamdetail`--DROP VIEW IF EXISTS `viewpinjamdetail`;CREATE TABLE IF NOT EXISTS `viewpinjamdetail` (`id` int(11),`pinjam_id` int(11),`buku_id` int(11),`tanggal_kembali` varbinary(10),`terlambat` int(11),`denda` double,`status` varchar(12));-- ------------------------------------------------------------ Structure for view `listanggota`--DROP TABLE IF EXISTS `listanggota`;CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `listanggota` AS select `anggota`.`id` AS `Id Anggota`,`anggota`.`nim` AS `NIM`,`anggota`.`nama` AS `Nama`,`jurusan`.`nama_jurusan` AS `Jurusan`,`anggota`.`kota_lahir` AS `Tempat Lahir`,`anggota`.`tanggal_lahir` AS `Tanggal Lahir`,`anggota`.`alamat` AS `Alamat`,`anggota`.`email` AS `Email`,`anggota`.`telepon` AS `Telepon`,`anggota`.`tanggal_register` AS `Tanggal register`,`anggota`.`akhir_register` AS `Akhir Register` from (`anggota` join `jurusan` on((`anggota`.`jurusan_id` = `jurusan`.`id`)));-- ------------------------------------------------------------ Structure for view `listbuku`--DROP TABLE IF EXISTS `listbuku`;CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `listbuku` AS select `buku`.`id` AS `ID Buku`,`jenisbuku`.`nama_jenis` AS `Jenis`,`kategoribuku`.`nama_kategori` AS `Kategori`,`buku`.`judul` AS `Judul`,`buku`.`pengarang` AS `Pengarang`,`penerbit`.`nama_penerbit` AS `Penerbit`,`buku`.`isbn` AS `ISBN`,`buku`.`tahun` AS `Tahun`,`buku`.`jumlah_terpinjam` AS `Terpinjam`,`buku`.`jumlah_tersedia` AS `Tersedia`,`buku`.`jumlah_total` AS `Jumlah` from (((`buku` join `jenisbuku` on((`buku`.`jenis_id` = `jenisbuku`.`id`))) join `kategoribuku` on((`buku`.`kategori_id` = `kategoribuku`.`id`))) join `penerbit` on((`buku`.`penerbit_id` = `penerbit`.`id`)));-- ------------------------------------------------------------ Structure for view `listdetailpinjam`--DROP TABLE IF EXISTS `listdetailpinjam`;CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `listdetailpinjam` AS select `pinjamdetail`.`pinjam_id` AS `No Pinjam`,`pinjamdetail`.`id` AS `No Detail`,`pinjamdetail`.`buku_id` AS `ID Buku`,`buku`.`judul` AS `Judul`,if((`pinjamdetail`.`tanggal_kembali` = '0000-00-00'),'',`pinjamdetail`.`tanggal_kembali`) AS `Tanggal Kembali`,`pinjamdetail`.`terlambat` AS `Terlambat`,`pinjamdetail`.`denda` AS `Denda` from (`pinjamdetail` join `buku` on((`pinjamdetail`.`buku_id` = `buku`.`id`)));-- ------------------------------------------------------------ Structure for view `listpeminjaman`--DROP TABLE IF EXISTS `listpeminjaman`;CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `listpeminjaman` AS (select `pinjam`.`id` AS `No Pinjam`,`pinjam`.`tanggal` AS `Tanggal`,`anggota`.`nim` AS `NIM`,`anggota`.`nama` AS `Nama`,`pinjamdetail`.`id` AS `No Detail`,`buku`.`judul` AS `Judul Buku`,`pinjamdetail`.`tanggal_kembali` AS `Tanggal Kembali`,if((`pinjamdetail`.`tanggal_kembali` = '1900-01-01'),'Not Complete','Complete') AS `Status`,`users`.`nama` AS `User` from ((((`pinjamdetail` join `buku` on((`pinjamdetail`.`buku_id` = `buku`.`id`))) join `pinjam` on((`pinjamdetail`.`pinjam_id` = `pinjam`.`id`))) join `users` on((`pinjam`.`user` = `users`.`id`))) join `anggota` on((`pinjam`.`anggota_id` = `anggota`.`id`))));-- ------------------------------------------------------------ Structure for view `listpinjam`--DROP TABLE IF EXISTS `listpinjam`;CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `listpinjam` AS select `pinjam`.`id` AS `No Pinjam`,`pinjam`.`tanggal` AS `Tanggal`,`pinjam`.`anggota_id` AS `ID Anggota`,`anggota`.`nim` AS `NIM`,`anggota`.`nama` AS `Nama`,`users`.`nama` AS `User` from ((`pinjam` join `anggota` on((`pinjam`.`anggota_id` = `anggota`.`id`))) join `users` on((`pinjam`.`user` = `users`.`id`)));-- ------------------------------------------------------------ Structure for view `listuser`--DROP TABLE IF EXISTS `listuser`;CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `listuser` AS select `users`.`id` AS `No User`,`users`.`user_id` AS `User Id`,`users`.`password` AS `Password`,`users`.`nama` AS `Nama`,`typeuser`.`nama` AS `Type User` from (`users` join `typeuser` on((`users`.`type` = `typeuser`.`id`)));-- ------------------------------------------------------------ Structure for view `viewpinjamdetail`--DROP TABLE IF EXISTS `viewpinjamdetail`;CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewpinjamdetail` AS select `pinjamdetail`.`id` AS `id`,`pinjamdetail`.`pinjam_id` AS `pinjam_id`,`pinjamdetail`.`buku_id` AS `buku_id`,if((`pinjamdetail`.`tanggal_kembali` = '0000-00-00'),'',`pinjamdetail`.`tanggal_kembali`) AS `tanggal_kembali`,`pinjamdetail`.`terlambat` AS `terlambat`,`pinjamdetail`.`denda` AS `denda`,if((`pinjamdetail`.`tanggal_kembali` = '0000-00-00'),'Not Complete','Complete') AS `status` from `pinjamdetail`;---- Constraints for dumped tables------ Constraints for table `anggota`--ALTER TABLE `anggota`  ADD CONSTRAINT `FK_anggota_jurusan` FOREIGN KEY (`jurusan_id`) REFERENCES `jurusan` (`id`);---- Constraints for table `buku`--ALTER TABLE `buku`  ADD CONSTRAINT `FK_jenis_buku` FOREIGN KEY (`jenis_id`) REFERENCES `jenisbuku` (`id`),  ADD CONSTRAINT `FK_kategori_buku` FOREIGN KEY (`kategori_id`) REFERENCES `kategoribuku` (`id`),  ADD CONSTRAINT `FK_penerbit_buku` FOREIGN KEY (`penerbit_id`) REFERENCES `penerbit` (`id`);---- Constraints for table `pinjam`--ALTER TABLE `pinjam`  ADD CONSTRAINT `FK_pinjam_anggota` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`id`),  ADD CONSTRAINT `FK_user` FOREIGN KEY (`user`) REFERENCES `users` (`id`);---- Constraints for table `pinjamdetail`--ALTER TABLE `pinjamdetail`  ADD CONSTRAINT `FK_buku_pinjamdetail` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`),  ADD CONSTRAINT `FK_pinjamdetail` FOREIGN KEY (`pinjam_id`) REFERENCES `pinjam` (`id`);---- Constraints for table `users`--ALTER TABLE `users`  ADD CONSTRAINT `fk_type` FOREIGN KEY (`type`) REFERENCES `typeuser` (`id`);DELIMITER $$---- Procedures--DROP PROCEDURE IF EXISTS `ListAnggotaClaused`$$CREATE DEFINER=`root`@`localhost` PROCEDURE `ListAnggotaClaused`(    varNim varchar(14),     varNama varchar(40),     varJurusan varchar(40))BEGIN	select * from listanggota	where	NIM like concat(varNim,'%') and	Nama like concat(varNama,'%') and	Jurusan like concat(varJurusan,'%')	ORDER BY Jurusan,`Id Anggota`;    END$$DROP PROCEDURE IF EXISTS `listbukuclaused`$$CREATE DEFINER=`root`@`localhost` PROCEDURE `listbukuclaused`(varJenis Varchar(25),varKategori VARCHAR(25),varJudul VARCHAR(60),varPengarang VARCHAR(25),varPenerbit VARCHAR(25),varOpt int)BEGIN	SELECT * FROM listbuku 	WHERE 	Jenis LIKE concat(varJenis,'%')  AND		Kategori LIKE CONCAT(varKategori,'%') AND	Judul LIKE CONCAT(varJudul,'%') AND	Pengarang LIKE CONCAT(varPengarang,'%') AND	Penerbit LIKE CONCAT(varPenerbit,'%')  and	IF(varOpt = 1,Tersedia > 0,IF(varOpt=0,Terpinjam > 0, Tersedia > 0 OR Terpinjam > 0))	ORDER BY `Kategori`,`Id Buku`;END$$DROP PROCEDURE IF EXISTS `ListJenisClaused`$$CREATE DEFINER=`root`@`localhost` PROCEDURE `ListJenisClaused`(VarId int, VarNama varchar(40))BEGIN	if VarId = -1 then		select * from jenisbuku where nama_jenis like concat(VarNama,'%') order by id;	else		SELECT * FROM jenisbuku WHERE id = VarId and nama_jenis LIKE CONCAT(VarNama,'%') ORDER BY id;	end if;END$$DROP PROCEDURE IF EXISTS `ListJurusanClaused`$$CREATE DEFINER=`root`@`localhost` PROCEDURE `ListJurusanClaused`(VarId int, VarNama varchar(40))BEGIN	if VarID = -1 then		select * from jurusan where nama_jurusan like concat(VarNama,'%');	else		SELECT * FROM jurusan WHERE id = VarId and nama_jurusan LIKE CONCAT(VarNama,'%');	end if;    END$$DROP PROCEDURE IF EXISTS `ListKategoriClaused`$$CREATE DEFINER=`root`@`localhost` PROCEDURE `ListKategoriClaused`(VarId int, VarNama varchar(40))BEGIN	if VarId=-1 then		SELECT * FROM kategoribuku WHERE nama_kategori LIKE CONCAT(VarNama,'%') ORDER BY id;	else		SELECT * FROM kategoribuku WHERE id = VarId AND nama_kategori LIKE CONCAT(VarNama,'%') ORDER BY id;	end if;	    END$$DROP PROCEDURE IF EXISTS `ListPeminjamanClaused`$$CREATE DEFINER=`root`@`localhost` PROCEDURE `ListPeminjamanClaused`(	varNoPinjam int,	varTanggalPinjamAwal date,	varTanggalPinjamAkhir DATE,	varNim varchar(14),	varNama varchar(40),	varOpt int    )BEGIN	if varNoPinjam= -1 then		SELECT * FROM listpeminjaman		WHERE 		Tanggal BETWEEN varTanggalPinjamAwal AND varTanggalPinjamAkhir AND		NIM LIKE CONCAT(varNim,'%') AND		Nama LIKE CONCAT(varNama,'%') AND		IF(varOpt = 0,`Status` ='Not Complete', 		IF(varOpt=1, `Status` ='Complete', `Status` ='Complete' 		OR `Status` ='Not Complete')) ORDER BY Tanggal,`No Pinjam`,`No Detail`;	else		SELECT * FROM listpeminjaman		WHERE		`No Pinjam`= varNoPinjam AND		Tanggal BETWEEN varTanggalPinjamAwal AND varTanggalPinjamAkhir AND		NIM LIKE CONCAT(varNim,'%') AND		Nama LIKE CONCAT(varNama,'%') AND		IF(varOpt = 0,`Status` ='Not Complete', 		IF(varOpt=1, `Status` ='Complete', `Status` ='Complete' 		OR `Status` ='Not Complete')) ORDER BY Tanggal,`No Pinjam`,`No Detail`;	end if;	    END$$DROP PROCEDURE IF EXISTS `ListPenerbitClaused`$$CREATE DEFINER=`root`@`localhost` PROCEDURE `ListPenerbitClaused`(    VarId int    ,VarNama varchar(40)    ,VarKota varchar(30)    ,varEmail varchar(30)    )BEGIN	if VarId = -1 then		SELEct * from penerbit where nama_penerbit like concat(VarNama,'%') and		kota like CONCAT(VarKota,'%') AND email LIKE CONCAT(VarEmail,'%') order by id;	else		SELECT * FROM penerbit WHERE id=VarId and nama_penerbit LIKE CONCAT(VarNama,'%') AND		kota LIKE CONCAT(VarKota,'%') AND email LIKE CONCAT(VarEmail,'%') ORDER BY id;	end if;    END$$DROP PROCEDURE IF EXISTS `ListUserClaused`$$CREATE DEFINER=`root`@`localhost` PROCEDURE `ListUserClaused`(    VarUserId varchar(10),    VarNama varchar(40),    VarPrivilege varchar(30)    )BEGIN	SELECT * FROM listuser	WHERE	`User Id` like concat(VarUserId,'%') AND	Nama Like concat(VarNama,'%') and	`Type User` Like concat(VarPrivilege,'%');    END$$DROP PROCEDURE IF EXISTS `ListUserTypeClaused`$$CREATE DEFINER=`root`@`localhost` PROCEDURE `ListUserTypeClaused`(VarId int, VarNama varchar(20))BEGIN	if VarId = -1 then		select * from typeuser where nama like concat(VarNama,'%');	else		SELECT * FROM typeuser WHERE id=VarId and nama LIKE CONCAT(VarNama,'%');	end if;    END$$DELIMITER ;