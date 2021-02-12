-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 12 Feb 2021 pada 18.35
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_wilayah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinces`
--

CREATE TABLE `provinces` (
  `id` char(2) NOT NULL,
  `title` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `provinces`
--

INSERT INTO `provinces` (`id`, `title`) VALUES
('32', 'JAWA BARAT');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);
COMMIT;

--
-- Struktur dari tabel `cities`
--

CREATE TABLE `cities` (
  `id` char(4) NOT NULL,
  `province_id` char(2) NOT NULL,
  `title` tinytext NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `cities`
--

INSERT INTO `cities` (`id`, `province_id`, `title`, `type`) VALUES
('3209', '32', 'KAB. CIREBON', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);
COMMIT;

--
-- Struktur dari tabel `subdistricts`
--

CREATE TABLE `subdistricts` (
  `id` char(6) NOT NULL,
  `city_id` char(4) NOT NULL,
  `title` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `subdistricts`
--

INSERT INTO `subdistricts` (`id`, `city_id`, `title`) VALUES
('320901', '3209', 'Waled'),
('320902', '3209', 'Ciledug'),
('320903', '3209', 'Losari'),
('320904', '3209', 'Pabedilan'),
('320905', '3209', 'Babakan'),
('320906', '3209', 'Karangsembung'),
('320907', '3209', 'Lemahabang'),
('320908', '3209', 'Susukan Lebak'),
('320909', '3209', 'Sedong'),
('320910', '3209', 'Astanajapura'),
('320911', '3209', 'Pangenan'),
('320912', '3209', 'Mundu'),
('320913', '3209', 'Beber'),
('320914', '3209', 'Talun'),
('320915', '3209', 'Sumber'),
('320916', '3209', 'Dukupuntang'),
('320917', '3209', 'Palimanan'),
('320918', '3209', 'Plumbon'),
('320919', '3209', 'Weru'),
('320920', '3209', 'Kedawung'),
('320921', '3209', 'Gunung Jati'),
('320922', '3209', 'Kapetakan'),
('320923', '3209', 'Klangenan'),
('320924', '3209', 'Arjawinangun'),
('320925', '3209', 'Panguragan'),
('320926', '3209', 'Ciwaringin'),
('320927', '3209', 'Susukan'),
('320928', '3209', 'Gegesik'),
('320929', '3209', 'Kaliwedi'),
('320930', '3209', 'Gebang'),
('320931', '3209', 'Depok'),
('320932', '3209', 'Pasaleman'),
('320933', '3209', 'Pabuaran'),
('320934', '3209', 'Karangwareng'),
('320935', '3209', 'Tengah Tani'),
('320936', '3209', 'Plered'),
('320937', '3209', 'Gempol'),
('320938', '3209', 'Greged'),
('320939', '3209', 'Suranenggala'),
('320940', '3209', 'Jamblang');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `subdistricts`
--
ALTER TABLE `subdistricts`
  ADD PRIMARY KEY (`id`);
COMMIT;

--
-- Struktur dari tabel `villages`
--

CREATE TABLE `villages` (
  `id` char(10) NOT NULL,
  `subdistrict_id` char(6) DEFAULT NULL,
  `title` tinytext DEFAULT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `villages`
--

INSERT INTO `villages` (`id`, `subdistrict_id`, `title`, `type`) VALUES
('3209012008', '320901', 'Waled Desa', 3),
('3209012009', '320901', 'Waled Kota', 3),
('3209012010', '320901', 'Mekarsari', 3),
('3209012011', '320901', 'Waled Asem', 3),
('3209012012', '320901', 'Ambit', 3),
('3209012013', '320901', 'Ciuyah', 3),
('3209012014', '320901', 'Gunungsari', 3),
('3209012015', '320901', 'Karangsari', 3),
('3209012016', '320901', 'Cikulak Kidul', 3),
('3209012017', '320901', 'Cikulak', 3),
('3209012018', '320901', 'Cibogo', 3),
('3209012019', '320901', 'Cisaat', 3),
('3209022008', '320902', 'Leuweunggajah', 3),
('3209022009', '320902', 'Tenjomaya', 3),
('3209022010', '320902', 'Damarguna', 3),
('3209022011', '320902', 'Jatiseeng', 3),
('3209022012', '320902', 'Jatiseeng Kidul', 3),
('3209022013', '320902', 'Ciledug Kulon', 3),
('3209022014', '320902', 'Ciledug Wetan', 3),
('3209022015', '320902', 'Ciledug Lor', 3),
('3209022016', '320902', 'Ciledug Tengah', 3),
('3209022017', '320902', 'Bojongnegara', 3),
('3209032001', '320903', 'Astanalanggar', 3),
('3209032002', '320903', 'Barisan', 3),
('3209032003', '320903', 'Losari Kidul', 3),
('3209032004', '320903', 'Panggangsari', 3),
('3209032005', '320903', 'Losari Lor', 3),
('3209032006', '320903', 'Mulyasari', 3),
('3209032007', '320903', 'Kalirahayu', 3),
('3209032008', '320903', 'Kalisari', 3),
('3209032009', '320903', 'Ambulu', 3),
('3209032010', '320903', 'Tawangsari', 3),
('3209042001', '320904', 'Pabedilan Kidul', 3),
('3209042002', '320904', 'Pabedilan Wetan', 3),
('3209042003', '320904', 'Pabedilan Kulon', 3),
('3209042004', '320904', 'Pabedilan Kaler', 3),
('3209042005', '320904', 'Silih Asih', 3),
('3209042006', '320904', 'Tersana', 3),
('3209042007', '320904', 'Pasuruan', 3),
('3209042008', '320904', 'Dukuhwidara', 3),
('3209042009', '320904', 'Kalibuntu', 3),
('3209042010', '320904', 'Kalimukti', 3),
('3209042011', '320904', 'Sidaresmi', 3),
('3209042012', '320904', 'Babakan Losari', 3),
('3209042013', '320904', 'Babakan Losari Lor', 3),
('3209052001', '320905', 'Cangkuang', 3),
('3209052002', '320905', 'Serang Wetan', 3),
('3209052003', '320905', 'Serang Kulon', 3),
('3209052004', '320905', 'Gembongan Mekar', 3),
('3209052005', '320905', 'Gembongan', 3),
('3209052006', '320905', 'Babakan Gebang', 3),
('3209052007', '320905', 'Babakan', 3),
('3209052008', '320905', 'Bojonggebang', 3),
('3209052009', '320905', 'Sumber Kidul', 3),
('3209052010', '320905', 'Sumber Lor', 3),
('3209052011', '320905', 'Kudumulya', 3),
('3209052012', '320905', 'Kudukeras', 3),
('3209052013', '320905', 'Pakusamben', 3),
('3209052014', '320905', 'Karangwangun', 3),
('3209062006', '320906', 'Tambelang', 3),
('3209062011', '320906', 'Karangsuwung', 3),
('3209062012', '320906', 'Karangtengah', 3),
('3209062013', '320906', 'Kalimeang', 3),
('3209062014', '320906', 'Karangmalang', 3),
('3209062015', '320906', 'Karangmekar', 3),
('3209062016', '320906', 'Kubangkarang', 3),
('3209062017', '320906', 'Karangsembung', 3),
('3209072001', '320907', 'Leuwidingding', 3),
('3209072002', '320907', 'Asem', 3),
('3209072003', '320907', 'Cipeujeuh Kulon', 3),
('3209072004', '320907', 'Cipeujeuh Wetan', 3),
('3209072005', '320907', 'Sindanglaut', 3),
('3209072006', '320907', 'Lemahabang Kulon', 3),
('3209072007', '320907', 'Lemahabang', 3),
('3209072008', '320907', 'Sigong', 3),
('3209072009', '320907', 'Sarajaya', 3),
('3209072010', '320907', 'Picungpugur', 3),
('3209072011', '320907', 'Tuk Karangsuwung', 3),
('3209072012', '320907', 'Belawa', 3),
('3209072013', '320907', 'Wangkelang', 3),
('3209082001', '320908', 'Karangamangu', 3),
('3209082002', '320908', 'Susukan Lebak', 3),
('3209082003', '320908', 'Susukan Agung', 3),
('3209082004', '320908', 'Susukan Tonggoh', 3),
('3209082005', '320908', 'Wilulang', 3),
('3209082006', '320908', 'Sampih', 3),
('3209082007', '320908', 'Pasawahan', 3),
('3209082008', '320908', 'Ciawiasih', 3),
('3209082009', '320908', 'Ciawijapura', 3),
('3209082010', '320908', 'Curug', 3),
('3209082011', '320908', 'Curug Wetan', 3),
('3209082012', '320908', 'Kaligawe Wetan', 3),
('3209082013', '320908', 'Kaligawe', 3),
('3209092001', '320909', 'Karangwuni', 3),
('3209092002', '320909', 'Sedong Kidul', 3),
('3209092003', '320909', 'Sedong Lor', 3),
('3209092004', '320909', 'Windujaya', 3),
('3209092005', '320909', 'Winduhaji', 3),
('3209092006', '320909', 'Kertawangun', 3),
('3209092007', '320909', 'Penambangan', 3),
('3209092008', '320909', 'Putat', 3),
('3209092009', '320909', 'Panongan', 3),
('3209092010', '320909', 'Panongan Lor', 3),
('3209102004', '320910', 'Munjul', 3),
('3209102005', '320910', 'Sidamulya', 3),
('3209102006', '320910', 'Mertapada Kulon', 3),
('3209102007', '320910', 'Mertapada Wetan', 3),
('3209102008', '320910', 'Buntet', 3),
('3209102009', '320910', 'Kanci Kulon', 3),
('3209102010', '320910', 'Kanci', 3),
('3209102011', '320910', 'Astanajapura', 3),
('3209102012', '320910', 'Kendal', 3),
('3209102013', '320910', 'Japura Kidul', 3),
('3209102014', '320910', 'Japura Bakti', 3),
('3209112001', '320911', 'Getrakmoyan', 3),
('3209112002', '320911', 'Ender', 3),
('3209112003', '320911', 'Pangenan', 3),
('3209112004', '320911', 'Bendungan', 3),
('3209112005', '320911', 'Rawaurip', 3),
('3209112006', '320911', 'Beringin', 3),
('3209112007', '320911', 'Japura Lor', 3),
('3209112008', '320911', 'Pengarengan', 3),
('3209112009', '320911', 'Astana Mukti', 3),
('3209122001', '320912', 'Setupatok', 3),
('3209122002', '320912', 'Penpen', 3),
('3209122003', '320912', 'Mundumesigit', 3),
('3209122004', '320912', 'Luwung', 3),
('3209122005', '320912', 'Waruduwur', 3),
('3209122006', '320912', 'Citemu', 3),
('3209122007', '320912', 'Bandengan', 3),
('3209122008', '320912', 'Mundupesisir', 3),
('3209122009', '320912', 'Suci', 3),
('3209122010', '320912', 'Banjarwangunan', 3),
('3209122011', '320912', 'Pamengkang', 3),
('3209122012', '320912', 'Sinar Rancang', 3),
('3209132001', '320913', 'Wanayasa', 3),
('3209132002', '320913', 'Sindangkasih', 3),
('3209132003', '320913', 'Sindanghayu', 3),
('3209132004', '320913', 'Ciawigajah', 3),
('3209132008', '320913', 'Cikancas', 3),
('3209132009', '320913', 'Halimpu', 3),
('3209132010', '320913', 'Cipinang', 3),
('3209132011', '320913', 'Beber', 3),
('3209132012', '320913', 'Patapan', 3),
('3209132013', '320913', 'Kondangsari', 3),
('3209142001', '320914', 'Sampiran', 3),
('3209142002', '320914', 'Ciperna', 3),
('3209142003', '320914', 'Kecomberan', 3),
('3209142004', '320914', 'Cirebon Girang', 3),
('3209142005', '320914', 'Kerandon', 3),
('3209142006', '320914', 'Wanasaba Kidul', 3),
('3209142007', '320914', 'Wanasaba Lor', 3),
('3209142008', '320914', 'Cempaka', 3),
('3209142009', '320914', 'Kepongpongan', 3),
('3209142010', '320914', 'Sarwadadi', 3),
('3209142011', '320914', 'Kubang', 3),
('3209151003', '320915', 'Babakan', 4),
('3209151004', '320915', 'Sumber', 4),
('3209151005', '320915', 'Perbutulan', 4),
('3209151006', '320915', 'Kaliwadas', 4),
('3209151007', '320915', 'Pasalakan', 4),
('3209151008', '320915', 'Watubelah', 4),
('3209151009', '320915', 'Pejambon', 4),
('3209151010', '320915', 'Gegunung', 4),
('3209151011', '320915', 'Kemantren', 4),
('3209151012', '320915', 'Sendang', 4),
('3209151013', '320915', 'Tukmudal', 4),
('3209151014', '320915', 'Kenanga', 4),
('3209152001', '320915', 'Matangaji', 3),
('3209152002', '320915', 'Sidawangi', 3),
('3209162001', '320916', 'Bobos', 3),
('3209162002', '320916', 'Cikalahang', 3),
('3209162003', '320916', 'Mandala', 3),
('3209162004', '320916', 'Dukupuntang', 3),
('3209162005', '320916', 'Balad', 3),
('3209162006', '320916', 'Cangkoak', 3),
('3209162007', '320916', 'Cisaat', 3),
('3209162008', '320916', 'Sindangmekar', 3),
('3209162009', '320916', 'Sindangjawa', 3),
('3209162010', '320916', 'Kepunduan', 3),
('3209162011', '320916', 'Girinata', 3),
('3209162012', '320916', 'Cipanas', 3),
('3209162013', '320916', 'Kedongdong Kidul', 3),
('3209172002', '320917', 'Cilukrak', 3),
('3209172003', '320917', 'Kepuh', 3),
('3209172004', '320917', 'Balerante', 3),
('3209172005', '320917', 'Panongan', 3),
('3209172006', '320917', 'Beberan', 3),
('3209172007', '320917', 'Semplo', 3),
('3209172008', '320917', 'Palimanan Timur', 3),
('3209172011', '320917', 'Pegagan', 3),
('3209172012', '320917', 'Lungbenda', 3),
('3209172013', '320917', 'Ciawi', 3),
('3209172014', '320917', 'Tegalkarang', 3),
('3209172015', '320917', 'Cengkuang', 3),
('3209182001', '320918', 'Cempaka', 3),
('3209182002', '320918', 'Pamijahan', 3),
('3209182003', '320918', 'Lurah', 3),
('3209182004', '320918', 'Marikangen', 3),
('3209182005', '320918', 'Bode Lor', 3),
('3209182006', '320918', 'Bodesari', 3),
('3209182007', '320918', 'Gombang', 3),
('3209182008', '320918', 'Karangmulya', 3),
('3209182009', '320918', 'Karangasem', 3),
('3209182010', '320918', 'Plumbon', 3),
('3209182011', '320918', 'Purbawinangun', 3),
('3209182012', '320918', 'Kebarepan', 3),
('3209182013', '320918', 'Pasanggrahan', 3),
('3209182014', '320918', 'Kedungsana', 3),
('3209182015', '320918', 'Danamulya', 3),
('3209192001', '320919', 'Karangsari', 3),
('3209192002', '320919', 'Kertasari', 3),
('3209192003', '320919', 'Megugede', 3),
('3209192004', '320919', 'Megucilik', 3),
('3209192005', '320919', 'Setu Wetan', 3),
('3209192006', '320919', 'Setu Kulon', 3),
('3209192007', '320919', 'Weru Kidul', 3),
('3209192008', '320919', 'Weru Lor', 3),
('3209192009', '320919', 'Tegalwangi', 3),
('3209202004', '320920', 'Kedungdawa', 3),
('3209202005', '320920', 'Kalikoa', 3),
('3209202006', '320920', 'Tuk', 3),
('3209202007', '320920', 'Kedungjaya', 3),
('3209202008', '320920', 'Kedawung', 3),
('3209202009', '320920', 'Kertawinangun', 3),
('3209202010', '320920', 'Sutawinangun', 3),
('3209202011', '320920', 'Pilangsari', 3),
('3209212001', '320921', 'Adidharma', 3),
('3209212002', '320921', 'Pasindangan', 3),
('3209212003', '320921', 'Jadimulya', 3),
('3209212004', '320921', 'Klayan', 3),
('3209212005', '320921', 'Jatimerta', 3),
('3209212006', '320921', 'Astana', 3),
('3209212007', '320921', 'Kalisapu', 3),
('3209212008', '320921', 'Wanakaya', 3),
('3209212009', '320921', 'Grogol', 3),
('3209212010', '320921', 'Babadan', 3),
('3209212011', '320921', 'Buyut', 3),
('3209212012', '320921', 'Mayung', 3),
('3209212015', '320921', 'Mertasinga', 3),
('3209222010', '320922', 'Kertasura', 3),
('3209222011', '320922', 'Pegagan Kidul', 3),
('3209222012', '320922', 'Pegaan Lor', 3),
('3209222013', '320922', 'Dukuh', 3),
('3209222014', '320922', 'Karangkendal', 3),
('3209222015', '320922', 'Grogol', 3),
('3209222016', '320922', 'Kapetakan', 3),
('3209222017', '320922', 'Bungko', 3),
('3209222018', '320922', 'Bungko Lor', 3),
('3209232001', '320923', 'Serang', 3),
('3209232002', '320923', 'Klangenan', 3),
('3209232003', '320923', 'Danawinangun', 3),
('3209232007', '320923', 'Pakantingan', 3),
('3209232008', '320923', 'Jemaras Kidul', 3),
('3209232009', '320923', 'Jemaras Lor', 3),
('3209232010', '320923', 'Slangit', 3),
('3209232011', '320923', 'Kreyo', 3),
('3209232012', '320923', 'Bangodua', 3),
('3209242001', '320924', 'Sende', 3),
('3209242002', '320924', 'Jungjang Wetan', 3),
('3209242003', '320924', 'Jungjang', 3),
('3209242004', '320924', 'Arjawinangun', 3),
('3209242005', '320924', 'Tegalgubug', 3),
('3209242006', '320924', 'Tegal Gubug Lor', 3),
('3209242007', '320924', 'Rawagatel', 3),
('3209242008', '320924', 'Karangsambung', 3),
('3209242009', '320924', 'Bulak', 3),
('3209242010', '320924', 'Geyongan', 3),
('3209242011', '320924', 'Kebonturi', 3),
('3209252001', '320925', 'Kalianyar', 3),
('3209252002', '320925', 'Pangurangan Kulon', 3),
('3209252003', '320925', 'Pangurangan Wetan', 3),
('3209252004', '320925', 'Pangurangan Lor', 3),
('3209252005', '320925', 'Pangurangan', 3),
('3209252006', '320925', 'Gujeg', 3),
('3209252007', '320925', 'Lemahtamba', 3),
('3209252008', '320925', 'Karanganyar', 3),
('3209252009', '320925', 'Kroya', 3),
('3209262004', '320926', 'Budur', 3),
('3209262005', '320926', 'Babakan', 3),
('3209262006', '320926', 'Ciwaringin', 3),
('3209262007', '320926', 'Gintungranjeng', 3),
('3209262008', '320926', 'Gintung Kidul', 3),
('3209262009', '320926', 'Gintung Tengah', 3),
('3209262010', '320926', 'Bringin', 3),
('3209262011', '320926', 'Galagamba', 3),
('3209272001', '320927', 'Tangkil', 3),
('3209272002', '320927', 'Wiyong', 3),
('3209272003', '320927', 'Kedongdong', 3),
('3209272004', '320927', 'Gintung Lor', 3),
('3209272005', '320927', 'Bojong Kulon', 3),
('3209272006', '320927', 'Kejiwan', 3),
('3209272007', '320927', 'Susukan', 3),
('3209272008', '320927', 'Luwung Kencana', 3),
('3209272009', '320927', 'Bunder', 3),
('3209272010', '320927', 'Jatipura', 3),
('3209272011', '320927', 'Ujunggebang', 3),
('3209272012', '320927', 'Jatianom', 3),
('3209282001', '320928', 'Kedungdalem', 3),
('3209282002', '320928', 'Panunggul', 3),
('3209282003', '320928', 'Gegesik Wetan', 3),
('3209282004', '320928', 'Gegesik Kidul', 3),
('3209282005', '320928', 'Gegesik Lor', 3),
('3209282006', '320928', 'Gegesik Kulon', 3),
('3209282007', '320928', 'Slendra', 3),
('3209282008', '320928', 'Jagapura Kidul', 3),
('3209282009', '320928', 'Jagapura Wetan', 3),
('3209282010', '320928', 'Jagapura Kulon', 3),
('3209282011', '320928', 'Jagapura Lor', 3),
('3209282012', '320928', 'Sibubut', 3),
('3209282013', '320928', 'Bayalangu Lor', 3),
('3209282014', '320928', 'Bayalangu Kidul', 3),
('3209292001', '320929', 'Kalideres', 3),
('3209292002', '320929', 'Prajawinangun Kulon', 3),
('3209292003', '320929', 'Prajawinangun Wetan', 3),
('3209292004', '320929', 'Ujungsemi', 3),
('3209292005', '320929', 'Wargabinangun', 3),
('3209292006', '320929', 'Kaliwedi Lor', 3),
('3209292007', '320929', 'Kaliwedi Kidul', 3),
('3209292008', '320929', 'Guwa Kidul', 3),
('3209292009', '320929', 'Guwa Lor', 3),
('3209302001', '320930', 'Dompyong Kulon', 3),
('3209302002', '320930', 'Dompyong Wetan', 3),
('3209302003', '320930', 'Kalimekar', 3),
('3209302004', '320930', 'Kalimoro', 3),
('3209302005', '320930', 'Gagasari', 3),
('3209302006', '320930', 'Kalipasung', 3),
('3209302007', '320930', 'Gebang Kulon', 3),
('3209302008', '320930', 'Gebang', 3),
('3209302009', '320930', 'Gebang Ilir', 3),
('3209302010', '320930', 'Gebang Udik', 3),
('3209302011', '320930', 'Gebang Mekar', 3),
('3209302012', '320930', 'Pelayangan', 3),
('3209302013', '320930', 'Melakasari', 3),
('3209312001', '320931', 'Cikeduk', 3),
('3209312002', '320931', 'Warujaya', 3),
('3209312003', '320931', 'Warukawung', 3),
('3209312004', '320931', 'Warugede', 3),
('3209312005', '320931', 'Waruroyom', 3),
('3209312006', '320931', 'Depok', 3),
('3209312007', '320931', 'Kasugengan Kidul', 3),
('3209312008', '320931', 'Kasugengan Lor', 3),
('3209312009', '320931', 'Keduanan', 3),
('3209312010', '320931', 'Kejuden', 3),
('3209312011', '320931', 'Getasan', 3),
('3209312012', '320931', 'Karangwangi', 3),
('3209322001', '320932', 'Tonjong', 3),
('3209322002', '320932', 'Tanjunganom', 3),
('3209322003', '320932', 'Cilengkrang Girang', 3),
('3209322004', '320932', 'Cilengkrang', 3),
('3209322005', '320932', 'Pasaleman', 3),
('3209322006', '320932', 'Cigobang Wangi', 3),
('3209322007', '320932', 'Cigobang', 3),
('3209332001', '320933', 'Sukadana', 3),
('3209332002', '320933', 'Pabuaran Kidul', 3),
('3209332003', '320933', 'Pabuaran Wetan', 3),
('3209332004', '320933', 'Pabuaran Lor', 3),
('3209332005', '320933', 'Jatirenggang', 3),
('3209332006', '320933', 'Hulubanteng', 3),
('3209332007', '320933', 'Hulubanteng Lor', 3),
('3209342001', '320934', 'Seuseupan', 3),
('3209342002', '320934', 'Blender', 3),
('3209342003', '320934', 'Sumurkondang', 3),
('3209342004', '320934', 'Kubangdeleg', 3),
('3209342005', '320934', 'Jatipiring', 3),
('3209342006', '320934', 'Karanganyar', 3),
('3209342007', '320934', 'Karangwangi', 3),
('3209342008', '320934', 'Karangwareng', 3),
('3209342009', '320934', 'Karangasem', 3),
('3209352001', '320935', 'Palir', 3),
('3209352002', '320935', 'Astapada', 3),
('3209352003', '320935', 'Gesik', 3),
('3209352004', '320935', 'Kemlakagede', 3),
('3209352005', '320935', 'Dawuan', 3),
('3209352006', '320935', 'Battembat', 3),
('3209352007', '320935', 'Kalibaru', 3),
('3209352008', '320935', 'Kalitengah', 3),
('3209362001', '320936', 'Tegalsari', 3),
('3209362002', '320936', 'Kaliwulu', 3),
('3209362003', '320936', 'Panembahan', 3),
('3209362004', '320936', 'Trusmi Wetan', 3),
('3209362005', '320936', 'Trusmi Kulon', 3),
('3209362006', '320936', 'Wotgali', 3),
('3209362007', '320936', 'Gamel', 3),
('3209362008', '320936', 'Sarabau', 3),
('3209362009', '320936', 'Cankring', 3),
('3209362010', '320936', 'Pangkalan', 3),
('3209372001', '320937', 'Cikeusal', 3),
('3209372002', '320937', 'Palimanan Barat', 3),
('3209372003', '320937', 'Kedungbunder', 3),
('3209372004', '320937', 'Cupang', 3),
('3209372005', '320937', 'Gempol', 3),
('3209372006', '320937', 'Walahar', 3),
('3209372007', '320937', 'Kempek', 3),
('3209372008', '320937', 'Winong', 3),
('3209382001', '320938', 'Gumulung Lebak', 3),
('3209382002', '320938', 'Lebakmekar', 3),
('3209382003', '320938', 'Gumulung Tonggoh', 3),
('3209382004', '320938', 'Kamarang', 3),
('3209382005', '320938', 'Greged', 3),
('3209382006', '320938', 'Kamarang Lebak', 3),
('3209382007', '320938', 'Durajaya', 3),
('3209382008', '320938', 'Jatipancur', 3),
('3209382009', '320938', 'Sindang Kempeng', 3),
('3209382010', '320938', 'Nanggela', 3),
('3209392001', '320939', 'Sambeng', 3),
('3209392002', '320939', 'Sirnabaya', 3),
('3209392003', '320939', 'Muara', 3),
('3209392004', '320939', 'Purwawinangun', 3),
('3209392005', '320939', 'Keraton', 3),
('3209392006', '320939', 'Surakarta', 3),
('3209392007', '320939', 'Karangreja', 3),
('3209392008', '320939', 'Suranenggala Kidul', 3),
('3209392009', '320939', 'Suranenggala Kulon', 3),
('3209392010', '320939', 'Suranenggala Lor', 3),
('3209392011', '320939', 'Suranenggala', 3),
('3209402001', '320940', 'Jamblang', 3),
('3209402002', '320940', 'Sitiwinangun', 3),
('3209402003', '320940', 'Wangunharja', 3),
('3209402004', '320940', 'Bojong Wetan', 3),
('3209402005', '320940', 'Bojong Lor', 3),
('3209402006', '320940', 'Orimalang', 3),
('3209402007', '320940', 'Bakung Kidul', 3),
('3209402008', '320940', 'Bakung Lor', 3);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `villages`
--
ALTER TABLE `villages`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
