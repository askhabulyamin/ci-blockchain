-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Bulan Mei 2023 pada 20.19
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci-app`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `project_name` varchar(50) NOT NULL,
  `type` varchar(15) NOT NULL,
  `role` int(11) NOT NULL,
  `file` varchar(100) NOT NULL,
  `previous_blockchain` varchar(100) NOT NULL,
  `hash_bim` varchar(100) NOT NULL,
  `nonce` int(15) NOT NULL,
  `transaction` varchar(100) NOT NULL,
  `date_create` datetime NOT NULL,
  `create_by` varchar(50) NOT NULL,
  `create_to` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `project`
--

INSERT INTO `project` (`id`, `project_name`, `type`, `role`, `file`, `previous_blockchain`, `hash_bim`, `nonce`, `transaction`, `date_create`, `create_by`, `create_to`) VALUES
(6, 'dad', 'dasd', 1, 'juknis.200612113552.pdf', '0', '0', 0, '0', '2023-05-19 17:55:08', '', '1'),
(7, 'dasd', 'dad', 4, 'Nomor Induk Siswa Nasional.pdf', '56f7ff9822d8917b032f5314ad361427fd86c56abe80fc765899bb71e085af46755fc4a871cb799b7546374df9ebfc46e904', '732a25f16debe3587356669b042051e0f5f3ddc5cc474d6d2db19e3ea23228b3621fbca8ce75fc96df119917f0ea9d12e997', 729, 'b131699bb180118505ea7df8795a21506f77aad6a4de315aacff274b0dd0d3c2a6a7bd53d64b2ea31bb55977af31dfaad903', '2023-05-19 17:59:00', '', '4'),
(8, 'fsaf', 'fsaf', 1, 'SURAT-PERNYATAAN.pdf', '82c5424f3705ba384a3e6228bd503fcca59a912168e809085208c168a531538b2b8ecfd317431820c89d8f95fe5cd6df3916', '94c8d12019ba2d0eea39e7086e26a52c319018268602790d85fac7b7da1118d3c1665fe2acdf7a233c01254c04f7cc8cb5da', 8, 'b7c18f96d2c2730c7e87d35f743a224c9b4bb7738ab64337372b85e5501f8b1f3168afab623903dbbe9af970dbaa161aa08c', '2023-05-19 18:04:09', 'ahmad.askhabulyamin@gmail.com', '1'),
(9, 'dasdddda', 'gsdg', 8, 'SURAT-PERNYATAAN.pdf', '8345dfba3c8e169b23c3378cf486666857d0d869a83eeae334f0ce4dbfb4063dbb72537051761ea39e9bbc050f87fe8f4227', '19138f812b5c938b6dda0c98e17d66da1ec529226b9f6767bfac8cd4abf0626f071945f7f13b20c803d22f54a1d655001ba6', 2147483647, 'ab913537b63ee03409280fd3e9c14553102fd475077d4df6c642f85ea330480623be33808ad783068f619336de06742bd2da', '2023-05-19 18:04:21', 'ahmad.askhabulyamin@gmail.com', '8'),
(10, 'Brin Ancol', 'Gedung Kantor', 5, 'ppdb_sptjm.pdf', 'e22c79e540b215a17f517b2c0066193d643a7167fd01db6da146375ada985c706cc13dcaa6c992d27472e4a8f0346a1d3096', '7f85270004582a70cf068fb3b36964950371ac2869fc520b64112d7f05bac294f8609ffaefa95cff992f32c1a18087dc6bc3', 1, 'f45e01f1e6c253b40da024063daa3890ecafa5fa653cefd9444a8b3f36775be091cc6c545b5f41cb4997c76f72aaa3adb7b2', '2023-05-20 08:28:38', 'ahmad.askhabulyamin@gmail.com', '5'),
(11, 'BRIN Ancol', 'Permodelan BIM', 5, 'ppdb_sptjm.pdf', '6465d2c65fcf69eab50adc2cfde10c8575dcda04afe9963fd987c4e90df9089fd37677fb2791d763ea6669ceae4418798b9c', '599c6c28e980ad3f5debc62937309d3785c3f2a3fd8f3922060092fa2c10b5879d3884d6974d9d9c1e8bd03d1823bac38743', 3, '4ce685b5676c5526c3148cbb74ce9732c12f4f5e20dc6598a3391a3ffc08f0e27aa31ee713d69c0b8784be289c58671891de', '2023-05-20 08:47:58', 'ahmad.askhabulyamin@gmail.com', '5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(18, 'aqshalzakki', 'kecoatempur2@gmail.com', 'default.jpg', '$2y$10$sCiotAojcOrC6Q2y5rZHU.K7cxrGis1cl0fENCQ9eZqguF1AaFlFi', 1, 1, 1566659364),
(21, 'jonitempur', 'jonitempur2@gmail.com', 'default.jpg', '$2y$10$LMQw8an68EttGvvNoyDdZOZBRA4lP5VnUEtKgWA28DnVM0phiXLQq', 2, 1, 1566659633),
(22, 'yamin2w', 'ahmad.askhabulyamin@gmail.com', 'default.jpg', '$2y$10$hAuramorUDe/f8bynX/olO40b/X3sfgjuut4U4VarSxBYvUQEHLn.', 1, 1, 1683793168);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(3, 2, 2),
(116, 1, 2),
(128, 1, 4),
(130, 2, 5),
(133, 1, 3),
(134, 2, 4),
(135, 4, 2),
(136, 4, 4),
(137, 5, 2),
(138, 5, 4),
(139, 6, 2),
(140, 6, 4),
(141, 7, 2),
(142, 7, 4),
(143, 8, 4),
(144, 8, 2),
(145, 9, 4),
(146, 9, 2),
(147, 1, 9),
(148, 4, 9),
(149, 5, 9),
(150, 7, 9),
(151, 9, 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu'),
(4, 'BIM'),
(9, 'Block 1 Perencanaan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member'),
(4, 'Operator Manager'),
(5, 'Owner'),
(6, 'Architect'),
(7, 'Engineer'),
(8, 'Surveyor'),
(9, 'Contractor');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt ', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(5, 3, 'Submenu Management', 'menu/subMenu', 'fas fa-fw fa-folder-open', 1),
(8, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(9, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(10, 2, 'Change Password', 'user/changepassword', 'fas fw fa-key', 1),
(11, 5, 'Video Games', 'article/videogames', 'fas fw fa-gamepad', 1),
(13, 4, 'Block Project', 'block', 'fas fa-project-diagram', 1),
(16, 4, 'Validation', 'block/validation', 'fas fa-project-diagram', 1),
(17, 4, 'Verification', 'block/verification', 'fas fa-project-diagram', 1),
(18, 9, 'Design', 'block', 'fas fa-fw fa-folder', 1),
(19, 9, 'Drawing 3D', 'block', 'fas fa-fw fa-folder', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `token` varchar(60) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(27, 'ahmad.askhabulyamin@gmail.com', 'EiaXLLHDqF/56vHLIbm7qSIgyOCVEwVj5byX2N4++Sw=', 1683793168);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
