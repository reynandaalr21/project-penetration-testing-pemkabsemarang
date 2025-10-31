-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2022 at 01:02 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sitalitbang`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_berita`
--

CREATE TABLE `data_berita` (
  `id_berita` int(11) NOT NULL,
  `judul` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_upload` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `publish` int(11) NOT NULL DEFAULT 1 COMMENT '0:tidak;1:ya',
  `id_user_uploader` int(11) NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_detail_inovasi_perangkat_daerah`
--

CREATE TABLE `data_detail_inovasi_perangkat_daerah` (
  `id` int(11) NOT NULL,
  `id_data_inovasi_daerah` int(11) NOT NULL,
  `instansi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rancang_bangun` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `manfaat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_bentuk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_detail_inovasi_perangkat_daerah`
--

INSERT INTO `data_detail_inovasi_perangkat_daerah` (`id`, `id_data_inovasi_daerah`, `instansi`, `rancang_bangun`, `manfaat`, `id_bentuk`) VALUES
(8, 10, 'Dispendukcapil Kabupaten Semarang', 'Kebutuhan akan layanan administrasi kependudukan yang dekat dengan masyarakat, lebih cepat, tepat, akurat, mudah, dan murah yaitu dengan menggunakan sistem aplikasi SMARD di desa/kelurahan. Untuk mengatasi permasalahan diantaranya: 1. Masih banyak masyarakat yang kurang tertib administrasi kependudukan. 2. Adanya kesalahan redaksional, apabila masih dilakukan dengan tulisan tangan. 3. Data kependudukan yang tidak valid. 4. Sebagai alat bantu petugas registrasi desa.', '1. Membantu pelayanan dan pengolahan data kependudukan di desa/kelurahan. 2. Masyarakat makin dimudahkan dalam mengurus administrasi kependudukan. 3. Penggunaan teknologi informasi secara optimal untuk mendukung pelayanan administrasi 4. Data kependudukan yang valid.', 1),
(9, 13, 'Dispendukcapil Kabupaten Semarang', 'Untuk memberikan perlindungan, pengakuan, penentuan status pribadi dan status hukum setiap Peristiwa Kependudukan dan Peristiwa Penting yang dialami oleh Penduduk. Memberikan pelayanan yang lebih mudah dan lebih dekat sebagai pilihan pelayanan kepada masyarakat dalam melaporkan peristiwa penting yang dialaminya dalam hal ini adalah kelahiran yaitu dengan pelayanan pencatatan kelahiran di rumah sakit dan klinik bersalin.', '1. Data kependudukan menjadi lebih valid, karena perubahan status penduduk langsung berubah di database dan penduduk langsung mendapatkan Kutipan Akta Pencatatan Sipil (Kelahiran) termasuk KK yang baru dengan penambahan anggota keluarga (anak). 2. Berdampak psikologis pada masyarakat, kepuasan masyarakat akan kinerja aparat pemerintah sehingga mempengaruhi tingkat kepercayaan masyarakat terhadap pemerintah. 3. Angka cakupan kepemilikan akta meningkat.', 2),
(11, 15, 'Dinas Pariwisata Kabupaten Semarang', 'Pelaksanaan penerapan protokol kesehatan dalam bidang restoran/kuliner dengan berbagai health safety tools yang harus digunakan dalam menjalani kehidupan normal baru', 'Berjalannya usaha pariwisata khususnya bidang kuliner di tengah pandemi yang berdampak pada berputarnya roda ekonomi masyarakat', 2),
(12, 16, 'Dinas Pariwisata Kabupaten Semarang', 'Pelaksanaan penerapan protokol kesehatan dalam bidang perhotelan dengan berbagai health safety tools yang harus digunakan dalam menjalani kehidupan normal baru', 'Berjalannya usaha pariwisata di tengah pandemi yang berdampak pada berputarnya roda ekonomi masyarakat', 2),
(13, 17, 'Dinas Perhubungan Kabupaten Semarang', 'Merubah kebiasaan transportasi baik dari pengusaha angkot, sopir dan penumpang untuk membiasakan diri bersahabat dengan Covid-19 dengan pola hidup protokol kesehatan', 'Menggerakkan kembali roda perekonomian utamanya dari sektor perhubungan yang otomatis menggerakkan sektor lainnya pula', 2),
(14, 18, 'Dinas Koperasi, Usaha Mikro, Perindustrian dan Perdagangan', 'Penerapan Protokol Kesehatan sesuai dengan Surat Edaran Mentri Perdagangan Nomor 12 Tahun 2020 tentang Pemulihan Aktivitas Perdagangan yang Dilakukan Pada Masa Pandemi Corona Virus Disease (COVID-19) dan New Normal. Aktivitas Jual beli di Pasar mengikuti protokol kesehatan dan inovasi sebagai berikut: 1. Pelaksanaan Rapid Test & Penggunaan Masker, Face Shield dan Sarung Tangan. 2. Physical Distancing antar Pedagang. 3. Screenong dan Monitoring Suhu Tubuh Pedagang dan Pengunjung. 4. Penyediaan Tempat Cuci Tangan dan Penyemprotan Disinfektan. 5. Pengaturan Sirkulasi Arus Pengunjung dan Optimalisasi Ruang Terbuka', '1. Tetap berlangsungnya aktivitas ekonomi di Pasar Tradisional', 2),
(15, 19, 'Dinas Pariwisata', 'Pelaksanaan penerapan protokol kesehatan dalam bidang daya tarik wisata dengan berbagai health safety tools yang harus digunakan dalam menjalani kehidupan normal baru', 'Berjalannya usaha pariwisata khususnya bidang daya tarik wisata di tengah pandemi yang berdampak pada berputarnya roda ekonomi masyarakat', 2),
(16, 20, 'DPMPTS Kabupaten Semarang', 'Fasilitasi pelayanan OSS kepada pelaku usaha secara daring (dalam jaringan)', 'Bagi pelaku usaha: efektif dan efisien serta aman (tidak harus melakukan tatap muka langsung). Bagi DPMPTSP: SOP tetap bisa dijalani secara jarak jauh.', 2),
(17, 21, 'BKUD Kabupaten Semarang', 'Dalam rangka memberikan kemudahan pelayanan kepada masyarakat dalam hal perpajakan khususnya PBB. Maka Pemerintah Daerah menerbitkan e-SPPT. Pelayanan PBB yang sebelumnya masih manual, dengan menggunakan e-SPPT sudah menjadi berbasis komputerisasi/digital. ', 'Masyarakat menjadi mudah dalam memperoleh informasi tentang PBB. ', 2),
(18, 22, 'BKD Kabupaten Semarang', 'Mengubah metode manual ke digital, yaitu dengan menggunakan aplikasi yang dapat diakses secara online sehingga dapat dilakukan dimana saja dan kapan saja agar lebih efektif dan efisien', 'Redistribusi pejabat pelaksana untuk mendukung pengembangan karier PNS di Pemerintah Kabupaten Semarang', 2),
(19, 23, 'BKD', 'Proses KGB bagi PNS dengan proses Online melalui online dan terintegrasi dengan sistem kepegawaian yaitu E-PERSONAL sehingga memudahkan para pengelola kepegawaian Perangkat Daerah dalam pelaksanaannya dan memerlukan waktu yang singkat dalam prosesnya', '1. Bagi BKD: - Ketepatan waktu pelayanan KGB dan pensiun. - Terwujudnya pelayanan kepegawaian yang profesional. 2. Bagi perangkat Daerah: - Adanya integrasi data. - Meningkatakan mutu pelayanan kepegawaian. 3. Bagi Pemerintah Secara Umum: - Menciptakan birokrasi pemerintah yang profesional, berkinerja tinggi, bebas dan bersih KKN. 4. Bagi PNS: - Meminimalis keterlambatan pengajuan KGB dan pensiun. - Mencegah potensi terjadinya pungli.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `data_detail_inovasi_umum`
--

CREATE TABLE `data_detail_inovasi_umum` (
  `id` int(11) NOT NULL,
  `id_data_inovasi_daerah` int(11) NOT NULL,
  `metode` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `komponen` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahapan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `penanggung_jawab` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidang` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_detail_inovasi_umum`
--

INSERT INTO `data_detail_inovasi_umum` (`id`, `id_data_inovasi_daerah`, `metode`, `komponen`, `tahapan`, `penanggung_jawab`, `bidang`) VALUES
(3, 11, '1.Mengolah enceng gondok menjadi kerajinan 2. Membuka ruang berkreasi dan berkarya bagi masyarakat sekitar 3. Meningkatkan taraf hidup masyarakat', 'Enceng gondok', 'Penerapan', 'Firman Setyaji', 'Pemberdayaan Masyarakat'),
(4, 12, '1. Pembuatan Media Belajar Garuda Sakti 2. Pembuatan Modul Tematik 3. Pembuatan Aplikasi Pembelajaran', 'Kayu, Paku, Triplex, Papan, Cat', 'Penerapan di SD Kemawi ', 'Nurudin', 'Pendidikan');

-- --------------------------------------------------------

--
-- Table structure for table `data_dokumentasi_inovasi_daerah`
--

CREATE TABLE `data_dokumentasi_inovasi_daerah` (
  `id_dokumentasi` int(11) NOT NULL,
  `id_data_inovasi_daerah` int(11) NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_dokumentasi_inovasi_daerah`
--

INSERT INTO `data_dokumentasi_inovasi_daerah` (`id_dokumentasi`, `id_data_inovasi_daerah`, `file`) VALUES
(6, 10, 'uploads/inovasi/2020/11/201118075438_526.jpg'),
(7, 11, 'uploads/inovasi/2020/11/201118080559_178.jpeg'),
(8, 12, 'uploads/inovasi/2020/11/201118082752_106.jpg'),
(9, 13, 'uploads/inovasi/2020/11/201118083552_148.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `data_inovasi_daerah`
--

CREATE TABLE `data_inovasi_daerah` (
  `id_data_inovasi_daerah` int(11) NOT NULL,
  `judul` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tujuan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `anggaran` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_video` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` int(11) NOT NULL COMMENT '1:perangkat daerah; 2:umum',
  `id_user_uploader` int(11) NOT NULL,
  `visitor` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_inovasi_daerah`
--

INSERT INTO `data_inovasi_daerah` (`id_data_inovasi_daerah`, `judul`, `tujuan`, `anggaran`, `link_video`, `tahun`, `kategori`, `id_user_uploader`, `visitor`) VALUES
(10, 'Aplikasi SMARD (Sistem Informasi Manajemen Administrasi Desa/Kelurahan)', '1. Memudahkan masyarakat dalam mengurus administrasi kependudukan. 2. Mengurangi kesalahan redaksional yaitu dengan bantuan sistem aplikasi SMARD ini. 3. Membantu petugas registrasi dalam penerbitan formulir kependudukan dan pencatatan sipil. 4. Membantu mendata penduduk non permanen. 5. Mempercepat proses administrasi kependudukan di Disdukcapil.', '-', 'https://youtu.be/rAVVHIBkVA0', '2014', 1, 1, 13),
(11, 'Bengok Craft - Upcycle Enceng Gondok', 'Kami, Bengok Craft, berkeinginan untuk meningkatkan taraf hidup masyarakat dengan mengolah enceng gondok menjadi aneka barang kerajinan, dengan turut melibatkan warga sekitar. Sehingga nantinya tempat kami tidak hanya dikenal sebagai penghasil enceng gondok, tetapi juga bisa menjadi sentra kerajinan enceng gondok dengan para perajin yang diinisiasi oleh warga.', 'Alokasi biaya jasa diperuntukkan untuk meningkatkan taraf hidup masyarakat dan usaha kerakyatannya. Perhitungan tiap kreasi 1/3 dari harga jual untuk biaya jasa, 1/3 untuk alat dan bahan produksi, 1/3 lagi untuk pengembangan. Dari konsep itu, Bengok Craft mulai berkembang dengan adanya penambahan asset produksi maupun asset jual. Bengok Craft juga bisa mengikuti event secara mandiri dan mulai mengadakan pelatihan untuk warga yang dialokasikan dari sisa hasil usaha.', 'https://www.youtube.com/watch?v=hAjROYuoA4A', '2019', 2, 1, 6),
(12, 'Media Pembelajaran 3 in 1 (Three in One) yang meliputi Media Garuda Sakti, Modul Pembelajaran dan Aplikasi Pembelajaran', 'Tujuan dari pembuatan media pembelajaran ini adalah untuk membantu siswa yang masih mengalami kesulitan dalam memahami materi pada saat kegiatan pembelajaran di dalam kelas, meningkatkan hasil hasil belajar siswa, membantu siswa memahami materi yang di sampaikan oleh guru secara menyeluru, meningkatkan kreatifitas seorang guru dalam menyampaikan materi pembelajaran dan menambah kemampuan guru dalam menggunakan alat peraga yang sesuai dengan materi yang akan di ajarkan. Dengan adanya media pembelajaran ini, tujuan pembelajaran yang hendak dicapai oleh guru dan siswa akan menjadi lebih mudah.', '500.000', 'https://youtu.be/7BfDF0x01XU', '2019', 2, 1, 0),
(13, 'Balaputradewa (Bayi Lahir Pulang Beserta Akta Dengan Wajah Ceria)', '1. Proses pelayanan administrasi kependudukan menjadi lebih mudah dan efektif baik waktu dan persyaratan. 2. Proses lebih sederhana karena pemohon cukup melampirkan persyaratan kemudian diurus oleh pihak rumah sakit. 3. Adanya peningkatan kesadaran masyarakat terhadap pentingnya Dokumen Kependudukan', '-', 'https://youtu.be/BSGiTkuz6EE', '2017', 1, 1, 0),
(15, 'Culinary in normal life', 'Aman menjalani kehidupan normal dengan mengantisipasi pencegahan penyebaran covid-19', '-', '-', '2020', 1, 1, 1),
(16, 'Hospitality in new normal life', 'Aman menjalani kehidupan normal dengan mengantisipasi pencegahan penyebaran covid-19', '-', '-', '2020', 1, 1, 0),
(17, 'Angkot Resik Seko Covid-19 (ASIK COVID-19)', 'Melaksanakan new normal dengan aman dan produktif dengan mengutamakan protokol kesehatan dan tak lupa standart keamanan berkendaraan', '-', '-', '2020', 1, 1, 1),
(18, 'Pasar Trandisional Bersahabat (BERsih, Sehat, Aman, HArga Bersaing dan hemaT)', 'Mempertahankan dan meningkatkan aktivitas ekonomi masyarakat di pasar tradisional dengan tetap mengedepankan aspek kesehatan dalam pelaksanaannya', '-', '-', '2020', 1, 1, 1),
(19, 'Tourist attraction in new normal life', 'Aman menjalani kehidupan normal dengan mengatisipasi pencegahan penyebaran covid-19', '-', '-', '2020', 1, 1, 1),
(20, 'Pelayanan Perijinan DPMTS Kabupaten Semarang Pada Masa Pandemi Covid-19', 'Pelayanan perijinan secara cepat, mudah, aman dan mengacu protocol kesehatan', '-', '-', '2020', 1, 1, 0),
(21, 'e-SPPT', 'Memberikan pelayanan yang maksimal kepada Wajib Pajak dan Perangkat Desa khususnya dalam hal PBB. ', '-', '-', '2019', 1, 1, 1),
(22, 'Redistribusi Pejabat Pelaksana Pada Pemerintah Kabupaten Semarang Secara Online Melalui E-Mutasi', 'Untuk mewujudkan tata kelola redistribusi pejabat pelaksana berbasis online di lingkungan Pemerintah Kabupaten Semarang secara transparan, akuntabel dan partisipatif', '-', '-', '2018', 1, 1, 2),
(23, 'Kenaikan Gaji Berkala (KGB) PNS Secara Online', 'Mewujudkan pelayanan administrasi', '-', '-', '2019', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `data_member`
--

CREATE TABLE `data_member` (
  `id_member` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_lengkap` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_member`
--

INSERT INTO `data_member` (`id_member`, `id_user`, `nama_lengkap`, `email`, `alamat`, `no_hp`) VALUES
(1, 1, 'Admin', 'suryaoktana@gmail.com', 'Ungaran', '085641388439'),
(7, 9, 'surya oktana', 'suryaoktana@gmail.com', 'ungaran', '08561111222'),
(8, 10, 'test', 'aaa', 'aaa', 'aa'),
(9, 11, 'Barenlitbangda Kabupaten Semarang', 'litbang.kabsemarang@gmail.com', 'Jl. Gatot Subroto No. 20', '085800736085'),
(10, 12, 'Uswatun Marifah', 'uswatunmarifah@gmail.com', 'Ungaran', '085800736085'),
(11, 13, 'Inspektorat', 'inspektoratkabsemarang@gmail.com', 'Ungaran', '-'),
(12, 14, 'Wahyu Jatmiko', 'whyjat@yahoo.co.id', 'Ungaran', '-'),
(13, 15, 'Ana Rochmawati', 'anaqonita83@gmail.com', 'Ungaran', '-'),
(14, 16, 'Harfri Lazuardi', 'bppdkabsemarang@gmail.com', 'Ungaran', '-'),
(15, 17, 'Bayu', 'bay.bm@gmail.com', 'Ungaran', '-'),
(16, 18, 'Yashinta', 'subbagumpeg19@gmail.com', 'Ungaran', '-'),
(17, 19, 'Eko', 'dpukabsemarang.mm@gmail.com', 'Ungaran', '-'),
(18, 20, 'Agung ', 'agungm1175@gmail.com', 'Ungaran', '-'),
(19, 21, 'Rozaq', 'm.aburrozaq01@gmail.com', 'Ungaran', '-'),
(20, 22, 'Supriyanto', 'prietana@gmail.com', 'Ungaran', '-'),
(21, 23, 'Pito', 'satpolkabsemarang@gmail.com', 'Ungaran', '-'),
(22, 24, 'Wulan Roofiah', 'wulan.roofiah@gmail.com', 'Ungaran', '-'),
(23, 25, 'Eka Yuliyanti', 'yuliyantieka@gmail.com', 'Ungaran', '-'),
(24, 26, 'Suseno', 'susenohenyk2@gmail.com', 'Ungaran', '-'),
(25, 27, 'Yulia Ambar', 'ambar6630@gmail.com', 'Ungaran', '-'),
(26, 28, 'Anita', 'anita@gmail.com', 'Ungaran', '-'),
(27, 29, 'Cahyo', 'kominfo@semarangkab', 'Ungaran', '-'),
(28, 30, 'Rizky', 'frozen5522@gmail.com', 'ungaran', '-'),
(29, 31, 'Taufiq', 'haryakif@gmail.com', 'Ungaran', '-'),
(30, 32, 'Stefanus David Rainbow', 'davidrio1210@gmail.com', 'Dinas Kearsipan dan Perpustakaan Kab.Semarang', '-'),
(31, 33, 'Elisabeth', 'bagiantatapemerintahan2014@gmail.com', 'Ungaran', '-'),
(32, 34, 'Damuri', 'damuriassalafia@gmail.com', 'Ungaran', '-'),
(33, 35, 'Venny', 'monevkabag@gmail.com', 'Ungaran', '-'),
(34, 36, 'Endri', 'tatalaksana.semarangkab@gmail.com', 'Ungaran', '-'),
(35, 37, 'Lisa', 'lisa.revania@gmail.com', 'Ungaran', '-'),
(36, 38, 'Heni', 'hensetyawati@gmail.com', 'Ungaran', '-'),
(37, 39, 'Agung', 'agung.salatigaweb@gmail.com', 'Ambarawa', '-'),
(38, 40, 'Triatmo', 'bundanyamas@gmail.com', 'Ambarawa', '-'),
(39, 41, 'Mafud Fauzi', 'mahfudpb@gmail.com', 'Ungaran', '-'),
(40, 42, 'Devi Mariana', 'marianadevi2703@gmail.com', 'Ungaran', '-'),
(41, 43, 'Andang Purwanto', 'andang.purwanto@gmail.com', 'Klaiwungu', '-'),
(42, 44, 'Dadi edtu', 'dadikestu@gmail.com', 'Jambu', '-'),
(43, 45, 'Azizah', 'kutilanasi90@gmail.com', 'Getasan', '-'),
(44, 46, 'Probo Dewi', 'probodewi8444@gmail.com', 'Banyubiru', '-'),
(45, 47, 'Rahayu ', 'rahayuwijiastuti1@gmail.com', 'Bergas', '-'),
(46, 48, 'Purwadi', 'ppmd_bringin@yahoo.com', 'Bringin', '-'),
(47, 49, 'Yossy ', 'arisantiyossy@gmail.com', 'Bawen', '-'),
(48, 50, 'Widi Artanti', 'widiartanti@gmail.com', 'Dusun Karanglo RT 05 RW 01 Kenteng Bandungan', '08113864797'),
(49, 51, 'Sri Winarni', 'Desa Rembes RT 01 RW 01 Kecamatan Bringin Kab. Semarang', 'Desa Rembes RT 01 RW 01 Kecamatan Bringin Kab. Semarang', '083842486756'),
(50, 52, 'Alfa Mabruk', 'udienirfan@gmail.com', 'Dusun Krajan, Rt06, Rw01, Desa Bedono, Kecamatan Jambu, Kabupaten Semarang', '085803367165'),
(51, 53, 'BLKK Bustanut Tholibin', 'baguspras151@gmai.com', 'DUSUN KRAJAN1 RT03 RW 2 DESA TEGARON KEC. BANYUBIRU KAB. SEMARANG', '088232554233'),
(52, 54, 'Dheasey Amboningtyas', 'dheasey.amboningtyas11@gmail.com', 'JL. Vila Sapen Indah No 20', '081327752994'),
(53, 55, 'Riri Sri Hayati', 'bupied@gmail.com', 'Ungaran', '-'),
(54, 56, 'Choirul Anam', 'dp3akbkabsemarang@gmail.com', 'Ungaran', '-'),
(55, 57, 'Budi', 'budibagus67@gmail.com', 'Suruh', '-'),
(56, 58, 'Yuwanti Suhari', 'ungbarkec@gmail.com', 'Ungaran Barat', '-'),
(57, 59, 'Masyudi', 'kecbancak@gmail.com', 'Bancak', '-'),
(58, 60, 'Dewo Leksono', 'tengaran14@gmail.com', 'Tengaran', '-'),
(59, 61, 'Budi Sugito', 'kecamatan.susukan@gmail.com', 'Susukan', '-'),
(60, 62, 'Ristyawan', 'pankes.tristyawan@gmail.com', 'Pabelan', '-'),
(61, 63, 'Margiyono', 'margi.yono1@gmail.com', 'Ungaran Timur', '-'),
(62, 64, 'Bambang', 'disporabudparkabsmg@gmail.com', 'Ungaran', '-'),
(63, 65, 'Sapto', 'kecbandungan1@gmail.com', 'Bandungan', '-'),
(64, 66, 'Retno', 'kecamatantuntang76@gmail.com', 'Tuntang', '-'),
(65, 67, 'Kesra', 'bagiankesrakabsemarang@gmail.com', 'Ungaran', '-'),
(66, 68, 'Suwito', 'setwan2015@gmail.com', 'UNgaran', '-'),
(67, 69, 'Dinas Sosial', 'dinsoskabsmg@gmail.com', 'Jl. Letjen Suprapto No. 7A Ungaran', '089686222559');

-- --------------------------------------------------------

--
-- Table structure for table `data_penelitian`
--

CREATE TABLE `data_penelitian` (
  `id_data_penelitian` int(11) NOT NULL,
  `judul` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user_uploader` int(11) NOT NULL,
  `penulis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `instansi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `abstraksi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_bidang` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish` int(11) NOT NULL DEFAULT 0 COMMENT '0:tidak;1:ya',
  `waktu_upload` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `visitor` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_penelitian`
--

INSERT INTO `data_penelitian` (`id_data_penelitian`, `judul`, `id_user_uploader`, `penulis`, `instansi`, `abstraksi`, `id_bidang`, `tahun`, `file`, `publish`, `waktu_upload`, `visitor`) VALUES
(1, 'Flovanoid Total dan Potensi Antioksidan Bunga Telang (Clitoria ternatea L.) sebagai Tanaman Fungsional Kabupaten Semarang', 1, 'Rissa Laila Vifta, Nani Winarti, Supiani Rahayu', 'Universitas Ngudi Waluyo ', 'Radikal bebas merupakan senyawa yang dapat menyerang struktur tubuh dan mengakibatkan beberapa penyakit, seperti arterosklerosis, jantung koroner, stroke, gagal ginjal, dan proses penuaan. Antioksidan merupakan senyawa atau zat yang dapat menangkal reaksi oksidasi yang disebabkan oleh adanya radikal bebas. Senyawa flavonoid pada beberapa bahan alam telah diketahui memiliki aktifitas sebagai antioksidan alami. Bunga telang (Clitoria ternatea L.) merupakan salah satu tanaman khas Kabupaten Semarang yang diketahui mengandung senyawa aktif flavonoid. Penarikan senyawa aktif pada bunga telang dapat dilakukan melalui pemilihan pelarut sesuai kepolaran senyawa aktif. Tujuan penelitian ini. Untuk menganalisis kandungan flavonoid dan aktifitas antioksidan dari bunga telang menggunakan pelarut etanol dan etil asetat. Jenis penelitian adalah eksperimental laboratorium dengan metode pengujian aktifitas antioksidan menggunakan metode FRAP (Ferric Reducing Antioxidant Power). Hasil uji flavonoid total menghasilkan kandungan flavonoid sebesar 57.85±0.31 mg QE/gram pada ekstrak etil asetat dan 60.79±0.14 mg QE/gram pada ekstrak etanol bunga telang. Pengujian aktivitas antioksidan memberikan hasil dengan nilai IC50 ekstrak etil asetat sebesar 3,57±0.07 mg/L dan ekstrak etanol 3,31±0.09 mg/L dengan hasil uji T-test menunjukkan tidak ada perbedaan yang signifikan kandungan flavonoid total serta aktivitas antioksidan pada ekstrak etil asetat dan etanol bunga telang. \nKata kunci: Antioksidan, Bunga Telang, Flavonoid, FRAP, Radikal Bebas \n', 2, 2020, 'uploads/penelitian/2020/12/201208084303_466.pdf', 1, '2022-05-03 10:18:07', 11),
(2, 'Ekstrak Daging Labu Kuning (Cucurbita maxima D) sebagai Alternatif Terapi Penurunan Kadar Asam Urat secara In Vivo', 1, 'Istianatus Sunnah, Agitya Resti Erwiyani, Lyda Walida Awwalin, Mega Silvi Aprilliani', 'Universitas Ngudi Waluyo', 'Hiperurisemia merupakan keadaan yang ditandai dengan meningkatnya kadar asam  urat dalam darah yaitu diatas 7,0 mg/dL pada pria dan diatas 6,0 mg/dL pada wanita. Salah satu pengobatan alternatif yang dapat digunakan untuk menurunkan kadar asam urat adalah ekstrak etanol daging labu kuning (Cucurbita maxima D.) yang mengandung senyawa metabolit sekunder flavonoid dan terpenoid. Penelitian ini dilakukan untuk menganalisis  efektivitas pemberian ekstrak etanol daging labu kuning (Cucurbita  maxima D.) terhadap penurunan kadar asam urat secara in vivo. Hewan uji tikus jantan galur wistar digunakan pada penelitian ini, terbagi menjadi 5 kelompok perlakuan yaitu kelompok kontrol negatif (CMC Na 1% + Aquadest), kelompok kontrol positif (Allopurinol dosis 12,6 mg/KgBB), kelompok perlakuan I (dosis ekstrak  200 mg/KgBB), kelompok perlakuan II ( dosis ekstrak  400 mg/KgBB), kelompok perlakuan III (dosis ekstrak  800 mg/KgBB). Peningkatan kadar asam urat menggunakan induksi campuran jus hati ayam + melinjo (1:1). Pengukuran kadar asam urat dilakukan secara triplo menggunakan fotometer Optiva dengan panjang gelombang 520 nm.  Selisih data pre test dan post test dianalisa menggunakan SPSS versi 25,0 for Windows dengan uji ANOVA satu jalan dengan taraf kepercayaan 95%. Hasil penelitian menunjukkan bahwa ekstrak daging labu kuning memiliki kandungan senyawa metabolit apigenin, luteolin, myricetin dan quercetin sebagai jenis flavonoid dan terpenoid  yang mampu menghambat enzim xantin oksidase yang menyebabkan tingginya  kadar asam urat. Dosis efektif ekstrak  yang mampu menurunkan kadar asam urat yang  sebanding dengan  Allopurinol 12,6 mg/KgBB adalah 800 mg/KgBB. \nKata kunci : Hiperurisemia, Cucurbita maxima D, Flavonoid, Terpenoid\n', 2, 0, 'uploads/penelitian/2020/11/201116104728_338.pdf', 1, '2022-05-03 10:18:07', 1),
(3, 'Analisis Sektor Potensial Dalam Penyerapan Tenaga Kerja di Kabupaten Semarang Tahun 2019', 1, 'Mitha Fitria Anggraini, Lu\'lu\'il Munawaroh, Rois Saida Sanjaya', 'Universitas Negeri Semarang', 'Otonomi daerah sebagai hak, wewenang, dan kewajiban setiap daerah untuk mampu meningkatkan kemampuannya dalam mengelola potensi yang ada. Kondisi geografis Kabupaten Semarang yang strategis dengan potensi sumberdaya air melimpah serta banyaknya objek-objek wisata dapat mendukung peningkatkan pertumbuhan ekonomi. Penelitian ini bertujuan untuk mengetahui struktur perekomomian Kabupaten Semarang terhadap perekonomian Provinsi Jawa Tengah serta mengetahui sektor-sektor ekonomi unggulan dalam penyerapan tenaga kerja. Analisis  yang digunakan dalam penelitian ini adalah Analisis Tipologi Klassen, Analisis Location Quotient, Analisis Model Rasio Pertumbuhan, Analisis Penyerapan Angkatan Kerja Sektoral dan Analisis Overlay. Hasil penelitian menyatakan Kabupaten Semarang merupakan salah satu kabupaten di Provinsi Jawa Tengah yang termasuk dalam daerah yang cepat maju dan tumbuh (high growth and high income) akan tetapi belum mampu mengoptimalkan sektor potensial secara maksimal dengan ditandainya setiap sektor potensial mengalami pertumbuhan rendah dengan ditandai dominasi nilai negatif RPs setiap sektor. Analisis LQ menyatakan sektor potensial di Kabupaten Semarang mencakup sektor industri pengolahan, sektor pengadaan listrik dan gas, sektor pengadaan air, pengolahan sampah, limbah dan daur ulang, sektor konstruksi, sektor informasi dan komunikasi, sektor jasa keuangan dan asuransi, sektor real estate, dan sektor jasa perusahaan. Sedangkan hasil analisis MRP menyatakan seluruh sektor termasuk sektor tertinggal dan non potensial prospektif  kecuali sektor pertambangan dan penggalian yang termasuk dalam potensial prospektif. Sektor potensial berproduktivitas tinggi sehingga melakukan penyerapan tenaga kerja yang tinggi adalah sektor  industri pengolahan dan sektor lainnya seperti sektor pertambangan dan penggalian, sektor pengadaan listrik dan gas, sektor pengadaan air, pengelolaan sampah, sektor konstruksi, sektor transportasi dan pergudangan, sektor informasi dan komunikasi, sektor real estate dan sektor administrasi pemerintahan, pertahanan dan jaminan sosial wajib.\nKata Kunci : Tipologi Klassen, Location Quotient, Tenaga Kerja\n', 3, 2020, 'uploads/penelitian/2020/11/201116105538_584.pdf', 1, '2022-05-03 10:18:07', 2),
(4, 'Pengaruh Identifikasi Kebutuhan Pupuk Nitrogen pada Tanaman Padi Menggunakan Bagan Warna Daun (BGD) Berbasis Internet of Things (IOT)', 1, 'Unang Achlison', 'STEKOM', 'Pemupukan adalah bagian penting dari budidaya padi. Kebutuhan pupuk nitrogen yang tidak tepat dan tidak terukur akan menjadi faktor pengurang optimalnya produksi pertanian. Penelitian ini bertujuan untuk mengetahui pengaruh identifikasi kebutuhan pupuk nitrogen menggunakan Bagan Warna Daun (BGD) pada tanaman padi. Group eksperimental pada penelitian ini menggunakan media pendukung Microcontroller NodeMcu sebagai pemroses identifikasi warna daun padi dan sekaligus menentukan data kebutuhan pupuk Nitrogen. Informasi kebutuhan pupuk Nitrogen tersimpan di internet berbasis Internet On Things (IOT) dan dapat diakses menggunakan website. Penelitian ini dilakukan pada petani di desa lumbung padi di Jawa Tengah. Berdasarkan analisis data dan pembahasan hasil penelitian diperoleh hasil t¬¬hitung ≥ ttabel yaitu 2,976 ≥ 2,262  maka H0 ditolak atau H1 diterima sehingga dapat disimpulkan bahwa pengaruh identifikasi kebutuhan pupuk Nitrogen menggunakan bagan warna daun (BGD) berbasis Internet On Things (IOT) terhadap tanaman padi dapat diterima dan efektifitas dosis penggunakan pupuk menjadi lebih efisien 50%.\nKata Kunci : BWD, Internet on Things\n', 3, 0, 'uploads/penelitian/2020/11/201116110614_548.pdf', 1, '2022-05-03 10:18:07', 2),
(5, 'Menimbang Kekayaan \"Legenda Baruklinting\" sebagai Bahan Ajar pada Pembelajaran Sekolah Dasar di Kabupaten Semarang', 1, 'Pipit Mugi Handayani', 'Universitas PGRI Semarang', 'Kurikulum muatan lokal adalah kurikulum yang disusun berdasarkan kebutuhan daerah yang bahan kajian dan pelajarannya disesuaikan dengan lingkungan alam, sosial, budaya dan ekonomi, serta kebutuhan pembangunan, daerah yang diorganisasikan dalam mata pelajaran yang berdiri sendiri. Terkait itu, dibutuhkan materi pelajaran yang sesuai dengan karakteristik daerah yang dapat digali dari nilai-nilai yang tersaji dalam budaya, antara lain legenda. Pepatah “guru kencing berdiri murid kencing berlari” menyiratkan makna bahwa posisi guru merupakan hal yang paling penting sebagai ukuran kebaikan dalam berperilaku dan bersosial. Guru menempati posisi model yang senantiasa dijadikan patokan kebaikan. Hal demikian memiliki konsekuensi logis bahwa proses pembentukan karakter adalah langkah-langkah konkret seseorang menjadi terpuji atau tercela. Dalam kaitan dengan sastra lisan pernyataan tersebut muncul dalam rupa pemahaman terhadap cerita rakyat bagi masyarakat pendukungnya. Dalam penelitian ini digunakan metode studi pustaka, memfokuskan keberadaan legenda Baruklinthing pada masyarakat Jawa Tengah selanjutnya analisis data dan penyajian temuan hasil analisis tentang nilai kehidupan yang ada dalam Legenda Baruklinting sebagai jawaban tuntutan karakteristik terpuji yang merupakan wujud budaya. Pola pembelajaran yang selama ini berlaku pada dunia pendidikan di Indonesia menempatkan guru sebagai sumber belajar dan penentu hasil belajar siswa. Posisi bahan ajar dan media yang digunakan setiap guru sebagai pendidik menentukan keberhasilan kegiatan pembelajaran. Alternatif pemanfaatan cerita yang eksis di setiap daerah dapat dijadikan salah satu solusi untuk menanamkan nilai cinta tanah air sekaligus penemuan jati diri dan karakter peserta didik dalam mewujudkan nilai pendidikan.   \n\nKata Kunci : Legenda Baruklinthing, Kearifan Lokal, Nilai Pendidikan, Bahan Ajar \n', 2, 2020, 'uploads/penelitian/2020/11/201116111759_580.pdf', 1, '2022-05-03 10:18:07', 1),
(6, 'Potensi Bahan Kering dan Total Digestible Nutrient Jerami Padi Lahan Sawah serta Daya Dukungnya terhadap Sapi Potong di Kabupaten Semarang', 1, 'Nur Heni, Ryantoko Setyo Prayitno', 'Dispertanikap Kabupaten Semarang dan STIP Farming Semarang', 'Jerami padi merupakan limbah pertanian yang sangat potensial untuk dijadikan sebagai pakan sapi potong.  Besarnya potensi jerami padi di Kabupaten Semarang sebagai sumber pakan sapi potong tercermin dari besarnya luas panen yang mampu menghasilkan produksi jerami. Penelitian bertujuan untuk menghitung kualitas dan kuantitas serta daya dukung jerami padi lahan sawah terhadap sapi potong di Kabupaten Semarang.  Penelitian dilakukan dengan metode survei (pengumpulan data) dan eksperimen laboratorium. Hasil penelitian menunjukkan bahwa jerami padi lahan sawah di Kabupeten Semarang memiliki produksi segar, Bahan Kering (BK) dan Total Digestible Nutrient (TDN) masing-masing 23,59 ton/Ha; 9,25 ton/Ha dan 5,07 ton/Ha.  Total produksi segar, BK dan TDN adalah 1.042.660,88 ton/tahun; 408.723,06 ton/tahun dan 212.209,01 ton/Ha.  Daya dukung jerami padi lahan sawah potensial di Kabupaten Semarang berdasarkan BK dan TDN adalah 179.166,27 ST/tahun dan 135.208,04 ST/tahun, sedangkan daya dukung efektif adalah 125.416,39 ST/tahun dan 94.645,63 ST/tahun.  Indeks Daya dukung berdasarkan BK dan TDN termasuk kategori sedang, dengan indeks daya dukung potensial yaitu 4,89 dan 3,69, sedangkan indeks daya dukung efektif adalah 3,42 dan 2,58.  Kecamatan yang memiliki daya dukung paling tinggi adalah Kecamatan Suruh. Kecamatan yang memiliki indeks daya dukung paling tinggi adalah Kecamatan Tuntang, sehingga jerami padi lahan sawah dari Kecamatan Tuntang dapat dimanfaatkan oleh wilayah kecamatan lainnya atau untuk meningkatkan populasi sapi potong di Kecamatan Tuntang.  \nKata kunci : Jerami Padi, Potensi, Daya Dukung, Sapi Potong', 3, 2020, 'uploads/penelitian/2020/11/201116112319_489.pdf', 1, '2022-05-03 10:18:07', 2),
(7, 'Strategi Perwujudan Efektivitas Pelayanan pada Sistem Layanan dan Rujukan Terpadu Gema Matra dan Pusat Kesejahteraaan Sosial Dalam Rangka Mendukung Upaya Penanggulangan Kemiskinan di Kabupaten Semarang', 1, 'Lyra Bumantara Syarif', 'Barenlitbangda Kabupaten Semarang', 'Sistem Layanan dan Rujukan Terpadu (SLRT) dan Pusat Kesejahteraan Sosial (Puskesos) memiliki peran yang cukup strategis dalam mendukung upaya penanggulangan kemiskinan daerah, yaitu sebagai portal berbagai pelayanan Program Perlindungan Sosial dan Penanggulangan Kemiskinan (PSPK) bagi warga masyarakat miskin dan rentan. Guna mewujudkan penyelenggaraan SLRT dan Puskesos yang   mampu menjawab tantangan kebutuhan pengentasan kemiskinan di Kabupaten Semarang, diperlukan upaya pengendalian agar penyelenggaraan pelayanan SLRT dan Puskesos tetap berada pada rel/jalur yang telah ditetapkan (right on the track) yang salah satunya ditempuh dengan melaksanakan pengukuran atas efektivitas pelayanan yang dilaksanakan pada SLRT dan Puskesos. Berdasarkan hasil pengukuran, dapat diketahui bahwa secara umum efektivitas pelayanan SLRT dan Puskesos di Kabupaten Semarang sudah cukup baik. Melalui pengukuran mutu/kualitas kinerja penyelenggaraan layanan SLRT dan Puskesos dapat diketahui capaian pada 2 (dua) indikator, yaitu : IKM pengguna layanan/penerima manfaat SLRT dan IKM aparatur Desa bernilai sangat baik. Dengan demikian, pengguna layanan/penerima manfaat maupun pemangku kepentingan  sudah cukup puas dengan kinerja pelayanan yang diberikan oleh SLRT dan Puskesos. Sementara 1 (satu) indikator lainnya, yaitu nilai Indeks Penilaian Penyelenggara Layanan SLRT dan Puskesos secara umum menghasilkan capaian kurang baik, sehingga dapat diidentifikasi bahwa masalah/kendala/hambatan jutru didapat   dari sisi internal penyelenggara pelayanan SLRT dan Puskesos. Memperhatikan hasil identifikasi masalah tersebut,dapat direkomendasikan sebanyak 3 (tiga) strategi utama yang sebaiknya ditempuh oleh Pemerintah Kabupaten Semarang untuk membenahi kinerja internal penyelenggara  layanan  SLRT  dan  Puskesos  agar  dapat  berkontribusi  maksimal guna mewujudkan efektivitas pelayanan SLRT dan Puskesos dalam rangka mendukung upaya Penanggulangan Kemiskinan di  Kabupaten Semarang, yaitu : Strategi Pengembangan, Strategi Integrasi dan Strategi Penetrasi.\nKata Kunci : Efektivitas, Pelayanan, SLRT, Puskesos, Kemiskinan.\n', 2, 2020, 'uploads/penelitian/2021/01/210104140840_445.pdf', 1, '2022-05-03 10:18:07', 0),
(8, 'Strategi Peningkatan Daya Saing Ekonomi Kecamatan Jambu Melalui Pengembangan Potensi Agrobisnis ', 1, 'A. Aru Hadi Eka Sayoga', 'Barenlitbangda Kabupaten Semarang', 'Kecamatan Jambu merupakan sentra produksi beberapa komoditas hasil pertanian yang cukup terkenal, seperti durian brongkol dan kopi gunung kelir. Upaya penggalian potensi utama wilayah untuk meningkatkan kesejahteraan masyarakat melalui peningkatan nilai tambah produk-produk yang dihasilkan agar daya saing wilayah Jambu sebagai daerah agropolitan semakin kuat. Perlu disusun strategi untuk meningkatkan agar daya saing wilayah Kecamatan Jambu sebagai daerah agropolitan. Metode yang digunakan adalah metode kuantitatif-kualitatif, dari data dan analisis kuantitatif menghasilkan analisis kualitatif. Sumber data yang digunakan adalah data sekunder dan primer.Analisis yang digunakan adalah analisis kewilayahan, analisis kebijakan pengembangan wilayah, analisis potensi sumber daya lokal dan menghasilkan analisis untuk menyampaikan tujuan penelitian ini, yaitu analisis peningkatan daya saing. Dari hasil analisis, perlu membentuk sebuah pusat perdagangan yang spesifik dan memiliki skala pasar tingkat kabupaten dan dapat mengambil ceruk pasar di kabupaten/kota di sekitarnya dalam bentuk Farmers Market.\nKata kunci: Agrobisnis, Nilai Tambah, Daya Saing, Farmers Market \n', 3, 2020, 'uploads/penelitian/2020/11/201116113715_625.pdf', 1, '2022-05-03 10:18:07', 0),
(9, 'Analisis Efisiensi, Efektivitas dan Capaian Pelayanan UPTD Metrologi Legal Kabupaten Semarang', 1, 'Nurti Lestari, Ratnaningtyas Widyani', 'UPTD Metrologi Legal Diskumperindag Kabupaten Semarang', 'Pelayanan tera dan tera ulang dilakukan untuk menjamin kepastian nilai pengukuran Alat Ukur, Takar, Timbang dan Perlengkapannya (UTTP) dalam rangka memperkuat daya saing produk di Kabupaten Semarang. Pelayanan tera/tera ulang dilakukan oleh Unit Pelayanan Teknis Daerah Metrologi Legal yang didirikan pada tahun 2018. Namun, hingga saat ini belum terdapat parameter untuk mengukur perkembangan pelayanan tera/tera ulang UPTD Metrologi Legal. Penelitian ini bertujuan untuk menganalisis dan menginterpretasikan tingkat efektivitas, efisiensi dan capaian UPTD Metrologi Legal Kabupaten Semarang. Metode penelitian yang digunakan adalah analisis komparatif dengan perhitungan CPI (Charge Performance Index) dan CCER (Cost of Collection Efficiency Ratio). Nilai rasio efektivitas pada tahun 2019 sebesar 240,47 % yang berarti pelayanan tera/tera ulang pada tahun tersebut sangat efektif. Nilai efisiensi pada tahun 2018 dan 2019 berturut-turut adalah 1.882,82 % dan 713,66 % yang menunjukkan pelayanan tidak efisien karena realisasi penerimaan lebih kecil dari biaya operasional. UTTP yang telah ditera pada tahun 2018 mencapai 2559 unit, sedangkan tahun 2019 mengalami peningkatan sebanyak 10.578 unit. Kesimpulan dari penelitian ini adalah pelayanan tera/tera ulang di UPTD Metrologi Legal sudah efektif namun belum efisien. Capaian pelayanan UTTP meningkat secara pesat, namun belum dapat mencakup keseluruhan potensi UTTP Kabupaten Semarang.\nKata kunci : Capaian, Efektivitas, Efisiensi, Metrologi, Tera, Tera Ulang\n', 3, 2020, 'uploads/penelitian/2020/11/201116114452_744.pdf', 1, '2022-05-03 10:18:07', 5),
(10, 'Pengaruh Pola Pemberian Asi terhadap Kecerdasan Kognitif Anak di Posyandu Dusun Kali Pacet RT 01 RW 07 Desa Gedong Kecamatan Banyubiru', 1, 'Hary Purwanto, Edi Sujoko', 'STT Simpson', 'Penelitian ini bertujuan untuk mengetahui pengaruh pola pemberian ASI terhadap kecerdasan kognitif anak di posyandu dusun Kali pacet, Desa Gedong, Kecamatan Banyubiru.  Metode yang digunakan dalam penelitian ini adalah kuantitaf jenis eksplorasi. Variabel bebas (X) pola pemberian ASI variabel terikat (Y)  kecerdasan kognitif. Teknik penggambilan sampel adalah purposive sampling. Sampel pada penelitian ini sebanyak 25 anak. Analisa data menggunakan uji t.  Hasil dari penelitian menunjukkan bahwa; kecerdasan di bawah rata-rata 5 (lima) anak 20%,  kecerdasan rata-rata 4 (empat) anak 16%, kecerdasan di atas rata-rata 7 (tujuh) anak 28 % dan kecerdasan tinggi  9 (Sembilan) anak 36%.  Pola pemberian ASI secara eksklusif diberikan pada 16 anak atau 64%,  sedang pola pemberian ASI secara predominan 9 anak atau 36%. Hasil uji t mendapatkan bahwa t hitung 2980,80 > t tabel 1,714 dengan df =25- 2=23 taraf signifikan 5%. Artinya ada pengaruh pola pemberian ASI terhadap kecerdasan kognitif anak di posyandu Dusun Kali pacet, Desa Gedong, Kecamatan Banyubiru.\nKata kunci: Pola Pemberian ASI, Kecerdasan, Kognitif,  Anak \n', 2, 2020, 'uploads/penelitian/2020/11/201116115249_277.pdf', 1, '2022-05-03 10:18:07', 12),
(13, 'Naskah Akademik Raperda Fasilitasi Pencegahan dan Pemberantasan Penyalahgunaan dan Peredaran Gelap Narkotika dan Prekursor Narkotika', 1, 'Kesbangpol Kabupaten Semarang', 'Kesbangpol Kabupaten Semarang', 'Kasus penyalahgunaan narkotika di Indonesia semakin meningkat setiap tahunnya, sehingga hal tersebut dijadikan masalah nasional. Korban penyalahgunaan narkotika tidak saja merambah daerah perkotaan, wilayah pedesaan juga tidak luput menjadi sasaran. Peredaran narkotika juga tidak memandang usia, strata sosial bahkan jenis kelamin. Tidak jarang sasaran utama peredaran narkotika adalah para generasi muda, hal ini jelas menjadi persoalan bagi seluruh elemen yang ada di Indonesia, mengingat generasi muda adalah tonggak harapan suatu negara.\nUpaya pencegahan dan pemberantasan terhadap penyalahgunaan dan peredaran gelap, serta prekusor narkotika di Indonesia memerlukan upaya penanganan yang komprehensif dan multidimensional agar tercapai hasil yang maksimal. Upaya pemberantasannyapun harus dilaksanakan secara bertahap, konsisten, dan terus-menerus berkesinambungan.\nKomplikasi dari berbagai situasi masalah sosial tersebut kemudian antara lain berdampak terhadap penyalahgunaan Narkotika, Psikotropika, dan Zat Adiktif di Kabupaten Semarang\nSebelum Badan Narkotika Kabupaten (BNK) Kabupaten Semarang terbentuk, pemerintah Kabupaten Semarang beserta lembaga yang memiliki kepedulian terhadap penyalahgunaan dan peredaran narkotika serta prekusor narkotika, bertekad dan berupaya untuk mencegah, menangkal serta memfasilitasi segala bentuk kegiatan pemberantasan serta penanggulangan penyalahgunaan serta peredaran gelap narkotika dan prekusor narkotika.\nNaskah akademis ini dimaksudkan untuk memberikan gambaran dasar persoalan dan kebutuhan penyelenggaraan fasilitasi pencegahan dan penanggulangan terhadap penyalahgunaan, peredaran gelap dan prekusor narkotika yang ada di Kabupaten Semarang. Gambaran yang tertulis diharapkan dapat menjadi panduan bagi pengkajian materi rancangan Perda Fasilitasi Pencegahan Dan  Pemberantasan  Penyalahgunaan Dan Peredaran Gelap Narkotika Dan Prekusor Narkotika.', 2, 2019, 'uploads/penelitian/2020/12/201208083352_880.pdf', 1, '2022-05-03 10:18:07', 1),
(14, 'Kajian Penataan Kawasan Bandungan Kabupaten Semarang', 1, 'BARENLITBANGDA Kabupaten Semarang', 'BARENLITBANGDA Kabupaten Semarang', 'Kawasan Bandungan berada dalam lingkup administrasi wilayah Kecamatan Bandungan Kabupaten Semarang. Kawasan Bandungan yang terletak di kaki Gunung Ungaran dengan potensi di bidang pariwisata, pertanian, serta fungsi strategis sebagai kawasan lindung dan penyangga. Kota Bandungan sebagai pusat wilayah Kecamatan Bandungan yang berkembang pesat mengemban fungsi sebagai pusat pengembangan pariwisata, pemerintahan dan pelayanan umum, dan agrobisnis (didukung dengan adanya pengembangan Sub Terminal Agrobisnis di Desa Jetis).\nDi sisi lain, saat ini Kawasan Bandungan sebagai pusat aktivitas wilayah Kecamatan Bandungan memiliki permasalahan-permasalahan yang dapat menjadikan kawasan tersebut tidak lagi dapat dinikmati sebagai kawasan wisata yang nyaman. Ketidakteraturan yang terjadi di pusat kota antara lain disebabkan aktivitas PKL dan parkir kendaraan baik pengunjung maupun angkutan yang memakai trotoar dan bahu jalan terutama di jalur utama yang menjadi jalan alternatif yang menghubungkan Kabupaten Semarang dan Kabupaten Temanggung, luasan Pasar Bandungan yang tidak  mencukupi, dan kurangnya ruang terbuka hijau (RTH). Lokasi Kantor Kecamatan Bandungan saat ini masih bercampur dengan kegiatan pendidikan, kios bunga, dan parkir wisata. Hal ini dapat mempengaruhi aspek pelayanan kepada masyarakat, serta iklim pariwisata yang kurang nyaman.\nGuna menjaga keseimbangan antara kegiatan ekonomi dan kelestarian lingkungan, serta memberikan pelayanan kewilayahan kepada masyarakat terutama berkaitan dengan isu-isu di atas, maka perlu di lakukan pengelolaan atau pengaturan ruang kawasan sebagai wadah berbagai aktivitas, serta sebagai suatu kebijakan publik yang memadukan berbagai kepentingan pihak terkait dalam pemanfaatan ruang secara optimal dan berkelanjutan. ', 7, 2017, 'uploads/penelitian/2020/12/201208084303_466.pdf', 1, '2022-05-03 10:18:07', 0),
(15, 'Kajian Jalan Poros Desa', 1, 'BARENLITBANGDA Kabupaten Semarang', 'BARENLITBANGDA Kabupaten Semarang', 'Dalam Undang-Undang Republik Indonesia Nomor 38 Tahun 2004 tentang Jalan disebutkan bahwa jalan sebagai salah satu prasarana transportasi merupakan unsur penting dalam pengembangan kehidupan berbangsa dan bernegara, dalam pembinaan persatuan dan kesatuan bangsa, wilayah negara dan fungsi masyarakat serta dalam memajukan kesejahteraan umum sebagaimana dimaksud dalam Pembukaan Undang-Undang Dasar Negara Republik Indonesia Tahun 1945.\nJalan antar desa oleh masyarakat pedesaan adalah jalan poros desa sebagai kearifan lokal merupakan jalan terpendek yang menghubungkan antar desa.\nSelanjutnya dalam kajian ini definisi jalan poros desa adalah jalan utama terpendek yang menghubungkan antar desa. Mempertimbangkan hal-hal tersebut diatas, maka Pemerintah Kabupaten Semarang dalam hal ini Badan Perencanaan, Penelitian dan Pengembangan Daerah perlu menyusun Dokumen Kajian Jalan Poros Desa.', 7, 2017, 'uploads/penelitian/2020/12/201208085142_703.rar', 1, '2022-05-03 10:18:07', 0),
(16, 'Kajian Pemindahan Pusat Pemerintah', 1, 'BARENLITBANGDA Kabupaten Semarang', 'BARENLITBANGDA Kabupaten Semarang', 'Tata pemerintahan yang baik tentu menjadi dambaan semua pihak, baik birokrat ataupun masyarakat. Mutu pelayanan yang diberikan birokrasi akan sangat menentukan kepuasan masyarakat yang akan berdampak langsung pada organisasi tersebut. Salah satu faktor penting dalam upaya memberikan pelayanan yang baik dan lebih maksimal kepada masyarakat adalah aspek kemudahan aksesibilitas masyarakat terhadap Ibukota Pemerintahan serta konektifitas terhadap Kota/Daerah lain. Penentuan lokasi calon Pusat Pemerintahan sangat besar pengaruhnya bagi perkembangan kota itu sendiri bahkan dalam pengembangan wilayah kabupatennya.\nKajian Pemindahan Pusat Pemerintahan Kabupaten Semarang    sudah   masuk   dalam   Peraturan Daerah Kabupaten Semarang Nomor 15 Tahun 2016 Tentang Rencana Pembangunan Jangka Menengah Daerah (RPJMD) Kabupaten Semarang Tahun 2016-2021. Pada tahun 2016 telah disusun dokumen Pra Kajian Pemindahan Pusat Pemerintahan Kabupaten Semarang dari Ungaran ke beberapa alternatif lokasi kecamatan di Kabupaten Semarang. Untuk itu perlu untuk dilakukan kajian yang lebih mendalam, yang berisi kajian kelayakan Ibu Kota di Ungaran dan alternatif lokasi yang telah disusun pada saat pra kajian Pemindahan Pusat Pemerintahan Kabupaten Semarang dan pembuatan site plan (rencana tapak) Pusat Pemerintahan (Ibu Kota) Kabupaten Semarang pada lokasi terpilih berdasarkan hasil analisis yang dilakukan.', 7, 2017, 'uploads/penelitian/2020/12/201208085802_966.rar', 1, '2022-05-03 10:18:07', 4),
(17, 'Naskah Akademik Raperda Inovasi Daerah', 1, 'BARENLITBANGDA Kabupaten Semarang', 'BARENLITBANGDA Kabupaten Semarang', 'Pelaksanaan otonomi daerah di Indonesia telah menghasilkan capaian yang berbeda antar daerah. Beberapa daerah berhasil mengembangkan inovasi dalam manajemen pelayanan publik dengan menetapkan manajemen pelayanan yang partisipatif serta mengadopsi pengembangan metodologi pelayanan. Pelaksanaan otonomi daerah memberikan peluang yang seluas-luasnya dalam praktik penyelenggaraan pelayanan di daerah, sehingga setiap daerah memiliki kesempatan yang sama untuk berkreasi dan berinovasi dalam mewujudkan daya saing daerah yang lebih tinggi. \nDalam pasal 386 ayat (1) Undang-Undang Nomor 23 Tahun 2014 tentang Pemerintahan Daerah disebutkan bahwa dalam rangka peningkatan kinerja penyelenggaraan pemerintahan daerah, pemerintah daerah dapat melakukan inovasi. Inovasi daerah yang dimaksudkan adalah semua bentuk pembaharuan dalam penyelenggaraan pemerintahan daerah.\nInovasi daerah bertujuan untuk meningkatkan kinerja penyelenggaraan pemerintahan daerah. Agar tujuan tersebut tercapai, maka sasaran inovasi daerah diarahkan untuk mempercepat terwujudnya kesejahteraan masyarakat melalui peningkatan pelayanan publik, pemberdayaan dan peran serta masyarakat, serta peningkatan daya saing daerah. \nDalam rangka terwujudnya daya saing daerah yang tinggi, maka untuk pemenuhan inovasi daerah yang sesuai dengan prinsip inovasi diperlukan pengaturan kebijakan inovasi. Dengan adanya pengaturan kebijakan inovasi diharapkan inovasi dapat dilaksanakan secara terencana, terpadu, terintegrasi dan terkoordinasi secara optimal guna mempercepat pertumbuhan ekonomi daerah serta kesejahteraan masyarakat yang berkelanjutan. ', 7, 2019, 'uploads/penelitian/2020/12/201208090623_101.rar', 1, '2022-05-03 10:18:07', 5),
(18, 'ANALISIS EFEKTIVITAS PELAKSANAAN PENGARUSUTAMAAN GENDER DI KABUPATEN SEMARANG', 1, 'Lyra Bumantara Syarif', 'Badan Perencanaan, Penelitian dan Pengembangan Daerah (Barenlitbangda)  Kabupaten Semarang ', 'Pengarusutamaan Gender (PUG) merupakan satu rangkaian strategi untuk mewujudkan Kesetaraan dan Keadilan Gender (KKG) secara terpadu baik secara lintas sektoral pemerintah maupun dengan melibatkan kerjasama dengan pihak eksternal Pemerintah. Penelitian ini bertujuan untuk menganalisis efektivitas pelaksanaan PUG di Kabupaten Semarang dengan melihat pencapaian yang telah ditentukan dalam dokumen Perencanaan Pembangunan Daerah dan pencapaian atas indikator umum pengendalian dan evaluasi Perencanaan Pembangunan Responsif Gender (PPRG) di daerah yang meliputi 5 (lima) aspek yaitu : Aspek Komitmen dan Kebijakan, Aspek Kelembagaan, Aspek Sumber Daya, Aspek Profil Gender dan Data Terpilah, serta Aspek Partisipasi Masyarakat. Metode yang digunakan dalam penelitian ini adalah deskriptif dengan pendekatan kualitatif. Berdasarkan hasil penelitian dapat diketahui terdapat kesenjangan antara efektivitas pada sisi pencapaian tujuan dengan efektivitas pada sisi teknis pelaksanaan PUG di Kabupaten Semarang. Kondisi ini secara tidak langsung mengindikasikan adanya ketidaksinkronan antara implementasi kebijakan umum pelaksanaan PUG dengan implementasi kebijakan teknis operasional pelaksanaan PUG. Atau dengan kata lain dapat disimpulkan bahwa implementasi kebijakan umum pencapaian tujuan PUG belum didukung dengan implementasi kebijakan yang memadai di tingkat teknis operasionalnya. Memperhatikan permasalahan tersebut, dapat direkomendasikan sejumlah saran yang sebaiknya ditempuh oleh Pemerintah Kabupaten Semarang untuk mengatasinya, yaitu : (1). mempersiapkan integrasi tujuan pencapaian APE dengan tujuan dalam dokumen RPJMD Kabupaten Semarang periode selanjutnya (Tahun 2021-2024), dan (2). melaksanakan sejumlah perbaikan pada implementasi kelima aspek indikator umum pengendalian dan evaluasi PPRG di Kabupaten Semarang. ', 2, 2020, 'uploads/penelitian/2021/01/210104133916_336.pdf', 1, '2022-05-03 10:18:07', 0),
(19, 'ANALISIS USAHA PEMBIBITAN DAN BUDIDAYA HIJAUAN PAKAN TERNAK PADA “CAHAYA BARU FARM” DI KECAMATAN PABELAN KABUPATEN SEMARANG', 1, 'Aditia Dwi Mulyono, Nur Heni', 'Dirjen Peternakan dan Kesehatan Hewan Kementerian Pertanian, Dinas Pertanian, Perikanan dan Pangan Kabupaten Semarang', 'Upaya peningkatan populasi komoditas peternakan khususnya ternak ruminansia melalui sistem kawasan perlu diimbangi dengan peningkatan penyediaan pakan hijauan untuk ternak. Penyediaan hijauan pakan ternak seperti rumput dan legume merupakan salah satu masalah yang dihadapi oleh peternak rakyat dalam kegiatan budidaya maupun pembibitan. Melihat masalah dan peluang pengembangan peternakan berbasis kawasan tersebut sehingga mampu memunculkan usaha untuk mengkomersialisasikan bibit dan hasil budidaya hijauan pakan ternak guna mencukupi kebutuhan pakan yang belum banyak untuk digeluti oleh petani atau peternak. Penelitian ini bertujuan untuk mengetahui pendapatan, R/C ratio serta Break Even Point (BEP) unit dan rupiah usaha pembibitan dan budidaya hijauan pakan ternak di Cahaya Baru Farm. Metode penentuan lokasi yaitu menggunakan purposive sampling dengan alasan bahwa lokasi penelitian merupakan sentra pembibitan hijauan pakan ternak swasta terbesar di Kabupaten Semarang. Penelitian ini dilakukan dengan menggunakan metode studi kasus. Metode pengumpulan data yang digunakan dalam penelitian ini adalah dengan cara observasi dan wawancara langsung. Hasil penelitian menunjukkan bahwa pendapatan/ha/th sebesar Rp235.848.750,00; R/C Ratio 3,87 > 1 yang berarti usaha menguntungkan. BEP unit stek odot yaitu 36.653 dengan BEP rupiah penerimaannya Rp18.326.294,00. BEP unit bibit indigofera 2.066 polybag dan BEP rupiah penerimaanya Rp8.262.283,00. BEP unit penjualan daun rumput odot 36.653 kg serta BEP rupiah penerimaannya Rp18.326.294,00. Usaha pembibitan dan budidaya di Cahaya Baru farm bersifat menguntungkan dan layak untuk dijalankan', 3, 2020, 'uploads/penelitian/2021/01/210104134716_603.pdf', 1, '2022-05-03 10:18:07', 0),
(20, 'GAMBARAN KONSUMSI MAKANAN CEPAT SAJI, MINUMAN RINGAN DAN STATUS GIZI PADA MAHASISWA  D3 KEPERAWATAN UNIVERSITAS NGUDI WALUYO', 1, 'Mukhamad Musta’in, Wulansari', 'Fakultas Keperawatan Universitas Ngudi Waluyo', 'Perkembangan teknologi dan informasi membawa perubahan pada gaya hidup masyarakat khususnya pola makan. Remaja cenderung memiliki pola makan yang tidak teratur. Kebiasaan konsumsi makanan cepat saji dan minuman ringan akan berdampak pada peningkatan berat badan dan berujung masalah kegemukan yang bisa berdampak gangguan psikologis. Mahasiswa D3 Keperawatan Universitas Ngudi Waluyo, meski sudah mendapatkan bekal makanan dari asrama, tidak jarang ada mahasiswa yang masih jajan di luar sekitar asrama. Penelitian ini bertujuan menggambarkan kebiasaan konsumsi makanan cepat saji, minuman ringan dan status gizi pada mahasiswa. Penelitian menggunakan metode deskriptif kuantitatif dengan pendekatan cross sectional. Hasil penelitian didapatkan sebagian besar mahasiswa D3 Keperawatan Universitas Ngudi Waluyo didominasi oleh perempuan dan mayoritas mahasiswa memiliki status gizi normal. Tidak ada mahasiswa yang tidak pernah mengkonsumsi makanan cepat saji maupun minuman ringan. Jenis makanan cepat saji yang sering (3-5 kali seminggu) dikonsumsi oleh mahasiswa adalah gorengan sebesar 46.2% disusul konsumsi bakso/cilok sebesar 38.5%. Jenis minuman ringan yang sering (3-5 kali seminggu) dikonsumsi yaitu cokelat sebanyak 30.8%.', 2, 2020, 'uploads/penelitian/2021/01/210104134716_603.pdf', 1, '2022-05-03 10:18:07', 0),
(21, 'PEMANFAATAN KULIT BUAH RAMBUTAN (Nephelium lappaceum L.) SEBAGAI AGEN KOSMETIK TABIR SURYA', 1, 'Rissa Laila Vifta, Komang Ana Pratiwi, Reni Citra Agustina', 'Fakultas Ilmu Kesehatan, Universitas Ngudi Waluyo', 'Kulit buah rambutan (Nephelium lappaceum L) diketahui mengandung senyawa aktif flavonoid. Beberapa flavonoid dari tanaman diketahui mempunyai aktivitas antioksidan dan memiliki kemampuan melindungi kulit terhadap paparan sinar ultaviolet (UV). Tujuan penelitian untuk menganalisis nilai dan kategori SPF ekstrak dan sediaan krim kulit buah rambutan (Nephelium lappaceum L) sebagai tabir surya. Flavonoid dalam ekstrak kulit buah rambutan (Nephelium lappaceum L) diidentifikasi secara kualitatif dengan pereaksi warna dan metode kromatografi lapis tipis (KLT). Pengujian aktifitas tabir surya dilakukan secara in-vitro menggunakan spektrofotometer UV dan perhitungan nilai SPF digunakan metode Mansur dengan variasi konsentrasi ekstrak dan sediaan krim kulit buah rambutan. Hasil penapisan fitokimia dan uji KLT menunjukkan bahwa kulit buah rambutan mengandung flavonoid. Hasil penentuan nilai SPF pada ekstrak kulit buah rambutan  menunjukkan bahwa nilai SPF 11,49 (80 ppm), 12,94 (90 ppm), 20,95 (100 ppm), 24,18 (110 ppm) dan 26,07 (120 ppm) dengan kategori maksimal sampai dengan ultra. Sediaan krim ekstrak kulit buah rambutan menghasilkan nilai SPF 25,48 (1%), 38,36 (2%), dan 42,87 (3%) dengan kategori ultra.', 2, 2020, 'uploads/penelitian/2021/01/210104135215_948.pdf', 1, '2022-05-03 10:18:07', 1),
(22, 'PENCIPTAAN LAPANGAN KERJA DAN PENINGKATAN PENDAPATAN  KABUPATEN SEMARANG TAHUN 2015-2019', 1, 'Edi Yulianto', 'Barenlitbangda Kabupaten Semarang', 'Misi Daerah kedua RPJMD Kabupaten Semarang Tahun 2016-2021 adalah mengembangkan produk unggulan berbasis potensi lokal (INTANPARI) yang sinergi dan berdaya saing serta berwawasan lingkungan untuk menciptakan lapangan kerja dan peningkatan pendapatan. Penelitian ini bertujuan untuk untuk mengetahui kondisi jumlah lapangan kerja dan nilai pendapatan masyarakat selama Tahun 2015-2019, pembahasan menggunakan metode kualitatif deskriptif dengan analisis data-data sekunder. Hasil Pembahasan menunjukkan bahwa jumlah penduduk bekerja Tahun 2015: 51,35% dan Tahun 2019: 56,46%, penduduk yang bekerja pada sektor industri pengolahan dan pariwisata cenderung naik, sektor pertanian cenderung turun serta  pada Tahun 2017 mata pencaharian utama beralih dari sektor pertanian menjadi industri pengolahan. Pendapatan masyarakat Produk Domestik Regional Bruto (PDRB) untuk sektor industri cenderung tetap (konstan), sektor pertanian cenderung turun dan sektor pariwisata cenderung naik. Simpulan menunjukkan bahwa Pemerintah Kabupaten Semarang berhasil menciptakan lapangan kerja dengan pertumbuhan sebesar 2,49% dan berhasil meningkatkan pendapatan masyarakat dengan pertumbuhan pendapatan per kapita ADHB sebesar 2,18% per tahun dan pendapatan penduduk bekerja sebesar 2,57% per tahun. ', 3, 2020, 'uploads/penelitian/2021/01/210104135424_657.pdf', 1, '2022-05-03 10:18:07', 0),
(23, 'PENDIDIKAN BAGI ANAK USIA DINI ANAK IMIGRAN KORBAN PERANG DALAM MASA NEW NORMAL', 1, 'Nur Intan Rochmawati , Adhi Budi Susilo', 'Ilmu Hukum, Universitas Ngudi Waluyo Ungaran,', 'Pendidikan menjadi topik pembicaraan dan perdebatan ditengah adaptasi baru atau biasa disebut era new normal. Mengingat Indonesia masih dilanda situasi pandemi Covid-19. Dimana, dunia pendidikan terpaksa di liburkan dan mengganti dengan sistem pembelajaran daring atau pembelajaran online. Penelitian ini bertujuan untuk menggambarkan pemenuhan pendidikan anak usia dini pada masa new normal di Rumah penampungan sementara bagi pengungsi di Provinsi Jawa Tengah yang ditempatkan Wisma Husada yang beralamat di Jl. Abdulrahman Saleh No.89 A, dimana terdapat 17 anak usia dini korban perang dari 55 Penelitian ini menggunakan pendekatan kualitatif dan bersifat deskriptif dengan menggunakan teknik purposive sampling. Subjek penelitian adalah anak usia dini. Data dikumpulkan melalui observasi, wawancara, dan dokumentasi.Hasil penelitian menunjukkan bahwa kebutuhan pengungsi di biayai oleh IOM termasuk kebutuhan pendidikannya IOM merupakan NGO dan kepanjangan tangan UNHCR. IOM bekerja dengan sekolah swasta yang mau memberikan bantuan untuk anak-anak imigran. Temuan penelitian menunjukkan (1) Pemenuhan pendidikan telah diarahkan ke lembaga swasta,” Bina Putra” bersedia menerima anak imigran. Jumlah anak di wisma Pra Sekolah 4 anak, TK 1 anak, SD terdapat 10 anak sedangkan usia sekolah jenjang SMP 4 anak dan SMA 2 anak  belum mendapatkan lembaga sekolah formal. (2). Faktor pendukung adanya pendampingan dan pemenuhan kebutuhan dasar. Orang tua sebatas mengingatkan saja. faktor penghambat traumatik kemampuan literasi,atittute masa new normal bangun siang, pembelajaran on-Line yang susah di pahami, dan takut sakit karena adanya wabah corona. Rekomendasi akan di sediakan arena bermain di wisma untuk layanan anak usia pra sekolah, layanan pendidikan informal sesuai kecerdasan yang dimiliki anak.', 2, 2020, 'uploads/penelitian/2021/01/210104135628_481.pdf', 1, '2022-05-03 10:18:07', 1),
(24, 'PENGARUH LITERASI KEUANGAN TERHADAP PERILAKU MILENIAL DALAM MEMAHAMI FINANCIAL TECHNOLOGY  DI KABUPATEN SEMARANG', 1, 'Edwin Zusrony, Dewi Widyaningsih, Indra Ava Dianta', 'Universitas Sains dan Teknologi Komputer (STEKOM)', 'Penelitian ini bertujuan untuk mengetahui pengaruh literasi keuangan terhadap pemahaman generasi milenial terhadap financial technology dengan studi kasus mahasiswa Universitas STEKOM yang berada di wilayah Sruwen, Tengaran, Kabupaten Semarang. Sampel penelitian sebanyak 30 responden mahasiswa Universitas STEKOM Kampus Sruwen program studi Komputerisasi Akuntansi dan Teknik Informatika dengan teknik sampling nonrandom sampling. Metode analisa data menggunakan regresi linier sederhana (simple linear regression). Karakteristik responden didominasi mahasiswa sebanyak 21 orang (70%) dan mahasiswi sebanyak 9 orang (30%). Berdasarkan hasl uji t didapatkan t-hitung 2,560 (df=2,045) dengan Sig. 0,023 < 0,05 dan menunjukkan bahwa variabel Literasi Keuangan (X) memberi pengaruh  positif serta signifikan atas Pemahaman Fintech (Y).  ', 3, 2020, 'uploads/penelitian/2021/01/210104135927_566.pdf', 1, '2022-05-03 10:18:07', 0),
(25, 'PENINGKATAN NILAI TAMBAH DESA WISATA DALAM USAHA PENGEMBANGAN EKONOMI PERDESAAN KABUPATEN SEMARANG', 1, 'Agung Pangarso', 'Dinas Pariwisata Kabupaten Semarang', 'Artikel ini bertujuan untuk mengidentifikasi faktor-faktor peningkatan nilai tambah desa wisata dalam usaha pengembangan ekonomi lokal di wilayah perdesaan. Studi dilakukan pada dua desa wisata di Kabupaten Semarang, Jawa Tengah, yaitu Desa Lerep dan Tegalwaton. Kajian dilakukan terhadap empat strategi peningkatan nilai tambah dengan mengkaji praktek eksisting pada desa wisata dan mengidentifikasi potensi yang perlu didorong menuju terwujudnya peningkatan nilai tambah produk dan jasa. Pengumpulan data dilakukan melalui metode wawancara mendalam semi terstruktur dengan pelaku dan pemangku kepentingan. Hasil studi menunjukkan bahwa Desa Lerep telah melakukan praktek-praktek yang lebih baik dalam meningkatkan nilai tambah desa wisata dibandingkan Tegalwaton, terutama dalam meningkatkan akses pasar, struktur tata kelola, dan kemitraan. Kapasitas individu, komunitas, dan kelompok usaha maupun pemerintah desa yang lebih baik berpeluang besar meningkatkan nilai tambah. Temuan studi menunjukkan bahwa kemitraan atau kerjasama menjadi elemen kunci sebagai prasyarat peningkatan nilai tambah produk dan jasa. Kemitraan menjadi landasan untuk kerjasama bisnis maupun transfer pengetahuan sehingga komunitas dapat mendapatkan manfaat pengembangan ekonomi lokal.', 3, 2020, 'uploads/penelitian/2021/01/210104140204_879.pdf', 1, '2022-05-03 10:18:07', 1),
(26, 'PRODUKSI SERBUK PEWARNA ALAMI DARI BUNGA TELANG (CLITORIA TERNATEA L.) DENGAN TRAY DRYER YANG DIDEHUMIDIFIKASI ZEOLIT', 1, 'Friska Mauludifia, Shanintya Dhivya Astrinia', 'Fakultas Teknik, Universitas Diponegoro', '[Production of Natural Colorant Powder from Clitoria ternatea L. using Zeolite-Dehumidified Tray Dryer] One of food additives that are usually added to food is coloring agents. The use of synthetic colorant in food products often causes health problems. Telang flowers, or Clitoria ternatea L., have blue color that indicates the presence of anthocyanins. Referring to this, the flowers can potentially become natural coloring agents. This research aims to yield colorant powder, study the effect of pH and temperature on anthocyanin content, study the effect of temperature and addition of maltodextrin on drying process. The research was conducted in two main stages, namely extraction and drying. The extract is varied in its pH to obtain pH with highest anthocyanin. Drying was carried out with variations in maltodextrin concentrations of 0 and 8%; temperatures of 30, 40, 50, 60, 70 and 80°C; and rate of drying air 3 m/s. The results showed that at pH 2, the highest total anthocyanin was obtained. The higher the drying temperature and maltodextrin concentration that is added, the drying process will be faster. Increasing the temperature causes the anthocyanin concentration obtained to be smaller.', 2, 2020, 'uploads/penelitian/2021/01/210104140711_626.pdf', 1, '2022-05-03 10:18:07', 2),
(27, 'RANCANG BANGUN SISTEM E-COMMERCE UNTUK UMKM AGRIBISNIS  HASIL PERTANIAN   BERBASIS WEB MOBILE  (Studi Kasus di Kecamatan Bandungan)', 1, 'Priyadi, Danang ', 'Universitas Sains dan Teknologi Komputer', 'Kecamatan Bandungan merupakan wilayah di Kabupaten Semarang dengan komoditas hasil pertanian yang melimpah.  Pusat pemasaran hasil pertanian di daerah ini adalah Sub Terminal Agrobisnis Jetis. Secara kultural petani biasanya memasarkan hasil pertaniannya dengan dua cara, yaitu pasca panen dan pra panen. Permasalahan pemasaran yang dihadapi para pelaku agribisnis di daerah ini diantaranya adalah sulitnya calon pembeli (pedagang) dan calon penjual (petani) untuk saling menemukan pada saat saling membutuhkan untuk bertransaksi.\nSurvei APJII (Asosiasi Penyelenggara Jasa Internet Indonesia) menunjukkan bahwa perangkat akses internet paling banyak digunakan di Jawa Tengah adalah perangkat mobile. Kondisi tersebut tidak ada pengecualian pada kebanyakan masyarakat di Kecamatan Bandungan. Setiap kepala keluarga di wilayah ini sebagian besar telah memiliki akses internet dengan perangkat mobile (smartphone). \nBerdasarkan temuan masalah dan potensi yang ada, peneliti melakukan sebuah penelitian rancang bangun E-Commerceb B to B berbasis web mobile yang bertujuan menjadi portal informasi agribinis yang memudahkan petani dan pedagang di wilayah ini untuk menyebarkan dan mencari informasi hasil pertaniannya, baik yang membutuhkan produk maupun yang memiliki produk pertanian. Bentuk ¬E-Commerce yang dimaksud dalam penelitian ini adalah listing iklan produk pertanian oleh petani dan iklan kebutuhan produk pertanian oleh pedagang. Penelitian-pengembangan ini dikerjakan dengan metode R&D Sugiono, sedangkan pemrogramannya dikembangkan dengan pattern MVC CodeIgniter dan menggunakan antarmuka web-mobile jQuery mobile pada bagian GUI-nya.\nPenelitian ini menghasilkan propotype sistem Ecommerce  berbasis web mobile yang telah diujikan secara terbatas pada Personal Computer(PC) dan smartphone Android dengan pengguna dari kalangan aktor admin, petani, dan pedagang. Hasil pengujian secara fungsional menunjukkan bahwa sistem bekerja dengan cukup baik pada perangkat PC maupun Smartphone Android. Hasil penilaian rata-rata dari aktor yang dilibatkan dalam pengujian semuanya diatas 30 dari skala penilaian 1-40. Artinya secara umum sistem ini sudah bekerja dengan baik dan bisa diterima oleh semua kalangan calon pengguna.\n', 3, 2020, 'uploads/penelitian/2021/01/210104140840_445.pdf', 1, '2022-05-03 10:18:07', 0),
(28, 'ANALISIS USAHA INDUSTRI POTENSIAL KABUPATEN SEMARANG BERDASARKAN TINGKAT UPAH DAN PENYERAPAN TENAGA KERJA ', 1, 'Edy Dwi Kurniati', 'Fakultas Ekonomi dan Bisnis Universitas Darul Ulum Islamic Centre GUPPI Sudirman Ungaran', 'Pada era liberalisasi perdagangan, upah tenaga kerja yang tinggi selain menunjukkan perhatian juga menunjukkan kemampuan perusahaan terhadap kesejahteraan karyawan. Peningkatan upah juga tetap menunjukkan efisiensi jika dikonversi menjadi produktivitas dan kualitas. Penelitian ini bertujuan untuk menganalisis dan memetakan tipologi sektor usaha berdasarkan tingkat upah dan penyerapan tenaga kerja di Kabupaten Semarang yang berguna untuk merumuskan kebijakan pengembangan sektor ekonomi yang mempunyai potensi peningkatan kesejahteraan dan penyerapan tenaga kerja di Kabupaten Semarang. Penelitian dilakukan berdasarkan data hasil survei data upah, jumlah tenaga kerja dan kebutuhan hidup layak (KHL) pada sektor usaha di luar sektor pertanian oleh Dinas Tenaga Kerja, Transmigrasi dan Kependudukan di Kabupaten Semarang. Analisis tipologi sektor usaha dilakukan dengan pengembangan analisis Klassen Typology dengan memetakan sektor usaha berdasarkan upah dan penyerapan tenaga kerja. Sektor usaha potensial yaitu sektor usaha yang mempunyai kemampuan dalam memberikan upah dan penyerapan tenaga kerja tinggi. Hasil penelitian menemukan bahwa sektor industri Meubel/Furniture, Garment dan Industri Makanan Kecil merupakan sektor ekonomi yang potensial dalam memberikan kesejahteraan dan penyerapan tenaga kerja di Kabupaten Semarang. Sektor ekonomi yang mempunyai upah tenaga kerja tinggi namun penyerapan tenaga kerja rendah adalah: Real Estate, Industri Manufaktur. Sektor ekonomi yang mempunyai potensi penyerapan tenaga kerja tinggi namun upah rendah adalah sektor industri Percetakan, Perbankan dan Usaha Barocare/ Pengolahan. Sektor ekonomi yang mempunyai upah dan penyerapan tenaga kerja rendah adalah sektor usaha jasa, otomotif, penyedia air bersih. ', 3, 2019, 'uploads/penelitian/2021/01/210107084041_628.pdf', 1, '2022-05-03 10:18:07', 0),
(29, 'FASILITASI HAK-HAK PENYANDANG DISABILITAS MENUJU KEMANDIRIAN EKONOMI MASYARAKAT KABUPATEN SEMARANG', 1, 'Tri Nurhayati, Anas Sa’bani, Adhi Budi Susilo', 'Fakultas Syariah dan Hukum Universitas Islam Negeri Walisongo, Fakultas Hukum Universitas Wahid Hasyim, Fakultas Hukum Universitas Ngudi Waluyo', 'Penyandang disabilitas di Kabupaten Semarang mencapai jumlah 4141 orang. Mereka banyak mengalami hambatan dalam mobilitas fisik maupun dalam mengakses informasi, yang selanjutnya akan menghambat untuk terlibat dan berpartisipasi dalam kehidupan sosial, politik dan ekonomi. Namun demikian ketersediaan sarana dan prasarana ramah difabel masih jauh dari harapan sehingga mereka kehilangan hak untuk mendapatkan kemandirian ekonomi yang setara dengan masyarakat pada umumnya. \nMetode pendekatan yang digunakan dalam penelitian ini adalah pendekatan yuridis empiris dengan cara meneliti di lapangan serta menelaah bahan-bahan pustaka. Spesifikasi deskriptif analitis dilakukan dengan menggunakan jenis data primer dan data sekunder. Metode pengumpulan data dilakukan melalui penelitian kepustakaan dan dokumentasi yang kemudian dianalisis secara kualitatif sosiologis dengan didasarkan pada kedalaman data yang akan dihimpun secara menyeluruh, sistematis, kritis dan konstruktif untuk dapat memberikan jawaban terhadap semua permasalahan dalam penelitian ini. \nKabupaten Semarang memerlukan pendekatan regulasi berupa penyusunan Peraturan Daerah karena peraturan di tingkat nasional dan Provinsi belum mencukupi sebagai instrument hukum bagi pemajuan, penghormatan, perlindungan, dan pemenuhan hak-hak kemandirian ekonomi penyandang disabilitas yang ada di Kabupaten Semarang.\n', 2, 2019, 'uploads/penelitian/2021/01/210108093930_796.pdf', 1, '2022-05-03 10:18:07', 0);
INSERT INTO `data_penelitian` (`id_data_penelitian`, `judul`, `id_user_uploader`, `penulis`, `instansi`, `abstraksi`, `id_bidang`, `tahun`, `file`, `publish`, `waktu_upload`, `visitor`) VALUES
(30, 'MODERNITAS DAN PENDIDIKAN KARAKTER MASYARAKAT DI DUSUN DUREN, DESA BARUKAN, KECAMATAN TENGARAN KABUPATEN SEMARANG', 1, 'Yonatan Yakub Mononimbar, Fibry Jati Nugroho', 'STT Sangkakala', 'Dusun Duren adalah salah satu dusun yang terletak di Desa Barukan , Kecamatan Tengaran, Kabupaten Semarang. Dusun ini adalah salah satu dari sekian banyak dusun yang saat ini mengalami dampak modernitas. Tulisan ini bertujuan untuk mengkaji perkembangan karakter masyarakat yang terdampak oleh hadirnya modernitas. Sumber data yang digunakan dalam penelitian ini adalah hasil wawancara mendalam dengan tokoh-tokoh masyarakat dusun Duren, dan warga dusun setempat. Kajian ini menggunakan pendekatan kualitatif dengan pengumpulan data melalui wawancara mendalam dan diskusi kelompok terfokus. Penelitian yang dilakukan di Dusun Duren Desa Barukan, Kecamatan Tengaran ini menemukan bahwa kehadiran modernitas telah membawa perubahan-perubahan terhadap pola-pola pendidikan karakter. Kehadiran modernitas membuat pola-pola lama dalam pendidikan karakter, tidak lagi efektif diterapkan di  kalangan masyarakat pedesaan. \nPenelitian yang dilakukan secara kualitatif deskriptif ini menghasilkan kesimpulan bahwa modernitas adalah arus yang tidak terbendung dan dihindari keberadaannya, sehingga membawa dampak dalam perilaku sosial masyarakat. Masyarakat perlu melakukan modifikasi pola-pola pendidikan karakter masyarakat agar nilai-nilai kearifan dapat diturunkan dari generasi ke generasi selanjutnya. Pola-pola pendidikan yang melibatkan cara berpikir logis, merupakan salah satu strategi yang dapat diterapkan dalam membangun karakter generasi masa kini. Nilai-nilai kearifan lokal yang sering dianggap “kuno” tidak boleh dihilangkan, tetapi justru penting untuk dilestarikan karena dapat menjadikan seseorang memiliki kualitas hidup yang lebih baik. \n', 2, 2019, 'uploads/penelitian/2021/01/210107085738_104.pdf', 1, '2022-05-03 10:18:07', 0),
(31, 'PEMBERDAYAAN POTENSI  DESA WISATA MELALUI KOPERASI SEBAGAI PENGGERAK EKONOMI DESA', 1, 'Fajar Suryatama, Pitaloka Dharma Ayu, Nurmiyati', 'Fakultas Ekonomi dan Bisnis Universitas Darul Ulum Islamic Centre GUPPI Sudirman Ungaran', 'Jumlah koperasi di Kabupaten Semarang semakin tahun semakin menurun. Kondisi tersebut disebabkan karena banyak koperasi yang tidak aktif, pada saat mendirikan koperasi cara pendirian dan perizinannya mudah, pola pikir tersebut  masih keliru, yaitu tidak berdasarkan atas kesadaran untuk berusaha tetapi hanya untuk memperoleh dana bantuan dari pemerintah dan mereka berfikir dengan menjadi anggota koperasi berarti mudah untuk mendapatkan pinjaman. \nMetode penelitian ini menggunakan metode kualitatif, sumber data dan metode pengumpulan data penelitian dilakukan dengan cara observasi, pengamatan, wawancara dan FGD (focus Group Discussion). Proses pengumpulan data dan analisa data dilakukan secara bersamaan.\nHasil penelitian yang paling utama adalah bagaimana merubah mindset pola pikir masyarakat tentang koperasi dari hanya untuk memperoleh dana bantuan dan kemudahan pendiriannya, menjadi mendirikan koperasi karena suatu kebutuhan untuk memperkuat dan memajukan ekonomi masyarakat khususnya masyarakat desa melalui pemberdayaan masyarakat dalam memaksimalkan potensi desa wisata.\n', 3, 2019, 'uploads/penelitian/2021/01/210107090131_735.pdf', 1, '2022-05-03 10:18:07', 0),
(32, 'PERAYAAN KEBERAGAMAAN DI TENGAH PERBEDAAN (POTRET TOLERANSI DI DUSUN KENTENG,  DESA SUMOGAWE, KECAMATAN GETASAN,  KABUPATEN SEMARANG)', 1, 'Fibry Jati Nugroho', 'STT Sangkakala', 'Tulisan ini menyajikan sebuah potret toleransi yang ada dan berkembang di wilayah Dusun Kenteng, Sumogawe Kabupaten Semarang. Nilai-nilai luhur sebagai kearifan lokal dipakai sebagai pondasi membangun keberagamaan di dalam praktik toleransinya. Melalui kajian deskriptif analisis, dengan memakai kajian literatur, dilengkapi dengan wawancara dan pengamatan sebagai sarana pengumpulan datanya, serta dianalisis menggunakan AnalysisInteractive Model dari Miles dan Huberman didapati bahwa nilai luhur terkait Pandangan tentang Kosmologi Jawa dan Kawruh Begja melekat di dalam masyarakat, didukung dengan Etika Jawa perihal Ngajeni lan nepakake menjadi penguat dalam praktik toleransi di masyarakat. Ketiga hal tersebut dapat terjadi didukung dengan ada pola introduksi, internalisasi dan implementasi yang saling bertautan di dalam pelaksanaannya. Potret toleransi ini menjadi sebuah stimulan untuk merayakan keberagamaan di tengah perbedaan.  ', 2, 2019, 'uploads/penelitian/2021/01/210107090324_838.pdf', 1, '2022-05-03 10:18:07', 0),
(33, 'RANCANG BANGUN APLIKASI MULTIMEDIA MENGGUNAKAN MACROMEDIA DIRECTOR MX 2004  UNTUK PENDIDIKAN ANAK USIA DINI', 1, 'Unang Achlison', 'Teknik Elektronika, Sekolah Tinggi Elektronika dan Komputer', 'Setelah dilakukan penelitian pada KB dan TK Anak Cerdas di Kota Ungaran, diketahui ada kendala yang dimiliki oleh guru pengajar TK B dalam menyampaikan materi. Kendala yang dihadapi adalah anak-anak mudah jenuh dengan cara belajar konvensional yang digunakan guru ditambah belum adanya media pembelajaran di sekolah tersebut. Antisipasi kendala tersebut dengan menggunakan media pembelajaran yang mampu meningkatkan minat belajar anak dan dapat menghilangkan kejenuhan dari pembelajaran konvensional.\nTujuan dari penelitian ini adalah mengetahui cara dan manfaat dari Macromedia Director MX 2004 dalam dunia pendidikan. Metode yang dipakai metode Research and Development (penelitian dan pengembangan), diawali dari (1) potensi dan masalah, (2) pengumpulan data, (3) desain media pembelajaran, (4) validasi media pembelajaran, (5) revisi media pembelajaran, (6) uji coba media pembelajaran, dan (7) penerapan.\nMateri pembelajaran menampilkan lima materi yang disertai lima soal dalam setiap materi. Hasil penelitian menunjukkan bahwa media yang dikembangkan telah layak dan memenuhi syarat untuk digunakan. Hal ini sesuai dengan validasi dari hasil uji coba terhadap 14 siswa di kelas Eagle dan Hawk, hasil menunjukkan bahwa siswa mampu memberikan jawaban 91,4% benar.\n', 2, 2019, 'uploads/penelitian/2021/01/210108094235_999.pdf', 1, '2022-05-03 10:18:07', 2),
(34, 'SISTEM PEMERINTAHAN BERBASIS ELEKTRONIK PENDUKUNG PERKEMBANGAN EKOMONI DAERAH KABUPATEN SEMARANG', 1, 'Adhi Budi Susilo, Tri Nurhayati dan Anas Sa’bani', 'Fakultas Hukum Universitas Ngudi Waluyo, Fakultas Syariah dan Hukum Universitas Islam Negeri, Fakultas Hukum Universitas Wahid Hasyim', 'Sejak dimunculkannya Inpres Nomor 03 Tahun 2003 tentang Penyelenggaraan e-Government dan Peraturan Presiden Nomor 95 Tahun 2018 tentang Sistem Pemerintahan Berbasis Elektronik (SPBE) merupakan babak baru bagi tata kelola atau manajemen pemerintahan di Indonesia dan juga berdasarkan Undang-Undang Nomor 23 Tahun 2014 tentang Pemerintah Daerah, bahwa urusan komunikasi dan informasi berada dalam kelompok. Maka dengan itu untuk menjalankan tugas dan wewenangnya Pemerintah Kabupaten Semarang membentuk Peraturan Daerah  Nomor 11 Tahun 2017 tentang Sistem Pemerintahan Berbasis Elektronik.\nTujuan penelitian adalah memberikan peluang bagi pemerintah untuk mendapatkan sumber-sumber pendapatan baru melalui interaksinya dengan pihak-pihak yang berkepentingan dan memperbaiki kualitas pelayanan pemerintah kepada para stakeholder (masyarakat, kalangan bisnis, dan industri) terutama dalam hal kinerja efektivitas dan efisiensi di berbagai bidang kehidupan.\nPenelitian ini menggunakan pendekatan yuridis empiris dengan cara meneliti di lapangan serta menelaah bahan-bahan pustaka. Metode pengumpulan data dilakukan melalui penelitian kepustakaan \nHasil penelitian sistem pemerinatahan berbasis elektronik kiranya dapat menjadi solusi integrasi yang efektif. Kabupaten Semarang sudah menggunakan digitalisasi pelayanan untuk menunjang tugas-tugasnya namun belum bisa terlaksana secara optimal diantaranya pelayanan kepada masyarakat menuju pelayanan oleh masyarakat, dikarenakan masih ada kesenjangan digital menuju demokrasi digital dan manual berbasis dokumen menuju pemerintahan online faktor yang menjadi penghambat diantaranya komunikasi, sumberdaya dan disposisi.  Sebagai salah satu jembatan kepentingan publik untuk dilayani sesuai dengan pertumbuhan perekonomian di Kabupaten Semarang.\n', 3, 2019, 'uploads/penelitian/2021/01/210108094527_143.pdf', 1, '2022-05-03 10:18:07', 0),
(35, 'UJI MODEL PENINGKATAN KUALITAS LAPORAN KEUANGAN PEMERINTAH DAERAH  MELALUI GOOD GOVERNANCE, PEMANFAATAN TEKNOLOGI INFORMASI DAN PENGENDALIAN INTERN (STUDI PADA OPD KABUPATEN SEMARANG)', 1, 'Lisa Erfi Yunita dan Agung Wibowo', 'Fakultas Ekonomika dan Bisnis Universitas 17 Agustus 1945 Semarang', 'Penelitian ini bertujuan untuk menganalisis pengaruh good governance, pemanfaatan teknologi informasi dan pengendalian intern terhadap kualitas Laporan Keuangan Pemerintah Daerah. Teknik pengambilan sampel yang digunakan yaitu simple random sampling. Populasi penelitian ini adalah 45 instansi OPD Kabupaten Semarang dengan unit penelitian yaitu pegawai bagian akuntansi/ keuangan.\nMetode pengumpulan data pada penelitian ini menggunakan survei kuesioner. Teknik analisis data yang digunakan adalah regresi linier berganda dengan bantuan program SPSS.\nHasil penelitian menunjukkan bahwa good governance dan pengendalian intern berpengaruh positif dan signifikan terhadap kualitas Laporan Keuangan Pemerintah Daerah OPD Kabupaten Semarang. Pemanfaatan teknologi informasi berpengaruh negatif tidak signifikan terhadap kualitas Laporan Keuangan Pemerintah Daerah OPD Kabupaten Semarang.\n', 1, 2019, 'uploads/penelitian/2021/01/210108094732_766.pdf', 1, '2022-05-03 10:18:07', 4),
(36, 'ANALISIS FAKTOR-FAKTOR YANG MEMENGARUHI TINGKAT KEMISKINAN DI KABUPATEN SEMARANG', 1, 'Puja Sulistyawan', 'Badan Pusat Statistik Kabupaten Semarang ', 'Kemiskinan merupakan salah satu masalah krusial di setiap Kabupaten/Kota di Indonesia, termasuk di Kabupaten Semarang. Upaya untuk mengurangi angka kemiskinan di Kabupaten Semarang yang lebih efektif dan efisien dapat diketahui dengan melihat faktor-faktor apa saja yang memengaruhi kemiskinan tersebut. Tujuan dari penelitian ini adalah untuk mengetahui variabel-variabel apa saja yang berpengaruh terhadap angka kemiskinan di Kabupaten Semarang. Penelitian ini menggunakan metode regresi linier berganda yang diolah menggunakan aplikasi eviews 9.0 yang datanya diambil dari Badan Pusat Statistik Kabupaten Semarang antara tahun 2010- 2018. Hasil dari penelitian ini diantaranya yaitu variabel jumlah penduduk berpengaruh signifikan dan berarah negatif terhadap angka kemiskinan. PDRB memberikan pengaruh yang signifikan dan berarah positif terhadap angka kemiskinan. Sedangkan variabel angka harapan hidup memberikan pengaruh yang negatif dan signifikan terhadap angka kemiskinan. Tetapi variabel rata-rata lama sekolah tidak berpengaruh signifikan terhadap angka kemiskinan.', 2, 2019, 'uploads/penelitian/2021/01/210108100317_37.pdf', 1, '2022-05-03 10:18:07', 1),
(37, 'ANALISIS PENGARUH PRODUK DOMESTIK REGIONAL BRUTO (PDRB) DAN INDEKS PEMBANGUNAN MANUSIA (IPM) TERHADAP ANGKA KEMISKINAN DI KABUPATEN SEMARANG TAHUN 2000-2018', 1, 'Annie Yuliati', 'Badan Pusat Statistik Kabupaten Semarang ', 'Salah satu tujuan pembangunan berkelanjutan adalah mengentaskan kemiskinan dalam segala bentuk dan dimensi. Namun hingga saat ini kemiskinan masih menjadi masalah klasik bagi sebagian besar negara berkembang dan merupakan salah satu indikator keberhasilan dalam sektor ekonomi. Penelitian ini bertujuan untuk mempelajari pengaruh Produk Domestik Regional Bruto (PDRB) dan Indeks Pembangunan Manusia (IPM) di Kabupaten Semarang terhadap angka kemiskinan tahun 2000 sampai 2018. Metode analisis kuantitatif yang digunakan adalah Regresi Linier Berganda. Hasil analisa menunjukkan kedua variabel independen berpengaruh secara simultan terhadap angka kemiskinan. Secara parsial PDRB maupun IPM memberikan pengaruh signifikan terhadap angka kemiskinan dalam taraf α 5%.', 3, 2019, 'uploads/penelitian/2021/01/210108100622_103.pdf', 1, '2022-05-03 10:18:07', 0),
(38, 'ANALISIS SEKTOR UNGGULAN KABUPATEN SEMARANG', 1, 'Siti Purwati, Wiji Nogroho', 'Badan Pusat Statistik Kabupaten Semarang ', 'Pembangunan ekonomi daerah yang salah satunya bertujuan untuk mencapai target pertumbuhan ekonomi yang tinggi dan inklusif menghadapi permasalahan yang semakin kompleks dan penuh tantangan. Supaya pembangunan daerah lebih terfokus, salah satu upaya yang dapat dilakukan adalah mendeteksi sektor unggulan. Pendekatan shift share (SS), location quotient (LQ), dan tipologi klassen digunakan untuk mendeteksi sektor unggulan di Kabupaten Semarang. Hasil yang diperoleh yaitu sektor unggulan adalah sektor industri pengolahan, sektor jasa keuangan dan asuransi. Sektor tertinggal yaitu pertanian, kehutanan, perikanan; pertambangan dan penggalian; perdagangan besar dan eceran, reparasi mobil dan sepeda motor; transportasi dan pergudangan; penyediaan akomodasi dan makan minum; jasa kesehatan dan kegiatan sosial. Sektor potensial yaitu pengadaan listrik dan gas; pengadaan air, pengelolaan sampah, limbah dan daur ulang; konstruksi; real estat; jasa perusahaan; administrasi pemerintahan, pertahanan dan jaminan sosial wajib. Sektor berkembang yaitu informasi dan komunikasi; jasa pendidikan; jasa lainnya. Simpulannya adalah sektor industri pengolahan serta jasa keuangan dan asuransi merupakan sektor unggulan di Kabupaten Semarang. Selain itu sektor jasa lainnya (termasuk pariwisata di dalamnya); jasa pendidikan serta informasi dan komunikasi juga merupakan sektor berkembang yang mempunyai potensi besar untuk menjadi sektor unggulan. Sesuai prioritas pembangunan daerah yang mengandalkan sektor pariwisata, maka perlu dipertimbangkan kembali sektor pendukung lainnya.', 3, 2019, 'uploads/penelitian/2021/01/210111090921_721.pdf', 1, '2022-05-03 10:18:07', 0),
(39, 'ANALISIS TREND DAN DETERMINAN SWASEMBADA BERAS', 1, 'Lendi Ageng Kurnia', 'Dinas Pertanian, Perikanan dan Pangan', 'Penelitian terdahulu banyak mengulas determinan swasembada beras dari sisi input internal maupun eksternal. Dalam penelitian ini kesenjangan harga gabah terhadap beras dan kesejahteraan petani diperhitungkan sebagai variabel penelitian.\nTujuan penelitian ini untuk mengetahui peramalan/ trend swasembada beras dalam menopang ketahanan pangan di masa depan serta mengetahui faktor apa saja yang berpengaruh terhadap pencapaian swasembada beras.\nPenelitian ini menggunakan metode trend analisis dan regresi linier berganda Lead Square (LS) dengan menunjukkan hasil bahwa trend kemampuan swasembada beras dengan bertumpu produksi domestik dalam mendukung kemandirian pangan di masa depan adalah positif artinya nilai kecenderungan swasembada beras meningkat sejalan dengan meningkatnya waktu. Variabel yang berpengaruh terhadap swasembada beras secara signifikan adalah pasokan beras, produktivitas beras, dukungan pemerintah, kesejahteraan petani dan dummy (masa Orde Baru dan Reformasi). Sedangkan variabel yang tidak signikan adalah tingkat konsumsi beras.\n', 3, 2019, 'uploads/penelitian/2021/01/210111091219_476.pdf', 1, '2022-05-03 10:18:07', 2),
(40, 'BAHASA RUPA PADA FOLKLOR BARU KLINTING: RISET KEBUTUHAN VISUAL BRANDING DAN MEDIA PROMOSI ILUSTRASI EDUWISATA KABUPATEN SEMARANG', 1, 'Dwi Budi Harto, Retno Dwi Harini', 'FBS Universitas Negeri Semarang, SMPN 5 Ungaran', 'Sejak Otda dicanangkan tahun 1999 banyak Pemerintah Daerah mulai menggali potensi budaya daerah masing-masing. Folklor Baru Klinting pun populer untuk digali menjadi ikon wisata di Kabupaten Semarang, tidak terkecuali taman wisata Saloka Theme Park (STP) yang berada di Lopait, Tuntang. STP dijadikan klien dalam riset kebutuhan (needs assessment) visual branding dan media promosi ilustrasi eduwisata Kabupaten Semarang. Pendekatan penelitiannya adalah deskriptif kualitatif, model analisis interaktif, diakhiri dengan analisis SWOT. Secara spesifik pada awalnya ada tiga tujuan penelitian. Tiga tujuan tersebut bisa dirangkum menjadi satu tujuan, yaitu: mendapatkan peta kebutuhan bahasa rupa dan bahasa kata dari wisatawan, yang digunakan sebagai konsep perancangan visual branding (VB) dan media promosi. Berdasarkan tiga tujuan awal penelitian tersebut, maka hasil penelitian ini dapat disimpulkan : (1) terkait eduwisata Kabupaten Semarang berbasis folklor Baru Klinting, pengunjung/user/wisatawan lebih membutuhkan bahasa rupa (98%) dari pada bahasa kata; (2) VB dan media promosi eduwisata/edutainment folklor Baru Klinting berbasis bahasa rupa vT didominasi oleh CW (Cara Wimba) Ukuran Pengambilan dan CW Sudut Pengambilan; (3) VB dan media promosi eduwisata folklor Baru Klinting sebaiknya berkonsep bahasa rupa tradisi: aneka tampak, dari kepala ke kaki, sinar X, cara kembar, rinci diperbesar, dll.', 2, 2019, 'uploads/penelitian/2021/01/210111091459_770.pdf', 1, '2022-05-03 10:18:07', 2),
(41, 'MEMPERKUAT KETAHANAN NASIONAL MELALUI KEARIFAN LOKAL (Studi tentang Kearifan Lokal Masyarakat Dusun Kenteng, Desa Sumogawe, Kecamatan Getasan, Kabupaten Semarang)', 1, 'Fibry Jati Nugroho', 'STT Sangkakala', 'Nasionalisme mulai digoncang kembali dengan gerakan radikalisme dan ekstremisme. Kondisi sosial masyarakat yang terguncang mendorong diperlukan upaya, baik untuk meredam ataupun membangun kembali ketahanan nasional dan nasionalisme di dalam masyarakat. Tulisan ini menyajikan sebuah nilai luhur yang ada dan berkembang di wilayah Dusun Kenteng, Sumogawe Kabupaten Semarang. Nilai-nilai luhur sebagai kearifan lokal dipakai sebagai pondasi membangun ketahanan nasional di dalam masyarakat. Melalui kajian deskriptif analisis, dengan memakai kajian literatur, dilengkapi dengan wawancara dan pengamatan sebagai sarana pengumpulan datanya, serta dianalisis menggunakan Analysis Interactive Model dari Miles dan Huberman didapati bahwa nilai luhur yang dapat dikembangkan menjadi elemen pembangun ketahanan nasional yaitu Perilaku tepo slira lan biso rumangsa, Perilaku karyenak tyasing sesame dan Perilaku sepi ing pamrih. Ketiga nilai luhur yang bersumber dari kearifan lokal setempat dapat dipakai menjadi stimulant dalam mengembangkan ketahanan nasional di dalam masyarakat. Masyarakat dapat mencintai budayanya dan dapat dipakai sebagai sarana membangun ketahanan nasional.', 2, 2019, 'uploads/penelitian/2021/01/210111091839_105.pdf', 1, '2022-05-03 10:18:07', 0),
(42, 'PENGELOLAAN KETIDAKEFEKTIFAN PERFUSI JARINGAN PERIFER PADA PASIEN DIABETES MELLITUS DI RUANG BOUGENVILE RSUD UNGARAN', 1, 'Priscanada Farah Ema Permata, Muhammad Musta’in', 'Universitas Ngudi Waluyo', 'Diabetes Mellitus merupakan sekumpulan gangguan metabolik yang ditandai dengan peningkatan kadar glukosa darah akibat kerusakan pada sekresi insulin, kerja insulin, atau keduanya. Diabetes dapat mengakibatkan komplikasi mikrovaskuler dan makrovaskuler, seperti komplikasi neuropati dan penyakit vaskular perifer yang dapat menyebabkan masalah keperawatan ketidakefektifan perfusi jaringan perifer. Tujuan penelitian untuk menggambarkan pengelolaan pasien dengan Diabetes Mellitus yang mengalami ketidakefektifan perfusi jaringan perifer. Metode yang digunakan adalah pengelolaan pasien dengan pendekatan asuhan keperawatan yang meliputi pengkajian, analisa data, diagnosa keperawatan, intervensi, implementasi dan evaluasi. Sampel penelitian ini adalah Tn S yang mengalami diabetes mellitus. Pengelolaan dilakukan selama 2 hari berupa perawatan kaki. Hasil pengelolaan didapatkan masalah ketidakefektifan perfusi jaringan perifer belum teratasi.', 2, 2019, 'uploads/penelitian/2021/01/210111092009_267.pdf', 1, '2022-05-03 10:18:07', 2),
(43, 'PURIFIKASI BUAH PARIJOTO (Medinilla speciosa Blume) DAN UJI BIOAKTIVITASNYA SEBAGAI ALTERNATIF PENGOBATAN DIABETES MELLITUS', 1, 'Rissa Laila Vifta, Istianatus Sunnah, Nurul Chanifah, Yustisia Dian Advistasari', 'Fakultas Ilmu Kesehatan Universitas Ngudi Waluyo, STIFAR “Yayasan Pharmasi” Semarang ', 'Buah parijoto (Medinilla speciosa) mengandung senyawa flavonoid yang berpotensi sebagai antioksidan dan mampu menurunkan kadar glukosa. Peningkatan aktivitas kandungan senyawa aktif dapat dilakukan dengan cara purifikasi. Penelitian difokuskan untuk mengetahui skrining flavonoid, aktivitas antioksidan, dan pengaruh ekstrak terpurifikasi n-heksan dan etil asetat buah parijoto (Medinilla speciosa) terhadap aktivitas antidiabetes secara in vitro. Identifikasi flavonoid dilakukan dengan pereaksi warna, KLT, dan penentuan total flavonoid. Aktivitas antioksidan dilihat menggunakan radikal kation ABTS.+ (2,2 azinobis (3-etilbenzotiazolin)-6-asam sulfonat), dan pengujian aktivitas antidiabetes dilakukan dengan metode Nelson Somogyi. Hasil penelitian menunjukkan bahwa nilai rendemen purifikasi n-heksan yaitu 57,75% dan etil asetat yaitu 61,25%. Ekstrak terpurifikasi n-heksan mengandung flavonoid masing- masing sebesar 128,208 mg QE/g dan 107,908 mg QE/g. Aktivitas antioksidan menunjukkan kedua ekstrak terpurifikasi memiliki kategori antioksidan sangat kuat dengan nilai IC50 masing 17,75 mg/L untuk purifikasi n-heksan dan 20,22 mg/L untuk purifikasi etil asetat. Ekstrak terpurifikasi n-heksan mampu menurunkan glukosa secara optimal sebesar 60,13% pada kosnentrasi 20 ppm dan purifikasi etil asetat sebesar 49,39% pada konsentrasi 30 ppm. Kandungan flavonoid pada esktrak terpurifikasi buah parijoto memiliki aktivitas antioksidan dan antidiabetes yang baik. Purifikasi n-heksan mempunyai aktivitas penurunan kadar glukosa secara in vitro yang lebih tinggi daripada purifikasi etil asetat.', 2, 2019, 'uploads/penelitian/2021/01/210111092339_906.pdf', 1, '2022-05-03 10:18:07', 1),
(44, 'STRATEGI PENINGKATAN MANFAAT EKONOMI DI LAHAN KRITIS KECAMATAN BANCAK MELALUI AGROBISNIS METE', 1, 'A. Aru Hadi Eka Sayoga ', 'Inspektorat Kabupaten Semarang ', 'Saat ini ditemukan tren penduduk usia produktif di kawasan perdesaaan lebih memilih bekerja dan menetap di wilayah perkotaan dengan peluang yang lebih besar untuk bekerja mencari nafkah, hal tersebut juga terjadi di Kecamatan Bancak yang memiliki luas lahan kritis 798,00 Ha (2016). Upaya peningkatan nilai ekonomi lahan kritis di Kecamatan Bancak dapat dilakukan dengan cara pengembangan agribisni mete. hal ini dapat dilakukan karena beberapa kriteria telah dapat dipenuhi. Metode penelitian dengan cara Kualitatif-Verifikatif dengan lebih mengedepankan observasi lapangan dan pembandingan dengan dasar teori. Dari hasil metode penelitian ini memunculkan hasil penelitian strategi yang dibagi menjadi 3 (tiga) jenis dilihat berdasarkan jangka waktu, yaitu Perencanaan Jangka Pendek sebagai fase \"PLANTING AND DEVELOPING\", Perencanaan Jangka Menengah sebagai fase HARVESTING AND PROMOTING dan Perencanaan Jangka Panjang sebagai fase \"MAINTAINING AND URBAN BRANDING\". Kesimpulan dari penelitian ini adalah Kecamatan Bancak sesuai untuk usaha agrobisnis mete dilihat dari lingkungan dan kebijakan tata ruang serta dilihat dari kelayakan usaha, dari hasil pertanian mete akan sangat menguntungkan, namun dirasakan mulai tahun ketiga, saat pohon mete mulai berbuah.', 3, 2019, 'uploads/penelitian/2021/01/210111094822_303.pdf', 1, '2022-05-03 10:18:07', 3);

-- --------------------------------------------------------

--
-- Table structure for table `krenova_bidang_fokus`
--

CREATE TABLE `krenova_bidang_fokus` (
  `id` int(11) NOT NULL,
  `bidang_fokus` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `krenova_bidang_fokus`
--

INSERT INTO `krenova_bidang_fokus` (`id`, `bidang_fokus`) VALUES
(1, 'Agribisnis dan Ketahanan Pangan'),
(2, 'Energi baru dan terbarukan'),
(3, 'Kehutanan dan lingkungan hidup'),
(4, 'Kelautan dan perikanan'),
(5, 'Kesehatan, obat-obatan dan kosmetika'),
(6, 'Pendidikan'),
(7, 'Rekayasa Teknologi dan manufaktur'),
(8, 'Teknologi Informasi dan Komunikasi'),
(9, 'Industri Kreatif'),
(10, 'Sosial, Budaya (pemberdayaan masyarakat dan revitalisasi budaya)');

-- --------------------------------------------------------

--
-- Table structure for table `krenova_master_pd_indikator`
--

CREATE TABLE `krenova_master_pd_indikator` (
  `id` int(11) NOT NULL,
  `indikator` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `informasi_tambahan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bobot_nilai` int(11) NOT NULL,
  `lampiran` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `flag_hapus` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `krenova_master_pd_indikator`
--

INSERT INTO `krenova_master_pd_indikator` (`id`, `indikator`, `informasi_tambahan`, `bobot_nilai`, `lampiran`, `waktu_update`, `flag_hapus`) VALUES
(1, 'Regulasi Inovasi', 'Regulasi yang menetapkan nama inovasi yang menjadi landasan operasional penerapan inovasi', 4, 'Dokumen SK/Peraturan (.PDF)', '2022-05-03 10:18:07', 0),
(2, 'Ketersediaan SDM terhadap Inovasi', 'Jumlah SDM yang mengelola inovasi ini. Jumlahnya ada berapa orang', 2, 'SK Kegiatan', '2022-05-03 10:18:07', 0),
(3, 'Dukungan Anggaran', 'Anggaran untuk inovasi dituangkan dalam APBD', 4, 'Dokumen Anggaran', '2022-05-03 10:18:07', 0),
(4, 'Penggunaan IT', 'Penggunaan alat elektronik, teknologi dalam pelaksanaan inovasi', 2, 'Foto Kegiatan/Gambar Screenshoot layar', '2022-05-03 10:18:07', 0),
(5, 'Bimtek Inovasi', 'Peningkatan kapasitas dan kompetensi pelaksanaan inovasi', 2, 'Foto Kegiatan/Gambar Screenshoot layar', '2022-05-03 10:18:07', 0),
(6, 'Program dan Kegiatan inovasi Perangkat dalam RKPD', 'Inovasi Daerah masuk dalam program dan kegiatan Renstra PD', 2, 'Dokumen Renstra', '2022-05-03 10:18:07', 0),
(7, 'Keterlibatan Aktor Inovasi', 'Keikutsertaan unsur Stakeholder dalam pelaksanaan inovasi', 1, 'SK', '2022-05-03 10:18:07', 0),
(8, 'Pelaksana Inovasi  ', 'Penetapan tim pelaksana inovasi', 2, 'SK', '2022-05-03 10:18:07', 0),
(9, 'Jejaring Inovasi', 'Jumlah Perangkat Daerah yang terlibat dalam penerapan inovasi dalam 2 tahun terakhir', 1, 'Dokumen Laporan/Foto Kegiatan/ Gambar Screenshoot layar', '2022-05-03 10:18:07', 0),
(10, 'Sosialisasi Inovasi ', 'Penyebarluasan informasi kebijakan inovasi dari pemerintahan daerah 2 Tahun terakhir', 2, 'Foto Kegiatan/ Gambar Screenshoot layar', '2022-05-03 10:18:07', 0),
(11, 'Pedoman Teknis', 'Ketentuan dasar penggunaan inovasi berupa buku petunjuk/manual book', 2, 'dokumen Pedoman Teknis', '2022-05-03 10:18:07', 0),
(12, 'Kemudahan Informasi Layanan', 'Kemudahan mendapatkan informasi layanan', 2, 'Dokumen Laporan/Foto Kegiatan/ Gambar Screenshoot layar', '2022-05-03 10:18:07', 0),
(13, 'Kemudahan Proses Inovasi Yang Dihasilkan ', 'Waktu yang diperlukan untuk memperoleh proses penggunaan hasil inovasi', 2, 'Dokumen Laporan/Foto Kegiatan/ Gambar Screenshoot layar', '2022-05-03 10:18:07', 0),
(14, 'Penyelesaian Layanan Aduan', 'Rasio penyelesaian pengaduan dalam tahun terakhir', 2, 'Dokumen Laporan/Foto Kegiatan/ Gambar Screenshoot layar', '2022-05-03 10:18:07', 0),
(15, 'Online sistem', 'Jaringan prosedur yang dibuat secara daring 2 Tahun terakhir', 2, 'Dokumen Laporan/Foto Kegiatan/ Gambar Screenshoot layar', '2022-05-03 10:18:07', 0),
(16, 'Replikasi', 'Inovasi yang telah berhasil direplikasi ke daerah lain', 2, 'Dokumen Kerja Sama', '2022-05-03 10:18:07', 0),
(17, 'Kecepatan Inovasi', 'Satuan Waktu yang digunakan untuk menciptakan inovasi', 3, 'Dokumen Laporan/Foto Kegiatan/ Gambar Screenshoot layar', '2022-05-03 10:18:07', 0),
(18, 'Kemanfaatan Inovasi', 'Jumlah pengguna atau penerima manfaat inovasi 2 Tahun terakhir', 5, 'Dokumen Laporan/Foto Kegiatan/ Gambar Screenshoot layar', '2022-05-03 10:18:07', 0),
(19, 'Monitoring dan Evaluasi Inovasi ', 'Kepuasan pelaksanaan penggunaan inovasi daerah 2 tahun terakhir', 3, 'Dokumen', '2022-05-03 10:18:07', 0),
(20, 'Kualitas inovasi ', 'Kualitas inovasi dapat dibuktikan dengan video penerapan inovasi 2 Tahun terakhir yang memenuhi lima unsur : latar belakang, penjaringan ide solusi, alasan pemilihan ide yang dianggap paling solutif, manfaat inovasi dan dampak inovasi', 5, 'file dalam format MP4, Mov atau Avi\r\nDurasi video 1,5 menit.\r\nVideo dikirim melalui link youtube\r\n', '2022-05-03 10:18:07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `krenova_master_pd_indikator_uraian`
--

CREATE TABLE `krenova_master_pd_indikator_uraian` (
  `id` int(11) NOT NULL,
  `id_krenova_master_pd_indikator` int(11) NOT NULL,
  `uraian` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bobot` int(11) NOT NULL,
  `waktu_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `flag_hapus` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `krenova_master_pd_indikator_uraian`
--

INSERT INTO `krenova_master_pd_indikator_uraian` (`id`, `id_krenova_master_pd_indikator`, `uraian`, `bobot`, `waktu_update`, `flag_hapus`) VALUES
(1, 1, 'SK Kepala Perangkat Daerah', 4, '2022-05-03 10:26:29', 0),
(2, 1, 'SK Kepala Daerah', 8, '2022-05-03 10:26:32', 0),
(3, 1, 'Perkada', 12, '2022-05-03 10:26:35', 0),
(4, 1, 'Perda', 16, '2022-05-03 10:26:42', 0),
(5, 2, '1-10 SDM', 2, '2022-05-03 10:27:23', 0),
(6, 2, '11-30 SDM', 4, '2022-05-03 10:27:24', 0),
(7, 2, 'Lebih dari 30 SDM', 6, '2022-05-03 10:27:27', 0),
(8, 3, 'Anggaran tersedia pada kegiatan inisiasi inovasi', 4, '2022-05-03 10:27:34', 0),
(9, 3, 'Anggaran tersedia pada kegiatan uji coba inovasi', 8, '2022-05-03 10:27:35', 0),
(10, 3, 'Anggaran tersedia pada kegiatan penerapan inovasi', 12, '2022-05-03 10:27:38', 0),
(11, 4, 'Pelaksanaan kerja secara manual/non elektronik', 2, '2022-05-03 10:27:44', 0),
(12, 4, 'Pelaksanaan kerja secara elektronik', 4, '2022-05-03 10:27:46', 0),
(13, 4, 'Pelaksanaan kerja sudah didukung sistem informasi online/daring', 6, '2022-05-03 10:27:47', 0),
(14, 5, 'Dalam 2 tahun terakhir pernah 1 kali bimtek', 2, '2022-05-03 10:28:00', 0),
(15, 5, 'Dalam 2 tahun terakhir pernah 2 kali bimtek', 4, '2022-05-03 10:28:02', 0),
(16, 5, 'Dalam 2 tahun terakhir pernah lebih dari 2 kali bimtek', 6, '2022-05-03 10:28:03', 0),
(17, 6, 'Pemda sudah menuangkan program inovasi dalam RPJMD', 2, '2022-05-03 10:28:08', 0),
(18, 6, 'Pemda sudah menuangkan program inovasi dalam RKPD dan telah diterapkan dalam 1 Tahun terakhir', 4, '2022-05-03 10:28:10', 0),
(19, 6, 'Pemda sudah menuangkan program inovasi dalam RKPD dan telah diterapkan dalam 2 Tahun terakhir.', 6, '2022-05-03 10:28:12', 0),
(20, 7, 'Inovasi melibatkan 4 aktor', 1, '2022-05-03 10:28:17', 0),
(21, 7, 'Inovasi melibatkan 5 aktor', 2, '2022-05-03 10:28:19', 0),
(22, 7, 'Inovasi melibatkan lebih dari 5 aktor', 3, '2022-05-03 10:28:22', 0),
(23, 8, 'Ada pelaksana namun tidak ditetapkan dengan SK Kepala Perangkat Daerah', 2, '2022-05-03 10:28:26', 0),
(24, 8, 'Ada pelaksana dan ditetapkan dengan SK Kepala Perangkat Daerah', 4, '2022-05-03 10:28:28', 0),
(25, 8, 'Ada pelaksana dan ditetapkan dengan SK Kepala Daerah', 6, '2022-05-03 10:28:31', 0),
(26, 9, 'Inovasi melibatkan 1-2 PD', 1, '2022-05-03 10:28:43', 0),
(27, 9, 'Inovasi melibatkan 3-4 PD', 2, '2022-05-03 10:28:45', 0),
(28, 9, 'Inovasi melibatkan 5 PD atau lebih', 3, '2022-05-03 10:28:47', 0),
(29, 10, 'Foto kegiatan berspanduk', 2, '2022-05-03 10:28:52', 0),
(30, 10, 'URL Media Sosial', 4, '2022-05-03 10:28:54', 0),
(31, 10, 'Media Berita', 6, '2022-05-03 10:28:56', 0),
(32, 11, 'Telah terdapat Pedoman Teknis berupa buku manual', 2, '2022-05-03 10:28:59', 0),
(33, 11, 'Telah terdapat Pedoman Teknis berupa buku dalam bentuk elektronik', 4, '2022-05-03 10:29:01', 0),
(34, 11, 'Telah terdapat Pedoman Teknis berupa buku yang dapat diakses secara online', 6, '2022-05-03 10:29:03', 0),
(35, 12, 'Layanan telp atau tatap muka langsung/noken', 2, '2022-05-03 10:29:06', 0),
(36, 12, 'Layanan Email/media sosial', 4, '2022-05-03 10:29:08', 0),
(37, 12, 'Layanan melalui aplikasi online', 6, '2022-05-03 10:29:10', 0),
(38, 13, 'Hasil inovasi diperoleh dalam waktu 6 hari ke atas', 2, '2022-05-03 10:29:13', 0),
(39, 13, 'Hasil inovasi diperoleh dalam waktu 2-5 hari ', 4, '2022-05-03 10:29:16', 0),
(40, 13, 'Hasil inovasi diperoleh dalam waktu 1 hari ', 6, '2022-05-03 10:29:19', 0),
(41, 14, '≤ 30%', 2, '2022-05-03 10:29:22', 0),
(42, 14, '31% s.d. 60%', 4, '2022-05-03 10:29:24', 0),
(43, 14, '≥61%', 6, '2022-05-03 10:29:25', 0),
(44, 15, 'Ada dukungan melalui informasi website atau sosial media', 2, '2022-05-03 10:29:29', 0),
(45, 15, 'Ada dukungan melalui web aplikasi', 4, '2022-05-03 10:29:31', 0),
(46, 15, 'Ada dukungan melalui perangkat web aplikasi dan aplikasi mobile (android dan ios)', 6, '2022-05-03 10:29:32', 0),
(47, 16, 'Pernah 1 kali direplikasi di daerah lain', 2, '2022-05-03 10:29:37', 0),
(48, 16, 'Pernah 2 kali direplikasi di daerah lain', 4, '2022-05-03 10:29:38', 0),
(49, 16, 'Pernah 3 kali direplikasi di daerah lain', 6, '2022-05-03 10:29:40', 0),
(50, 17, 'Inovasi dapat diciptakan dalam waktu 9 bulan ', 3, '2022-05-03 10:29:48', 0),
(51, 17, 'Inovasi dapat diciptakan dalam waktu 5-8 bulan ', 6, '2022-05-03 10:29:49', 0),
(52, 17, 'Inovasi dapat diciptakan dalam waktu 1-4 bulan ', 9, '2022-05-03 10:29:51', 0),
(53, 18, 'Jumlah pengguna atau penerima manfaat 1 – 100 orang', 5, '2022-05-03 10:29:55', 0),
(54, 18, 'Jumlah pengguna atau penerima manfaat 101 – 200 orang', 10, '2022-05-03 10:29:58', 0),
(55, 18, 'Jumlah pengguna atau penerima manfaat 201 orang keatas', 15, '2022-05-03 10:30:00', 0),
(56, 19, 'Hasil laporan monev internal PD', 3, '2022-05-03 10:30:04', 0),
(57, 19, 'Hasil pengukuran kepuasan pengguna dari evaluasi survey kepuasan masyarakat.', 6, '2022-05-03 10:30:06', 0),
(58, 19, 'Hasil laporan monev eksternal berdasarkan hasil penelitian', 9, '2022-05-03 10:30:09', 0),
(59, 20, 'Memenuhi 1 unsur atau 2 unsur substansi', 5, '2022-05-03 10:30:14', 0),
(60, 20, 'Memenuhi 3 unsur atau 4 unsur substansi', 10, '2022-05-03 10:30:16', 0),
(61, 20, 'Memenuhi 5 unsur substansi', 15, '2022-05-03 10:30:18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `krenova_master_umum_kuesioner`
--

CREATE TABLE `krenova_master_umum_kuesioner` (
  `id` int(11) NOT NULL,
  `judul` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bobot` int(11) NOT NULL,
  `flag_hapus` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `krenova_master_umum_kuesioner`
--

INSERT INTO `krenova_master_umum_kuesioner` (`id`, `judul`, `bobot`, `flag_hapus`) VALUES
(1, 'Orisinalitas dan Kepioniran', 20, 0),
(2, 'Penerapan di Masyarakat', 30, 0),
(3, 'Manfaat', 35, 0),
(4, 'Keberlangsungan/Komersialisasi', 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `krenova_master_umum_kuesioner_detail`
--

CREATE TABLE `krenova_master_umum_kuesioner_detail` (
  `id` int(11) NOT NULL,
  `id_krenova_master_umum_kuesioner` int(11) NOT NULL,
  `unsur` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag_hapus` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `krenova_master_umum_kuesioner_detail`
--

INSERT INTO `krenova_master_umum_kuesioner_detail` (`id`, `id_krenova_master_umum_kuesioner`, `unsur`, `flag_hapus`) VALUES
(1, 1, 'Apakah temuan benar-benar asli milik saudara?', 0),
(2, 1, 'Apakah ide/inovasi hasil pengembangan sebelumnya? Apabila jawaban \"ya\", pengembangannya di bagian apa?', 0),
(3, 1, 'Apakah ada Inovasi sejenis? Apa perbedaan inovasi yang anda miliki?', 0),
(4, 2, 'Apakah  sudah  diterapkan pada lingkungan yang relevan? ', 0),
(5, 2, 'Bagaimana hasil penerapannya?', 0),
(6, 2, 'Apakah penerapan tersebut masih berjalan sampai saat ini?', 0),
(7, 2, 'Siapakah yang menerapkan?', 0),
(8, 2, 'Skala jangkauan penerapan pada\r\nskala apa(Nasional/Provinsi/Kab\r\ndan kota/Kecamatan/Desa)?\r\n', 0),
(9, 3, 'Apakah inovasi yang dihasilkan\ndapat menyelesaiakan permasalahan   aktual? Jelaskan.', 0),
(10, 3, 'Apakah inovasi dapat\r\nmeningkatkan proses produksi/efisiensi? Jelaskan\r\n', 0),
(11, 3, 'Apakah memberi manfaat\r\nke lingkungan? Dalam bentuk ', 0),
(12, 3, 'Apakah menyerap tenaga kerja\npada proses produksi? Berapa?', 0),
(13, 3, 'Apakah dapat meningkatkan pendapatan masyarakat? Berapa?', 0),
(14, 4, 'Berapa penyerapan sumber daya lokal (SDM, SDA, Bahan baku lokal)?', 0),
(15, 4, 'Apakah ketersediaan sumber daya tersebut kontinyu secara kualitas dan kuantitas?', 0);

-- --------------------------------------------------------

--
-- Table structure for table `krenova_pd`
--

CREATE TABLE `krenova_pd` (
  `id` int(11) NOT NULL,
  `id_krenova_periode` int(11) NOT NULL,
  `nama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahapan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `inisiator` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bentuk` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_uji_coba` date NOT NULL,
  `waktu_implementasi` date NOT NULL,
  `rancang_bangun_pokok_perubahan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tujuan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `manfaat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hasil` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `anggaran` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `anggaran_lampiran` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `profil_bisnis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `profil_bisnis_lampiran` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_nilai` int(11) NOT NULL,
  `id_user_pembuat` int(11) NOT NULL,
  `waktu_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `flag_hapus` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `krenova_pd`
--

INSERT INTO `krenova_pd` (`id`, `id_krenova_periode`, `nama`, `tahapan`, `inisiator`, `jenis`, `bentuk`, `waktu_uji_coba`, `waktu_implementasi`, `rancang_bangun_pokok_perubahan`, `tujuan`, `manfaat`, `hasil`, `anggaran`, `anggaran_lampiran`, `profil_bisnis`, `profil_bisnis_lampiran`, `total_nilai`, `id_user_pembuat`, `waktu_update`, `flag_hapus`) VALUES
(1, 1, 'What is Lorem Ipsum?', 'penerapan', 'test', 'digital', 'Inovasi lainnya sesuai dengan Urusan Pemerintahan yang menjadi kewenangan daerah', '2022-05-11', '2022-05-19', 'test', 'test', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'test', '200000', '', 'test', 'uploads/krenova_pd/2022/06/20220607162559_9_Portfolio.pdf', 95, 9, '2022-06-07 09:39:55', 0),
(3, 1, 'testx', 'uji coba', 'testa', 'digital', 'Inovasi lainnya sesuai dengan Urusan Pemerintahan yang menjadi kewenangan daerah', '2022-06-09', '2022-06-09', 'te', 'ste', 'sat', 'astast', 'ast', '', 'sattas', '', 0, 9, '2022-06-08 02:50:15', 0),
(4, 1, 'cascas', 'inisiatif', 'asc', 'digital', 'Inovasi lainnya sesuai dengan Urusan Pemerintahan yang menjadi kewenangan daerah', '2022-06-08', '2022-06-08', 'av', 'sv', 'asv', 'asv', 'asv', '', 'svaasv', '', 0, 9, '2022-06-08 02:16:47', 0);

-- --------------------------------------------------------

--
-- Table structure for table `krenova_pd_jawaban_indikator`
--

CREATE TABLE `krenova_pd_jawaban_indikator` (
  `id` int(11) NOT NULL,
  `id_krenova_pd` int(11) NOT NULL,
  `id_krenova_master_pd_indikator` int(11) NOT NULL,
  `indikator` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lampiran` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `uraian` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai` int(11) NOT NULL,
  `id_user_penilai` int(11) NOT NULL,
  `id_user_pembuat` int(11) NOT NULL,
  `flag_draft` int(11) NOT NULL DEFAULT 1,
  `waktu_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `krenova_pd_jawaban_indikator`
--

INSERT INTO `krenova_pd_jawaban_indikator` (`id`, `id_krenova_pd`, `id_krenova_master_pd_indikator`, `indikator`, `lampiran`, `uraian`, `nilai`, `id_user_penilai`, `id_user_pembuat`, `flag_draft`, `waktu_update`) VALUES
(1, 1, 1, 'Regulasi Inovasi', 'uploads/krenova_pd_indikator/2022/05/20220503172201_9_.emulator_console_auth_token', 'SK Kepala Perangkat Daerah', 4, 0, 1, 1, '2022-06-07 11:36:11'),
(2, 1, 2, 'Ketersediaan SDM terhadap Inovasi', 'uploads/krenova_pd_indikator/2022/05/20220503172201_9_.emulator_console_auth_token', '11-30 SDM', 4, 0, 1, 1, '2022-06-07 11:36:11'),
(3, 1, 3, 'Dukungan Anggaran', 'uploads/krenova_pd_indikator/2022/05/20220503172201_9_.emulator_console_auth_token', 'Anggaran tersedia pada kegiatan uji coba inovasi', 8, 0, 1, 1, '2022-06-07 11:36:11'),
(4, 1, 4, 'Penggunaan IT', 'uploads/krenova_pd_indikator/2022/05/20220503172201_9_.emulator_console_auth_token', 'Pelaksanaan kerja secara manual/non elektronik', 2, 0, 1, 1, '2022-06-07 11:36:11'),
(5, 1, 5, 'Bimtek Inovasi', 'uploads/krenova_pd_indikator/2022/05/20220503172201_9_.emulator_console_auth_token', 'Dalam 2 tahun terakhir pernah 2 kali bimtek', 4, 0, 1, 1, '2022-06-07 11:36:11'),
(6, 1, 6, 'Program dan Kegiatan inovasi Perangkat dalam RKPD', 'uploads/krenova_pd_indikator/2022/05/20220503172201_9_.emulator_console_auth_token', 'Pemda sudah menuangkan program inovasi dalam RKPD dan telah diterapkan dalam 2 Tahun terakhir.', 4, 0, 1, 1, '2022-06-07 11:36:11'),
(7, 1, 7, 'Keterlibatan Aktor Inovasi', 'uploads/krenova_pd_indikator/2022/05/20220503172201_9_.emulator_console_auth_token', 'Inovasi melibatkan 4 aktor', 1, 0, 9, 1, '2022-05-03 11:06:35'),
(8, 1, 8, 'Pelaksana Inovasi  ', 'uploads/krenova_pd_indikator/2022/05/20220503172201_9_.emulator_console_auth_token', 'Ada pelaksana dan ditetapkan dengan SK Kepala Perangkat Daerah', 4, 0, 9, 1, '2022-05-03 11:06:35'),
(9, 1, 9, 'Jejaring Inovasi', 'uploads/krenova_pd_indikator/2022/05/20220503172201_9_.emulator_console_auth_token', 'Inovasi melibatkan 1-2 PD', 1, 0, 9, 1, '2022-05-03 11:06:35'),
(10, 1, 10, 'Sosialisasi Inovasi ', 'uploads/krenova_pd_indikator/2022/05/20220503172201_9_.emulator_console_auth_token', 'Media Berita', 6, 0, 9, 1, '2022-05-03 11:06:35'),
(11, 1, 11, 'Pedoman Teknis', 'uploads/krenova_pd_indikator/2022/05/20220503172201_9_.emulator_console_auth_token', 'Telah terdapat Pedoman Teknis berupa buku yang dapat diakses secara online', 6, 0, 9, 1, '2022-05-03 11:06:35'),
(12, 1, 12, 'Kemudahan Informasi Layanan', 'uploads/krenova_pd_indikator/2022/05/20220503172201_9_.emulator_console_auth_token', 'Layanan Email/media sosial', 4, 0, 9, 1, '2022-05-03 11:06:35'),
(13, 1, 13, 'Kemudahan Proses Inovasi Yang Dihasilkan ', 'uploads/krenova_pd_indikator/2022/05/20220503172201_9_.emulator_console_auth_token', 'Hasil inovasi diperoleh dalam waktu 6 hari ke atas', 2, 0, 9, 1, '2022-05-03 11:06:35'),
(14, 1, 14, 'Penyelesaian Layanan Aduan', 'uploads/krenova_pd_indikator/2022/05/20220503172201_9_.emulator_console_auth_token', '31% s.d. 60%', 4, 0, 9, 1, '2022-05-03 11:06:35'),
(15, 1, 15, 'Online sistem', 'uploads/krenova_pd_indikator/2022/05/20220503172201_9_.emulator_console_auth_token', 'Ada dukungan melalui web aplikasi', 4, 0, 9, 1, '2022-05-03 11:06:35'),
(16, 1, 16, 'Replikasi', 'uploads/krenova_pd_indikator/2022/05/20220503172201_9_.emulator_console_auth_token', 'Pernah 1 kali direplikasi di daerah lain', 2, 0, 9, 1, '2022-05-03 11:06:35'),
(17, 1, 17, 'Kecepatan Inovasi', 'uploads/krenova_pd_indikator/2022/05/20220503172201_9_.emulator_console_auth_token', 'Inovasi dapat diciptakan dalam waktu 5-8 bulan ', 6, 0, 9, 1, '2022-05-03 11:06:35'),
(18, 1, 18, 'Kemanfaatan Inovasi', 'uploads/krenova_pd_indikator/2022/05/20220503172201_9_.emulator_console_auth_token', 'Jumlah pengguna atau penerima manfaat 101 – 200 orang', 10, 0, 9, 1, '2022-05-03 11:06:35'),
(19, 1, 19, 'Monitoring dan Evaluasi Inovasi ', 'uploads/krenova_pd_indikator/2022/05/20220503172201_9_.emulator_console_auth_token', 'Hasil laporan monev eksternal berdasarkan hasil penelitian', 9, 0, 9, 1, '2022-05-03 11:06:35'),
(20, 1, 20, 'Kualitas inovasi ', 'uploads/krenova_pd_indikator/2022/05/20220503172201_9_.emulator_console_auth_token', 'Memenuhi 3 unsur atau 4 unsur substansi', 10, 0, 9, 1, '2022-05-03 11:06:35'),
(21, 3, 1, 'Regulasi Inovasi', 'uploads/krenova_pd_indikator/2022/06/20220608092247_9_Portfolio.pdf', 'Perda', 0, 0, 9, 1, '2022-06-08 02:22:47'),
(22, 3, 2, 'Ketersediaan SDM terhadap Inovasi', 'uploads/krenova_pd_indikator/2022/06/20220608092247_9_Portfolio.pdf', '11-30 SDM', 0, 0, 9, 1, '2022-06-08 02:22:47'),
(23, 3, 3, 'Dukungan Anggaran', 'uploads/krenova_pd_indikator/2022/06/20220608092247_9_Portfolio.pdf', 'Anggaran tersedia pada kegiatan uji coba inovasi', 0, 0, 9, 1, '2022-06-08 02:22:47'),
(24, 3, 4, 'Penggunaan IT', 'uploads/krenova_pd_indikator/2022/06/20220608092247_9_Portfolio.pdf', 'Pelaksanaan kerja sudah didukung sistem informasi online/daring', 0, 0, 9, 1, '2022-06-08 02:22:47'),
(25, 3, 5, 'Bimtek Inovasi', 'uploads/krenova_pd_indikator/2022/06/20220608092247_9_Portfolio.pdf', 'Dalam 2 tahun terakhir pernah 2 kali bimtek', 0, 0, 9, 1, '2022-06-08 02:22:47'),
(26, 3, 6, 'Program dan Kegiatan inovasi Perangkat dalam RKPD', 'uploads/krenova_pd_indikator/2022/06/20220608092247_9_Portfolio.pdf', 'Pemda sudah menuangkan program inovasi dalam RKPD dan telah diterapkan dalam 2 Tahun terakhir.', 0, 0, 9, 1, '2022-06-08 02:22:47');

-- --------------------------------------------------------

--
-- Table structure for table `krenova_periode`
--

CREATE TABLE `krenova_periode` (
  `id` int(11) NOT NULL,
  `judul` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` int(11) NOT NULL,
  `tgl_buka_pendaftaran` date NOT NULL,
  `tgl_tutup_pendaftaran` date NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lampiran` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1:pendaftaran,2:penilaian;3:selesai',
  `waktu_update` datetime NOT NULL,
  `flag_hapus` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `krenova_periode`
--

INSERT INTO `krenova_periode` (`id`, `judul`, `tahun`, `tgl_buka_pendaftaran`, `tgl_tutup_pendaftaran`, `keterangan`, `lampiran`, `status`, `waktu_update`, `flag_hapus`) VALUES
(1, 'KRENOVA KABUPATEN SEMARANG', 2022, '2022-03-23', '2023-05-04', 'Pendaftaran di Tutup Tanggal 10 Juni 2022 Pukul 00.00 WIB', '', 2, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `krenova_umum`
--

CREATE TABLE `krenova_umum` (
  `id` int(11) NOT NULL,
  `id_krenova_periode` int(11) NOT NULL,
  `krenova_bidang_fokus` int(11) NOT NULL,
  `judul` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `inventor` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `abstrak` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `latar_belakang` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `maksud_tujuan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `manfaat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `spesifikasi_teknis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `keunggulan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `penerapan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `perhitungan_biaya_produksi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prospek_bisnis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_nilai` int(11) NOT NULL,
  `id_user_pembuat` int(11) NOT NULL,
  `waktu_update` datetime NOT NULL,
  `flag_hapus` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `krenova_umum`
--

INSERT INTO `krenova_umum` (`id`, `id_krenova_periode`, `krenova_bidang_fokus`, `judul`, `inventor`, `abstrak`, `latar_belakang`, `maksud_tujuan`, `manfaat`, `spesifikasi_teknis`, `keunggulan`, `penerapan`, `perhitungan_biaya_produksi`, `prospek_bisnis`, `total_nilai`, `id_user_pembuat`, `waktu_update`, `flag_hapus`) VALUES
(1, 1, 3, 'What is Lorem Ipsum?aa', 'Surya Oktana', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'sat', 'sat', 'ast', 'asta', 'tasa', 'ast', 'astast', 200, 10, '0000-00-00 00:00:00', 0),
(2, 1, 2, 'What is Lorem Ipsum?x', 'Surya Oktana', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'sat', 'sat', 'ast', 'asta', 'tasa', 'ast', 'astast', 0, 10, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `krenova_umum_jawaban_kuesioner`
--

CREATE TABLE `krenova_umum_jawaban_kuesioner` (
  `id` int(11) NOT NULL,
  `id_krenova_umum` int(11) NOT NULL,
  `id_krenova_master_umum_kuesioner_detail` int(11) NOT NULL,
  `jawaban` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `krenova_umum_jawaban_kuesioner`
--

INSERT INTO `krenova_umum_jawaban_kuesioner` (`id`, `id_krenova_umum`, `id_krenova_master_umum_kuesioner_detail`, `jawaban`, `waktu_update`) VALUES
(1, 1, 1, 'aa', '2022-05-22 10:38:31'),
(2, 1, 2, 'asfasf', '2022-05-22 10:38:31'),
(3, 1, 3, 'saffas', '2022-05-22 10:38:31'),
(4, 1, 4, 'vsav', '2022-05-22 10:38:31'),
(5, 1, 5, 'gdsg', '2022-05-22 10:38:31'),
(6, 1, 6, 'dsg', '2022-05-22 10:38:31'),
(7, 1, 7, 'sgagsa', '2022-05-22 10:38:31'),
(8, 1, 8, 'asgasg', '2022-05-22 10:38:31'),
(9, 1, 9, 'gfdsf', '2022-05-22 10:38:31'),
(10, 1, 10, 'fwef', '2022-05-22 10:38:31'),
(11, 1, 11, 'grwg', '2022-05-22 10:38:31'),
(12, 1, 12, 'ewgwe', '2022-05-22 10:38:31'),
(13, 1, 13, 'gwe', '2022-05-22 10:38:31'),
(14, 1, 14, 'wegew', '2022-05-22 10:38:31'),
(15, 1, 15, 'egw', '2022-05-22 10:38:31');

-- --------------------------------------------------------

--
-- Table structure for table `krenova_umum_lampiran`
--

CREATE TABLE `krenova_umum_lampiran` (
  `id` int(11) NOT NULL,
  `id_krenova_umum` int(11) NOT NULL,
  `jenis_lampiran` int(11) NOT NULL COMMENT '1:surat pernyataan keaslian;2:daftar riwayat hidup;3:ktp;4:foto hasil karya',
  `lampiran` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_update` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `krenova_umum_nilai_kuesioner`
--

CREATE TABLE `krenova_umum_nilai_kuesioner` (
  `id` int(11) NOT NULL,
  `id_krenova_umum` int(11) NOT NULL,
  `id_krenova_umum_kuesioner` int(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log_visitor`
--

CREATE TABLE `log_visitor` (
  `id` int(11) NOT NULL,
  `visit_date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `platform` int(11) NOT NULL COMMENT '1:web;2:mobile'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log_visitor`
--

INSERT INTO `log_visitor` (`id`, `visit_date_time`, `platform`) VALUES
(1, '2022-05-03 10:18:07', 1),
(2, '2022-05-03 10:18:07', 1),
(3, '2022-05-03 10:18:07', 1),
(4, '2022-05-03 10:18:07', 1),
(5, '2022-05-03 10:18:07', 1),
(6, '2022-05-03 10:18:07', 1),
(7, '2022-05-03 10:18:07', 1),
(8, '2022-05-03 10:18:07', 1),
(9, '2022-05-03 10:18:07', 1),
(10, '2022-05-03 10:18:07', 1),
(11, '2022-05-03 10:18:07', 1),
(12, '2022-05-03 10:18:07', 1),
(13, '2022-05-03 10:18:07', 1),
(14, '2022-05-03 10:18:07', 1),
(15, '2022-05-03 10:18:07', 1),
(16, '2022-05-03 10:18:07', 1),
(17, '2022-05-03 10:18:07', 1),
(18, '2022-05-03 10:18:07', 1),
(19, '2022-05-03 10:18:07', 1),
(20, '2022-05-03 10:18:07', 1),
(21, '2022-05-03 10:18:07', 1),
(22, '2022-05-03 10:18:07', 1),
(23, '2022-05-03 10:18:07', 1),
(24, '2022-05-03 10:18:07', 1),
(25, '2022-05-03 10:18:07', 1),
(26, '2022-05-03 10:18:07', 1),
(27, '2022-05-03 10:18:07', 1),
(28, '2022-05-03 10:18:07', 1),
(29, '2022-05-03 10:18:07', 1),
(30, '2022-05-03 10:18:07', 1),
(31, '2022-05-03 10:18:07', 1),
(32, '2022-05-03 10:18:07', 1),
(33, '2022-05-03 10:18:07', 1),
(34, '2022-05-03 10:18:07', 1),
(35, '2022-05-03 10:18:07', 1),
(36, '2022-05-03 10:18:07', 1),
(37, '2022-05-03 10:18:07', 1),
(38, '2022-05-03 10:18:07', 1),
(39, '2022-05-03 10:18:07', 1),
(40, '2022-05-03 10:18:07', 1),
(41, '2022-05-03 10:18:07', 1),
(42, '2022-05-03 10:18:07', 1),
(43, '2022-05-03 10:18:07', 1),
(44, '2022-05-03 10:18:07', 1),
(45, '2022-05-03 10:18:07', 1),
(46, '2022-05-03 10:18:07', 1),
(47, '2022-05-03 10:18:07', 1),
(48, '2022-05-03 10:18:07', 1),
(49, '2022-05-03 10:18:07', 1),
(50, '2022-05-03 10:18:07', 1),
(51, '2022-05-03 10:18:07', 1),
(52, '2022-05-03 10:18:07', 1),
(53, '2022-05-03 10:18:07', 1),
(54, '2022-05-03 10:18:07', 1),
(55, '2022-05-03 10:18:07', 1),
(56, '2022-05-03 10:18:07', 1),
(57, '2022-05-03 10:18:07', 1),
(58, '2022-05-03 10:18:07', 1),
(59, '2022-05-03 10:18:07', 1),
(60, '2022-05-03 10:18:07', 1),
(61, '2022-05-03 10:18:07', 1),
(62, '2022-05-03 10:18:07', 1),
(63, '2022-05-03 10:18:07', 1),
(64, '2022-05-03 10:18:07', 1),
(65, '2022-05-03 10:18:07', 1),
(66, '2022-05-03 10:18:07', 1),
(67, '2022-05-03 10:18:07', 1),
(68, '2022-05-03 10:18:07', 1),
(69, '2022-05-03 10:18:07', 1),
(70, '2022-05-03 10:18:07', 1),
(71, '2022-05-03 10:18:07', 1),
(72, '2022-05-03 10:18:07', 1),
(73, '2022-05-03 10:18:07', 1),
(74, '2022-05-03 10:18:07', 1),
(75, '2022-05-03 10:18:07', 1),
(76, '2022-05-03 10:18:07', 1),
(77, '2022-05-03 10:18:07', 1),
(78, '2022-05-03 10:18:07', 1),
(79, '2022-05-03 10:18:07', 1),
(80, '2022-05-03 10:18:07', 1),
(81, '2022-05-03 10:18:07', 1),
(82, '2022-05-03 10:18:07', 1),
(83, '2022-05-03 10:18:07', 1),
(84, '2022-05-03 10:18:07', 1),
(85, '2022-05-03 10:18:07', 1),
(86, '2022-05-03 10:18:07', 1),
(87, '2022-05-03 10:18:07', 1),
(88, '2022-05-03 10:18:07', 1),
(89, '2022-05-03 10:18:07', 1),
(90, '2022-05-03 10:18:07', 1),
(91, '2022-05-03 10:18:07', 1),
(92, '2022-05-03 10:18:07', 1),
(93, '2022-05-03 10:18:07', 1),
(94, '2022-05-03 10:18:07', 1),
(95, '2022-05-03 10:18:07', 1),
(96, '2022-05-03 10:18:07', 1),
(97, '2022-05-03 10:18:07', 1),
(98, '2022-05-03 10:18:07', 1),
(99, '2022-05-03 10:18:07', 1),
(100, '2022-05-03 10:18:07', 1),
(101, '2022-05-03 10:18:07', 1),
(102, '2022-05-03 10:18:07', 1),
(103, '2022-05-03 10:18:07', 1),
(104, '2022-05-03 10:18:07', 1),
(105, '2022-05-03 10:18:07', 1),
(106, '2022-05-03 10:18:07', 1),
(107, '2022-05-03 10:18:07', 1),
(108, '2022-05-03 10:18:07', 1),
(109, '2022-05-03 10:18:07', 1),
(110, '2022-05-03 10:18:07', 1),
(111, '2022-05-03 10:18:07', 1),
(112, '2022-05-03 10:18:07', 1),
(113, '2022-05-03 10:18:07', 1),
(114, '2022-05-03 10:18:07', 1),
(115, '2022-05-03 10:18:07', 1),
(116, '2022-05-03 10:18:07', 1),
(117, '2022-05-03 10:18:07', 1),
(118, '2022-05-03 10:18:07', 1),
(119, '2022-05-03 10:18:07', 1),
(120, '2022-05-03 10:18:07', 1),
(121, '2022-05-03 10:18:07', 1),
(122, '2022-05-03 10:18:07', 1),
(123, '2022-05-03 10:18:07', 1),
(124, '2022-05-03 10:18:07', 1),
(125, '2022-05-03 10:18:07', 1),
(126, '2022-05-03 10:18:07', 1),
(127, '2022-05-03 10:18:07', 1),
(128, '2022-05-03 10:18:07', 1),
(129, '2022-05-03 10:18:07', 1),
(130, '2022-05-03 10:18:07', 1),
(131, '2022-05-03 10:18:07', 1),
(132, '2022-05-03 10:18:07', 1),
(133, '2022-05-03 10:18:07', 1),
(134, '2022-05-03 10:18:07', 1),
(135, '2022-05-03 10:18:07', 1),
(136, '2022-05-03 10:18:07', 1),
(137, '2022-05-03 10:18:07', 1),
(138, '2022-05-03 10:18:07', 1),
(139, '2022-05-03 10:18:07', 1),
(140, '2022-05-03 10:18:07', 1),
(141, '2022-05-03 10:18:07', 1),
(142, '2022-05-03 10:18:07', 1),
(143, '2022-05-03 10:18:07', 1),
(144, '2022-05-03 10:18:07', 1),
(145, '2022-05-03 10:18:07', 1),
(146, '2022-05-03 10:18:07', 1),
(147, '2022-05-03 10:18:07', 1),
(148, '2022-05-03 10:18:07', 1),
(149, '2022-05-03 10:18:07', 1),
(150, '2022-05-03 10:18:07', 1),
(151, '2022-05-03 10:18:07', 1),
(152, '2022-05-03 10:18:07', 1),
(153, '2022-05-03 10:18:07', 1),
(154, '2022-05-03 10:18:07', 1),
(155, '2022-05-03 10:18:07', 1),
(156, '2022-05-03 10:18:07', 1),
(157, '2022-05-03 10:18:07', 1),
(158, '2022-05-03 10:18:07', 1),
(159, '2022-05-03 10:18:07', 1),
(160, '2022-05-03 10:18:07', 1),
(161, '2022-05-03 10:18:07', 1),
(162, '2022-05-03 10:18:07', 1),
(163, '2022-05-03 10:18:07', 1),
(164, '2022-05-03 10:18:07', 1),
(165, '2022-05-03 10:18:07', 1),
(166, '2022-05-03 10:18:07', 1),
(167, '2022-05-03 10:18:07', 1),
(168, '2022-05-03 10:18:07', 1),
(169, '2022-05-03 10:18:07', 1),
(170, '2022-05-03 10:18:07', 1),
(171, '2022-05-03 10:18:07', 1),
(172, '2022-05-03 10:18:07', 1),
(173, '2022-05-03 10:18:07', 1),
(174, '2022-05-03 10:18:07', 1),
(175, '2022-05-03 10:18:07', 1),
(176, '2022-05-03 10:18:07', 1),
(177, '2022-05-03 10:18:07', 1),
(178, '2022-05-03 10:18:07', 1),
(179, '2022-05-03 10:18:07', 1),
(180, '2022-05-03 10:18:07', 1),
(181, '2022-05-03 10:18:07', 1),
(182, '2022-05-03 10:18:07', 1),
(183, '2022-05-03 10:18:07', 1),
(184, '2022-05-03 10:18:07', 1),
(185, '2022-05-03 10:18:07', 1),
(186, '2022-05-03 10:18:07', 1),
(187, '2022-05-03 10:18:07', 1),
(188, '2022-05-03 10:18:07', 1),
(189, '2022-05-03 10:18:07', 1),
(190, '2022-05-03 10:18:07', 1),
(191, '2022-05-03 10:18:07', 1),
(192, '2022-05-03 10:18:07', 1),
(193, '2022-05-03 10:18:07', 1),
(194, '2022-05-03 10:18:07', 1),
(195, '2022-05-03 10:18:07', 1),
(196, '2022-05-03 10:18:07', 1),
(197, '2022-05-03 10:18:07', 1),
(198, '2022-05-03 10:18:07', 1),
(199, '2022-05-03 10:18:07', 1),
(200, '2022-05-03 10:18:07', 1),
(201, '2022-05-03 10:18:07', 1),
(202, '2022-05-03 10:18:07', 1),
(203, '2022-05-03 10:18:07', 1),
(204, '2022-05-03 10:18:07', 1),
(205, '2022-05-03 10:18:07', 1),
(206, '2022-05-03 10:18:07', 1),
(207, '2022-05-03 10:18:07', 1),
(208, '2022-05-03 10:18:07', 1),
(209, '2022-05-03 10:18:07', 1),
(210, '2022-05-03 10:18:07', 1),
(211, '2022-05-03 10:18:07', 1),
(212, '2022-05-03 10:18:07', 1),
(213, '2022-05-03 10:18:07', 1),
(214, '2022-05-03 10:18:07', 1),
(215, '2022-05-03 10:18:07', 1),
(216, '2022-05-03 10:18:07', 1),
(217, '2022-05-03 10:18:07', 1),
(218, '2022-05-03 10:18:07', 1),
(219, '2022-05-03 10:18:07', 1),
(220, '2022-05-03 10:18:07', 1),
(221, '2022-05-03 10:18:07', 1),
(222, '2022-05-03 10:18:07', 1),
(223, '2022-05-03 10:18:07', 1),
(224, '2022-05-03 10:18:07', 1),
(225, '2022-05-03 10:18:07', 1),
(226, '2022-05-03 10:18:07', 1),
(227, '2022-05-03 10:18:07', 1),
(228, '2022-05-03 10:18:07', 1),
(229, '2022-05-03 10:18:07', 1),
(230, '2022-05-03 10:18:07', 1),
(231, '2022-05-03 10:18:07', 1),
(232, '2022-05-03 10:18:07', 1),
(233, '2022-05-03 10:18:07', 1),
(234, '2022-05-03 10:18:07', 1),
(235, '2022-05-03 10:18:07', 1),
(236, '2022-05-03 10:18:07', 1),
(237, '2022-05-03 10:18:07', 1),
(238, '2022-05-03 10:18:07', 1),
(239, '2022-05-03 10:18:07', 1),
(240, '2022-05-03 10:18:07', 1),
(241, '2022-05-03 10:18:07', 1),
(242, '2022-05-03 10:18:07', 1),
(243, '2022-05-03 10:18:07', 1),
(244, '2022-05-03 10:18:07', 1),
(245, '2022-05-03 10:18:07', 1),
(246, '2022-05-03 10:18:07', 1),
(247, '2022-05-03 10:18:07', 1),
(248, '2022-05-03 10:18:07', 1),
(249, '2022-05-03 10:18:07', 1),
(250, '2022-05-03 10:18:07', 1),
(251, '2022-05-03 10:18:07', 1),
(252, '2022-05-03 10:18:07', 1),
(253, '2022-05-03 10:18:07', 1),
(254, '2022-05-03 10:18:07', 1),
(255, '2022-05-03 10:18:07', 1),
(256, '2022-05-03 10:18:07', 1),
(257, '2022-05-03 10:18:07', 1),
(258, '2022-05-03 10:18:07', 1),
(259, '2022-05-03 10:18:07', 1),
(260, '2022-05-03 10:18:07', 1),
(261, '2022-05-03 10:18:07', 1),
(262, '2022-05-03 10:18:07', 1),
(263, '2022-05-03 10:18:07', 1),
(264, '2022-05-03 10:18:07', 1),
(265, '2022-05-03 10:18:07', 1),
(266, '2022-05-03 10:18:07', 1),
(267, '2022-05-03 10:18:07', 1),
(268, '2022-05-03 10:18:07', 1),
(269, '2022-05-03 10:18:07', 1),
(270, '2022-05-03 10:18:07', 1),
(271, '2022-05-03 10:18:07', 1),
(272, '2022-05-03 10:18:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_bentuk_inovasi`
--

CREATE TABLE `master_bentuk_inovasi` (
  `id_bentuk` int(11) NOT NULL,
  `nama_bentuk` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_bentuk_inovasi`
--

INSERT INTO `master_bentuk_inovasi` (`id_bentuk`, `nama_bentuk`) VALUES
(1, 'Inovasi Tata Kelola Pemerintahan Daerah'),
(2, 'Inovasi Pelayanan Publik'),
(3, 'Inovasi Daerah Lainnya Sesuai Dengan Urusan Pemerintahan yang Menjadi Kewenangan Daerah');

-- --------------------------------------------------------

--
-- Table structure for table `master_bidang_penelitian`
--

CREATE TABLE `master_bidang_penelitian` (
  `id_bidang` int(11) NOT NULL,
  `nama_bidang` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_bidang_penelitian`
--

INSERT INTO `master_bidang_penelitian` (`id_bidang`, `nama_bidang`) VALUES
(1, 'Pemerintahan'),
(2, 'Sosial '),
(3, 'Ekonomi'),
(7, 'Prasarana Wilayah');

-- --------------------------------------------------------

--
-- Table structure for table `settingan`
--

CREATE TABLE `settingan` (
  `id` int(11) NOT NULL,
  `settingan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settingan`
--

INSERT INTO `settingan` (`id`, `settingan`, `value`) VALUES
(1, 'no_telp_website', '0246924963'),
(2, 'email_website', 'litbang.kabsemarang@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `pp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aktif` int(11) NOT NULL DEFAULT 1 COMMENT '0:inaktif;1:aktif',
  `token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `id_user_level`, `pp`, `aktif`, `token`) VALUES
(1, 'admin', '9a9f06a73877922f7a81ceae0921dec85195d54c', 1, '', 1, 'a2da07ae8b8cc8dcf32e47064f76cec2e9f6076c9741e975fbe68ae02034b003b96c57b7550e0019'),
(9, 'suryapd', '9a9f06a73877922f7a81ceae0921dec85195d54c', 2, 'uploads/profile/2020/11/201118052423_172.jpg', 1, ''),
(10, 'test', '9a9f06a73877922f7a81ceae0921dec85195d54c', 3, NULL, 1, '281c48d56df6a715c10f1575aec9863710208d6cbda5accf070d5938804296ecaab15978d2c45e9c'),
(11, 'barenlitbangdaka', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(12, 'uswa', 'a9e42bacec7eaf24b2c7d7ea97445dea5b28ba03', 3, NULL, 1, ''),
(13, 'inspektorat', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, '4ef98ed2a8b65712fc20f959c3b40e755a7a4de236da64ad166ad4a5b7e5c63e00622eff7b5af1a0'),
(14, 'bkudkabsemarang', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(15, 'bkpsdmkabsemaran', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(16, 'bpbdkabsemarang', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(17, 'bkbpkabsemarang', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(18, 'disdikbudporakab', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(19, 'dpukabsemarang', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, '860dd0a6e496da5e628a236a2d65e41ef1a9f6ab8d50a160100b5c2684c34e6bd10607ddb45f2531'),
(20, 'dispertanikapkab', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, ''),
(21, 'diskumperindag', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, ''),
(22, 'dinkes', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, '1dd37f4626671b6efea027f5cbc13984b1e6c648a758afb758e83b534c15f8d17b2ce3e5c701c232'),
(23, 'satpolppdamkarka', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(24, 'disnakerkabsemar', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(25, 'dlhkabsemarang', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(26, 'dispendukcapilka', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(27, 'dispermasdeskabs', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(28, 'dishubkabsemaran', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(29, 'diskominfokabsem', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(30, 'dpmptspkabsemara', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(31, 'dinsoskabsemaran', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(32, 'dispusarsip', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, 'b8424700836863b17cb673f05c821da2df57cbd50b0ebaebf697d1e83f41f07af6c36f5036085ad7'),
(33, 'bagiantapemkabse', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(34, 'bagianhukumkabse', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(35, 'bagianadministra', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(36, 'bagianorganisasi', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(37, 'bagianumumkabsem', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(38, 'rsudgondhosuwarn', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(39, 'rsudgunawanmangu', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(40, 'kecambarawakabse', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(41, 'kecsumowonokabse', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(42, 'kecpringapuskabs', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(43, 'keckaliwungukabs', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(44, 'kecjambukabsemar', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(45, 'getasan', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, 'f0d8b483a27f9543d0a3ae56a42b606df065b8cf191837ce8741177472acb842c46ae7a9c33e2e7a'),
(46, 'kecbanyubirukabs', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(47, 'bergas', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, '8902a5e168b8b755edd4adb655f6559f7cc10a12090d962a5bb208dbf4d203acceda44ef389da719'),
(48, 'kecbringinkabsem', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(49, 'kecbawenkabsemar', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(50, 'widi', 'e1545386dcee5e63ac1088d972cd1dea6c14e62e', 3, NULL, 1, NULL),
(51, 'sriwinarni', 'e1545386dcee5e63ac1088d972cd1dea6c14e62e', 3, NULL, 1, NULL),
(52, 'alfa', 'e1545386dcee5e63ac1088d972cd1dea6c14e62e', 3, NULL, 1, 'd2eb0317625c226a200a3bc6d1788d9b6c9f822d2d67ce88f470d20c427ba822e041060962458b85'),
(53, 'blkk', 'e1545386dcee5e63ac1088d972cd1dea6c14e62e', 3, NULL, 1, NULL),
(54, 'dheasey', 'e1545386dcee5e63ac1088d972cd1dea6c14e62e', 3, NULL, 1, NULL),
(55, 'bagianperekonomi', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(56, 'dp3akbkabsemaran', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(57, 'kecsuruhkabsemar', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(58, 'kecungbarkabsema', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(59, 'kecbancakkabsema', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(60, 'kectengarankabse', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(61, 'kecsusukankabsem', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(62, 'kecpabelankabsem', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(63, 'kecungtimurkabse', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(64, 'dispartakabsemar', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(65, 'kecbandungankabs', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(66, 'kectuntangkabsem', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(67, 'bagiankesrakabse', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(68, 'setwankabsemaran', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 2, NULL, 1, NULL),
(69, 'dinsoskabsemaran', '3cfa3dbd2c81e4bbd4b55f09ac0dbb352c3cc7c1', 3, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

CREATE TABLE `user_level` (
  `id_user_level` int(11) NOT NULL,
  `nama_level` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_level`
--

INSERT INTO `user_level` (`id_user_level`, `nama_level`) VALUES
(1, 'Admin'),
(2, 'Perangkat Daerah'),
(3, 'Umum');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_berita`
--
ALTER TABLE `data_berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `data_detail_inovasi_perangkat_daerah`
--
ALTER TABLE `data_detail_inovasi_perangkat_daerah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_detail_inovasi_umum`
--
ALTER TABLE `data_detail_inovasi_umum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_dokumentasi_inovasi_daerah`
--
ALTER TABLE `data_dokumentasi_inovasi_daerah`
  ADD PRIMARY KEY (`id_dokumentasi`);

--
-- Indexes for table `data_inovasi_daerah`
--
ALTER TABLE `data_inovasi_daerah`
  ADD PRIMARY KEY (`id_data_inovasi_daerah`);

--
-- Indexes for table `data_member`
--
ALTER TABLE `data_member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `data_penelitian`
--
ALTER TABLE `data_penelitian`
  ADD PRIMARY KEY (`id_data_penelitian`);

--
-- Indexes for table `krenova_bidang_fokus`
--
ALTER TABLE `krenova_bidang_fokus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `krenova_master_pd_indikator`
--
ALTER TABLE `krenova_master_pd_indikator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `krenova_master_pd_indikator_uraian`
--
ALTER TABLE `krenova_master_pd_indikator_uraian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `krenova_master_umum_kuesioner`
--
ALTER TABLE `krenova_master_umum_kuesioner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `krenova_master_umum_kuesioner_detail`
--
ALTER TABLE `krenova_master_umum_kuesioner_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `krenova_pd`
--
ALTER TABLE `krenova_pd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `krenova_pd_jawaban_indikator`
--
ALTER TABLE `krenova_pd_jawaban_indikator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `krenova_periode`
--
ALTER TABLE `krenova_periode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `krenova_umum`
--
ALTER TABLE `krenova_umum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `krenova_umum_jawaban_kuesioner`
--
ALTER TABLE `krenova_umum_jawaban_kuesioner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `krenova_umum_lampiran`
--
ALTER TABLE `krenova_umum_lampiran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `krenova_umum_nilai_kuesioner`
--
ALTER TABLE `krenova_umum_nilai_kuesioner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_visitor`
--
ALTER TABLE `log_visitor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_bentuk_inovasi`
--
ALTER TABLE `master_bentuk_inovasi`
  ADD PRIMARY KEY (`id_bentuk`);

--
-- Indexes for table `master_bidang_penelitian`
--
ALTER TABLE `master_bidang_penelitian`
  ADD PRIMARY KEY (`id_bidang`);

--
-- Indexes for table `settingan`
--
ALTER TABLE `settingan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`id_user_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_berita`
--
ALTER TABLE `data_berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_detail_inovasi_perangkat_daerah`
--
ALTER TABLE `data_detail_inovasi_perangkat_daerah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `data_detail_inovasi_umum`
--
ALTER TABLE `data_detail_inovasi_umum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_dokumentasi_inovasi_daerah`
--
ALTER TABLE `data_dokumentasi_inovasi_daerah`
  MODIFY `id_dokumentasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `data_inovasi_daerah`
--
ALTER TABLE `data_inovasi_daerah`
  MODIFY `id_data_inovasi_daerah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `data_member`
--
ALTER TABLE `data_member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `data_penelitian`
--
ALTER TABLE `data_penelitian`
  MODIFY `id_data_penelitian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `krenova_bidang_fokus`
--
ALTER TABLE `krenova_bidang_fokus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `krenova_master_pd_indikator`
--
ALTER TABLE `krenova_master_pd_indikator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `krenova_master_pd_indikator_uraian`
--
ALTER TABLE `krenova_master_pd_indikator_uraian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `krenova_master_umum_kuesioner`
--
ALTER TABLE `krenova_master_umum_kuesioner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `krenova_master_umum_kuesioner_detail`
--
ALTER TABLE `krenova_master_umum_kuesioner_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `krenova_pd`
--
ALTER TABLE `krenova_pd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `krenova_pd_jawaban_indikator`
--
ALTER TABLE `krenova_pd_jawaban_indikator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `krenova_periode`
--
ALTER TABLE `krenova_periode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `krenova_umum`
--
ALTER TABLE `krenova_umum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `krenova_umum_jawaban_kuesioner`
--
ALTER TABLE `krenova_umum_jawaban_kuesioner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `krenova_umum_lampiran`
--
ALTER TABLE `krenova_umum_lampiran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `krenova_umum_nilai_kuesioner`
--
ALTER TABLE `krenova_umum_nilai_kuesioner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_visitor`
--
ALTER TABLE `log_visitor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `master_bentuk_inovasi`
--
ALTER TABLE `master_bentuk_inovasi`
  MODIFY `id_bentuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_bidang_penelitian`
--
ALTER TABLE `master_bidang_penelitian`
  MODIFY `id_bidang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settingan`
--
ALTER TABLE `settingan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
