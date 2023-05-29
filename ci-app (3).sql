-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Bulan Mei 2023 pada 19.29
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

--
-- Dumping data untuk tabel `project`
--

INSERT INTO `project` (`id`, `project_name`, `type`, `role`, `sub_menuid`, `file`, `previous_blockchain`, `hash_bim`, `nonce`, `transaction`, `date_create`, `create_by`) VALUES
(6, 'dad', 'dasd', 1, 18, 'juknis.200612113552.pdf', '0', '0', 0, '0', '2023-05-19 17:55:08', ''),
(7, 'dasd', 'dad', 4, 16, 'Nomor Induk Siswa Nasional.pdf', '56f7ff9822d8917b032f5314ad361427fd86c56abe80fc765899bb71e085af46755fc4a871cb799b7546374df9ebfc46e904', '732a25f16debe3587356669b042051e0f5f3ddc5cc474d6d2db19e3ea23228b3621fbca8ce75fc96df119917f0ea9d12e997', 729, 'b131699bb180118505ea7df8795a21506f77aad6a4de315aacff274b0dd0d3c2a6a7bd53d64b2ea31bb55977af31dfaad903', '2023-05-19 17:59:00', ''),
(8, 'fsaf', 'fsaf', 1, 19, 'SURAT-PERNYATAAN.pdf', '82c5424f3705ba384a3e6228bd503fcca59a912168e809085208c168a531538b2b8ecfd317431820c89d8f95fe5cd6df3916', '94c8d12019ba2d0eea39e7086e26a52c319018268602790d85fac7b7da1118d3c1665fe2acdf7a233c01254c04f7cc8cb5da', 8, 'b7c18f96d2c2730c7e87d35f743a224c9b4bb7738ab64337372b85e5501f8b1f3168afab623903dbbe9af970dbaa161aa08c', '2023-05-19 18:04:09', 'ahmad.askhabulyamin@gmail.com'),
(9, 'dasdddda', 'gsdg', 5, 19, 'SURAT-PERNYATAAN.pdf', '8345dfba3c8e169b23c3378cf486666857d0d869a83eeae334f0ce4dbfb4063dbb72537051761ea39e9bbc050f87fe8f4227', '19138f812b5c938b6dda0c98e17d66da1ec529226b9f6767bfac8cd4abf0626f071945f7f13b20c803d22f54a1d655001ba6', 2147483647, 'ab913537b63ee03409280fd3e9c14553102fd475077d4df6c642f85ea330480623be33808ad783068f619336de06742bd2da', '2023-05-19 18:04:21', 'ahmad.askhabulyamin@gmail.com'),
(10, 'Brin Ancol', 'Gedung Kantor', 5, 19, 'ppdb_sptjm.pdf', 'e22c79e540b215a17f517b2c0066193d643a7167fd01db6da146375ada985c706cc13dcaa6c992d27472e4a8f0346a1d3096', '7f85270004582a70cf068fb3b36964950371ac2869fc520b64112d7f05bac294f8609ffaefa95cff992f32c1a18087dc6bc3', 1, 'f45e01f1e6c253b40da024063daa3890ecafa5fa653cefd9444a8b3f36775be091cc6c545b5f41cb4997c76f72aaa3adb7b2', '2023-05-20 08:28:38', 'ahmad.askhabulyamin@gmail.com'),
(11, 'BRIN Ancol', 'Permodelan BIM', 5, 19, 'ppdb_sptjm.pdf', '6465d2c65fcf69eab50adc2cfde10c8575dcda04afe9963fd987c4e90df9089fd37677fb2791d763ea6669ceae4418798b9c', '599c6c28e980ad3f5debc62937309d3785c3f2a3fd8f3922060092fa2c10b5879d3884d6974d9d9c1e8bd03d1823bac38743', 3, '4ce685b5676c5526c3148cbb74ce9732c12f4f5e20dc6598a3391a3ffc08f0e27aa31ee713d69c0b8784be289c58671891de', '2023-05-20 08:47:58', 'ahmad.askhabulyamin@gmail.com'),
(12, 'OKE', 'SIP', 1, 18, 'icon-41.jpg', '42bbf52ac796aa9bb486a56ffc539c440b8a64181833194b0300801a647ca27aaff31605a185f6ee1305dd11c5c8e4f80910', '02c597a8bc498c24cdf779df592a7354e09b284194d5262688250465f54d1424a3e51519516cad64d57f66da1405d04b0cc0', 2147483647, 'e415a1c9b9543a8b0b0a27b029b91f2b00abc945b20592d53734d1d599d1f75c20249d34c6455669488a6391f7f192617d7f', '2023-05-25 07:19:24', 'ahmad.askhabulyamin@gmail.com'),
(13, 'Project Pertama BIM Progress', 'Progress', 1, 26, 'BIM.xlsx', '95802ee3966b22e1d06dd1c0532fbf21654cbf0ba2e6d796ba0648ca28096272f68834f1ebebb9be11abdea89c2c72b46bfb', '35db7b823f2142252524c2fbfb01c0432c7662435ebd9fb4ca7b04850ab9561b67ab990579b73a757e8711fe555ebb498837', 0, '386c5ae2fe22ff195a62c9dee62d662a413e9f58028da7bc1a4c2c7c6c73230636c8c4591595cd4fd507592abcd03f373a0d', '2023-05-28 13:20:52', 'ahmad.askhabulyamin@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `saldo`
--

CREATE TABLE `saldo` (
  `id` int(11) NOT NULL,
  `address` varchar(256) NOT NULL,
  `value` int(11) NOT NULL,
  `timedate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `saldo`
--

INSERT INTO `saldo` (`id`, `address`, `value`, `timedate`) VALUES
(1, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 33, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `id_block` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `to_address` varchar(256) NOT NULL,
  `address` varchar(256) NOT NULL,
  `status` int(3) NOT NULL COMMENT '0= pending,1=success, 2=cancel',
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaction`
--

INSERT INTO `transaction` (`id`, `id_block`, `value`, `to_address`, `address`, `status`, `date_create`) VALUES
(1, 0, 60, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 0, '2023-05-26 15:09:35'),
(2, 0, 600, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 0, '2023-05-26 17:59:34'),
(3, 0, 4234, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 0, '2023-05-26 18:00:34'),
(4, 0, 33, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 0, '2023-05-26 18:01:35'),
(5, 0, 33, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 0, '2023-05-26 18:01:54'),
(6, 0, 33, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 0, '2023-05-26 18:01:58'),
(7, 0, 33, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 0, '2023-05-26 18:07:02'),
(8, 0, 33, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 0, '2023-05-26 18:08:04'),
(9, 0, 33, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 0, '2023-05-26 18:08:35'),
(10, 0, 33, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 0, '2023-05-26 18:12:38'),
(11, 0, 33, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 0, '2023-05-26 18:12:49'),
(12, 0, 33, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 0, '2023-05-26 18:13:44'),
(13, 0, 33, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 0, '2023-05-26 18:14:11'),
(14, 0, 33, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 0, '2023-05-26 18:14:25'),
(15, 0, 33, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 0, '2023-05-26 18:14:28'),
(16, 0, 33, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 0, '2023-05-26 18:15:01'),
(17, 0, 33, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 0, '2023-05-26 18:16:15'),
(18, 0, 33, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 0, '2023-05-26 18:16:41'),
(19, 0, 33, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 0, '2023-05-26 18:16:51'),
(20, 0, 33, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 0, '2023-05-26 18:18:09'),
(21, 0, 33, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 0, '2023-05-26 18:18:36'),
(22, 0, 33, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 0, '2023-05-26 18:19:26'),
(23, 0, 33, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 0, '2023-05-26 18:20:12'),
(24, 0, 33, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 0, '2023-05-26 18:22:12'),
(25, 0, 33, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 0, '2023-05-26 18:22:39'),
(26, 0, 33, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 0, '2023-05-26 18:22:48'),
(27, 0, 33, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 0, '2023-05-26 18:23:04'),
(28, 0, 33, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 0, '2023-05-26 18:25:46'),
(29, 0, 33, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 0, '2023-05-26 18:26:30'),
(30, 0, 33, '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 0, '2023-05-26 18:27:32');

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
(22, 'yamin2w', 'ahmad.askhabulyamin@gmail.com', 'default.jpg', '$2y$10$hAuramorUDe/f8bynX/olO40b/X3sfgjuut4U4VarSxBYvUQEHLn.', 1, 1, 1683793168),
(23, 'Owner', 'ahmad.yamin@podomorouniversity.ac.id', 'default.jpg', '$2y$10$vcuMTeh6Dkd1qTPInff/U.YxkeEh2GHbuwBVTqa9004PN1Vg5q7N.', 2, 0, 1685294798);

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
(167, 2, 1),
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
(9, 'Block 1 Perencanaan', 'icon-1.jpg'),
(10, 'Block 2 Progress', 'icon-2.jpg'),
(12, 'Block 3 Smart Contract Payment', 'icon-3.jpg');

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
(4, 'Contraction Management'),
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
(21, 12, 'Payment', 'block/transaction', '', 'fas fa-dollar-sign', 1),
(22, 9, 'Engineering', 'block', 'icon-folder-2.jpeg', 'fas fa-fw fa-folder', 1),
(23, 10, 'Shop Drawing', 'block', 'icon-folder.jpeg', 'fas fa-fw fa-folder', 1),
(24, 10, 'Progress', 'block', 'icon-folder-2.jpeg', 'fas fa-fw fa-folder', 1),
(25, 10, 'Quantity', 'block', 'icon-folder-1.jpeg', 'fas fa-fw fa-folder', 1),
(26, 10, 'Schedule', 'block', 'icon-folder-2.jpeg', 'fas fa-fw fa-folder', 1);

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
(27, 'ahmad.askhabulyamin@gmail.com', '45dc4738335adb4951f4e8b44812ac499a1432e2a27b728271977acf93b4e325', 1683793168),
(28, 'ahmad.yamin@podomorouniversity.ac.id', '4a1439818d6edb2d93d60038e89bd0d0cf3a4eb1c1587b6663609f6bcd985968804f5a72cf7f94c66f99d493a5752c81bb39dac15399c8da3a90e4439c601193Zyy3uZ+9mSnhHMrPXwANY9aMNIYptsiyniQd1UeZfjk=', 1685294798);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
