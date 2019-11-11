-- Adminer 4.6.2 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

USE `e-surat`;

DROP TABLE IF EXISTS `appoval_rules_node`;
CREATE TABLE `appoval_rules_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instansi_id` int(11) NOT NULL,
  `jabatan_id` int(11) NOT NULL,
  `bisa_menandatangani` tinyint(1) DEFAULT NULL,
  `bisa_atas_nama` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_appoval_rules_node_instansi1_idx` (`instansi_id`),
  KEY `fk_appoval_rules_node_jabatan1_idx` (`jabatan_id`),
  CONSTRAINT `fk_appoval_rules_node_instansi1` FOREIGN KEY (`instansi_id`) REFERENCES `instansi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_appoval_rules_node_jabatan1` FOREIGN KEY (`jabatan_id`) REFERENCES `jabatan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `appoval_rules_node` (`id`, `instansi_id`, `jabatan_id`, `bisa_menandatangani`, `bisa_atas_nama`) VALUES
(1, 1,  14, 1,  1),
(2, 2,  7,  1,  1),
(3, 3,  1,  1,  1),
(4, 14, 10, 1,  1),
(5, 1,  10, 1,  1),
(6, 14, 10, 1,  1),
(7, 2,  9,  1,  1),
(8, 3,  10, 1,  1),
(9, 4,  10, 1,  1),
(10,  6,  10, 1,  1);

DROP TABLE IF EXISTS `approval_rules_edge`;
CREATE TABLE `approval_rules_edge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_rules_node_id` int(11) NOT NULL,
  `child_rules_node_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_approval_rules_edge_appoval_rules_node1_idx` (`parent_rules_node_id`),
  KEY `fk_approval_rules_edge_appoval_rules_node2_idx` (`child_rules_node_id`),
  CONSTRAINT `fk_approval_rules_edge_appoval_rules_node1` FOREIGN KEY (`parent_rules_node_id`) REFERENCES `appoval_rules_node` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_approval_rules_edge_appoval_rules_node2` FOREIGN KEY (`child_rules_node_id`) REFERENCES `appoval_rules_node` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `approval_rules_edge` (`id`, `parent_rules_node_id`, `child_rules_node_id`) VALUES
(1, 1,  1),
(2, 1,  2),
(3, 1,  3),
(4, 1,  4),
(5, 1,  5),
(6, 1,  6),
(7, 1,  7),
(8, 1,  8),
(9, 1,  9),
(10,  1,  10);

DROP TABLE IF EXISTS `approval_surat_keluar`;
CREATE TABLE `approval_surat_keluar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surat_keluar_id` int(11) NOT NULL,
  `jabatan_users_id` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `dari_jabatan_users_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_approval_surat_keluar_surat_keluar1_idx` (`surat_keluar_id`),
  KEY `fk_approval_surat_keluar_jabatan_users1_idx` (`jabatan_users_id`),
  KEY `fk_approval_surat_keluar_jabatan_users2_idx` (`dari_jabatan_users_id`),
  CONSTRAINT `fk_approval_surat_keluar_jabatan_users1` FOREIGN KEY (`jabatan_users_id`) REFERENCES `jabatan_users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_approval_surat_keluar_jabatan_users2` FOREIGN KEY (`dari_jabatan_users_id`) REFERENCES `jabatan_users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_approval_surat_keluar_surat_keluar1` FOREIGN KEY (`surat_keluar_id`) REFERENCES `surat_keluar` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `approval_surat_keluar` (`id`, `surat_keluar_id`, `jabatan_users_id`, `status`, `tanggal`, `keterangan`, `dari_jabatan_users_id`) VALUES
(1, 1,  1,  'aktif',  '2019-11-10 00:00:00',  'keterangan', 1),
(2, 2,  1,  'aktif',  '2019-11-10 00:00:00',  'keterangan', 2),
(3, 3,  1,  'aktif',  '2019-11-10 00:00:00',  'keterangan', 3),
(4, 4,  1,  'aktif',  '2019-11-10 00:00:00',  'keterangan', 4),
(5, 5,  1,  'aktif',  '2019-11-10 00:00:00',  'keterangan', 5),
(6, 6,  1,  'aktif',  '2019-11-10 00:00:00',  'keterangan', 6),
(7, 7,  1,  'aktif',  '2019-11-10 00:00:00',  'keterangan', 7),
(8, 8,  1,  'aktif',  '2019-11-10 00:00:00',  'keterangan', 8),
(9, 9,  1,  'aktif',  '2019-11-10 00:00:00',  'keterangan', 9),
(10,  10, 1,  'aktif',  '2019-11-10 00:00:00',  'keterangan', 10);

DROP TABLE IF EXISTS `disposisi_rules_edge`;
CREATE TABLE `disposisi_rules_edge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_node_id` int(11) NOT NULL,
  `child_node_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_surat_rules_edge_surat_rules_node1_idx` (`parent_node_id`),
  KEY `fk_surat_rules_edge_surat_rules_node2_idx` (`child_node_id`),
  CONSTRAINT `fk_surat_rules_edge_surat_rules_node1` FOREIGN KEY (`parent_node_id`) REFERENCES `disposisi_rules_node` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_surat_rules_edge_surat_rules_node2` FOREIGN KEY (`child_node_id`) REFERENCES `disposisi_rules_node` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `disposisi_rules_edge` (`id`, `parent_node_id`, `child_node_id`) VALUES
