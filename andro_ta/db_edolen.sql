-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2018 at 01:13 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_edolen`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori_wisata` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `kategori_wisata`, `image`) VALUES
(1, 'Pantai', 'pantai.png'),
(2, 'Taman', 'taman.jpg'),
(3, 'Alam', 'alam.jpg'),
(4, 'Taman Rekreasi', 'wisata_air.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `id_komentar` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_wisata` int(11) NOT NULL,
  `komentar` text NOT NULL,
  `tanggal` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_komentar`
--

INSERT INTO `tbl_komentar` (`id_komentar`, `id_user`, `id_wisata`, `komentar`, `tanggal`) VALUES
(1, 1, 13, 'Suls Gaming OP!', '12-12-2018'),
(2, 2, 5, 'Halo halo sub guys betemu lagi dengan suls gaming', ''),
(3, 1, 5, 'Wwokwkowkoaokfokskldfmldskmgdfigfdiomdfiovmfiovmdfiovmfio', '22-11-2015'),
(4, 2, 5, 'Villa Songgoriti', '12-11-2018'),
(5, 7, 7, 'Bagus gan', '12-12-2019'),
(6, 7, 7, 'Bagus gan', '12-12-2019'),
(7, 7, 7, 'sorry guys', '12-12-2019'),
(8, 7, 8, 'Menarik', '12-12-2019'),
(9, 7, 8, 'Menarik', '12-12-2019'),
(10, 7, 9, 'ak cinta kalian', '12-12-2019'),
(11, 7, 7, 'Awesome', '12-12-2019'),
(12, 7, 7, 'Perfecto Nono', '12-12-2019'),
(13, 7, 11, 'keren', '12-12-2019'),
(14, 7, 11, 'keren', '12-12-2019'),
(15, 7, 11, 'keren', '12-12-2019'),
(16, 7, 16, 'HIYAHIYA', '12-12-2019'),
(17, 7, 12, 'ihihi', '12-12-2019'),
(18, 7, 7, 'hehe', '12-12-2019'),
(19, 7, 7, 'hehe', '12-12-2019'),
(20, 7, 12, 'hehe', '12-12-2019'),
(21, 7, 12, 'hai', '12-12-2019'),
(22, 7, 12, 'hai', '12-12-2019'),
(23, 7, 12, 'hai', '12-12-2019'),
(24, 7, 12, 'hai', '12-12-2019'),
(25, 7, 12, 'hai', '12-12-2019'),
(26, 7, 12, 'hai', '12-12-2019'),
(27, 7, 12, 'hai', '12-12-2019'),
(28, 7, 12, 'hai', '12-12-2019'),
(29, 7, 12, 'hai', '12-12-2019'),
(30, 7, 12, 'hai', '12-12-2019'),
(31, 7, 12, 'hai', '12-12-2019'),
(32, 7, 12, 'halo', '12-12-2019'),
(33, 7, 12, 'halo', '12-12-2019'),
(34, 7, 21, 'dingin', '12-12-2019'),
(35, 7, 21, 'dingin', '12-12-2019'),
(36, 7, 21, '', '12-12-2019'),
(37, 7, 21, '', '12-12-2019'),
(38, 7, 21, 'hehe', '12-12-2019'),
(39, 7, 21, 'hehe', '12-12-2019'),
(40, 7, 18, 'slamet', '12-12-2019'),
(41, 7, 18, 'slamet', '12-12-2019'),
(42, 7, 18, 'slamet', '12-12-2019'),
(43, 7, 18, 'slamet', '12-12-2019'),
(44, 7, 14, 'keren gan', '12-12-2019'),
(45, 7, 14, 'keren gan', '12-12-2019'),
(46, 7, 24, 'dinging gan', '17 Dec 2018'),
(47, 7, 24, 'dinging gan', '17 Dec 2018'),
(48, 7, 24, 'dinging gan', '17 Dec 2018'),
(49, 7, 24, 'dinging gan', '17 Dec 2018'),
(50, 7, 24, 'dinging gan', '17 Dec 2018'),
(51, 7, 5, 'hiyahiya', '17 Dec 2018'),
(52, 7, 5, 'hiyahiya', '17 Dec 2018'),
(53, 7, 5, 'hiyahiya', '17 Dec 2018'),
(54, 7, 5, 'hiyahiyaasdasd', '17 Dec 2018'),
(55, 7, 5, 'hiyahiyaasdasda', '17 Dec 2018'),
(56, 7, 9, 'hore', '17 Dec 2018'),
(57, 7, 9, 'hore', '17 Dec 2018'),
(58, 7, 9, 'hore', '17 Dec 2018'),
(59, 7, 9, 'hore', '17 Dec 2018'),
(60, 7, 9, 'hore', '17 Dec 2018');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama`, `status`) VALUES
(1, 'admin', 'admin', 'adminstrator', 'admin'),
(2, 'dio', 'dio', 'Dio Syahrizal', 'user'),
(3, 'ssdd', 'ddd', 'Ganteng', 'user'),
(4, 'kris', '123', 'Sulis', 'user'),
(6, 'Naufal', 'Naufal', 'Naufal', 'user'),
(7, 'yahuya', 'yahuya', 'Pradika', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wisata`
--

CREATE TABLE `tbl_wisata` (
  `id_wisata` int(11) NOT NULL,
  `nama_wisata` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_wisata`
--

INSERT INTO `tbl_wisata` (`id_wisata`, `nama_wisata`, `id_kategori`, `alamat`, `deskripsi`, `longitude`, `latitude`, `image`) VALUES
(5, 'Alun Alun Malang', 2, 'Jl. Merdeka Selatan, Kiduldalem, Klojen, Kota Malang, Jawa Timur 65119', 'Alun-alun populer di pusat kota yang memiliki pohon rindang, jalan setapak, & air mancur di tengahnya.', 112.632003, -7.981653, 'alun_alun1.jpg'),
(7, 'Pantai Goa Cina', 1, 'Tambak, Sitiarjo, Sumbermanjing, Malang, Jawa Timur 65176', 'Pantai Goa Cina adalah sebuah pantai di pesisir selatan yang terletak di Dusun Tumpak Awu, Desa Sitiarjo, Kecamatan Sumbermanjing Wetan, Kabupaten Malang, Jawa Timur[1]. Nama asli dari pantai ini adalah Pantai Rowo Indah. Namun karena pernah terjadi peristiwa kematian seorang Tionghoa yang sedang bertapa di dalam goa yang ada di kawasan pantai ini, nama Rowo Indah kalah popular dibandingkan dengan Goa Cina yang digunakan sampai sekarang. Tidak ada catatan resmi tahun berapa tragedi itu terjadi, namun warga sekitar pantai meyakini sekitar 20 tahunan silam. Dari Pantai Bajulmati, Desa Gajahrejo, Kecamatan Gedangan menuju Pantai Goa Cina ini hanya perlu waktu 15 menit saja karena kedua pantai ini hanya berjarak tak lebih dari 7 km. Aksesnya pun sangat mudah karena melewati jalur lingkar selatan (JLS) dengan aspal yang mulus. Terdapat petunjuk arah dan rambu yang akan memandu pengunjung untuk menuju lokasi. Tetapi Anda harus tetap berhati-hati karena jalannya berkelok-kelok dan berada di sisi jurang.', 112.6514242, -8.4469602, 'pantai-goa-cina.jpg'),
(8, 'Pantai Clungup', 1, 'Sendang Biru, Area Sawah/Kebun, Tambakrejo, Sumbermanjing, Malang, Jawa Timur', 'Pantai Clungup adalah sebuah pantai di pesisir selatan Pulau Jawa yang terletak di tepi Samudera Indonesia secara administratif berada di Desa Sitiarjo, Kecamatan Sumbermanjing Wetan, Kabupaten Malang, Jawa Timur. Pantai ini jarang diketahui orang kebanyakan karena letaknya yang cukup terpencil dari pemukiman penduduk. Tetapi sebenarnya, jalan untuk menuju Pantai Clungup cukup mudah. Dari Kota Malang, pengunjung bisa mengikuti penunjuk arah yang akan menuju Pantai Sendangbiru. Setelah itu berbelok ke kanan menuju arah pantai Goa China. Setelah memasuki Goa China berjalan ke arah sebelah timur sejauh sekitar 500 meter. Jadi, sebaiknya kendaraan bermotor Anda diparkir dulu di Pantai Goa China. Dari Goa China harus ditempuh dulu dengan berjalan kaki di sebuah jalan setapak dengan melewati perkebunan penduduk dan lereng perbukitan. Setelah melewati bukit tersebut maka sampailah di Pantai Clungup.', 112.6686107, -8.4375315, 'PANTAI-CLUNGUP.jpg'),
(9, 'Pantai Balekambang', 1, 'Dusun Sumber Jambe Desa Srigonco, Balaikambang, Sumberbening, Bantur, Malang, Jawa Timur 65179', 'Pantai Balekambang adalah sebuah pantai di pesisir selatan yang terletak di tepi Samudera Indonesia secara administratif masuk wilayah Dusun Sumber Jambe, Desa Srigonco, Kecamatan Bantur, Kabupaten Malang, Jawa Timur dan merupakan salah satu wisata andalan Kabupaten Malang sejak 1985 hingga kini. Daya tarik Balekambang utamanya tentu panorama alam, gelombang ombak yang memanjang hampir dua kilometer, serta hamparan pasir nan luas. Area pasir putih terlihat bersih dari sampah maupun kotoran sehingga cukup nyaman bagi pengunjung untuk bermain dan berolahraga. Bahkan tak jarang di pantai ini menjadi tempat latihan sejumlah klub sepak bola seperti Arema dan Persema.', 112.5349938, -8.4035709, 'Balekambang.png'),
(10, 'Pantai Kondang Merak', 1, 'Sumberbening, Bantur, Malang, Jawa Timur 65179', 'Pantai Kondang Merak adalah sebuah pantai di pesisir selatan yang terletak di tepi Samudera Indonesia dan secara administratif berada di Desa Sumberbening, Kecamatan Bantur, Kabupaten Malang, Jawa Timur. Pantai Kondang Merak sudah cukup dikenal bagi wisatawan Malang Raya. Bahkan pantai ini sudah menjadi jujugan wisatawan lokal maupun asing untuk bermain snorkeling (sejenis menyelam). Keunggulan sebagai tempat snorkeling inilah yang menjadi salah satu daya tarik yang ditawarkan pantai tersebut.', 112.5168848, -8.3965752, 'kondang_merak.jpg'),
(11, 'Pantai Sendiki', 1, 'Area Sawah/Kebun, Tambakrejo, Sumbermanjing, Malang, Jawa Timur 65148', 'Pantai Sendiki merupakan salah satu wisata pantai yang berada di wilayah Tambakrejo, Sumbermanjing Wetan, Malang, Jawa Timur. Pantai ini bersebelahan dengan pantai Balekambang dan Pantai Sendang Biru. Pantai Sendiki memiliki pasir yang berwarna putih dan warna air lautnya biru, yang menjadi daya tarik pengunjung. Pantai Sendiki memiliki fasilitas terbaik dan terlengkap, jika dibandingkan dengan pantai-pantai lain khususnya di daerah Malang Selatan. Namun memang sedikit disayangkan, akses jalan menuju Pantai Sendiki masih rusak parah dan bertekstur tanah liat, terlebih jika hujan datang maka tanah akan menjadi berlumpur. Sehingga menyulitkan bagi para pengendara sepeda motor.', 112.7259382, -8.4168131, 'sendiki.jpg'),
(12, 'Coban Rondo', 3, 'Jalan Coban Rondo, Krajan, Pandesari, Pujon, Malang, Jawa Timur 65391', 'Air Terjun Coban Rondo merupakan air terjun yang terletak di Kecamatan Pujon, Kota Batu, Kabupaten Malang, Jawa Timur. Air terjun ini mudah dijangkau oleh kendaraan umum.\n\nAkses yang paling mudah adalah melalui jalan raya dari Malang ke Batu dari sebelah timur atau dari Kediri ke Pare menuju Malang dari arah barat.\n\nCoban Rondo terletak pada ketinggian 1135 m di atas permukaan laut. Air terjun ini memiliki ketinggian 84 meter dengan debit air berkisar antara 90 liter per detik pada musim kemarau sampai dengan 150 liter per detik pada musim penghujan.\n\nCoban Rondo sebenarnya merupakan bagian dari kelompok air terjun bertingkat (dimulai dengan air terjun kembar bernama Coban Manten, yang bergabung menjadi satu dinamakan Coban Dudo, dan kemudian mengalir ke bawah dengan nama Coban Rondo).', 112.477319, -7.884994, 'CubanRondoMalang.jpg'),
(13, 'Hawai Water Park', 4, 'Perumahan Graha Kencana Raya, Jl. Raya Karanglo, Banjararum, Singosari, Karanglo, Banjararum, Singosari, Malang, Jawa Timur 65126', 'Malang sebagai kota pariwisata semakin mengembangkan inovasi untuk terus memberikan yang terbaik bagi pendapatan kota. Dengan tujuan mendatangkan banyak orang untuk datang ke kota Malang, maka Hawai Waterpark Malang berupaya membuat variasi baru tempat wisata air terbesar dan pertama yang berada di Kota Malang. Selain itu Taman wisata air ini akan menyajikan tema Hawai di seluruh areal taman wisata melalui penerapan Hawai cabana, dekorasi, dan background.\n\nHawai Waterpark Malang dibangun di atas lahan dengan luas 28.000 meter persegi pada tahun 2014 dan mulai dioperasikan pada pertengahan tahun 2015. Wisata air ini terletak di Perumahan Graha Kencana Jl Raya Karanglo Malang dengan akses yang sangat strategis yang bisa diakses dari bandara, stasiun dan juga terminal. Dengan Rp 50.000.00 selama soft opening anda bisa menikmati berbagai wahana-wahana yang berkwalitas Internasional.\n\nAda 10 wahana yang terdapat di Hawai Waterpark Malang, yaitu Hawai Water House, Waikiki Beach, Waimea Stream River, Mavi Island, Rainbow Fall, Akaolu pool, Ekolu slide, Hula-hula slide, Wailele Slide. Dari sembilan wahana yang ada, ada dua wahana yang menjadi unggulan di Hawai Waterpark Malang yaitu Hawai Water House dan Tsunami pool (Waikiki Beach).', 112.658253, -7.923462, 'Hawai-Waterpark-Malang-Hawai-Water-House.jpg'),
(14, 'Malang Night Paradise', 4, 'Jl. Graha Kencana Raya No.66, Karanglo, Balearjosari, Blimbing, Kota Malang, Jawa Timur 65126', 'Malang Night Paradise adalah tempat hiburan keluarga di Malang dengan tema glowing atau gemerlap yang unik di Malang Jawa Timur. Malang Night Paradise menawarkan 2 taman hiburan di satu lokasi. Tempat ini juga menghadirkan beberapa replika Dinousaurus yang berjaya pada jamannya dahulu. Malang Night Paradise diciptakan dengan sangat mempesona yang akan memanjakan mata Anda dan mengoda Anda untuk segera mengabadikan momen tersebut. Tujuan kami adalah untuk menjadi penyedia hiburan dan hiburan bagi wisatawan yang datang dari seluruh Indonesia. ', 112.6565438, -7.9241189, 'DSC02493.JPG'),
(16, 'Pantai Wedi Awu', 1, 'Balearjo, Purwodadi, Tirto Yudo, Malang, Jawa Timur 65182', 'Pantai Wediawu adalah sebuah pantai di pesisir selatan yang terletak di tepi Samudera Indonesia masih termasuk dalam Dusun Balearjo, Desa Purwodadi, Kecamatan Tirtoyudo, Kabupaten Malang, Jawa Timur[1]. Pantai Wediawu dikenal juga dengan nama Pantai Balearjo sesuai dengan tempat lokasi pantai tersebut berada. Posisinya bersebelahan dengan Pantai Lenggoksono dan hanya dipisahkan Bukit Tumpak Wi. Meskipun masih dalam satu desa, namun untuk menjangkaunya dari Pantai Lenggoksono harus memutar cukup jauh. Butuh waktu sekitar 30 menit dengan mobil dari Pantai Lenggoksono. Semua jalan menuju Pantai Wediawu sudah beraspal mulus dan sebagian telah dicor. Hanya tanjakan dan turunan berkelok begitu curam. Bahkan ada satu tikungan di satu pertigaan yang semua mobil tak bisa langsung menikung. Mobil harus mengambil jalan lurus dulu untuk mencari haluan memutar.\n\nDi Dusun Balearjo merupakan perkampungan yang cukup padat dengan kondisi bangunan yang cukup bagus. Di balik perkampungan inilah letak Pantai Wediawu. Sesampai di Pantai Wediawu pengunjung akan merasa terpukau akan keindahannnya. Pantainya masih sangat alami, nyaris belum ada wisatawan yang mengunjunginya. Wajah pantai ini masih bersih dengan gelombangnya yang datar dan halus. Airnya pun terlihat jernih dengan hamparan pasir putih yang bersih. Nyaris tidak terlihat kotoran di sepanjang pasir putih seluas 800 meter persegi itu.\n\nPemandangan pantai cukup cekung karena di kanan dan kiri menjulang dua tebing karang. Hamparan batu-batu karang yang besar berserakan di pinggir kiri dan kanan pantai seperti aksesori yang menambah indahnya pantai ini. Aset wisata yang bernilai mahal jika dikelola dengan maksimal. Salah satu bentuk keseriusan warga sekitar pantai adalah dengan merencanakan membuka jalan di atas Bukit Tumpak Wi. Posisi Bukit Tumpak Wi ini di sebelah kanan pantai. Dengan membuka jalan baru, pengunjung bisa turun ke pantai dari atas bukit. Di atas bukit nantinya akan dibuat semacam rest area sekaligus lengkap dengan joglo dan kafe. Untuk sementara, fasilitas yang sudah ada di bibir pantai berupa sirkuit trail, lapangan bola yang luas, dan camping ground.', 112.8464579, -8.3756878, 'Pantai-Wedi-Awu-Malang.jpg'),
(17, 'Hutan Kota Malabar ', 2, 'Jl. Malabar, Oro-oro Dowo, Klojen, Kota Malang, Jawa Timur 65119', 'Kemajuan kabupaten Malang dari segi ekonomis, terlihat dari semakin banyak gedung-gedung mewah dan semakin banyaknya kendaraan yang berlalu lalang di jalan. Sepintas hal tersebut bagus dari segi ekonomi kota Malang, namun memiliki dampak semakin kurang sehatnya udara yang dihasilkan. Setidaknya wisata hutan kota Malabar mampu meminimalkan polusi udara dan mampu memberikan keuntungan dari segi wisata kota Malang.\nAda lahan dijalan Malabar, yang sengaja tak digunakan oleh pemerintah daerah sebagai area pembangunan melainkan digunakan sebagai hutang kota Malabar. Luas hutan Malabar kurang lebih sekitar 16.718 hektar. Di tengah tengah hutan terdapat kolam air, menurut warga sekitar air kolam itu memiliki banyak manfaat.\nBiasanya hutan Malabar digunakan sebagai destinasi wisata taman kota oleh wisatawan dan warga sekitar, hal ini tak terlepas dari kesan teduh dan memiliki udara sejuk dihasilkan oleh pepohonan hutan Malabar. Kesan begitu tenang hingga membuat suasana hati merasa damai. Selain itu taman Malabar Malang bisa dijadikan wisata edukasi konservasi mengenal lebih dekat berbagai tumbuh-tumbuhan di hutan Malabar Malang.\nSejarah taman kota Malabar Malang ini mempunyai nama Bon Rodjo atau Kebon Rodjo, telah diresmikan oleh pemerintah daerah sehingga berganti nama menjadi hutan kota Malabar, tepatnya diresmikan pada tanggal 4 april 2016. Lokasi wisata ruang terbuka hijau yang begitu banyak mengandung oksigen memiliki manfaat sebagai wahana edukasi lingkungan, kesehatan dan sarana rekreasi.\nPertama kali masuk ke hutan Malabar kota Malang, wisatawan merasakan hawa yang sangat sejuk dan juga terdengar beberapa kicauan burung yang begitu merdu. Lantaran hutan ini tergolong memiliki pepohonan begitu lebat, maka jika berada di sekitar itu bakal merasakan hawa yang segar.\n', 112.626514, -7.9685, 'wisata-hutan-kota-Malabar.jpg'),
(18, 'Taman Slamet', 2, 'Jl. Taman Slamet No.8, Gading Kasri, Klojen, Kota Malang, Jawa Timur 65115', 'Anda suka olahraga ? Bingung cari tempat nongkrong yang enak ? Suka berfoto ? Taman Slamet tempatnya.\n\nTaman Slamet Malang adalah taman yang berada dalam lingkungan perumahan yang ada di wilayah Kelurahan Gading Kasri, tepatnya di Jalan Taman Slamet,  Kelurahan Gading Kasri, Kecamatan Klojen, Malang\n\nBerdasarakan keterangan yang ada, Taman ini pada awalnya hanya berupa taman biasa dengan beberapa pohon yang di tengahnya terdapat jalur pejalan kaki, namun selanjutnya direnovasi dengan konsep yang lebih unik sehingga tak hanya sebagai tempat bersantai saja melainkan dapat pulla dijadikan tempat berolahraga.\nTak hanya sekedar taman biasa saja namun Taman Slamet memiliki konsep yang unik dengan desain yang sangat menarik. Jadi wajar saja kalau tempat ini menjadi favoritnya anal muda untuk sekedar bersantai, nongkrong dan berfoto ria disana.\n\nSeperti yang sudah saya  dijelaskan di atas, Taman Slamet menjadi salah satu tempat asyik buat nongkrong, berfoto dan olahraga. Ada beberapa spot yang menjadi favoritnya para pengunjung saat sedang berada di Taman Slamet, diantaranya:\nLorong 6 Gunung, Area Olahraga, Stand Photobooth.', 112.6224499, -7.973708, 'taman_slamet.jpg'),
(19, 'Taman Merbabu', 2, 'Jl. Merbabu, Oro-oro Dowo, Klojen, Kota Malang, Jawa Timur 65119', 'Taman Merbabu di Malang ini tergolong wisata taman baru memang belum populer seperti taman Selecta Malang, namun taman yang berada di tengah keramaian kota yang kian padat penduduk dan fasilitas umum bisa memenuhi kebutuhan para pengunjungnya dan bisa dinikmati oleh seluruh anggota keluarga. Taman kota Malang ini bisa dijadikan sebagai referensi wisata pada akhir pekan bersama anak dan keluarga tercinta.\nSejarah taman Merbabu Malang dimulai dari menurut pimpinan HR Director PT Beiersdorf Indonesia Dicko Mochamad Irfan kehadiran taman Merbabu di Malang ini merupakan aspirasi kebutuhan karyawan perusahaan mereka sendiri yang sebagian besar memang berlokasi di Malang. Ketika itu mereka merasa belum ada taman publik dinikmati seluruh anggota keluarga.\nDicko Mochamad Irfan pernah berkata bahwa “Memang benar semua ini ialah aspirasi datang dari karayawan. Bila dilihat itu lapangan biasa sudah banyak, namun taman kota masih terlampau sedikit”. Ketika ditemui di taman Indie, Malang, Jawa Timur pada hari sabtu tanggal 14 Juni 2014.\nPembangunan taman Merbabu dimulai sejak bulan desember 2013 dan baru saja selesai pada Juni 2014. Hingga sampai sekarang taman kota Malang ini masih dalam perawatan taman oleh PT Beiersdorf bekerjasama dinas pemerintahan daerah Malang dan warga sekitar taman Merbabu.\nTaman kota yang letaknya dekat berada dekat hutan kota wisata hutan kota Malabar ini memiliki fungsi fasilitas seluruh keluarga mulai dari anak-anak hingga lansia. Fasilitas taman Merbabu Malang ini diantaranya yakni lapangan mini futsal, pedestrian difabel, jogging track, tempat bersantai keluarga, lokasi olahraga lansia, taman bacaan dan play ground. Sedangkan di lokasi bermain anak-anak terdapat fasilitas arena bermain pasir putih, prosotan, ayunan, jungkat-jungkit dan sebagainya.\nSeluruh sarana taman Merbabu Malang ini dihiasi berbagai warna cerah, sehingga mampu menarik perhatian anak. Bagi remaja Malang bisa memakai fasilitas wifi gratis serta memiliki 300 lubang biopori  yang memiliki ke-handalan dapat digunakan sebagai penampung hujan. Semua fasilitas taman Merbabu dapat digunakan secara cuma cuma oleh masyarakat dari berbagai golongan usia hingga kaum difabel.\nKabar baik lainnya ialah selain sebagai taman wisata anak di Malang, pembangunan Taman Merbabu Family Park ini memiliki banyak tujuan. Diantaranya mengoptimalkan ruang terbuka hijau (RTH) serta resapan air. Ruang terbuka hijau memiliki peran ganda, pertama sebagai daerah resapan air yang berfungsi mengendalikan banjir bila terjadi, konversi air tanah dan sebagainya.', 112.6258225, -7.967958, 'taman-merbabu-malang-1.jpg'),
(20, 'Alun Alun Tugu Malang', 2, 'Jl. Tugu, Kiduldalem, Klojen, Kota Malang, Jawa Timur 65111', 'Alun-Alun Bundar adalah alun-alun atau tanah lapang yang terletak di Kota Malang, Jawa Timur. Alun- alun ini dibangun pada tahun 1920 oleh orang Belanda Thomas Karsten. Di bagian tengah alun-alun ini terdapat sebuah tugu yang dikelilingi oleh kolam teratai. Alun-Alun Bundar terletak di depan Balai Kota Malang.\n\nAlun- alun Bunder ini merupakan simbol kekuasaan kolonial Belanda di Kota Malang, karena pemerintah kolonial beranggapan bahwa Alun- alun kota Malang terlalu berbau indisch. Pada awalnya nama taman ini adalah JP Coen Plein, sebagai bentuk penghormatan kepada Gubernur jendral Jaan Pieterzoen Coen.\n\nFondasi tugu yang berada di bagian tengah alun-alun ini dibangun pada tahun 1945 dan pernah dihancurkan Belanda saat menguasai Kota Malang. Pada tahun 1952, tugu ini dibangun kembali yang diresmikan oleh Presiden Soekarno pada tanggal 20 Mei 1953. Alun-Alun Bundar merupakan markah tanah Kota Malang selain Adimarga Ijen.', 112.6340638, -7.9771351, 'alun_tugu.jpg'),
(21, 'Paralayang', 3, 'Jl, Songgokerto, Kec. Batu, Kota Batu, Jawa Timur 65312', 'Paralayang adalah nama untuk Puncak Gunung Banyak, Kota Batu yang memiliki ketinggian 1.326 mdpl. Tempat ini pada mulanya merupakan tempat yang dijadikan sebagai landasan take-off atlet paralayang.\nLokasi ini dijadikan pusat latihan dan event paralayang se-Malang Raya. Diresmikan pada tahun 2000, bersamaan dengan diadakannya event PON VI Jatim yang ditandai dengan penandatanganan prasasti oleh Ketua Umum Federasi Aero Sport Indonesia Marsekal TNI Hanafi Asnan.\nDi Paralayang, para atlet dapat melayang sambil menikmati keindahan alam dari udara. Pesona pemandangan yang dapat dinikmati para olahragawan menjadi sajian yang menakjubkan, sehingga makin banyak para atlet yang menjajal area ini.\nTidak hanya atlet lokal Malang, atlet daerah Jawa Timur, Nasional dan Internasional sangat menikmati mengikuti ajang paralayang di kawasan Paralayang Batu ini.\nSeiring berjalannya waktu serta makin banyaknya minat pengunjung untuk mendatangi Paralayang, kawasan ini dibuka lebih umum dan luas. Bukan hanya atlet profesional yang dapat menjajal terbang bersama burung di udara, pengunjung pun dapat turut merasakan sensasi terbang ini.\nAnda dapat merasakan kebebasan melayang bersama angin sambil menikmati keindahan alam dengan ditemani instruktur yang disediakan pengelola. Biaya yang harus anda keluarkan memang tidak sedikit, namun itu sepadan dengan pengalaman yang anda rasakan.\nKarena kegiatan uji nyali ini sangat bergantung pada cuaca dan angin, tidak setiap saat anda dapat terbang. Hanya ketika cuaca cerah dan angin berhembus ke arah yang tepat aktivitas ini dilakukan.', 112.496731, -7.854872, 'Paralayang.jpg'),
(22, 'Air Terjun Banyu Anjlok', 3, 'Lenggoksono, Purwodadi, Tirto Yudo, Malang, Jawa Timur 65182', 'Air Terjun Banyu Anjlok adalah air terjun yang terletak[1] di Samosari, Kecamatan Batealit, Kabupaten Jepara. Air Terjun Banyu Anjlok tersebut sangat asri, karena jarang yang berwisata ke air terjun ini, sebab aksesnya yang ekstrem sehingga hanya yang bernyali besar berani ke air terjun tersebut.\nKonon dulu warga tidak ada yang tahu bawa di Desa Samosari ada air terjun, ketika ada sesorang sedang mencari kayu bakar tiba-tiba ia mendengar suara sesuatu ketika ia dekati arah suara tersebut ternyata ada banyu yang anjlok (air yang berjatuhan). Air terjun ini dinamakan Banyu Anjlok karena warga melihat ada banyu yang anjlok (ada air yang terjun bebas). Oleh karena tersebut dinamai Air Terjun Banyu Anjlok.\nAir Terjun Banyu Anjlok berada di Samosari, Kecamatan Batealit, Kabupaten Jepara. Untuk mencapai Terjun Banyu Anjlok dapat ditempuh dengan cara jalan kaki, karena medannya yang cukup ekstrem, jika menggunakan motor atau mobil harus diparkir di pemukiman penduduk Desa Somosari. Rute untuk mencapai air terjun ini sangat menguji nyali karena aksesnya yang sulit.', 112.8206652, -8.3726866, 'pantai-banyu-anjlok-2.jpg'),
(23, 'Air Terjun Coban Pelangi', 3, 'Dusun Ngadas, Ngadas, Poncokusumo, Malang, Jawa Timur 65157', 'Wisata Air Terjun Coban Pelangi terletak di desa Gubukklakah, Kecamatan Poncokusumo, Kabupaten Malang, Jawa Timur. Dari kota malang jaraknya sekitar 30 km ke arah timur, dengan kendaraan dapat ditempuh selama 1 jam. Untuk menuju kesana banyak petunjuk arah di sepanjang jalan atau bisa berpatokan dengan jalur menuju Gunung Bromo dan Gunung Semeru. Lokasinya 2 km setelah desa Gubukklakah, ditandai dengan papan nama Wisata Air Terjun Coban Pelangi di sebelah kanan jalan.', 112.8666286, -8.0144493, 'air-terjun-coban-pelangi-malang.jpg'),
(24, 'Tubing Wringinanom Poncokusumo', 3, 'Desa Wringinanom, Malang, Kunci Selatan, Wringinanom, Poncokusumo, Malang, Jawa Timur 65157', 'Wisata Tubing Wringinanom Poncokusumo adalah olahan destinasi wisata yang berasal dari ide karang taruna setempat. Ide mereka untuk memanfaatkan potensi wisata di daerahnya tersebut ternyata berjalan sukses. Mereka mendapatkan ide tersebut karena dulunya disana adalah tempat bermain para anak-anak kampung yang berhanyut-hanyutan di aliran sungai dengan menggunakan pelepah pisang. Ditangan pemuda desa inilah Wisata Tubing Wringinanom Poncokusumo mulai menjadi terkenal secara perlahan.', 112.8114489, -8.0345257, 'Wisata-Tubing-Wringinanom-Poncokusumo-Cover.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tbl_wisata`
--
ALTER TABLE `tbl_wisata`
  ADD PRIMARY KEY (`id_wisata`),
  ADD KEY `fk_KategoriWisata` (`id_kategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_wisata`
--
ALTER TABLE `tbl_wisata`
  MODIFY `id_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_wisata`
--
ALTER TABLE `tbl_wisata`
  ADD CONSTRAINT `fk_KategoriWisata` FOREIGN KEY (`id_kategori`) REFERENCES `tbl_kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
