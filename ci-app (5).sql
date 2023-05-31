-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Bulan Mei 2023 pada 19.11
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
  `sub_menuid` int(11) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `previous_blockchain` varchar(100) NOT NULL,
  `hash_bim` varchar(100) NOT NULL,
  `nonce` int(15) NOT NULL,
  `transaction` varchar(100) NOT NULL,
  `date_create` datetime NOT NULL,
  `create_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `saldo`
--

CREATE TABLE `saldo` (
  `id` int(11) NOT NULL,
  `address` varchar(256) NOT NULL,
  `value` int(20) NOT NULL,
  `timedate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `saldo`
--

INSERT INTO `saldo` (`id`, `address`, `value`, `timedate`) VALUES
(1, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 1999000000, '2023-05-31 12:53:52'),
(2, '4a1439818d6edb2d93d60038e89bd0d0cf3a4eb1c1587b6663609f6bcd985968804f5a72cf7f94c66f99d493a5752c81bb39dac15399c8da3a90e4439c601193Zyy3uZ+9mSnhHMrPXwANY9aMNIYptsiyniQd1UeZfjk=', 500000, '2023-05-31 13:00:37'),
(3, '4f0abdf2e6c49a17468fbe79df1c11acf2fc340398a770beef75c40d378572f9b0311062932ba68f889545eec7a654beb2240c18dcfc82edca8afe6810abfd86eKwtyxr64kT9CxkQ3AZ3XT7uKmjEy9RU3fJuBk4K1JM=', 500000, '2023-05-31 13:00:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `id_block` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `address` varchar(256) NOT NULL,
  `to_address` varchar(256) NOT NULL,
  `status` int(3) NOT NULL COMMENT '0= pending,1=success, 2=cancel',
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaction`
--

INSERT INTO `transaction` (`id`, `id_block`, `value`, `address`, `to_address`, `status`, `date_create`) VALUES
(45, 0, 100000, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '4a1439818d6edb2d93d60038e89bd0d0cf3a4eb1c1587b6663609f6bcd985968804f5a72cf7f94c66f99d493a5752c81bb39dac15399c8da3a90e4439c601193Zyy3uZ+9mSnhHMrPXwANY9aMNIYptsiyniQd1UeZfjk=', 0, '2023-05-31 12:50:02'),
(46, 0, 900000, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '4a1439818d6edb2d93d60038e89bd0d0cf3a4eb1c1587b6663609f6bcd985968804f5a72cf7f94c66f99d493a5752c81bb39dac15399c8da3a90e4439c601193Zyy3uZ+9mSnhHMrPXwANY9aMNIYptsiyniQd1UeZfjk=', 0, '2023-05-31 12:53:52'),
(47, 0, 500000, '4a1439818d6edb2d93d60038e89bd0d0cf3a4eb1c1587b6663609f6bcd985968804f5a72cf7f94c66f99d493a5752c81bb39dac15399c8da3a90e4439c601193Zyy3uZ+9mSnhHMrPXwANY9aMNIYptsiyniQd1UeZfjk=', '4f0abdf2e6c49a17468fbe79df1c11acf2fc340398a770beef75c40d378572f9b0311062932ba68f889545eec7a654beb2240c18dcfc82edca8afe6810abfd86eKwtyxr64kT9CxkQ3AZ3XT7uKmjEy9RU3fJuBk4K1JM=', 0, '2023-05-31 13:00:37');

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
(22, 'admin', 'admin@gmail.com', 'default.jpg', '$2y$10$hAuramorUDe/f8bynX/olO40b/X3sfgjuut4U4VarSxBYvUQEHLn.', 1, 1, 1683793168),
(23, 'Owner', 'owner@gmail.com', 'default.jpg', '$2y$10$vcuMTeh6Dkd1qTPInff/U.YxkeEh2GHbuwBVTqa9004PN1Vg5q7N.', 2, 1, 1685294798),
(24, 'ContractionManagement', 'contraction_management@gmail.com', 'default.jpg', '$2y$10$.nouB57z/56/5h9e4zJqJe22r8TaQkfH4.zXBqY4.yHrwFQJC87xe', 2, 1, 1685365085),
(25, 'Contractor', 'contractor@gmail.com', 'default.jpg', '$2y$10$orW4GiELuV8Sg31iM.ecP.D89Qmaef5dX/uj1gJwXZxvRWy.KGy4O', 5, 1, 1685528922);

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
(151, 9, 9),
(152, 1, 10),
(153, 1, 12),
(154, 4, 10),
(156, 6, 9),
(159, 4, 2),
(161, 2, 10),
(162, 2, 9),
(163, 2, 12),
(164, 5, 10),
(165, 5, 12),
(166, 8, 10),
(168, 1, 0),
(169, 2, 0),
(170, 4, 0),
(171, 5, 0),
(172, 7, 0),
(173, 9, 0),
(174, 8, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(50) NOT NULL,
  `icon` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`, `icon`) VALUES