(1, 1,  1),
(2, 1,  2),
(3, 1,  3),
(4, 1,  4),
(5, 1,  5),
(6, 1,  6),
(7, 1,  7),
(8, 1,  8),
(9, 1,  9),
(10,  1,  10);

DROP TABLE IF EXISTS `disposisi_rules_node`;
CREATE TABLE `disposisi_rules_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instansi_id` int(11) NOT NULL,
  `jabatan_id` int(11) NOT NULL,
  `penerima_surat` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_surat_rules_node_instansi1_idx` (`instansi_id`),
  KEY `fk_surat_rules_node_jabatan1_idx` (`jabatan_id`),
  CONSTRAINT `fk_surat_rules_node_instansi1` FOREIGN KEY (`instansi_id`) REFERENCES `instansi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_surat_rules_node_jabatan1` FOREIGN KEY (`jabatan_id`) REFERENCES `jabatan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `disposisi_rules_node` (`id`, `instansi_id`, `jabatan_id`, `penerima_surat`) VALUES
(1, 1,  1,  1),
(2, 2,  1,  1),
(3, 3,  1,  1),
(4, 4,  1,  1),
(5, 5,  1,  1),
(6, 6,  1,  1),
(7, 7,  1,  1),
(8, 8,  1,  1),
(9, 9,  1,  1),
(10,  10, 1,  1);

DROP TABLE IF EXISTS `disposisi_surat_masuk`;
CREATE TABLE `disposisi_surat_masuk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surat_masuk_id` int(11) NOT NULL,
  `jabatan_users_id` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `keterangan` varchar(45) DEFAULT NULL,
  `dari_jabatan_users_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_disposisi_surat_masuk_surat_masuk1_idx` (`surat_masuk_id`),
  KEY `fk_disposisi_surat_masuk_jabatan_users1_idx` (`jabatan_users_id`),
  KEY `fk_disposisi_surat_masuk_jabatan_users2_idx` (`dari_jabatan_users_id`),
  CONSTRAINT `fk_disposisi_surat_masuk_jabatan_users1` FOREIGN KEY (`jabatan_users_id`) REFERENCES `jabatan_users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_disposisi_surat_masuk_jabatan_users2` FOREIGN KEY (`dari_jabatan_users_id`) REFERENCES `jabatan_users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_disposisi_surat_masuk_surat_masuk1` FOREIGN KEY (`surat_masuk_id`) REFERENCES `surat_masuk` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `disposisi_surat_masuk` (`id`, `surat_masuk_id`, `jabatan_users_id`, `status`, `tanggal`, `keterangan`, `dari_jabatan_users_id`) VALUES
