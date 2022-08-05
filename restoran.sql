/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 10.4.24-MariaDB : Database - restoran
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`restoran` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `restoran`;

/*Table structure for table `bahan` */

DROP TABLE IF EXISTS `bahan`;

CREATE TABLE `bahan` (
  `kode_bahan` varchar(10) NOT NULL,
  `nama_bahan` varchar(30) DEFAULT NULL,
  `harga_bahan` int(11) DEFAULT NULL,
  `banyaknya` int(5) DEFAULT NULL,
  `supplier` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`kode_bahan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `bahan` */

insert  into `bahan`(`kode_bahan`,`nama_bahan`,`harga_bahan`,`banyaknya`,`supplier`) values 
('CB-01','Cabai',8000,90,'Warung Indah Sentosa'),
('RT-01','Roti',70000,80,'PT. Indah Jaya');

/*Table structure for table `meja` */

DROP TABLE IF EXISTS `meja`;

CREATE TABLE `meja` (
  `no_meja` int(11) NOT NULL,
  `maks_pelanggan` int(11) DEFAULT NULL,
  `status` enum('tidak tersedia','tersedia','direservasi') DEFAULT NULL,
  PRIMARY KEY (`no_meja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `meja` */

insert  into `meja`(`no_meja`,`maks_pelanggan`,`status`) values 
(1,8,'tersedia'),
(2,8,'tidak tersedia'),
(3,8,'direservasi');

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `kode_menu` varchar(10) NOT NULL,
  `nama_menu` varchar(30) DEFAULT NULL,
  `kode_bahan` varchar(15) DEFAULT NULL,
  `harga_satuan` int(11) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `kategori` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`kode_menu`),
  KEY `kode_bahan` (`kode_bahan`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`kode_bahan`) REFERENCES `bahan` (`kode_bahan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `menu` */

insert  into `menu`(`kode_menu`,`nama_menu`,`kode_bahan`,`harga_satuan`,`gambar`,`kategori`) values 
('RT-01','Roti Bakar','RT-01',20000,'roti bakar.jpg','makanan'),
('SM-01','Sambal Matah','CB-01',15000,'sambal mata.jpg','makanan');

/*Table structure for table `pegawai` */

DROP TABLE IF EXISTS `pegawai`;

CREATE TABLE `pegawai` (
  `kode_pegawai` varchar(10) NOT NULL,
  `nama_pegawai` varchar(30) DEFAULT NULL,
  `jabatan` varchar(30) DEFAULT NULL,
  `ttl` date DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `no_telpon` varchar(15) DEFAULT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`kode_pegawai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `pegawai` */

insert  into `pegawai`(`kode_pegawai`,`nama_pegawai`,`jabatan`,`ttl`,`alamat`,`no_telpon`,`username`,`password`,`status`) values 
('PG-001','Asep','Koki','2022-08-03','cibodas','056787654567','asepganteng','asepganteng','aktif'),
('PG-002','Cecep','Kasir','2022-08-22','cihideung','04567876545678','cecepganteng','cecepganteng','aktif'),
('PG-003','Bambang','Pelayan','2022-08-14','cimaung','052895678678','bambangganteng','bambangganteng','aktif'),
('PG-ADM-01','adminkoki','Koki','2022-08-04','jelas','056789876578','adminkoki','adminkoki','aktif'),
('PG-ADM-02','adminpelayan','Pelayan','2022-08-04','jelaspisan','0415267839487','adminpelayan','adminpelayan','aktif'),
('PG-ADM-03','adminkasir','Kasir','2022-08-04','jelasbgt','0762874628621','adminkasir','adminkasir','aktif');

/*Table structure for table `pelanggan` */

DROP TABLE IF EXISTS `pelanggan`;

CREATE TABLE `pelanggan` (
  `kode_pelanggan` varchar(5) NOT NULL,
  `nama_pelanggan` varchar(30) DEFAULT NULL,
  `no_telpon` varchar(15) DEFAULT NULL,
  `jumlah_pelanggan` int(10) DEFAULT NULL,
  PRIMARY KEY (`kode_pelanggan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `pelanggan` */

insert  into `pelanggan`(`kode_pelanggan`,`nama_pelanggan`,`no_telpon`,`jumlah_pelanggan`) values 
('SUC-0','Sucipto','05678765678',4),
('SUN-0','Sunarto','09876567889',2);

/*Table structure for table `pesanan` */

DROP TABLE IF EXISTS `pesanan`;

CREATE TABLE `pesanan` (
  `kode_pesanan` varchar(10) NOT NULL,
  `pesanan` varchar(30) DEFAULT NULL,
  `jumlah_pesanan` int(5) DEFAULT NULL,
  `total_harga` int(5) DEFAULT NULL,
  `status` enum('Tidak Tersedia','Tersedia','Sedang Dibuat','Sudah Diterima') DEFAULT NULL,
  `no_meja` int(11) DEFAULT NULL,
  `kode_pelanggan` varchar(15) DEFAULT NULL,
  `kode_menu` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`kode_pesanan`),
  KEY `no_meja` (`no_meja`),
  KEY `kode_pelanggan` (`kode_pelanggan`),
  KEY `kode_menu` (`kode_menu`),
  CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`no_meja`) REFERENCES `meja` (`no_meja`),
  CONSTRAINT `pesanan_ibfk_2` FOREIGN KEY (`kode_pelanggan`) REFERENCES `pelanggan` (`kode_pelanggan`),
  CONSTRAINT `pesanan_ibfk_3` FOREIGN KEY (`kode_menu`) REFERENCES `menu` (`kode_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `pesanan` */

insert  into `pesanan`(`kode_pesanan`,`pesanan`,`jumlah_pesanan`,`total_harga`,`status`,`no_meja`,`kode_pelanggan`,`kode_menu`) values 
('',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('SUC-PES-01','Roti Bakar',2,40000,'Sedang Dibuat',1,'SUC-0','RT-01');

/*Table structure for table `struk_pembayaran` */

DROP TABLE IF EXISTS `struk_pembayaran`;

CREATE TABLE `struk_pembayaran` (
  `kode_pembayaran` varchar(15) NOT NULL,
  `kode_pegawai` varchar(15) DEFAULT NULL,
  `kode_pesanan` varchar(15) DEFAULT NULL,
  `tanggal_transaksi` date DEFAULT NULL,
  `harga_satuan` int(10) DEFAULT NULL,
  `total_harga` int(10) DEFAULT NULL,
  `metode_bayar` varchar(15) DEFAULT NULL,
  `nominal_pembayaran` int(10) DEFAULT NULL,
  `nominal_kembalian` int(10) DEFAULT NULL,
  PRIMARY KEY (`kode_pembayaran`),
  KEY `kode_pegawai` (`kode_pegawai`),
  KEY `kode_transaksi` (`kode_pesanan`),
  CONSTRAINT `struk_pembayaran_ibfk_1` FOREIGN KEY (`kode_pegawai`) REFERENCES `pegawai` (`kode_pegawai`),
  CONSTRAINT `struk_pembayaran_ibfk_2` FOREIGN KEY (`kode_pesanan`) REFERENCES `pesanan` (`kode_pesanan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `struk_pembayaran` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
