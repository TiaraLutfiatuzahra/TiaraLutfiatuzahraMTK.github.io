CREATE TABLE `peserta_didik` (
  `id` int PRIMARY KEY,
  `nama` varchar(255),
  `tempat_tanggal_lahir` date,
  `photo` blob,
  `email` varchar(255),
  `kelas` varchar(255),
  `sekolah` text
);

CREATE TABLE `kelas` (
  `id_kelas` int PRIMARY KEY,
  `nama_fakultas` varchar(255)
);

CREATE TABLE `sekolah` (
  `id_sekolah` int PRIMARY KEY,
  `nama_sekolah` text
);

CREATE TABLE `tenaga_pendidik` (
  `id_tenaga_pendidik` int PRIMARY KEY,
  `nip` int,
  `nama` varchar(255),
  `tempat_tanggal_lahir` date,
  `photo` blob,
  `email` varchar(255),
  `unit` varchar(255),
  `alamat_rumah` text
);

CREATE TABLE `unit` (
  `id_unit` int PRIMARY KEY,
  `nama_unit` varchar(255)
);

CREATE TABLE `provinsi` (
  `id_provinsi` int PRIMARY KEY,
  `nama_provinsi` varchar(255)
);

CREATE TABLE `kota` (
  `id_kota` int PRIMARY KEY,
  `nama_kota` varchar(255)
);

ALTER TABLE `kelas` ADD FOREIGN KEY (`id_kelas`) REFERENCES `peserta_didik` (`kelas`);

ALTER TABLE `sekolah` ADD FOREIGN KEY (`id_sekolah`) REFERENCES `peserta_didik` (`sekolah`);

ALTER TABLE `unit` ADD FOREIGN KEY (`id_unit`) REFERENCES `tenaga_pendidik` (`unit`);

ALTER TABLE `kota` ADD FOREIGN KEY (`id_kota`) REFERENCES `tenaga_pendidik` (`alamat_rumah`);

ALTER TABLE `provinsi` ADD FOREIGN KEY (`id_provinsi`) REFERENCES `tenaga_pendidik` (`alamat_rumah`);