(1, 1,  1,  'aktif',  '2019-11-10 00:00:00',  'keterangan', 1),
(2, 2,  1,  'aktif',  '2019-11-10 00:00:00',  'keterangan', 2),
(3, 3,  1,  'aktif',  '2019-11-10 00:00:00',  'keterangan', 3),
(4, 4,  1,  'aktif',  '2019-11-10 00:00:00',  'keterangan', 4),
(5, 5,  1,  'aktif',  '2019-11-10 00:00:00',  'keterangan', 5),
(6, 6,  1,  'aktif',  '2019-11-10 00:00:00',  'keterangan', 6),
(7, 7,  1,  'aktif',  '2019-11-10 00:00:00',  'keterangan', 7),
(8, 8,  1,  'aktif',  '2019-11-10 00:00:00',  'keterangan', 8),
(9, 9,  1,  'aktif',  '2019-11-10 00:00:00',  'keterangan', 9),
(10,  10, 1,  'aktif',  '2019-11-10 00:00:00',  'keterangan', 10);

DROP TABLE IF EXISTS `golongan`;
CREATE TABLE `golongan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `golongan` (`id`, `nama`) VALUES
(1, 'Golongan A'),
(2, 'Golongan B'),
(3, 'Golongan C'),
(4, 'Golongan D'),
(5, 'Golongan E'),
(6, 'Golongan F'),
(7, 'Golongan G'),
(8, 'Golongan H'),
(9, 'Golongan I'),
(10,  'Golongan J'),
(11,  'Golongan K'),
(12,  'Golongan L'),
(13,  'Golongan M'),
(14,  'Golongan N'),
(15,  'Golongan 0');

DROP TABLE IF EXISTS `instansi`;
CREATE TABLE `instansi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_telepon` varchar(20) DEFAULT NULL,
  `kode_pos` varchar(10) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `instansi` (`id`, `nama`, `alamat`, `no_telepon`, `kode_pos`, `fax`) VALUES
(1, 'Kantor', 'Kantor Cabang Malang', '0811223445677',  '61111',  '08113455'),
(2, 'Kantor', 'Kantor Cabang Gresik', '0811223445677',  '61111',  '08113455'),
(3, 'Kantor', 'Kantor Cabang Pasuruan', '0811223445677',  '61111',  '08113455'),
(4, 'Kantor', 'Kantor Cabang Lamongan', '0811223445677',  '61111',  '08113455'),
(5, 'Kantor', 'Kantor Cabang Semarang', '0811223445677',  '61111',  '08113455'),
(6, 'Kantor', 'Kantor Cabang Batu', '0811223445677',  '61111',  '08113455'),
(7, 'Kantor', 'Kantor Cabang Mojokerto',  '0811223445677',  '61111',  '08113455'),
(8, 'Kantor', 'Kantor Cabang Pacitan',  '0811223445677',  '61111',  '08113455'),
(9, 'Kantor', 'Kantor Cabang Sumenep',  '0811223445677',  '61111',  '08113455'),
(10,  'Kantor', 'Kantor Cabang Bojnegoro',  '0811223445677',  '61111',  '08113455'),
(11,  'Kantor', 'Kantor Cabang Aceh', '0811223445677',  '61111',  '08113455'),
(12,  'Kantor', 'Kantor Cabang Surabaya', '0811223445677',  '61111',  '08113455'),
(13,  'Kantor', 'Kantor Cabang Cerme',  '0811223445677',  '61111',  '08113455'),
(14,  'Kantor', 'Kantor Cabang Kedamean', '0811223445677',  '61111',  '08113455'),
(15,  'Kantor', 'Kantor Cabang Bungah', '0811223445677',  '61111',  '08113455');

DROP TABLE IF EXISTS `jabatan`;
CREATE TABLE `jabatan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) DEFAULT NULL,
  `instansi_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_jabatan_instansi1_idx` (`instansi_id`),
  CONSTRAINT `fk_jabatan_instansi1` FOREIGN KEY (`instansi_id`) REFERENCES `instansi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `jabatan` (`id`, `nama`, `instansi_id`) VALUES
(1, 'CEO',  1),
(2, 'GM', 1),
(3, 'Manager',  1),
(4, 'Staff',  1),
(5, 'Karyawan', 1),
(6, 'Sekretaris', 1),
(7, 'Bendahara',  1),
(8, 'SPG',  1),
(9, 'SPB',  1),
(10,  'Cleaning Service', 1),
(11,  'Tracker',  1),
(12,  'Programmer', 1),
(13,  'Front End Designer', 1),
(14,  'Back End Designer',  1),
(15,  'Developer',  1);

DROP TABLE IF EXISTS `jabatan_users`;
CREATE TABLE `jabatan_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jabatan_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `golongan_id` int(11) NOT NULL,
  `instansi_id` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_jabatan_users_jabatan1_idx` (`jabatan_id`),
  KEY `fk_jabatan_users_users1_idx` (`users_id`),
  KEY `fk_jabatan_users_golongan1_idx` (`golongan_id`),
  KEY `fk_jabatan_users_instansi1_idx` (`instansi_id`),
  CONSTRAINT `fk_jabatan_users_golongan1` FOREIGN KEY (`golongan_id`) REFERENCES `golongan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_jabatan_users_instansi1` FOREIGN KEY (`instansi_id`) REFERENCES `instansi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_jabatan_users_jabatan1` FOREIGN KEY (`jabatan_id`) REFERENCES `jabatan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_jabatan_users_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `jabatan_users` (`id`, `jabatan_id`, `users_id`, `golongan_id`, `instansi_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 14, 1,  1,  1,  1,  '2019-11-10 00:00:00',  '2019-11-10 00:00:00'),
(2, 1,  1,  1,  1,  1,  '2019-11-10 00:00:00',  '2019-11-10 00:00:00'),
(3, 2,  1,  1,  1,  1,  '2019-11-10 00:00:00',  '2019-11-10 00:00:00'),
(4, 3,  1,  1,  1,  1,  '2019-11-10 00:00:00',  '2019-11-10 00:00:00'),
(5, 4,  1,  1,  1,  1,  '2019-11-10 00:00:00',  '2019-11-10 00:00:00'),
(6, 5,  1,  1,  1,  1,  '2019-11-10 00:00:00',  '2019-11-10 00:00:00'),
(7, 6,  1,  1,  1,  1,  '2019-11-10 00:00:00',  '2019-11-10 00:00:00'),
(8, 7,  1,  1,  1,  1,  '2019-11-10 00:00:00',  '2019-11-10 00:00:00'),
(9, 8,  1,  1,  1,  1,  '2019-11-10 00:00:00',  '2019-11-10 00:00:00'),
(10,  9,  1,  1,  1,  1,  '2019-11-10 00:00:00',  '2019-11-10 00:00:00'),
(11,  10, 1,  1,  1,  1,  '2019-11-10 00:00:00',  '2019-11-10 00:00:00');

DROP TABLE IF EXISTS `kategori_surat`;
CREATE TABLE `kategori_surat` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `kategori_surat` (`id`, `nama`) VALUES
(1, 'Surat Masuk'),
(2, 'Surat Keluar'),
(3, 'Disposisi'),
(4, 'Approval'),
(5, 'Pengantar'),
(6, 'Lamaran Kerja'),
(7, 'Pengesahan'),
(8, 'Pernyataan'),
(9, 'Pengajuan'),
(10,  'Pembatalan');

DROP TABLE IF EXISTS `sifat`;
CREATE TABLE `sifat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sifat` (`id`, `nama`) VALUES
(1, 'public'),
(2, 'private'),
(3, 'Proteksi'),
(4, 'Terlindungi'),
(5, 'Proteksi Sebagian'),
(6, 'Terlindungi Sebagian'),
(7, 'Terbuka'),
(8, 'Tertutup'),
(9, 'Terbuka Sebagian'),
(10,  'Tertutup Sebagian');

DROP TABLE IF EXISTS `surat_keluar`;
CREATE TABLE `surat_keluar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_klasifikasi` varchar(45) DEFAULT NULL,
  `file_lampiran` varchar(45) DEFAULT NULL,
  `perihal` text DEFAULT NULL,
  `jabatan_id` int(11) NOT NULL,
  `sifat_id` int(11) NOT NULL,
  `kategori_surat_id` int(11) NOT NULL,
  `isi_surat` text DEFAULT NULL,
  `isi_lampiran_surat` text DEFAULT NULL,
  `no_agenda` varchar(45) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `instansi_id` int(11) NOT NULL,
  `approval_surat_keluar_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_surat_keluar_jabatan1_idx` (`jabatan_id`),
  KEY `fk_surat_keluar_sifat1_idx` (`sifat_id`),
  KEY `fk_surat_keluar_kategori_surat1_idx` (`kategori_surat_id`),
  KEY `fk_surat_keluar_instansi1_idx` (`instansi_id`),
  KEY `fk_surat_keluar_approval_surat_keluar1_idx` (`approval_surat_keluar_id`),
  CONSTRAINT `fk_surat_keluar_instansi1` FOREIGN KEY (`instansi_id`) REFERENCES `instansi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_surat_keluar_jabatan1` FOREIGN KEY (`jabatan_id`) REFERENCES `jabatan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_surat_keluar_kategori_surat1` FOREIGN KEY (`kategori_surat_id`) REFERENCES `kategori_surat` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_surat_keluar_sifat1` FOREIGN KEY (`sifat_id`) REFERENCES `sifat` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `surat_keluar` (`id`, `nomor_klasifikasi`, `file_lampiran`, `perihal`, `jabatan_id`, `sifat_id`, `kategori_surat_id`, `isi_surat`, `isi_lampiran_surat`, `no_agenda`, `tanggal`, `instansi_id`, `approval_surat_keluar_id`) VALUES
(1, 'K01',  'lampiran-1', 'Tanda Lampiran-1', 1,  1,  1,  'Ini Surat Masuk',  'Ini lampiran surat masuk', 'AG01', '2019-11-10 00:00:00',  1,  1),
(2, 'K02',  'lampiran-1', 'Tanda Lampiran-1', 1,  1,  1,  'Ini Surat Masuk',  'Ini lampiran surat masuk', 'AG01', '2019-11-10 00:00:00',  1,  1),
(3, 'K03',  'lampiran-1', 'Tanda Lampiran-1', 1,  1,  1,  'Ini Surat Masuk',  'Ini lampiran surat masuk', 'AG01', '2019-11-10 00:00:00',  1,  1),
(4, 'K04',  'lampiran-1', 'Tanda Lampiran-1', 1,  1,  1,  'Ini Surat Masuk',  'Ini lampiran surat masuk', 'AG01', '2019-11-10 00:00:00',  1,  1),
(5, 'K05',  'lampiran-1', 'Tanda Lampiran-1', 1,  1,  1,  'Ini Surat Masuk',  'Ini lampiran surat masuk', 'AG01', '2019-11-10 00:00:00',  1,  1),
(6, 'K06',  'lampiran-1', 'Tanda Lampiran-1', 1,  1,  1,  'Ini Surat Masuk',  'Ini lampiran surat masuk', 'AG01', '2019-11-10 00:00:00',  1,  1),
(7, 'K07',  'lampiran-1', 'Tanda Lampiran-1', 1,  1,  1,  'Ini Surat Masuk',  'Ini lampiran surat masuk', 'AG01', '2019-11-10 00:00:00',  1,  1),
(8, 'K08',  'lampiran-1', 'Tanda Lampiran-1', 1,  1,  1,  'Ini Surat Masuk',  'Ini lampiran surat masuk', 'AG01', '2019-11-10 00:00:00',  1,  1),
(9, 'K09',  'lampiran-1', 'Tanda Lampiran-1', 1,  1,  1,  'Ini Surat Masuk',  'Ini lampiran surat masuk', 'AG01', '2019-11-10 00:00:00',  1,  1),
(10,  'K10',  'lampiran-1', 'Tanda Lampiran-1', 1,  1,  1,  'Ini Surat Masuk',  'Ini lampiran surat masuk', 'AG01', '2019-11-10 00:00:00',  1,  1);

DROP TABLE IF EXISTS `surat_masuk`;
CREATE TABLE `surat_masuk` (
  `id` int(11) NOT NULL,
  `nomor_agenda` varchar(45) DEFAULT NULL,
  `no_surat` varchar(45) DEFAULT NULL,
  `surat_dari` varchar(45) DEFAULT NULL,
  `instansi_id` int(11) NOT NULL,
  `is_antar_dinas` tinyint(1) DEFAULT NULL,
  `kategori_surat_id` int(11) NOT NULL,
  `sifat_id` int(11) NOT NULL,
  `no_tindak_lanjut` varchar(45) DEFAULT NULL,
  `perihal` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `lampiran` varchar(45) DEFAULT NULL,
  `file_surat` varchar(45) DEFAULT NULL,
  `file_lampiran` varchar(45) DEFAULT NULL,
  `jumlah_lampiran` int(11) DEFAULT NULL,
  `jabatan_users_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_surat_masuk_instansi_idx` (`instansi_id`),
  KEY `fk_surat_masuk_kategori_surat_masuk1_idx` (`kategori_surat_id`),
  KEY `fk_surat_masuk_sifat1_idx` (`sifat_id`),
  KEY `fk_surat_masuk_jabatan_users1_idx` (`jabatan_users_id`),
  CONSTRAINT `fk_surat_masuk_instansi` FOREIGN KEY (`instansi_id`) REFERENCES `instansi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_surat_masuk_jabatan_users1` FOREIGN KEY (`jabatan_users_id`) REFERENCES `jabatan_users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_surat_masuk_kategori_surat_masuk1` FOREIGN KEY (`kategori_surat_id`) REFERENCES `kategori_surat` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_surat_masuk_sifat1` FOREIGN KEY (`sifat_id`) REFERENCES `sifat` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `surat_masuk` (`id`, `nomor_agenda`, `no_surat`, `surat_dari`, `instansi_id`, `is_antar_dinas`, `kategori_surat_id`, `sifat_id`, `no_tindak_lanjut`, `perihal`, `tanggal`, `lampiran`, `file_surat`, `file_lampiran`, `jumlah_lampiran`, `jabatan_users_id`) VALUES
(1, 'AG01', 'SRT01',  'SDR01',  1,  1,  1,  2,  'AKTL01', 'Perihal-1',  '2019-11-10', 'lampiran-1', 'file-masuk-1', 'file-lampiran-1',  1,  1),
(2, 'AG02', 'SRT01',  'SDR01',  1,  1,  1,  2,  'AKTL01', 'Perihal-1',  '2019-11-10', 'lampiran-1', 'file-masuk-1', 'file-lampiran-1',  1,  2),
(3, 'AG03', 'SRT01',  'SDR01',  1,  1,  1,  2,  'AKTL01', 'Perihal-1',  '2019-11-10', 'lampiran-1', 'file-masuk-1', 'file-lampiran-1',  1,  3),
(4, 'AG04', 'SRT01',  'SDR01',  1,  1,  1,  2,  'AKTL01', 'Perihal-1',  '2019-11-10', 'lampiran-1', 'file-masuk-1', 'file-lampiran-1',  1,  1),
(5, 'AG05', 'SRT01',  'SDR01',  1,  1,  1,  2,  'AKTL01', 'Perihal-1',  '2019-11-10', 'lampiran-1', 'file-masuk-1', 'file-lampiran-1',  1,  1),
(6, 'AG06', 'SRT01',  'SDR01',  1,  1,  1,  2,  'AKTL01', 'Perihal-1',  '2019-11-10', 'lampiran-1', 'file-masuk-1', 'file-lampiran-1',  1,  1),
(7, 'AG07', 'SRT01',  'SDR01',  1,  1,  1,  2,  'AKTL01', 'Perihal-1',  '2019-11-10', 'lampiran-1', 'file-masuk-1', 'file-lampiran-1',  1,  1),
(8, 'AG08', 'SRT01',  'SDR01',  1,  1,  1,  2,  'AKTL01', 'Perihal-1',  '2019-11-10', 'lampiran-1', 'file-masuk-1', 'file-lampiran-1',  1,  1),
(9, 'AG09', 'SRT01',  'SDR01',  1,  1,  1,  2,  'AKTL01', 'Perihal-1',  '2019-11-10', 'lampiran-1', 'file-masuk-1', 'file-lampiran-1',  1,  1),
(10,  'AG10', 'SRT01',  'SDR01',  1,  1,  1,  2,  'AKTL01', 'Perihal-1',  '2019-11-10', 'lampiran-1', 'file-masuk-1', 'file-lampiran-1',  1,  5);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `auth_key` varchar(255) NOT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `users` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `role`, `created_at`, `updated_at`) VALUES
(1, 'user-1', 'bvkvjskdbkljushlbbvcjbbvjsdbvjdfh',  'cvsdhdkvbjdbjjvkbkvbvjfbkvd',  'vbfkjdbvdfvfjjbvfdubdkjjkdhjfhj',  'usersone@mail.com',  'aktif',  '1',  '2019-11-10 00:00:00',  '2019-11-10 00:00:00'),
(2, 'user-2', 'bvkvjskdbkljushlbbvcjbbvjsdbvjdfh',  'cvsdhdkvbjdbjjvkbkvbvjfbkvd',  'vbfkjdbvdfvfjjbvfdubdkjjkdhjfhj',  'usersone@mail.com',  'aktif',  '1',  '2019-11-10 00:00:00',  '2019-11-10 00:00:00'),
(3, 'user-3', 'bvkvjskdbkljushlbbvcjbbvjsdbvjdfh',  'cvsdhdkvbjdbjjvkbkvbvjfbkvd',  'vbfkjdbvdfvfjjbvfdubdkjjkdhjfhj',  'usersone@mail.com',  'aktif',  '1',  '2019-11-10 00:00:00',  '2019-11-10 00:00:00'),
(4, 'user-4', 'bvkvjskdbkljushlbbvcjbbvjsdbvjdfh',  'cvsdhdkvbjdbjjvkbkvbvjfbkvd',  'vbfkjdbvdfvfjjbvfdubdkjjkdhjfhj',  'usersone@mail.com',  'aktif',  '1',  '2019-11-10 00:00:00',  '2019-11-10 00:00:00'),
(5, 'user-5', 'bvkvjskdbkljushlbbvcjbbvjsdbvjdfh',  'cvsdhdkvbjdbjjvkbkvbvjfbkvd',  'vbfkjdbvdfvfjjbvfdubdkjjkdhjfhj',  'usersone@mail.com',  'aktif',  '1',  '2019-11-10 00:00:00',  '2019-11-10 00:00:00'),
(6, 'user-6', 'bvkvjskdbkljushlbbvcjbbvjsdbvjdfh',  'cvsdhdkvbjdbjjvkbkvbvjfbkvd',  'vbfkjdbvdfvfjjbvfdubdkjjkdhjfhj',  'usersone@mail.com',  'aktif',  '1',  '2019-11-10 00:00:00',  '2019-11-10 00:00:00'),
(7, 'user-7', 'bvkvjskdbkljushlbbvcjbbvjsdbvjdfh',  'cvsdhdkvbjdbjjvkbkvbvjfbkvd',  'vbfkjdbvdfvfjjbvfdubdkjjkdhjfhj',  'usersone@mail.com',  'aktif',  '1',  '2019-11-10 00:00:00',  '2019-11-10 00:00:00'),
(8, 'user-8', 'bvkvjskdbkljushlbbvcjbbvjsdbvjdfh',  'cvsdhdkvbjdbjjvkbkvbvjfbkvd',  'vbfkjdbvdfvfjjbvfdubdkjjkdhjfhj',  'usersone@mail.com',  'aktif',  '1',  '2019-11-10 00:00:00',  '2019-11-10 00:00:00'),
(9, 'user-9', 'bvkvjskdbkljushlbbvcjbbvjsdbvjdfh',  'cvsdhdkvbjdbjjvkbkvbvjfbkvd',  'vbfkjdbvdfvfjjbvfdubdkjjkdhjfhj',  'usersone@mail.com',  'aktif',  '1',  '2019-11-10 00:00:00',  '2019-11-10 00:00:00'),
(10,  'user-10',  'bvkvjskdbkljushlbbvcjbbvjsdbvjdfh',  'cvsdhdkvbjdbjjvkbkvbvjfbkvd',  'vbfkjdbvdfvfjjbvfdubdkjjkdhjfhj',  'usersone@mail.com',  'aktif',  '1',  '2019-11-10 00:00:00',  '2019-11-10 00:00:00');

-- 2019-11-10 16:05:01
1
Downloading1