
/*---------------------------------------------------------------
  SQL DB BACKUP 20.02.2022 11:57 
  HOST: localhost
  DATABASE: ppdb
  TABLES: *
  ---------------------------------------------------------------*/

/*---------------------------------------------------------------
  TABLE: `bayar`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `bayar`;
CREATE TABLE `bayar` (
  `id_bayar` varchar(20) NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_daftar` int(10) NOT NULL,
  `jumlah_bayar` int(10) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `keterangan` int(10) DEFAULT NULL,
  `bukti` varchar(50) DEFAULT NULL,
  `verifikasi` int(1) NOT NULL DEFAULT '0',
  `hapus` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_bayar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `bayar` VALUES   ('202202130001','0','300','800000','2022-02-13',NULL,'bukti_transaksi/bukti_202202130001.jpg','1',NULL);
INSERT INTO `bayar` VALUES ('202202130002','0','301','400000','2022-02-13',NULL,'bukti_transaksi/bukti_202202130002.jpg','1',NULL);
INSERT INTO `bayar` VALUES ('202202130003','0','301','400000','2022-02-13',NULL,'bukti_transaksi/bukti_202202130003.jpg','0',NULL);

/*---------------------------------------------------------------
  TABLE: `biaya`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `biaya`;
CREATE TABLE `biaya` (
  `id_biaya` varchar(50) NOT NULL,
  `nama_biaya` varchar(200) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`id_biaya`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `daftar`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `daftar`;
CREATE TABLE `daftar` (
  `id_daftar` int(11) NOT NULL AUTO_INCREMENT,
  `no_daftar` varchar(20) DEFAULT NULL,
  `jenis` int(1) DEFAULT NULL,
  `nis` varchar(30) DEFAULT NULL,
  `nik` varchar(30) DEFAULT NULL,
  `no_kk` varchar(30) DEFAULT NULL,
  `nisn` varchar(30) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `warga_siswa` varchar(20) DEFAULT NULL,
  `foto` varchar(128) NOT NULL,
  `jenkel` varchar(1) DEFAULT NULL,
  `tempat_lahir` varchar(128) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `asal_sekolah` varchar(128) DEFAULT NULL,
  `npsn_asal` varchar(20) DEFAULT NULL,
  `kelas` varchar(11) DEFAULT NULL,
  `jurusan` varchar(30) DEFAULT '',
  `jenjang` varchar(11) DEFAULT NULL,
  `agama` varchar(50) DEFAULT NULL,
  `status_tinggal` varchar(100) DEFAULT NULL,
  `alamat` text,
  `rt` varchar(5) DEFAULT NULL,
  `rw` varchar(5) DEFAULT NULL,
  `desa` varchar(128) DEFAULT NULL,
  `kecamatan` varchar(128) DEFAULT NULL,
  `kota` varchar(128) DEFAULT NULL,
  `provinsi` varchar(128) DEFAULT NULL,
  `kode_pos` varchar(6) DEFAULT NULL,
  `koordinat` varchar(100) DEFAULT NULL,
  `transportasi` varchar(128) DEFAULT NULL,
  `no_hp` varchar(16) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `anak_ke` int(2) DEFAULT NULL,
  `saudara` int(11) DEFAULT NULL,
  `biaya_sekolah` varchar(100) DEFAULT NULL,
  `paud` text,
  `tk` text,
  `hepatitis` varchar(10) DEFAULT NULL,
  `polio` varchar(10) DEFAULT NULL,
  `bcg` varchar(10) DEFAULT NULL,
  `campak` varchar(10) DEFAULT NULL,
  `dpt` varchar(10) DEFAULT NULL,
  `covid` varchar(10) DEFAULT NULL,
  `citacita` text NOT NULL,
  `hobi` text NOT NULL,
  `status_keluarga` varchar(50) DEFAULT NULL,
  `tinggal` varchar(128) DEFAULT NULL,
  `jarak` varchar(128) DEFAULT NULL,
  `waktu` varchar(128) DEFAULT NULL,
  `nik_ayah` varchar(16) DEFAULT NULL,
  `nama_ayah` varchar(128) DEFAULT NULL,
  `tempat_lahir_ayah` varchar(100) DEFAULT NULL,
  `tahun_ayah` date DEFAULT NULL,
  `status_ayah` varchar(128) DEFAULT NULL,
  `pendidikan_ayah` varchar(128) DEFAULT NULL,
  `pekerjaan_ayah` varchar(128) DEFAULT NULL,
  `penghasilan_ayah` varchar(128) DEFAULT NULL,
  `no_hp_ayah` varchar(16) DEFAULT NULL,
  `nik_ibu` varchar(16) DEFAULT NULL,
  `nama_ibu` varchar(128) DEFAULT NULL,
  `tempat_lahir_ibu` varchar(100) DEFAULT NULL,
  `tahun_ibu` date DEFAULT NULL,
  `status_ibu` varchar(128) DEFAULT NULL,
  `pendidikan_ibu` varchar(128) DEFAULT NULL,
  `pekerjaan_ibu` varchar(128) DEFAULT NULL,
  `penghasilan_ibu` varchar(128) DEFAULT NULL,
  `no_hp_ibu` varchar(16) DEFAULT NULL,
  `nik_wali` varchar(16) DEFAULT NULL,
  `nama_wali` varchar(128) DEFAULT NULL,
  `tempat_lahir_wali` varchar(100) DEFAULT NULL,
  `tahun_wali` date DEFAULT NULL,
  `pendidikan_wali` varchar(50) DEFAULT NULL,
  `pekerjaan_wali` varchar(50) DEFAULT NULL,
  `penghasilan_wali` varchar(50) DEFAULT NULL,
  `no_hp_wali` varchar(16) DEFAULT NULL,
  `no_ijazah` varchar(128) DEFAULT NULL,
  `no_shun` varchar(128) DEFAULT NULL,
  `no_ujian` varchar(128) DEFAULT NULL,
  `no_kip` varchar(30) DEFAULT NULL,
  `kip` varchar(256) DEFAULT NULL,
  `kk` text,
  `kepala_keluarga` varchar(100) DEFAULT NULL,
  `ijazah` varchar(256) DEFAULT NULL,
  `akta` varchar(256) DEFAULT NULL,
  `file_shun` varchar(256) DEFAULT NULL,
  `tgl_keluar` date DEFAULT NULL,
  `alasan_keluar` varchar(100) DEFAULT NULL,
  `surat_keluar` varchar(255) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `aktif` int(1) DEFAULT '0',
  `status` int(1) DEFAULT '0',
  `sekolah_tujuan` varchar(10) DEFAULT NULL,
  `npsn_sekolah_tujuan` varchar(10) DEFAULT NULL,
  `tgl_daftar` date DEFAULT NULL,
  `tgl_konfirmasi` date DEFAULT NULL,
  `konfirmasi` int(1) DEFAULT NULL,
  `bayar` varchar(100) DEFAULT NULL,
  `online` int(1) DEFAULT '0',
  `password` text,
  `bin1` varchar(10) DEFAULT NULL,
  `mat1` varchar(10) DEFAULT NULL,
  `ipa1` varchar(10) DEFAULT NULL,
  `big1` varchar(10) DEFAULT NULL,
  `bin2` varchar(10) DEFAULT NULL,
  `mat2` varchar(10) DEFAULT NULL,
  `ipa2` varchar(10) DEFAULT NULL,
  `big2` varchar(10) DEFAULT NULL,
  `bin3` varchar(10) DEFAULT NULL,
  `mat3` varchar(10) DEFAULT NULL,
  `ipa3` varchar(10) DEFAULT NULL,
  `big3` varchar(10) DEFAULT NULL,
  `bin4` varchar(10) DEFAULT NULL,
  `mat4` varchar(10) DEFAULT NULL,
  `ipa4` varchar(10) DEFAULT NULL,
  `big4` varchar(10) DEFAULT NULL,
  `bin5` varchar(10) DEFAULT NULL,
  `mat5` varchar(10) DEFAULT NULL,
  `ipa5` varchar(10) DEFAULT NULL,
  `big5` varchar(10) DEFAULT NULL,
  `jumlah` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_daftar`)
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=latin1;
INSERT INTO `daftar` VALUES   ('300','PPDB2022001','0',NULL,'123456879123456','123456789123456','123456789','CONTOH 1','WNI','assets/upload/foto_siswa/siswa330.jpg','L','WONOGIRI','2010-01-01','SDN JUMOK','12345678',NULL,'BOARDING SCHOOL',NULL,'Islam','Tinggal dengan Orangtua/Wali','JL. KESENENG','02','03','JENDI','CILONGOK','PURWOREJO','JAWA TENGAH','123456','-7.98989797, 101.98877897','Sepeda Motor','081228603030','','1','3','Orang Tua','Ya',NULL,'Ya','Ya','Tidak','Tidak','Tidak','Ya','TNI/Polri','OIahraga',NULL,NULL,'Antara 5-10 km','1-10 menit','123456789','AYAH','WONOGIRI','1988-02-13','Masih Hidup','D4/S1','Politikus','Lebih dari 5.000.000','081228603030','123456789','IBU','WONOGIRI','1990-10-18','Masih Hidup','S2','Petani/Peternak','1.000.001 - 2.000.000','081228603030','','',NULL,'0000-00-00','','','','',NULL,NULL,NULL,'','assets/upload/kip/kip638.jpg','assets/upload/kk/kk237.jpg','YOYOK GUNAWAN','assets/upload/ijazah/ijazah675.jpg','assets/upload/akta/akta344.jpg',NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,'2022-02-13','1',NULL,'1','123456',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `daftar` VALUES ('301','PPDB2022002','0',NULL,'3312126002970001','123456789123546','123456','CONTOH 2','WNI','assets/upload/foto_siswa/siswa157.jpg','L','WONOGIRI','2010-02-14','SDN JUMOK','12345678',NULL,'BOARDING SCHOOL',NULL,'Islam','Tinggal dengan Orangtua/Wali','JL. KESENENG','02','03','JENDI','CILONGOK','PURWOREJO','JAWA TENGAH','54119','-7.98989797, 101.98877897','Sepeda Motor','089999999999','','1','10','Orang Tua','Ya',NULL,'Ya','Tidak','Ya','Ya','Ya','Tidak','TNI/Polri','OIahraga',NULL,NULL,'Kurang dari 5 km','10-19 menit','123456789123456','AYAH','WONOGIRI','1988-08-17','Masih Hidup','SMA/Sederajat','Petani/Peternak','1.000.001 - 2.000.000','081228603030','123456789123456','IBU','WONOGIRI','1989-02-14','Masih Hidup','SMA/Sederajat','Seniman/Pelukis/Artis/Sejenis','500.000 - 1.000.000','081228603030','','',NULL,'0000-00-00','','','','',NULL,NULL,NULL,'','assets/upload/kip/kip626.jpg','assets/upload/kk/kk330.jpg','SANTOSO','assets/upload/ijazah/ijazah782.jpg','assets/upload/akta/akta919.jpg',NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,'2022-02-13','1',NULL,'1','123456',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `daftar` VALUES ('302','PPDB2022003','1',NULL,'3216512354632652','32165123553123165','234567891','MAULANA AHMAD HABIBULLAH','','assets/upload/foto_siswa/siswa390.jpg','L','Surabaya','2022-02-20','SMP NEGERI 26 SURABAYA','20321632',NULL,'BOARDING SCHOOL',NULL,'Islam','Tinggal dengan Orangtua/Wali','JL MNAUKANA KJAHSJBXASKBJX','01','02','AJSBCAMS ','AJBDCJHAS','AJBSCJHAB','AKDJBCAK','012156','','Sepeda','081388884043','MAULANA.AHMADHABIBULLAH.22@GMAIL.COM','1','0','Orang Tua','Ya',NULL,'Ya','Ya','Ya','Ya','Ya','Ya','Dokter','OIahraga',NULL,NULL,'Kurang dari 5 km','1-10 menit','32165123165312','ABCASBCKA','JAHSBCJHBASC','2022-02-20','Masih Hidup','','','','','651321321','AKSNCKJABSCKA','','2022-02-20','Masih Hidup','','','','','','',NULL,'0000-00-00','','','','',NULL,NULL,NULL,'','assets/upload/kip/kip583.png','assets/upload/kk/kk639.png','ASAASASA','assets/upload/ijazah/ijazah469.jpg','assets/upload/akta/akta535.png',NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,'2022-02-20','2022-02-20','1',NULL,'1','123456',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*---------------------------------------------------------------
  TABLE: `histori`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `histori`;
CREATE TABLE `histori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_permohonan` varchar(30) NOT NULL,
  `nik` int(30) NOT NULL,
  `status` int(1) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `jenis`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jenis`;
CREATE TABLE `jenis` (
  `id_jenis` varchar(50) NOT NULL,
  `nama_jenis` varchar(50) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id_jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `jenis` VALUES   ('PD','Pindahan','0');
INSERT INTO `jenis` VALUES ('SB','Siswa Baru','1');

/*---------------------------------------------------------------
  TABLE: `jenjang`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jenjang`;
CREATE TABLE `jenjang` (
  `id_jenjang` varchar(5) NOT NULL,
  `nama_jenjang` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `wali` int(11) NOT NULL,
  PRIMARY KEY (`id_jenjang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `jurusan`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jurusan`;
CREATE TABLE `jurusan` (
  `id_jurusan` varchar(50) NOT NULL,
  `nama_jurusan` varchar(100) DEFAULT NULL,
  `kuota` int(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_jurusan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `jurusan` VALUES   ('BOARDING SCHOOL','BOARDING SCHOOL','20','1');
INSERT INTO `jurusan` VALUES ('PROGRAM KHUSUS','PROGRAM KHUSUS','96','1');

/*---------------------------------------------------------------
  TABLE: `kelas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas` (
  `id_kelas` varchar(50) NOT NULL,
  `nama_kelas` varchar(100) DEFAULT NULL,
  `kuota` int(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `kelas` VALUES   ('10','Kelas X','108','1');
INSERT INTO `kelas` VALUES ('11','Kelas XI','108','1');
INSERT INTO `kelas` VALUES ('12','Kelas XII','108','1');

/*---------------------------------------------------------------
  TABLE: `kontak`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `kontak`;
CREATE TABLE `kontak` (
  `id_kontak` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kontak` varchar(50) DEFAULT NULL,
  `no_kontak` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_kontak`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `pengumuman`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pengumuman`;
CREATE TABLE `pengumuman` (
  `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `pengumuman` text,
  `tgl` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jenis` int(1) DEFAULT '0',
  PRIMARY KEY (`id_pengumuman`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
INSERT INTO `pengumuman` VALUES   ('2','5','INFORMASI PPDB','<h3><b>JADWAL PPDB :</b></h3><h5><b>KELAS PROGRAM KHUSUS DAN PROGRAM BOARDING SCHOOL</b></h5><p></p><table class=\"MsoNormalTable\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" style=\"margin-left: 84.8pt; border: none;\">\r\n <tbody><tr style=\"mso-yfti-irow:0;mso-yfti-firstrow:yes;height:39.3pt\">\r\n  \r\n  \r\n  <td width=\"216\" valign=\"top\" style=\"width:161.75pt;border:solid black 1.0pt;\r\n  border-left:none;mso-border-left-alt:solid black .5pt;mso-border-alt:solid black .5pt;\r\n  background: AND C5E0B3;mso-background-themecolor:accent6;mso-background-themetint:\r\n  102;padding:0in 0in 0in 0in;height:39.3pt\">\r\n  <p class=\"TableParagraph\" style=\"margin-top:5.95pt;margin-right:0in;margin-bottom:\r\n  0in;margin-left:52.3pt;margin-bottom:.0001pt\"><b><span style=\"font-size: 12pt; font-family: \" segoe=\"\" ui=\"\" semilight\",=\"\" sans-serif;\"=\"\">KEGIATAN</span></b><b><span style=\"font-size:12.0pt;\r\n  font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></b></p>\r\n  </td>\r\n  \r\n  <td width=\"154\" valign=\"top\" style=\"width:115.15pt;border:solid black 1.0pt;\r\n  border-left:none;mso-border-left-alt:solid black .5pt;mso-border-alt:solid black .5pt;\r\n  background: AND C5E0B3;mso-background-themecolor:accent6;mso-background-themetint:\r\n  102;padding:0in 0in 0in 0in;height:39.3pt\">\r\n  <p class=\"TableParagraph\" align=\"center\" style=\"margin-top:5.95pt;margin-right:\r\n  43.35pt;margin-bottom:0in;margin-left:43.75pt;margin-bottom:.0001pt;\r\n  text-align:center\"><b><span style=\"font-size: 12pt; font-family: \" segoe=\"\" ui=\"\" semilight\",=\"\" sans-serif;\"=\"\">WAKTU</span></b><b><span style=\"font-size:12.0pt;\r\n  font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></b></p>\r\n  </td>\r\n  \r\n  \r\n  \r\n </tr>\r\n <tr style=\"mso-yfti-irow:1;height:20.95pt\">\r\n  \r\n  \r\n  <td width=\"216\" valign=\"top\" style=\"width: 161.75pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.95pt;\">\r\n  <p class=\"TableParagraph\" style=\"margin-top:3.1pt\"><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif;=\"\" color:=\"\" and=\"\" 252525\"=\"\">Persiapan</span><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  <td width=\"154\" valign=\"top\" style=\"width: 115.15pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.95pt;\">\r\n  <p class=\"TableParagraph\" style=\"margin-top:3.1pt\"><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif;=\"\" color:=\"\" and=\"\" 252525\"=\"\">Januari 2022</span><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  \r\n  \r\n </tr>\r\n <tr style=\"mso-yfti-irow:2;height:20.85pt\">\r\n  \r\n  \r\n  <td width=\"216\" valign=\"top\" style=\"width: 161.75pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.85pt;\">\r\n  <p class=\"TableParagraph\"><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif;=\"\" color:=\"\" and=\"\" 252525\"=\"\">Sosialisasi dan Publikasi</span><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  <td width=\"154\" valign=\"top\" style=\"width: 115.15pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.85pt;\">\r\n  <p class=\"TableParagraph\"><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif;=\"\" color:=\"\" and=\"\" 252525\"=\"\">14-26 Februari 2022</span><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  \r\n  \r\n </tr>\r\n <tr style=\"mso-yfti-irow:3;height:20.95pt\">\r\n  \r\n  \r\n  <td width=\"216\" valign=\"top\" style=\"width: 161.75pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.95pt;\">\r\n  <p class=\"TableParagraph\"><b><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif;=\"\" color:=\"\" and=\"\" 252525\"=\"\">Program Khusus (PK) dan Boarding School<o:p></o:p></span></b></p>\r\n  </td>\r\n  \r\n  <td width=\"154\" valign=\"top\" style=\"width: 115.15pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.95pt;\">\r\n  <p class=\"TableParagraph\"><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif;=\"\" color:=\"\" and=\"\" 252525\"=\"\">Â </span></p>\r\n  </td>\r\n  \r\n  \r\n  \r\n </tr>\r\n <tr style=\"mso-yfti-irow:4;height:20.95pt\">\r\n  \r\n  \r\n  <td width=\"216\" valign=\"top\" style=\"width: 161.75pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.95pt;\">\r\n  <p class=\"TableParagraph\" style=\"margin-left:23.35pt;text-indent:-.25in;\r\n  mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"mso-bidi-font-family:\" book=\"\" antiqua\";color:=\"\" and=\"\" 252525\"=\"\">a.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">Â Â Â Â Â Â \r\n  </span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\r\n  \" segoe=\"\" ui=\"\" semilight\",sans-serif;color:=\"\" and=\"\" 252525\"=\"\">Proses Pendaftaran (daring dan\r\n  luring)</span><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  <td width=\"154\" valign=\"top\" style=\"width: 115.15pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.95pt;\">\r\n  <p class=\"TableParagraph\"><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif;=\"\" color:=\"\" and=\"\" 252525\"=\"\">01-12 Maret 2022</span><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  \r\n  \r\n </tr>\r\n <tr style=\"mso-yfti-irow:5;height:20.85pt\">\r\n  \r\n  \r\n  <td width=\"216\" valign=\"top\" style=\"width: 161.75pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.85pt;\">\r\n  <p class=\"TableParagraph\" style=\"margin-left:23.35pt;text-indent:-.25in;\r\n  mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"mso-bidi-font-family:\" book=\"\" antiqua\";color:=\"\" and=\"\" 252525\"=\"\">b.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">Â Â Â Â Â \r\n  </span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\r\n  \" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\">Pengiriman Berkas <o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  <td width=\"154\" valign=\"top\" style=\"width: 115.15pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.85pt;\">\r\n  <p class=\"TableParagraph\"><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif;=\"\" color:=\"\" and=\"\" 252525\"=\"\">01 - 12 Maret 2022</span><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  \r\n  \r\n </tr>\r\n <tr style=\"mso-yfti-irow:6;height:20.85pt\">\r\n  \r\n  \r\n  <td width=\"216\" valign=\"top\" style=\"width: 161.75pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.85pt;\">\r\n  <p class=\"TableParagraph\" style=\"margin-left:23.35pt;text-indent:-.25in;\r\n  mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"mso-bidi-font-family:\" book=\"\" antiqua\";color:=\"\" and=\"\" 252525\"=\"\">c.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">Â Â Â Â Â Â \r\n  </span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\r\n  \" segoe=\"\" ui=\"\" semilight\",sans-serif;color:=\"\" and=\"\" 252525\"=\"\">Verifikasi Berkas<o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  <td width=\"154\" valign=\"top\" style=\"width: 115.15pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.85pt;\">\r\n  <p class=\"TableParagraph\"><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif;=\"\" color:=\"\" and=\"\" 252525\"=\"\">01 - 12 Maret 2022<o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  \r\n  \r\n </tr>\r\n <tr style=\"mso-yfti-irow:7;height:20.95pt\">\r\n  \r\n  \r\n  <td width=\"216\" valign=\"top\" style=\"width: 161.75pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.95pt;\">\r\n  <p class=\"TableParagraph\" style=\"margin-left:23.35pt;text-indent:-.25in;\r\n  mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"mso-bidi-font-family:\" book=\"\" antiqua\";color:=\"\" and=\"\" 252525\"=\"\">d.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">Â Â Â Â Â \r\n  </span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\r\n  \" segoe=\"\" ui=\"\" semilight\",sans-serif;color:=\"\" and=\"\" 252525\"=\"\">Pelaksanaan Tes</span><span style=\"font-size:12.0pt;font-family:\r\n  \" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  <td width=\"154\" valign=\"top\" style=\"width: 115.15pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.95pt;\">\r\n  <p class=\"TableParagraph\"><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif;=\"\" color:=\"\" and=\"\" 252525\"=\"\">14 - 19 Maret 2022</span><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  \r\n  \r\n </tr>\r\n <tr style=\"mso-yfti-irow:8;height:20.85pt\">\r\n  \r\n  \r\n  <td width=\"216\" valign=\"top\" style=\"width: 161.75pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.85pt;\">\r\n  <p class=\"TableParagraph\" style=\"margin-left:23.35pt;text-indent:-.25in;\r\n  mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"mso-bidi-font-family:\" book=\"\" antiqua\";color:=\"\" and=\"\" 252525\"=\"\">e.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">Â Â Â Â Â Â \r\n  </span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\r\n  \" segoe=\"\" ui=\"\" semilight\",sans-serif;color:=\"\" and=\"\" 252525\"=\"\">Pengolahan hasil tes</span><span style=\"font-size:12.0pt;font-family:\r\n  \" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  <td width=\"154\" valign=\"top\" style=\"width: 115.15pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.85pt;\">\r\n  <p class=\"TableParagraph\" style=\"margin-top:3.0pt\"><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif;=\"\" color:=\"\" and=\"\" 252525\"=\"\">21 â€“ 22 Maret 2022</span><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  \r\n  \r\n </tr>\r\n <tr style=\"mso-yfti-irow:9;height:20.85pt\">\r\n  \r\n  \r\n  <td width=\"216\" valign=\"top\" style=\"width: 161.75pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.85pt;\">\r\n  <p class=\"TableParagraph\" style=\"margin-left:23.35pt;text-indent:-.25in;\r\n  mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"mso-bidi-font-family:\" book=\"\" antiqua\";color:=\"\" and=\"\" 252525\"=\"\">f.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">Â Â Â Â Â Â Â \r\n  </span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\r\n  \" segoe=\"\" ui=\"\" semilight\",sans-serif;color:=\"\" and=\"\" 252525\"=\"\">Pengumuman Kelulusan</span><span style=\"font-size:12.0pt;font-family:\r\n  \" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  <td width=\"154\" valign=\"top\" style=\"width: 115.15pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.85pt;\">\r\n  <p class=\"TableParagraph\"><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif;=\"\" color:=\"\" and=\"\" 252525\"=\"\">23 Maret Â 2022</span><span style=\"font-size:12.0pt;font-family:\r\n  \" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  \r\n  \r\n </tr>\r\n <tr style=\"mso-yfti-irow:10;height:20.85pt\">\r\n  \r\n  \r\n  <td width=\"216\" valign=\"top\" style=\"width: 161.75pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.85pt;\">\r\n  <p class=\"TableParagraph\" style=\"margin-left:23.35pt;text-indent:-.25in;\r\n  mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"mso-bidi-font-family:\" book=\"\" antiqua\";color:=\"\" and=\"\" 252525\"=\"\">g.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">Â Â Â Â Â \r\n  </span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\r\n  \" segoe=\"\" ui=\"\" semilight\",sans-serif;color:=\"\" and=\"\" 252525\"=\"\">Daftar Ulang<o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  <td width=\"154\" valign=\"top\" style=\"width: 115.15pt; border-left: none; border-bottom: 1pt solid black; border-right: 1pt solid black; padding: 0in; height: 20.85pt;\">\r\n  <p class=\"TableParagraph\"><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif;=\"\" color:=\"\" and=\"\" 252525\"=\"\">24 Maret 2022 â€“ <o:p></o:p></span></p>\r\n  <p class=\"TableParagraph\"><span style=\"font-size:12.0pt;font-family:\" segoe=\"\" ui=\"\" semilight\",sans-serif;=\"\" color:=\"\" and=\"\" 252525\"=\"\">02 Â April 2022</span><span style=\"font-size:12.0pt;font-family:\r\n  \" segoe=\"\" ui=\"\" semilight\",sans-serif\"=\"\"><o:p></o:p></span></p>\r\n  </td>\r\n  \r\n  \r\n  \r\n </tr>\r\n \r\n \r\n \r\n</tbody></table><p><b><br></b></p><h5><b>KELAS REGULER</b></h5><ul><li><b>PENDAFTARAN</b>Â Â Â Â Â  Â  Â  Â  : MULAI BULAN MEI 2022</li></ul><p><b><br></b></p>','2022-02-13 21:30:15','2');
INSERT INTO `pengumuman` VALUES ('3','5','Info PPDB Online 2022','<p><b>Gelombang Pertama</b>&nbsp;Tanggal 1 Desember 2021 Sampai 30 Mei 2022&nbsp;<b>Gelombang Kedua </b>Tanggal 1 Juni Sampai Tanggal 30 Juni 2022</p><p>Note: Pendaftaran Gelombang Pertama Gratis Biaya Pendaftaran dan Biaya Daftar Ulang</p>','2022-01-10 01:57:16','1');

/*---------------------------------------------------------------
  TABLE: `sekolah`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `sekolah`;
CREATE TABLE `sekolah` (
  `npsn` varchar(16) NOT NULL,
  `nama_sekolah` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`npsn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `sekolah` VALUES   ('20532244','SMA NEGERI 11 SURABAYA','Jl. PERUMNAS TANDES I SURABAYA','1');

/*---------------------------------------------------------------
  TABLE: `setting`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id_setting` int(1) NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `jenjang` int(11) NOT NULL,
  `nsm` varchar(30) NOT NULL,
  `npsn` varchar(30) DEFAULT NULL,
  `status` text NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kota` varchar(30) DEFAULT NULL,
  `provinsi` varchar(30) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `favicon` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `no_telp` varchar(50) DEFAULT NULL,
  `klikchat` text,
  `livechat` text,
  `nolivechat` varchar(50) DEFAULT NULL,
  `infobayar` text,
  `syarat` text,
  `kab` text NOT NULL,
  `kec` text NOT NULL,
  `web` text NOT NULL,
  `kepala` text NOT NULL,
  `nip` text NOT NULL,
  `ppdb` text,
  `kop` varchar(50) NOT NULL,
  `logo_ppdb` varchar(100) NOT NULL,
  `tgl_pengumuman` date NOT NULL,
  `tgl_tutup` date NOT NULL,
  PRIMARY KEY (`id_setting`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `setting` VALUES   ('1','SMA NEGERI 11 SURABAYA','1','301056015084','20532244','Negeri','Jl. PERUMNAS TANDES I','Wonogiri','Jawa Timur','assets/img/logo/logo213.png',NULL,'sman11sby@gmail.com','0317405420','Assalamu Alaikum\r\n\r\nMohon informasi PPDB','Assalamu Alaikum\r\n\r\n\r\nMohon informasi PPDB','083857444909','<p>1. SERAGAM</p><ul><li>BAHAN PRAMUKA&nbsp; &nbsp; : 500000</li><li>BAHAN OSIS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: 300000</li></ul>','<p><br></p><ol><li>Surat Keterangan Lulus</li><li>Akta Kelahiran</li><li>Kartu Keluarga</li></ol>','Surabaya','Tandes','www.sman11sby.com','Drs. R. Achmad Djunaidi, M.M','123456789123456','1','assets/img/kop/kopsuratsma11.png','assets/img/logo/logo_ppdb203.png','2022-02-20','2021-05-20');

/*---------------------------------------------------------------
  TABLE: `user`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(128) NOT NULL,
  `level` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` text NOT NULL,
  `status` int(1) NOT NULL,
  `foto` int(11) NOT NULL,
  `mapel` text NOT NULL,
  `nuptk` text NOT NULL,
  `jenkel` varchar(20) NOT NULL,
  `tempat_lahir` text NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tmt` year(4) NOT NULL,
  `no_sk` text NOT NULL,
  `jenis` text NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `nik` int(11) NOT NULL,
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `id_user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
INSERT INTO `user` VALUES   ('5','ADMIN','admin','admin','$2y$10$6mJtnsXix8CBmUWs3DF43ewwEp4X1CeXl25h87G2oiAOBeiin5mC.','1','0','','','','','0000-00-00','0000','','','','0');