(0, 'Dashboard', ''),
(1, 'Admin', NULL),
(2, 'User', NULL),
(3, 'Menu', NULL),
(9, 'Block 1 Planning', 'icon-1.jpg'),
(10, 'Block 2 Construction', 'icon-2.jpg'),
(12, 'Block 3 Smart Contract & Payment', 'icon-3.jpg');

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
(2, 'Owner'),
(4, 'Construction Management'),
(5, 'Contractor'),
(7, 'Engineer'),
(8, 'Quantity Surveyor'),
(9, 'Designer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `icon_file` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon_file`, `icon`, `is_active`) VALUES
(1, 0, 'Dashboard', 'Dashboard', '', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user', '', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', '', 'fas fa-fw fa-user-edit', 1),
(5, 3, 'Submenu Management', 'menu/subMenu', '', 'fas fa-fw fa-folder-open', 1),
(8, 3, 'Menu Management', 'menu', '', 'fas fa-fw fa-folder', 1),
(9, 1, 'Role', 'admin/role', '', 'fas fa-fw fa-user-tie', 1),
(10, 2, 'Change Password', 'user/changepassword', '', 'fas fw fa-key', 1),
(13, 4, 'Block Project', 'block', '', 'fas fa-project-diagram', 1),
(16, 4, 'Validation', 'block/validation', '', 'fas fa-project-diagram', 1),
(17, 4, 'Verification', 'block/verification', '', 'fas fa-project-diagram', 1),
(18, 9, 'Design', 'block', 'icon-folder.jpeg', 'fas fa-fw fa-folder', 1),
(19, 9, 'Drawing 3D', 'block', 'icon-folder-1.jpeg', 'fas fa-fw fa-folder', 1),
(22, 9, 'Engineering', 'block', 'icon-folder-2.jpeg', 'fas fa-fw fa-folder', 1),
(23, 10, 'Shop Drawing', 'block', 'icon-folder.jpeg', 'fas fa-fw fa-folder', 1),
(24, 10, 'Progress', 'block', 'icon-folder-2.jpeg', 'fas fa-fw fa-folder', 1),
(25, 10, 'Quantity', 'block', 'icon-folder-1.jpeg', 'fas fa-fw fa-folder', 1),
(26, 10, 'Schedule', 'block', 'icon-folder-2.jpeg', 'fas fa-fw fa-folder', 1),
(27, 12, 'Smart Contract', 'block/smartcontract', 'icon-folder.jpeg', 'fas fa-project-diagram', 1),
(28, 12, 'Payment', 'block/transaction', 'icon-folder-2.jpeg', 'fas fa-dollar-sign', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `token` varchar(256) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(27, 'admin@gmail.com', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 1683793168),
(28, 'owner@gmail.com', '4a1439818d6edb2d93d60038e89bd0d0cf3a4eb1c1587b6663609f6bcd985968804f5a72cf7f94c66f99d493a5752c81bb39dac15399c8da3a90e4439c601193Zyy3uZ+9mSnhHMrPXwANY9aMNIYptsiyniQd1UeZfjk=', 1685294798),
(30, 'contractor@gmail.com', '4f0abdf2e6c49a17468fbe79df1c11acf2fc340398a770beef75c40d378572f9b0311062932ba68f889545eec7a654beb2240c18dcfc82edca8afe6810abfd86eKwtyxr64kT9CxkQ3AZ3XT7uKmjEy9RU3fJuBk4K1JM=', 1685528923);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `saldo`
--
ALTER TABLE `saldo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction`
--
ALTER TABLE `transaction`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `saldo`
--
ALTER TABLE `saldo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
